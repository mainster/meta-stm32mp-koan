SRC_URI = "git://github.com/koansoftware/linux-stm32mp1-disco.git;protocol=https;name=linux"
SRCREV = "b7774881a3f164302c2b7bd891d07bd6ef1868ad"
SRCREV_FORMAT = "linux"

S = "${WORKDIR}/git"

PV = "${LINUX_VERSION}+koan+${SRCPV}"

# -------------------------------------------------------------
# Defconfig
#
SRC_URI += "file://4.19/fragment-03-systemd.config;subdir=fragments"
SRC_URI += "file://4.19/fragment-04-optee.config;subdir=fragments"
SRC_URI += "file://4.19/fragment-05-modules.config;subdir=fragments"
