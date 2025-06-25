#!/usr/bin/env zsh

dist=./vrcss-fov-dist

if [[ ! -d $dist ]] ; then
  mkdir $dist
fi

if [[ $# -eq 2 ]] ; then
  fov=$1
  in=$2
elif [[ $# -eq 1 ]] ; then
  fov=50
  in=$1
else
  echo 'invalid'
  return 1
fi

k=$((fov / 60.0))
k2=$(((k - k * k * k) / 6.0))

ext=${in##*.}
filename=${in##*/}
name=${filename%%.$ext}
out=$dist/$name-fixfov.$ext

convert -distort barrel "0 $k2 0 $k" "$in" "$out"
