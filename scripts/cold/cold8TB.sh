#! /usr/bin/env bash

# 28b81fe9-324f-4956-9b99-9136a371f7db === cold8TB (7,22 TB)
# Size ~ 2,99TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/Anime /srv/dev-disk-by-uuid-28b81fe9-324f-4956-9b99-9136a371f7db/
# Size ~ 6,4TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/Games /srv/dev-disk-by-uuid-28b81fe9-324f-4956-9b99-9136a371f7db/
# Sizes Total ~ 6,4TB