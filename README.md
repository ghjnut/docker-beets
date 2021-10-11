# docker-beets
This runs the beets.io container from the hub

## FLAC integrity check

    find ./ -type f -iname '*.flac' -print0 | xargs -0 flac -wst

    /mnt/clean # find ./ -type f -iname '*.flac' -print0 | xargs -0 flac -wst
    11 Congratulations.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    09 Hobo's Blues.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    02 Duncan.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    01 Mother and Child Reunion.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    03 Everything Put Together Falls Apart.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    13 Duncan (demo).flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    14 Paranoia Blues (unreleased).flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    04 Run That Body Down.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    05 Armistice Day.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    08 Papa Hobo.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    06 Me and Julio Down by the Schoolyard.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    07 Peace Like a River.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    10 Paranoia Blues.flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO
    12 Me and Julio Down by the Schoolyard (demo).flac: WARNING, cannot check MD5 signature since it was unset in the STREAMINFO


# RUNNING

import to pick up new things:

    beet import /data/downloads/completed

skip multi-cds it doesn't recognize then import manually with

    beet import --flat -I /data/downloads/completed/Pete\ Yorn\ -\ musicforthemorningafter\ FLAC/

multi-cd:
- /data/downloads/completed/Anne-Sophie Mutter - 2008 - Bach, Violin Concertos; Gubaidulina, In Tempus Praesens [FLAC]
- /data/downloads/completed/Alan Moore and friends - Unearthing Boxset (2010) FLAC
- /data/downloads/completed/2009 - Enter the Vaselines/Disc Two
- /data/downloads/completed/Grateful\ Dead\ -\ Fillmore\ West\ 1969/
- Eat a Peach [FLAC]
- /data/downloads/completed/The Beatles - 1968 - The Beatles (White Album) (2009 Stereo Remaster) What/Beatles - 1968 - The Beatles [The White Album] (disc 2)

unfound:
- /data/downloads/completed/The Avalanches - Gimix
- caveman totem

Only in /data/downloads/unregistered/:
- The Cranberries - 1993 - Everybody Else Is Doing It, So Why Can't We [FLAC]
- KANYE WEST - MY BEAUTIFUL DARK TWISTED FANTASY - FLAC - 2010
- Jerry Goldsmith - Alien - FLAC
