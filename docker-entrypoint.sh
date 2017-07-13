#!/bin/sh

github-release info \
   --user $GITHUB_USER \
    --repo $GITHUB_REPO \
    --tag $GIT_TAG || \
github-release release \
    --user $GITHUB_USER \
    --repo $GITHUB_REPO \
    --tag $GIT_TAG \
    --pre-release 

github-release upload \
    --user $GITHUB_USER \
    --repo $GITHUB_REPO \
    --tag $GIT_TAG \
    --name "$BINARY_NAME" \
    --file $BINARY_NAME
