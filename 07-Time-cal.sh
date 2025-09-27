#!/bin/bash
DATE=date +%s
START_TIME=$($DATE)
sleep 10
END_TIME=$($DATE)

TOTAL_TIME=$(($END_TIME-$START_TIME))


echo "total time is $TOTAL_TIME in Seconds"