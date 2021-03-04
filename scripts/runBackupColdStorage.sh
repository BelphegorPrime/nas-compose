#! /usr/bin/env bash

# TODO think about good file structure

# 388db899-68a7-4652-92ab-21ee72824626 === cold2TB (1,79 TB)
if [ -d "/srv/dev-disk-by-uuid-388db899-68a7-4652-92ab-21ee72824626/" ]; then
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
fi


# 28b81fe9-324f-4956-9b99-9136a371f7db === cold8TB (7,22 TB)
if [ -d "/srv/dev-disk-by-uuid-28b81fe9-324f-4956-9b99-9136a371f7db/" ]; then
  # Size ~ 2,3TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Anime /srv/dev-disk-by-uuid-28b81fe9-324f-4956-9b99-9136a371f7db/
  # Size ~ 1,000TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Games /srv/dev-disk-by-uuid-28b81fe9-324f-4956-9b99-9136a371f7db/
  # Size ~ 0,000TB
  rsync -avu --delete /srv/dev-disk-by-label-media/media/Movies /srv/dev-disk-by-uuid-28b81fe9-324f-4956-9b99-9136a371f7db/
fi

# Size > 7TB
#rsync -av --delete /srv/dev-disk-by-label-media/media/Series /srv/dev-disk-by-uuid-xxxxxxxxxxxx/