# Makefile for LaTeX resume compilation

# Variables
SRC_DIR = src
BUILD_DIR = build
MAIN_FILE = resume
TEX_FILE = $(SRC_DIR)/$(MAIN_FILE).tex
PDF_FILE = $(BUILD_DIR)/$(MAIN_FILE).pdf

# Default target
all: $(PDF_FILE)

# Compile the resume
$(PDF_FILE): $(TEX_FILE)
	@echo "Compiling resume..."
	@mkdir -p $(BUILD_DIR)
	pdflatex -output-directory=$(BUILD_DIR) -jobname=$(MAIN_FILE) $(TEX_FILE)
	@echo "Resume compiled successfully: $(PDF_FILE)"

# Clean build artifacts
clean:
	@echo "Cleaning build directory..."
	rm -rf $(BUILD_DIR)/*
	@echo "Build directory cleaned."

# Open the compiled PDF
open: $(PDF_FILE)
	open $(PDF_FILE)

# Watch for changes and recompile (requires fswatch: brew install fswatch)
watch:
	@echo "Watching for changes... (Press Ctrl+C to stop)"
	fswatch -o $(SRC_DIR) | xargs -n1 -I{} make

# Force rebuild
rebuild: clean all

.PHONY: all clean open watch rebuild

# Help target
help:
	@echo "Available targets:"
	@echo "  all      - Compile the resume (default)"
	@echo "  clean    - Remove all build artifacts"
	@echo "  open     - Open the compiled PDF"
	@echo "  watch    - Watch for changes and auto-recompile"
	@echo "  rebuild  - Clean and rebuild"
	@echo "  help     - Show this help message"
