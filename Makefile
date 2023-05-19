# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2023 Intel Corporation

HEADER = "*******"

define print_header
	printf "%s " $(HEADER)
	printf "%-25.25s" $(1)
	printf " %s\n" $(HEADER)
endef


.PHONY: all build
all:	build

build:
	@$(call print_header,'Building project')
	-go get -d -v ./... && go build -v ./...

format:
	@$(call print_header,'Go format')
	-go fmt ./...
