import sys
import getopt
import csv
import os
import numpy as np
import scipy
from scipy import stats

argv = sys.argv[1:]
infile = None
outfile = None


compiler = None
bench = None
package = []
cpucore = []
gpu = []
dram = []
vmpeak = []
time = []


try:
    opts, args = getopt.getopt(argv, "i:")
except:
    print("Error")

for opt, arg in opts:
    if opt in ['-i']:
        infile = arg

if outfile == None:
    outfile = "stat-" + infile


with open(infile, 'rt', encoding='ascii') as f:
    reader = csv.reader(f)
    data_as_list = list(reader)
    data = data_as_list[1:-1]


#print(data)

for i in range(len(data)):
    compiler = data[i][1]
    bench = data[i][3]
    if float(data[i][5]) >= 0:
      package.append(float(data[i][5]))
    if float(data[i][7]) >= 0:
      cpucore.append(float(data[i][7]))
    if float(data[i][9]) >= 0:
      gpu.append(float(data[i][9]))
    if float(data[i][11]) >= 0:
      dram.append(float(data[i][11]))
    if float(data[i][13]) >= 0:
      vmpeak.append(float(data[i][13]))
    if float(data[i][15]) >= 0:
      time.append(float(data[i][15]))

#print(compiler, bench, package, cpucore, gpu, dram, vmpeak, time)


confidence_level = 0.95
# sample variance or variance n-1
def confidence_inter(arr):
    stat = []
    degrees_freedom = len(arr) - 1
    sample_mean = sum(arr)/len(arr)
    #print(np.var(arr))
    #print(np.std(arr))
    #print(np.var(arr, ddof=1))  # sum([(xi - m)**2 for xi in results]) / (len(results) -1)
    #print(np.std(arr, ddof=1))
    confidence_interval = scipy.stats.t.interval(confidence_level, degrees_freedom, sample_mean, np.std(arr))
    return(confidence_interval)


# sample variance or variance n-1
def confidence_inter_other(arr):
    stat = []
    degrees_freedom = len(arr) - 1
    sample_mean = sum(arr)/len(arr)
    #print(np.var(arr))
    #print(np.std(arr))
    #print(np.var(arr, ddof=1))  # sum([(xi - m)**2 for xi in results]) / (len(results) -1)
    #print(np.std(arr, ddof=1))
    #confidence_interval = scipy.stats.t.interval(confidence_level, degrees_freedom, sample_mean, np.std(arr))
    print((min(arr), max(arr)))

def delete_outliner(arr):
    confidence_interval = confidence_inter(arr)
    small = confidence_interval[0]
    big = confidence_interval[1]
    for item in arr:
        if item < small:
            arr.remove(item)
        if item > big:
            arr.remove(item)
    return arr


def delete_outliner_other(arr):
    confidence_interval = confidence_inter_other(arr)
    small = confidence_interval[0]
    big = confidence_interval[1]
    for item in arr:
        if item < small:
            arr.remove(item)
        if item > big:
            arr.remove(item)
    return arr

arr = delete_outliner(time)


bench = bench.strip()
if os.path.basename(infile).startswith('result-ch-jit'):
    compiler = 'ch-jit'
if os.path.basename(infile).startswith('result-ch-nojit'):
    compiler = 'ch-nojit'
if os.path.basename(infile).startswith('result-d8-jit'):
    compiler = 'd8-jit'
if os.path.basename(infile).startswith('result-d8-nojit'):
    compiler = 'd8-nojit'
if os.path.basename(infile).startswith('result-duk-nojit'):
    compiler = 'duk'
if os.path.basename(infile).startswith('result-espruino-nojit'):
    compiler = 'espruino'
if os.path.basename(infile).startswith('result-hermes-gengc-nojit'):
    compiler = 'hermes-gengc'
if os.path.basename(infile).startswith('result-hermes-hades-nojit'):
    compiler = 'hermes-hades'
if os.path.basename(infile).startswith('result-hermes-malloc-nojit'):
    compiler = 'hermes-malloc'
if os.path.basename(infile).startswith('result-jerry-6m-nojit'):
    compiler = 'jerry-6m'
if os.path.basename(infile).startswith('result-jerry-512k-nojit'):
    compiler = 'jerry-512k'
if os.path.basename(infile).startswith('result-js-24-jit'):
    compiler = 'js-24-jit'
if os.path.basename(infile).startswith('result-js-24-nojit'):
    compiler = 'js-24-nojit'
if os.path.basename(infile).startswith('result-js-52-jit'):
    compiler = 'js-52-jit'
if os.path.basename(infile).startswith('result-js-52-nojit'):
    compiler = 'js-52-nojit'
if os.path.basename(infile).startswith('result-js-jit'):
    compiler = 'js-jit'
if os.path.basename(infile).startswith('result-js-nojit'):
    compiler = 'js-nojit'
if os.path.basename(infile).startswith('result-jsc-jit'):
    compiler = 'jsc-jit'
if os.path.basename(infile).startswith('result-jsc-nojit'):
    compiler = 'jsc-nojit'
if os.path.basename(infile).startswith('result-mujs-nojit'):
    compiler = 'mujs'
if os.path.basename(infile).startswith('result-node-jit'):
    compiler = 'node-jit'
if os.path.basename(infile).startswith('result-node-nojit'):
    compiler = 'node-nojit'
if os.path.basename(infile).startswith('result-qjs-nojit'):
    compiler = 'qjs'
if os.path.basename(infile).startswith('result-rhino-jit'):
    compiler = 'rhino-jit'
if os.path.basename(infile).startswith('result-rhino-nojit'):
    compiler = 'rhino-nojit'


print(compiler, bench, sum(arr)/len(arr), min(arr), max(arr), np.var(arr), np.std(arr))
