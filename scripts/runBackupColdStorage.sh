#! /usr/bin/env bash

bash cold/cold2TB.sh;
bash cold/cold8TB.sh;

# Size > 7TB
#rsync -av --delete /srv/dev-disk-by-label-media/media/Series /srv/dev-disk-by-uuid-xxxxxxxxxxxx/
# Size ~ 0,000TB
#rsync -avu --delete /srv/dev-disk-by-label-media/media/Movies /srv/dev-disk-by-uuid-28b81fe9-324f-4956-9b99-9136a371f7db/