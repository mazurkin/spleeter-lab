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
$ make env-shell
$ wget https://github.com/deezer/spleeter/raw/master/audio_example.mp3
$ spleeter separate -p spleeter:2stems -o output audio_example.mp3
```
