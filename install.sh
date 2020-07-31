#!/bin/bash

PROJ_PATH=$(cd $(dirname $0) && pwd)
cp -r ${PROJ_PATH}/code/bash_complete ~/.bash_complete
