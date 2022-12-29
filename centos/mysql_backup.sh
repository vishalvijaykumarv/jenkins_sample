#!/bin/bash

DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
DATE=$(date +%H_%M_%S)
FILE_NAME="$DB_NAME-$DATE.sql"
AWS_SECRET=$4
BUCKET_NAME=$5
mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$FILE_NAME

export AWS_ACCESS_KEY_ID=AKIA4EZ2TQVMNK5CBBMW && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
echo "Uploading your $FILE_NAME backup" && \
aws s3 cp /tmp/$FILE_NAME s3://$BUCKET_NAME/$FILE_NAME