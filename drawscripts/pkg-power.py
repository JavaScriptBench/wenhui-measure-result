import sys
import getopt
import csv
import numpy as np
import scipy
import os
from scipy import stats


Names = []
Values = []

file = open("../node1-pkg-power.csv",'rb')
numpy_array = np.loadtxt(file, delimiter=",")
print(numpy_array)
