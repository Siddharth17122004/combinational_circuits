# Compiler
IVERILOG = iverilog
VVP = vvp

# Files
SRC = src/*.v
TB = tb/*.v
OUT = sim/output.vvp

# Default target
all: run

# Compile
compile:
	$(IVERILOG) -o $(OUT) $(SRC) $(TB)

# Run simulation
run: compile
	$(VVP) $(OUT)

# Clean
clean:
	rm -f sim/*.vvp sim/*.vcd

# Git add + commit + push
push:
	git add .
	git commit -m "update"
	git push
