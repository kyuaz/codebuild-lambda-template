#!/bin/bash

. ./param.sh

if [ "$MODE" = "$ENV_PARAM_LAMBDA_DEPLOY" ]; then
    sh upload.sh
    sh deploy.sh

    echo "creating lambda alias.."
    LAMBDA_VERSION="\$LATEST"
    LAMBDA_ALIAS="DEV"
    . ./create_lambda_alias.sh

    echo "publishing lambda version.."
    . ./publish_lambda_version.sh
elif [ "$MODE" = "$ENV_PARAM_LAMBDA_FUNCTION_UPDATE" ]; then
    aws lambda update-function-code --function-name ${PRJ_NAME} --zip-file fileb://lambda.zip
elif [ "$MODE" = "$ENV_PARAM_EVENTS_DEPLOY" ]; then
    sh upload.sh
    sh deploy.sh
else
    echo "DO NOTHING"
fi
