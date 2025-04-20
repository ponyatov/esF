$(ELF): $(C) $(H) mk/rule.mk
	$(TXX) -o $@ $(C)
	$(TSIZE) $@
