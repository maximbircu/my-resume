# Resume

[![Build and Deploy Resume](https://github.com/maximbircu/my-resume/actions/workflows/build-and-deploy.yml/badge.svg)](https://github.com/maximbircu/my-resume/actions/workflows/build-and-deploy.yml)

This repository contains my professional resume built with LaTeX.

## 📄 View Resume

**Latest version:** [https://www.maximbircu.com/my-resume/resume.pdf](https://www.maximbircu.com/my-resume/resume.pdf)

**Full page view:** [https://www.maximbircu.com/my-resume](https://www.maximbircu.com/my-resume)

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

## Automatic Deployment

This repository uses GitHub Actions to automatically:

1. **Build** the resume PDF on every push to `main`
2. **Deploy** to GitHub Pages at [www.maximbircu.com/my-resume](https://www.maximbircu.com/my-resume)
3. **Update** the public resume URL automatically

### Integration with Personal Website

Your personal website can directly link to or embed:
- **PDF URL**: `https://www.maximbircu.com/my-resume/resume.pdf`
- **Page URL**: `https://www.maximbircu.com/my-resume`

No API calls or authentication needed - just use the URLs directly!
