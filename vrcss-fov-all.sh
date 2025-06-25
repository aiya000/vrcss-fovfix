#!/usr/bin/env zsh

if [[ $(ls ./vrcss-fov-dist | wc -l) != 0 ]] ; then
  echo './vrcss-fov-dist is not empty, please clean it first' 1>&2
  exit 1
fi

if [[ $# -eq 1 ]] ; then
  fov=$1
else
  fov=50
fi

echo "Processing with FOV $fov"

for source in $(ls ./vrcss-fov-source | grep -v .gitkeep) ; do
  echo "Processing $source"
  ./vrcss-fov.sh "$fov" "./vrcss-fov-source/$source"
done

echo "Done\n"

echo 'Result Images:'
ls ./vrcss-fov-dist | grep -v .gitkeep
echo

echo $'Don\'t forget cleaning images in ./vrcss-fov-source'
