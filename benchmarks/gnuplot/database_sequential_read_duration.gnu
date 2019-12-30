load "durable_common.gnu"

data = "../data/durable_sequential_read_duration.csv"
set output dir."durable_sequential_read_duration".ext
set title "database sequential read duration"
set ylabel "microseconds per entry read"
set format y "%.1fus"

plot data using 1:2, for [i=3:21] '' using 1:i
