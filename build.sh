#!/bin/bash
# SPDX-License-Identifier: Apache-2.0
# Copyright (c) 2023 Intel Corporation

set -euxo pipefail

go get -d -v ./... && go build -v ./...
