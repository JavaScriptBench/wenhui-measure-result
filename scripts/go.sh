#!/bin/bash

touch result-pkg-energy.txt
chmod 755 result-pkg-energy.txt
./run_pkg_energy.sh > result-pkg-energy.txt

touch result-cpucore-energy.txt
chmod 755 result-cpucore-energy.txt
./run_cpucore_energy.sh > result-cpucore-energy.txt

touch result-dram-energy.txt
chmod 755 result-dram-energy.txt
./run_dram_energy.sh > result-dram-energy.txt

touch result-mem.txt
chmod 755 result-mem.txt
./run_mem.sh > result-mem.txt

touch result-time.txt
chmod 755 result-time.txt
./run_time.sh > result-time.txt
