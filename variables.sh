#!/bin/bash
set -x
ACCOUNT_NAME="$1"


function setup_aws_accountName {
    if [[ ${ACCOUNT_NAME} == 'acctest1' ]]; then
        echo "ACCOUNTNAME=acctest1" >> $GITHUB_ENV
    elif [[ ${ACCOUNT_NAME} == 'acctest2' ]]; then
         echo "ACCOUNTNAME=acctest2" >> $GITHUB_ENV
    elif [[ ${ACCOUNT_NAME} == 'acctest3' ]]; then
         echo "ACCOUNTNAME=acctest3" >> $GITHUB_ENV
    else
         echo "ACCOUNTNAME=defaultacc" >> $GITHUB_ENV
    fi
}

setup_aws_accountName

