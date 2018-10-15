
# iCloud Photos Downloader

* A command-line tool to download all your iCloud photos.
* Works on Linux, Windows, and MacOS.
* Run as a [scheduled cron task](#cron-task) to keep a local backup of your photos and videos.



## Docker

This script is available in a Docker image: `docker pull ndbroadbent/icloudpd`

Usage:

```bash
# Downloads all photos to ./Photos

$ docker pull bushari/icloudpd
$ docker run -it --rm --name icloud -v $(pwd)/Photos:/data bushari/icloudpd:latest \
    icloudpd /data \
    --username=testuser@example.com \
    --password=pass1234 \
    --size=original \
    --recent 500 \
    --auto-delete
```
