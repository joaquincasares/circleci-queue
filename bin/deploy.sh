#!/usr/bin/env bash

set -ex

RELEASE_YML=packed.yml
circleci config pack src > ${RELEASE_YML}
circleci orb validate ${RELEASE_YML}
circleci orb publish ${RELEASE_YML} weavegrid/queue@dev:first
