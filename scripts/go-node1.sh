#!/bin/bash

set -m
set -x

rm -rf ../output-node1
cp -R ../node1-1804 ../output-node1
rm -rf ../output-node1/linked-list

touch ../output-node1/result-pkg-energy.txt
chmod 755 ../output-node1/result-pkg-energy.txt
./run_pkg_energy.sh output-node1 > ../output-node1/result-pkg-energy.txt

touch ../output-node1/result-cpucore-energy.txt
chmod 755 ../output-node1/result-cpucore-energy.txt
./run_cpucore_energy.sh output-node1 > ../output-node1/result-cpucore-energy.txt

touch ../output-node1/result-dram-energy.txt
chmod 755 ../output-node1/result-dram-energy.txt
./run_dram_energy.sh output-node1 > ../output-node1/result-dram-energy.txt

touch ../output-node1/result-mem.txt
chmod 755 ../output-node1/result-mem.txt
./run_mem.sh output-node1 > ../output-node1/result-mem.txt

touch ../output-node1/result-time.txt
chmod 755 ../output-node1/result-time.txt
./run_time.sh output-node1 > ../output-node1/result-time.txt
