#!/bin/sh

for file in logs/*.log; do
  fileName=${file/logs/}
  gnuplot -e "datafile='$file'; outputname='plots$fileName.png'" gnuplot.p
done
