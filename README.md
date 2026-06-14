# Implementing an Integrated Development Environment: A Quick Start Guide for PL Researchers

This repository accompanies the PLDI 2026 tutorial: [Implementing an Integrated Development Environment: a Quick Start Guide for PL Researchers](https://pldi26.sigplan.org/details/pldi-2026-tutorials/3/Implementing-an-Integrated-Development-Environment-a-Quick-Start-Guide-for-PL-Resear).

## Overview

This tutorial demonstrates practical techniques for rapidly prototyping integrated development environments (IDEs) for domain-specific and research programming languages. We present two complementary, production-ready approaches:

1. **Text-based IDE with Language Server Protocol (LSP)**: Implemented using Visual Studio Code and Eclipse Langium, this approach leverages traditional grammar-based parsing and standard IDE features.
2. **Projectional Editor**: Implemented using JetBrains Meta Programming System (MPS), this parser-less approach guarantees structural correctness and supports both textual and non-textual notations.

Throughout the tutorial, we implement foundational IDE features including cross-reference resolution, autocompletion, semantic validation, type checking, and quick fixes. The two parts are independent and can be studied separately.

## Getting Started

### Repository Branches

This repository provides two workflows:

- **`tutorial-start`** — Starter project for live coding during the tutorial. Includes partial implementations to guide the coding session.
- **`main`** — Complete, fully functional implementation of both IDEs. Use this branch to explore the final system.

### System Requirements

**For the text-based IDE (Langium/VS Code):**
- Node.js v20.0 or higher (tested with v23.10.0)
- npm v10.0 or higher (tested with v10.9.2)
- A recent version of VS Code (tested with 1.123.0)
- [Download Node.js](https://nodejs.org/en/download/)
- [Download VS Code](https://code.visualstudio.com/download)

**For the projectional editor (MPS):**
- JetBrains MPS 2025.3
- [Download MPS](https://www.jetbrains.com/mps/download/)

## Repository Structure

### Main Directories

- [**textual/**](./textual/) — Text-based IDE implementation using Langium and VS Code
- [**projectional/**](./projectional/) — Projectional IDE implementation using JetBrains MPS
- [**resources/**](./resources/) — Language specification and documentation

### Language Documentation

- [**grammar.pdf**](./resources/handouts/grammar.pdf) — Grammar for the textual IDE
- [**concepts.pdf**](./resources/handouts/concepts.pdf) — Language concepts for the projectional IDE
- [**rules.pdf**](./resources/handouts/rules.pdf) — Language rules and typing

## Language Target

Both implementations use a subset of [BEAN](https://github.com/Athena-Types/Bean), a research programming language with a type system for linear and discrete types.

## Detailed Documentation

Refer to the README files in each subdirectory for implementation-specific details:

- [Text-based IDE Documentation](./textual/README.md)
- [Projectional Editor Documentation](./projectional/README.md)