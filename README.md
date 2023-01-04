# Memory Log and Plot

> Log ram over the time with one script and then plot it with another.

Run first script as many times as needed it will log system ram on separated
file each time you run it.

Run second script to convert all the `logs/*.log` to `plots/*.png` files.

## Requiremets

* [gnuplot](http://www.gnuplot.info/)

## Log ram

```sh
sh memory-log.sh
```

## Plot

```sh
sh plot-logs.sh
```
