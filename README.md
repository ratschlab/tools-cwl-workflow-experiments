# tools-cwl-workflow-experiments

Very simple and very artifical workflow to experiment with containers and cwl.

## Pipeline

Currently, a two stage "pipeline" is implemented, overall taking some textfile as input and generating some textfile containing one number as output:
1. line count: the number of lines of the input file are determined and written into some output file `O1`
2. complex function: the integer `n` in the output file `O1` is read and some function `f(n, e)` is computed, where `e` is some natural number tuning the runtime of `f` (the higher the longer). This variable `e` can be used to simulate some longer running CPU-bound process. The result is again written to some output file.

## Running using CWL

TODO

