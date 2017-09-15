NO_COLOR=\033[0m
OK_COLOR=\033[32;01m
ERROR_COLOR=\033[31;01m
WARN_COLOR=\033[33;01m

.PHONY: all package index

all: package index

package:
	@scripts/helm-package.sh

index:
	@scripts/create-index.sh
