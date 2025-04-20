$(ELF): $(C) $(H) $(CP) $(HP) $(MK)
	$(TXX) -o $@ $(C) $(CP)
	$(TSIZE) $@

# $(ELF): $(C) $(H) $(CP) $(HP) $(MK) $(CMK)
# 	cmake --fresh --preset ${HW}
# 	cmake --build --preset ${HW} -j
