# image merging (use imagemagick)

#### vertical
```
convert -append 1.jpg 2.jpg out.jpg
convrty -append *.jpg out.jpg
```

#### horizontally
```
convert +append 1.jpg 2.jpg out.jpg
convert +append *.jpg out.jpg
```

#### Rotate Image
```
convert 1.jpg -rotate 90  out.jpg
```
