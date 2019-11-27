#!/usr/bin/env bash
set -e

if [[ "${WAIT_FOR_DATA_FOLDER}" ]]; then
	echo -n "Waiting for ${WAIT_FOR_DATA_FOLDER} to be created..."
	while [[ ! -d "${WAIT_FOR_DATA_FOLDER}" ]]; do
		echo -n "."
		sleep 1;
	done
fi

mlflow "$@"
