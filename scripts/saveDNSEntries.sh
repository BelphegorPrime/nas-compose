#!/usr/bin/env bash

# ------------------------------------------------------------------
# Script: export-dns-records.sh
# Purpose: Query and export DNS records for a list of subdomains
# Usage:
#   1. Save this file as export-dns-records.sh
#   2. Make it executable: chmod +x export-dns-records.sh
#   3. Run: ./export-dns-records.sh
#   The output will be saved to dns_records_<DATE>.txt in the current directory.
# ------------------------------------------------------------------

# List of subdomains to query
SUBDOMAINS=(
  "marcel.codes"
  "audio.marcel.codes"
  "audiobookshelf.marcel.codes"
  "auth.marcel.codes"
  "container.marcel.codes"
  "dot.marcel.codes"
  "ha.marcel.codes"
  "home.marcel.codes"
  "immich.marcel.codes"
  "jarvis.marcel.codes"
  "mealie.marcel.codes"
  "media.marcel.codes"
  "paper.marcel.codes"
  "pdf.marcel.codes"
)

# Record types to query
RECORD_TYPES=(ANY A AAAA CNAME MX TXT NS SOA SRV PTR)

# Output file (timestamped)
OUTPUT_FILE="marcel_codes_dns_records.txt"

# Header
echo "# DNS Records Export for marcel.codes" > "$OUTPUT_FILE"

# Loop through each subdomain and query DNS records by type
for SUB in "${SUBDOMAINS[@]}"; do
  echo -e "\n## $SUB ##" >> "$OUTPUT_FILE"
  for TYPE in "${RECORD_TYPES[@]}"; do
    dig "$SUB" "$TYPE" +noall +answer >> "$OUTPUT_FILE"
  done
done

# Completion message
echo "Export complete! Results saved in $OUTPUT_FILE"
