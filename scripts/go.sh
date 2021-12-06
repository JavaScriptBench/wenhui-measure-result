#!/bin/bash

set -m 
set -x

cp -R ../node1-1804 ../output

touch ../output/result-pkg-energy.txt
chmod 755 ../output/result-pkg-energy.txt
./run_pkg_energy.sh > ../output/result-pkg-energy.txt

touch ../output/result-cpucore-energy.txt
chmod 755 ../output/result-cpucore-energy.txt
./run_cpucore_energy.sh > ../output/result-cpucore-energy.txt

touch ../output/result-dram-energy.txt
chmod 755 ../output/result-dram-energy.txt
./run_dram_energy.sh > ../output/result-dram-energy.txt

touch ../output/result-mem.txt
chmod 755 ../output/result-mem.txt
./run_mem.sh > ../output/result-mem.txt

touch ../output/result-time.txt
chmod 755 ../output/result-time.txt
./run_time.sh > ../output/result-time.txt
