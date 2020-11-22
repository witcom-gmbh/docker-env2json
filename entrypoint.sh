#!/bin/sh
if [[ -z "${OUTPUT}" ]]; then
  echo "OUTPUT is undefined "
  exit 1
fi

PREFIX="${PREFIX:-APP_}"

jq -n env | jq "with_entries( select(.key|startswith(\"${PREFIX}\") ) )" > ${OUTPUT}
