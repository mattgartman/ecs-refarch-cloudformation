#!/bin/bash
aws cloudformation create-stack --stack-name mrgEcs \
    --template-body https://s3.amazonaws.com/cf-template-ecs-mrg123/master.yaml \
    --parameters ParameterKey=s3BucketUrl,ParameterValue='https://s3.amazonaws.com/cf-template-ecs-mrg123' \
    --capabilities 'CAPABILITY_NAMED_IAM'
