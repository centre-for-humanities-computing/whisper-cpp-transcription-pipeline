IN_FILE=$1
IN_FILE=$(realpath $IN_FILE)

echo "Transcribing: $IN_FILE"

cd models/whisper.cpp/
ls models
OUT_FILE="${IN_FILE%.*}.transcription.txt"
rm -f $OUT_FILE
./main $IN_FILE > $OUT_FILE
cd ../..
