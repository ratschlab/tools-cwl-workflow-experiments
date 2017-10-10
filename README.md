# tools-cwl-workflow-experiments

Very simple and very artifical workflow to experiment with containers and cwl.

## Pipeline

Currently, a two stage "pipeline" is implemented, overall taking some textfile as input and generating some textfile containing one number as output:
1. line count: the number of lines of the input file are determined and written into some output file `O1`
2. complex function: the integer `n` in the output file `O1` is read and some function `f(n, e)` is computed, where `e` is some natural number tuning the runtime of `f` (the higher the longer). This variable `e` can be used to simulate some longer running CPU-bound process. The result is again written to some output file.

## Running using Dockstore

1. Follow instructions https://github.com/ga4gh/dockstore#for-dockstore-users to setup dockstore. It seems that you need to setup a dockstore account first. Note, that a specific version of `cwltool` is required. This version is however a bit outdated.
2. If not done in point 1 get and run dockstore binary https://github.com/ga4gh/dockstore/releases/download/1.2.10/dockstore
3. Go to https://dockstore.org/workflows/ratschlab/tools-cwl-workflow-experiments and follow instructions in the "Info" tab in the section "Launch with". In case you are on Mac OS X, you'll need to tweak the temporary directory by issueing `export TMPDIR=/tmp/docker_tmp` first.


