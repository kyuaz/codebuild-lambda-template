#!/bin/bash

. ./param.sh

echo "S3_DEPLOY_DIR: ${S3_DEPLOY_DIR}"
echo "S3_TEMPLATE_DIR: ${S3_TEMPLATE_DIR}"
aws s3 cp ./${TEMPLATE_FILE} $S3_TEMPLATE_DIR

if [ "$MODE" = "$ENV_PARAM_LAMBDA_DEPLOY" ]; then
    aws s3 cp ./lambda.zip $S3_DEPLOY_DIR
elif [ "$MODE" = "$ENV_PARAM_LAMBDA_FUNCTION_UPDATE" ]; then
    aws s3 cp ./lambda.zip $S3_DEPLOY_DIR
fi

aws s3 ls $S3_TEMPLATE_DIR

