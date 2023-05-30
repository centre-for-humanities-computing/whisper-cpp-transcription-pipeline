# whisper-cpp-transcription-pipeline
Containerized transcription pipeline for Whisper C++

## Usage
If you have a folder with .mp3 and .m4a files, even in subdirectories, this pipeline will
transcribe them into .txt files in the same directory, with a .transcription.txt extension.

In order to download the pipeline you should pull it from docker hub.

```bash
docker pull cicaharcos/whisper-transcriber
```

Then in order to transcribe the files you should mount the target directory to the Docker image.
You can also log progress by running docker in interactive mode.

The container will stop running once the task is completed.

```bash
docker run -v ./dat:/dat -i cicaharcos/whisper-transcriber
```
























_whisperdeez_
