IN_FILE=$1

echo "Converting $IN_FILE to .wav"
OUT_FILE="${IN_FILE%.*}.wav"
ffmpeg -i $IN_FILE -y -acodec pcm_s16le -ac 1 -ar 16000 $OUT_FILE
