#!/bin/bash
#
# prep_analysis: preps directory structure for analysis 
#
# usage: prep_analysis DIRNAME
#

if [ "$#" == "0" ]; then
	echo "ERROR: You must specify a directory name."
	echo
	echo "prep_analysis DIRNAME"
fi

DIR=$1

if [ ! -d "${DIR}" ]; then
	mkdir -p ${DIR}/R \
			 ${DIR}/data \
			 ${DIR}/docs \
			 ${DIR}/output \
			 ${DIR}/python \
			 ${DIR}/support \
			 ${DIR}/tmp 
	ls -lR ${DIR}
else
	echo "Directory "${DIR}" already exists"
fi 

