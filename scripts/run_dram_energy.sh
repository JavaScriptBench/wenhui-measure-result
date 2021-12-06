#!/bin/bash


echo " engine bench mean min max variance standard-deviation"

search_dir1="./../output/binary-trees"
search_dir2="./../output/fannkuch-redux"
search_dir3="./../output/mandelbrot"
search_dir4="./../output/n-body"
search_dir5="./../output/spectral-norm"

search_dir6="./../output/3d-cube"
search_dir7="./../output/3d-morph"
search_dir8="./../output/ray-tracing"

search_dir9="./../output/strconcat"

search_dir10="./../output/loop"
search_dir11="./../output/array-every"
search_dir12="./../output/array-forloop"
search_dir13="./../output/array-forEach"
search_dir14="./../output/array-some"
search_dir15="./../output/array-findIndex"
search_dir16="./../output/array-find"

search_dir17="./../output/linked-list"
search_dir18="./../output/iter-linked-list"
search_dir19="./../output/double-linked-list"
search_dir20="./../output/iter-double-linked-list"


for entry in "$search_dir1"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir2"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir3"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir4"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir5"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir6"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir7"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir8"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir9"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir10"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir11"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir12"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir13"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir14"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir15"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir16"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir17"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir18"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir19"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


for entry in "$search_dir20"/*
do
  python3 stat_dram_energy.py -i  "$entry"
done


