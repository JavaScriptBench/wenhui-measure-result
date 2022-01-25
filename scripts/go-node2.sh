#!/bin/bash

set -m
set -x

rm -rf ../output-node2
cp -R ../node1-1804 ../output-node2
rm -rf ../output-node2/linked-list

touch ../output-node2/result-pkg-energy.txt
chmod 755 ../output-node2/result-pkg-energy.txt
./run_pkg_energy.sh output-node2 > ../output-node2/result-pkg-energy.txt

touch ../output-node2/result-cpucore-energy.txt
chmod 755 ../output-node2/result-cpucore-energy.txt
./run_cpucore_energy.sh output-node2 > ../output-node2/result-cpucore-energy.txt

touch ../output-node2/result-dram-energy.txt
chmod 755 ../output-node2/result-dram-energy.txt
./run_dram_energy.sh output-node2 > ../output-node2/result-dram-energy.txt

touch ../output-node2/result-mem.txt
chmod 755 ../output-node2/result-mem.txt
./run_mem.sh output-node2 > ../output-node2/result-mem.txt

touch ../output-node2/result-time.txt
chmod 755 ../output-node2/result-time.txt
./run_time.sh output-node2 > ../output-node2/result-time.txt
