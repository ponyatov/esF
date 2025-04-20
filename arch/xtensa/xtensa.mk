TRIPLET   = xtensa-lx106-elf
OS       ?= rtos8266
APT      += gcc-xtensa-lx106 qemu-system-misc
QEMU      = qemu-system-xtensa
QEMU_CFG += -machine esp8266 -nographic
