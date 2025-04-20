.PHONY: all run
all: $(ELF) $(F)
run: $(ELF) $(F)
	$(QEMU) $(QEMU_CFG) -kernel $<
