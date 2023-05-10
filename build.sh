#!/bin/bash
# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2023 Intel Corporation

set -euxo pipefail

# Simple way to trigger build for CodeQL autobuild logic
# TODO: replace with project-wide solution, e.g. Makefile
go get -d -v ./... && go build -v ./...
