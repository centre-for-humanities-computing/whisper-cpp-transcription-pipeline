shopt -s globstar

echo "Converting all Mp3 files to .wav"
for file in ./**/*.mp3; do
  bash src/to_wav.sh $file
done

echo "Converting all M4A files to .wav"
for file in ./**/*.m4a; do
  bash src/to_wav.sh $file
done

echo "Transcribing all .wavs to txt files"
for file in ./**/*.wav; do
  bash src/transcribe.sh $file
done

echo "DONE"
