### how to build

```
docker build -t media-renamer . 
```

### how to run

Let's cover what this thing should do. It will essentially move and rename all images and videos to a new/ folder. Any files not able to be processed due to validation errors will be left alone. This command should be run inside of the directory of pictures you want to rename. 

So let's say you have an image called `IMG1234.png` that was made on `2024-04-01` then you can expect that file to be moved to `new/2024-04-01_IMG1234.png`

```
docker run -v $PWD:/tmp -it media-renamer 
```

### additional stuff

As a side quest, you can run exiftool directly for troubleshooting

```
docker run --entrypoint /usr/bin/exiftool -v $PWD:/tmp -it media-renamer ./Pictures/Screenshots/linear-mobile.png
```

