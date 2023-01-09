set terminal png size 1920,1080
set output outputname
set datafile separator " "

set ytics nomirror
set y2tics

plot datafile using 0:1 with points pointtype 4 pointsize 0.2 title "Mem", \
     ""       using 0:2 axis x1y2 with points pointtype 6 pointsize 0.2 title "kbRead",\
     ""       using 0:3 axis x1y2 with points pointtype 8 pointsize 0.2 title "kbWrite"

