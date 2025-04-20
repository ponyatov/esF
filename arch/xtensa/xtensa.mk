TARGET    = xtensa-lx106-elf
OS       ?= rtos8266
APT      += gcc-xtensa-lx106 qemu-system-misc
QEMU      = qemu-system-xtensa
QEMU_CFG += -machine esp8266 -nographic

TCC = $(ESP)/$(TARGET)/bin/$(TARGET)-gcc
TXX = $(ESP)/$(TARGET)/bin/$(TARGET)-g++
TLD = $(ESP)/$(TARGET)/bin/$(TARGET)-tld

LX106_URL = https://dl.espressif.com/dl
LX106_GZ  = $(TARGET)-gcc$(LX106_GCC)-esp-$(LX106_VER)-linux-amd64.tar.gz

GZ += $(TCC)
$(TCC): $(DISTR)/ESP/$(LX106_GZ)
	cd $(ESP) ; zcat $< | tar x && touch $@
$(DISTR)/ESP/$(LX106_GZ):
	$(CURL) $@ $(LX106_URL)/$(LX106_GZ)

RTOS8266_URL = https://github.com/espressif/ESP8266_RTOS_SDK/releases/download
RTOS8266_GZ  = ESP8266_RTOS_SDK-v$(RTOS8266_VER).zip

GZ += $(DISTR)/ESP/$(RTOS8266_GZ)
$(DISTR)/ESP/$(RTOS8266_GZ):
	$(CURL) $@ $(RTOS8266_URL)/v${RTOS8266_VER)/$(RTOS8266_GZ)
