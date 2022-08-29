# build paths
TOPDIR := .
BUILD_SYSTEM := $(TOPDIR)/build
BUILD_GAPPS := $(BUILD_SYSTEM)/gapps.sh
OUTDIR := $(TOPDIR)/out
LOG_BUILD := /tmp/gapps_log

distclean:
	@rm -fr $(OUTDIR)
	@echo "Output removed! Ready for a clean build"

gapps_arm:
	@echo "Compiling GApps for arm..."
	@bash $(BUILD_GAPPS) arm armv7l 2>&1

gapps_arm64:
	@echo "Compiling GApps for arm64..."
	@bash $(BUILD_GAPPS) arm64 aarch64 2>&1

gapps_x86:
	@echo "Compiling GApps for x86..."
	@bash $(BUILD_GAPPS) x86 2>&1

gapps_x86_64:
	@echo "Compiling GApps for x86_64..."
	@bash $(BUILD_GAPPS) x86_64 2>&1
