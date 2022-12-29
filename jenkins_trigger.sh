#!/bin/bash

JENKINS_USER="admin"
JENKINS_PASSWORD="1234"
JENKINS_HOME_URL="http://127.0.0.1:8020"
JOB_NAME="ansible_sample"

CRUMB_XPATH='concat(//crumbRequestField,":",//crumb)'
CRUMB_URL="$JENKINS_HOME_URL/crumbIssuer/api/xml?xpath=$CRUMB_XPATH"
JOB_URL="$JENKINS_HOME_URL/job/$JOB_NAME/build?delay=0sec"
CRUMB_JSON_URL="$(curl -s -X GET $JENKINS_HOME_URL/crumbIssuer/api/json --user $JENKINS_USER:$JENKINS_PASSWORD)"
CRUMB="$(echo $CRUMB_JSON_URL | jq -r '.crumb' )"
echo $CRUMB
echo $JENKINS_USER
echo $JENKINS_PASSWORD
echo $JENKINS_HOME_URL
echo $JOB_NAME
# curl -u "$JENKINS_USER:$JENKINS_PASSWORD" -H "$CRUMB" -X POST $JENKINS_HOME_URL/job/$JOB_NAME/build?delay=0sec&buildWithParameters?ANSIBLE_MSG=hai
# curl -X POST $JENKINS_HOME_URL/job/$JOB_NAME/build --user $JENKINS_USER:$JENKINS_PASSWORD -H $CRUMB
# curl -v -X POST http://jenkins-url:8080/job/<job-name>/buildWithParameters?param=value --user <username>:<token>
