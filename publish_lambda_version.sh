#!/bin/bash

if [ -n "${REGION}" ] && [ -n "${PRJ_NAME}" ]; then
    aws lambda publish-version --region ${REGION} --function-name ${PRJ_NAME}
else
    echo "variable undefined when publishing lambda version"
fi
