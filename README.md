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
- `spleeter:2stems`
- `spleeter:4stems`
- `spleeter:5stems`

