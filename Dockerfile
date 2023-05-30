FROM debian:stable

RUN apt update
RUN apt upgrade
RUN apt install build-essential -y 
RUN apt install cmake -y 
RUN apt install git -y 
RUN apt install ffmpeg -y 
RUN apt install wget -y

copy src src

RUN bash src/build_fetch_whisper.sh

CMD bash src/convert_transcribe_all.sh
