#!/bin/sh

for f in logs/*.log; do
  plotPath=${f/logs/}
  gnuplot -p -e "set terminal png;set output 'plots/$plotPath.png';plot '$f'"
done

