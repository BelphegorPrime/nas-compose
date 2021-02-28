require('dotenv').config()

const fs = require("fs");
const conf = JSON.parse(fs.readFileSync("balancer.json"));

const globalStr = `global
    log stdout format raw daemon
    daemon
    tune.ssl.default-dh-param 2048

    # Default SSL material locations
    ca-base /config
    crt-base /config

    # Default ciphers to use on SSL-enabled listening sockets.
    # For more information, see ciphers(1SSL). This list is from:
    #  https://hynek.me/articles/hardening-your-web-servers-ssl-ciphers/
    # An alternative list with additional directives can be obtained from
    #  https://mozilla.github.io/server-side-tls/ssl-config-generator/?server=haproxy
    ssl-default-bind-ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384
    ssl-default-bind-ciphersuites TLS_AES_128_GCM_SHA256:TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256
    ssl-default-bind-options prefer-client-ciphers no-sslv3 no-tlsv10 no-tlsv11 no-tls-tickets

    ssl-default-server-ciphers ECDHE-ECDSA-AES128-GCM-SHA256:ECDHE-RSA-AES128-GCM-SHA256:ECDHE-ECDSA-AES256-GCM-SHA384:ECDHE-RSA-AES256-GCM-SHA384:ECDHE-ECDSA-CHACHA20-POLY1305:ECDHE-RSA-CHACHA20-POLY1305:DHE-RSA-AES128-GCM-SHA256:DHE-RSA-AES256-GCM-SHA384
    ssl-default-server-ciphersuites TLS_AES_128_GCM_SHA256:TLS_AES_256_GCM_SHA384:TLS_CHACHA20_POLY1305_SHA256
    ssl-default-server-options no-sslv3 no-tlsv10 no-tlsv11 no-tls-tickets
    `;

const defaultsStr = `defaults
    log     global
    mode    http
    option  httplog
    option  dontlognull
    option  forwardfor
    option  http-server-close
    timeout connect 20s
    timeout client  10m
    timeout server  10m`;

let frontends = {};

conf.forEach(c => {
  c.portMap.forEach(pm => {
    if (!frontends[pm.from]) {
      frontends[pm.from] = [];
    }
    frontends[pm.from].push({
        dom: c.domain,
        back: process.env.ip+":"+pm.to
    })
  })
});

let backends = [];

let completeText = globalStr + "\n\n" + defaultsStr + "\n\n";

let fcount = 0;
for (const f in frontends) {
  let text = `frontend front${fcount}\n`;
  text += `    bind *:${f}\n`;
  if (parseInt(f, 10) === 80) {
    text += `    bind *:443 ssl crt /config/server.pem\n`;
  }
  text += "    http-response set-header Strict-Transport-Security max-age=16000000;\n";

  const entries = frontends[f].map((entry, index) => {
    const accessControlLists = [];

    accessControlLists.push(`acl host${fcount}_${index}h hdr(host) -i -m beg ${entry.dom}`);
    accessControlLists.push(`acl host${fcount}_${index}o hdr(origin) -i -m beg ${entry.dom}`);

    const backend = `use_backend back${fcount}_${index} if host${fcount}_${index}h or host${fcount}_${index}o`;
    let backendStr = `backend back${fcount}_${index}\n`;
    backendStr += "    balance leastconn\n";
    backendStr += `    server web01 ${entry.back} check`;
    backends.push(backendStr);

    return {accessControlLists, backend};
  });

  //write accessControlLists
  entries.forEach(entry => {
    entry.accessControlLists.forEach(accessControlList => {
      text += `    ${accessControlList}\n`;
    });
  });

  text += "\n";

  //write use_backend
  entries.forEach(entry => text += `    ${entry.backend}\n`);

  if (parseInt(f, 10) === 80) {
    text += "\n";
    text += "    default_backend https_backend\n";
  }

  completeText += text+"\n";
  fcount++;
}

completeText += `
backend https_backend
    balance leastconn
    server web01 127.0.0.1:9999 check

`;

backends.forEach(be => {
  completeText += be + "\n\n";
});

console.log(completeText);
try {
  fs.writeFileSync("/app/haproxy.cfg", completeText);
} catch (e) {
  console.error(e);
  process.exit(1);
}