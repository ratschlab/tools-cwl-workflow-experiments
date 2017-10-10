#!/usr/bin/env python3

import sys
import math
import time
import logging

logger = logging.getLogger('complex_computation')

if len(sys.argv) != 4:
    print("requires 3 arguments: input file path, exponent, output file path")
    sys.exit(2)

input_path = sys.argv[1]
exponent = int(sys.argv[2])
output_path = sys.argv[3]

start_t = time.time()

logger.debug("attempting to read from {}".format(input_path))
with open(input_path, 'r') as f:
    n = int(f.readline())
    result = math.ceil(math.log(math.factorial(2**exponent + n)))

logger.debug("attempting to write to {}".format(output_path))
with open(output_path, 'w') as f:
    f.writelines(str(result) + '\n')

logger.info("computed successfully in {}".format(time.time() - start_t))
