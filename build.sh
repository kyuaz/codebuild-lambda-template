#!/bin/bash

. ./param.sh

if [ "$MODE" = "$ENV_PARAM_LAMBDA_DEPLOY" ]; then
    zip lambda.zip *.js *.json -r node_modules -q
elif [ "$MODE" = "$ENV_PARAM_LAMBDA_FUNCTION_UPDATE" ]; then
    zip lambda.zip *.js *.json -r node_modules -q
elif [ "$MODE" = "$ENV_PARAM_EVENTS_DEPLOY" ]; then
    echo "DO NOTHING"
else
    echo "DO NOTHING"
fi
