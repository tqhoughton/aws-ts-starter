
#!/bin/bash
# change these if needed
CUR_DIR="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
mkdir -p "${CUR_DIR}/cloudformation/build/"
CF_DIR="${CUR_DIR}/cloudformation"
# THIS BUCKET MUST ALREADY EXIST
S3_DEPLOYMENT_BUCKET=`cat ${CUR_DIR}/../bucket.name`
STACK_NAME=`cat ${CUR_DIR}/../project.name`
echo $STACK_NAME
echo 'compiling...'
npm run tsc &&
npm run build &&
echo 'deploying to AWS...' &&
# root stack
aws cloudformation package --template-file $CF_DIR/index.yaml --s3-bucket $S3_DEPLOYMENT_BUCKET --output-template-file $CF_DIR/build/index.packaged.yaml &&
aws cloudformation deploy --template-file $CF_DIR/build/index.packaged.yaml --stack-name $STACK_NAME --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND
