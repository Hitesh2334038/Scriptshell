#!/bin/bash
echo "enter time in seconds"
read time
hour=` expr $time / 3600 `

time=` expr $time % 3600 `

min=` expr $time / 60 `

sec=` expr $time % 60 `

echo "Time is $hour:$min:$sec "
