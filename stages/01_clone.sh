#!/usr/bin/env bash

echo
echo "Cloning Application"
if [[ -z "${BRANCH_NAME}" ]]; then
    git clone "${GITHUB_URL:?}" .
else
    git clone -b ${BRANCH_NAME} "${GITHUB_URL:?}" .
fi
