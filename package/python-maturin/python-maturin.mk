################################################################################
#
# python-maturin
#
################################################################################

PYTHON_MATURIN_VERSION = 0.14.5
PYTHON_MATURIN_SOURCE = maturin-$(PYTHON_MATURIN_VERSION).tar.gz
PYTHON_MATURIN_SITE = https://files.pythonhosted.org/packages/36/83/2bdec738921e253d774ab8b9e99f4540a406ad0d8a1442c84575e5506686
PYTHON_MATURIN_SETUP_TYPE = setuptools
PYTHON_MATURIN_LICENSE = Apache-2.0 or MIT
PYTHON_MATURIN_LICENSE_FILES = license-apache license-mit
HOST_PYTHON_MATURIN_DEPENDENCIES = \
	host-python-setuptools-rust \
	host-rustc
HOST_PYTHON_MATURIN_ENV = \
	$(HOST_PKG_CARGO_ENV) \
	PYO3_CROSS_LIB_DIR="$(HOST_DIR)/lib/python$(PYTHON3_VERSION_MAJOR)"
# We need to vendor the Cargo crates at download time
PYTHON_MATURIN_DOWNLOAD_POST_PROCESS = cargo
PYTHON_MATURIN_DOWNLOAD_DEPENDENCIES = host-rustc
HOST_PYTHON_MATURIN_DL_ENV = $(HOST_PKG_CARGO_ENV)

$(eval $(host-python-package))
