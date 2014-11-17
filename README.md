docker-gitbucket
================

Dockerfile for [GitBucket](https://github.com/takezoe/gitbucket)


How to use this image
---------------------

    docker run -p 8080:8080 hideki/gitbucket

This will store the GitBucket home in /var/lib/gitbucket.
All Gitbucket data lives in there.
You can bind mount in a volume from the host.

First, ensure that /path/to/gitbucket_home is accessible by the gitbucket user in container:

    docker run --rm -ti -v /path/to/gitbucket_home:/var/lib/gitbucket -u root hideki/gitbucket chown -R gitbucket:gitbucket /var/lib/gitbucket

then:

    docker run -p 8080:8080 -v /path/to/gitbucket_home:/var/lib/gitbucket hideki/gitbucket


### Using SSH

If you want to use SSH for Git, you map the port: `-p 29418:29418`
