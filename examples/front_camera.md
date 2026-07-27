# Front Camera Example

This example sketches a typical export from a bag extraction pipeline.

```csv
sec,nsec,frame_id,path
42,0,camera/front,front_000001.png
42,33333333,camera/front,front_000002.png
```

```csv
sec,nsec,frame_id,x,y,theta
42,1000000,map,0.0,0.0,0.0
42,34000000,map,0.1,0.0,0.01
```

The library can parse both files and align them with a nanosecond tolerance.

