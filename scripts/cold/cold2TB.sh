#! /usr/bin/env bash

# 388db899-68a7-4652-92ab-21ee72824626 === cold2TB (1,79 TB)
# Size ~ 0,018TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/DSA /srv/dev-disk-by-uuid-388db899-68a7-4652-92ab-21ee72824626/
# Size ~ 0,005TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/Ebooks /srv/dev-disk-by-uuid-388db899-68a7-4652-92ab-21ee72824626/
# Size ~ 0,015TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/Fuer_Spiele /srv/dev-disk-by-uuid-388db899-68a7-4652-92ab-21ee72824626/
# Size ~ 0,095TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/Images /srv/dev-disk-by-uuid-388db899-68a7-4652-92ab-21ee72824626/
# Size ~ 0,120TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/Manga /srv/dev-disk-by-uuid-388db899-68a7-4652-92ab-21ee72824626/
# Size ~ 0,59TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/Music /srv/dev-disk-by-uuid-388db899-68a7-4652-92ab-21ee72824626/
# Size ~ 0,031TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/Pictures /srv/dev-disk-by-uuid-388db899-68a7-4652-92ab-21ee72824626/
# Size ~ 0,016TB
rsync -avu --delete /srv/dev-disk-by-label-media/media/Podcasts /srv/dev-disk-by-uuid-388db899-68a7-4652-92ab-21ee72824626/
# Sizes Total ~ 0,89TB