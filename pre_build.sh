#!/bin/bash

. ./param.sh

if [ "$MODE" = "$ENV_PARAM_LAMBDA_DEPLOY" ]; then
    npm install
    npm test
elif [ "$MODE" = "$ENV_PARAM_LAMBDA_FUNCTION_UPDATE" ]; then
    npm install
    npm test
elif [ "$MODE" = "$ENV_PARAM_EVENTS_DEPLOY" ]; then
    echo "DO NOTHING"
elif [ "$MODE" = "$ENV_PARAM_CREATE_ALIAS" ]; then
    . ./create_lambda_alias.sh
elif [ "$MODE" = "$ENV_PARAM_UPDATE_ALIAS" ]; then
    . ./update_lambda_alias.sh
elif [ "$MODE" = "$ENV_PARAM_PUBLISH_VERSION" ]; then
    . ./publish_lambda_version.sh
else
    echo "DO NOTHING"
fi
