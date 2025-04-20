TRIPLET   = xtensa-lx106-elf
OS       ?= rtos8266
APT      += gcc-xtensa-lx106 qemu-system-misc
QEMU      = qemu-system-xtensa
QEMU_CFG += -machine esp8266 -nographic

LX106_URL = https://dl.espressif.com/dl
LX106_GZ  = $(TRIPLET)-gcc$(LX106_GCC)-esp-$(LX106_VER)-linux-amd64.tar.gz

GZ += $(DISTR)/ESP/$(LX106_GZ)
$(DISTR)/ESP/$(LX106_GZ):
	$(CURL) $@ $(LX106_URL)/$(LX106_GZ)

RTOS8266_URL = https://github.com/espressif/ESP8266_RTOS_SDK/releases/download
RTOS8266_GZ  = ESP8266_RTOS_SDK-v$(RTOS8266_VER).zip

GZ += $(DISTR)/ESP/$(RTOS8266_GZ)
$(DISTR)/ESP/$(RTOS8266_GZ):
	$(CURL) $@ $(RTOS8266_URL)/v${RTOS8266_VER)/$(RTOS8266_GZ)
