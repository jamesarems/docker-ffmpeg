# docker-ffmpeg
CentOS 8 Based ffmpeg container 

Usage :

* Show version  => `docker run -it jamesarems/ffmpeg:latest -version`
* Eg : Convert file => `docker run -it jamesarems/ffmpeg:latest -i LostInTranslation.mkv -codec copy LostInTranslation.mp4`
