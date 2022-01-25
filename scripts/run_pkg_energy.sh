#!/bin/bash


echo " engine bench mean min max variance standard-deviation"

search_dir1="./../$1/binary-trees"
search_dir2="./../$1/fannkuch-redux"
search_dir3="./../$1/mandelbrot"
search_dir4="./../$1/n-body"
search_dir5="./../$1/spectral-norm"

search_dir6="./../$1/3d-cube"
search_dir7="./../$1/3d-morph"
search_dir8="./../$1/ray-tracing"

search_dir9="./../$1/strconcat"

search_dir10="./../$1/loop"
search_dir11="./../$1/array-every"
search_dir12="./../$1/array-forloop"
search_dir13="./../$1/array-forEach"
search_dir14="./../$1/array-some"
search_dir15="./../$1/array-findIndex"
search_dir16="./../$1/array-find"

#search_dir17="./../$1/linked-list"
search_dir18="./../$1/iter-linked-list"
search_dir19="./../$1/double-linked-list"
search_dir20="./../$1/iter-double-linked-list"


for entry in "$search_dir1"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir2"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir3"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir4"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir5"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir6"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir7"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir8"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir9"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir10"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir11"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir12"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir13"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir14"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir15"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir16"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done




for entry in "$search_dir18"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir19"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done


for entry in "$search_dir20"/*
do
  python3 stat_pkg_energy.py -i  "$entry"
done
