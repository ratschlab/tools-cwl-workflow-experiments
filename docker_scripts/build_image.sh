#!/bin/bash

BUILD_CONTEXT=/Users/marc/git/tools-cwl-workflow-experiments

docker build -f ${BUILD_CONTEXT}/Dockerfile -t quay.io/ratschlab/workflow-experiment ${BUILD_CONTEXT}

						      

