$(ELF): $(C) $(H)
	$(TXX) -o $@ $(C)
