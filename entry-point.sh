#!/bin/bash -e

readonly gitbucket_war=/opt/gitbucket/gitbucket.war
readonly gitbucket_home=/var/lib/gitbucket

if [ -z "$1" ]; then
    if [ -z "$GITBUCKET_OPTS" ]; then
        GITBUCKET_OPTS="--prefix=/gitbucket"
    fi

    java $JAVA_OPTS -jar $gitbucket_war --gitbucket.home=$gitbucket_home $GITBUCKET_OPTS
else
    exec "$@"
fi
