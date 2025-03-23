# Spleeter

bootstrap for https://github.com/deezer/spleeter

# prerequisites

- ffmpeg

## installation

```shell
make env-init
make env-create
```

## run

```shell
# example
$ wget https://github.com/deezer/spleeter/raw/master/audio_example.mp3

# split to the `./output` folder
$ bin/spleeter separate -p spleeter:2stems -o output audio_example.mp3
```

Different [models](https://github.com/deezer/spleeter?tab=readme-ov-file#about) are available:
- `spleeter:2stems` (https://github.com/deezer/spleeter/releases/download/v1.4.0/2stems.tar.gz)
- `spleeter:4stems` (https://github.com/deezer/spleeter/releases/download/v1.4.0/4stems.tar.gz)
- `spleeter:5stems` (https://github.com/deezer/spleeter/releases/download/v1.4.0/5stems.tar.gz)

