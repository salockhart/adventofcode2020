#!/bin/bash

cd "$(dirname "$0")"

if [ -r .cookie ]; then
  . .cookie
fi

export TZ=EST
thisyear="$(date +%Y)"
thismonth="$(date +%m)"
thisday="$(date +%d)"

year=2020
for day in {1..25}; do
  if [ "$thisyear" -ne "$year" -o "$thismonth" -ne 12 -o "$day" -gt "$thisday" ]; then
    exit 0
  fi
  filename=in/day"$(printf "%02d" $day)".txt
  if [ -r "$filename" ]; then
    continue  # make sure we don't fetch the same file twice!
  fi
  curl -sS -o "$filename" -b "$AOC_COOKIE" https://adventofcode.com/"$year"/day/"$day"/input
done