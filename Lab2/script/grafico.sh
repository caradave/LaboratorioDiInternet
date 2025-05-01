#!/bin/bash

set xlabel "size S [bytes]"
set ylabel "RTT [ms]"

plot "misura.dat" using 1:2 title "RTT in funzione di S" with linespoint

pause 10

set term png;
set output "plotRTT.png"

replot
