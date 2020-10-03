ASM=zasm
EMU=fuse
MACHINE=48

.PHONY: all
all: main.tap

# compile tap file from main asm file
main.tap: main.asm
	$(ASM) $< $@

# Load tap file into emulator
# & configure emulator for easier use in dev cycle
.PHONY: run
run: main.tap
	$(EMU) --auto-load $< --machine $(MACHINE) -g 3x --no-confirm-actions

# Run emulator without loading tap file
.PHONY: emu
emu:
	$(EMU) --machine $(MACHINE) -g 3x


.PHONY: clean
clean:
	$(RM) main.tap main.lst
