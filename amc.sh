#!/bin/sh -xu

torrentid="$1"
torrentname="$2"
torrentpath="$3/$2"
output="/mnt/user/Downloads/__FILEBOT"

filebot -script 'fn:amc' \
--output "$output" \
--action move \
--conflict skip -non-strict \
--order Airdate \
--lang en \
--def ut_dir="$torrent_path" ut_title="$torrent_name" music="n" clean="y" ignore=".jpg|.txt" seriesFormat="/storage/data/Plex/TV Shows/{ ~plex.id * { ' [$vc]' } }" movieFormat="/storage/data/Plex/Movies/{ ~plex.id * { ' {edition-$edition}' } * { ' [$vc]' } % { ' {edition-$edition}' } }" movieDB="TheMovieDB" seriesDB="TheMovieDB:TV" subtitles="eng" excludeList=".excludes" \
--apply refresh \
--log all \
--log-file /mnt/user/appdata/Filebot/logs/filebot.log;
