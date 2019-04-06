#!/bin/bash

if [ -n "${REGION}" ] && [ -n "${LAMBDA_ALIAS}" ] && [ -n "${LAMBDA_VERSION}" ]; then
    aws lambda update-alias --region ${REGION} --function-name ${PRJ_NAME} --description "alias set by codebuild cli" --function-version ${LAMBDA_VERSION} --name ${LAMBDA_ALIAS}
else
    echo "variable undefined when updating lambda alias"
fi
