# Resume

This repository contains my professional resume built with LaTeX.

## Project Structure

```
├── src/                    # Source files
│   └── resume.tex         # Main LaTeX resume file
├── build/                 # Compiled output (git-ignored)
├── Makefile              # Build automation
├── .gitignore            # Git ignore patterns
└── README.md             # This file
```

## Building the Resume

### Prerequisites

- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- Make (optional, for using Makefile)

### Quick Start

#### Using Make (recommended)
```bash
# Compile the resume
make

# Open the compiled PDF
make open

# Clean build artifacts
make clean

# Watch for changes and auto-recompile (requires fswatch)
make watch

# See all available commands
make help
```

#### Manual compilation
```bash
# Create build directory if it doesn't exist
mkdir -p build

# Compile the resume
pdflatex -output-directory=build -jobname=resume src/resume.tex
```

## Output

The compiled PDF will be available at `build/resume.pdf`.

## Development

1. Edit the source file: `src/resume.tex`
2. Compile using `make` or manual pdflatex command
3. The compiled PDF and auxiliary files will be in the `build/` directory

## Version Control

- Only source files (`src/`) and configuration files are tracked in git
- Build artifacts in `build/` directory are ignored via `.gitignore`
