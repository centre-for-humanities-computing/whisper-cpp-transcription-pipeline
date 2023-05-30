rm -rf models/
mkdir models
cd models
echo "Cloning whisper CPP repo."
git clone https://github.com/ggerganov/whisper.cpp.git
cd "whisper.cpp"
echo "Downloading base model."
bash ./models/download-ggml-model.sh base.en
echo "Building model."
make
