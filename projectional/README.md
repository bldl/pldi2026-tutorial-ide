# Projectional Editor: JetBrains MPS Implementation

This directory contains a projectional editor for a subset of the [BEAN](https://github.com/Athena-Types/Bean) research programming language, built with [JetBrains Meta Programming System](https://www.jetbrains.com/mps/). This approach avoids traditional parsing by manipulating the abstract syntax tree directly.

## Features

- Syntax highlighting and autocompletion
- Variable scoping and name resolution
- Side Transformations - The editor supports side transformations triggered by what the user types:
  - `_x` → `!x`: Wraps variable references into discrete type conversion expressions when `!` is entered
  - `let _x = e;` → `let (x, ...) = e;`: Transforms simple bindings into tensor destructuring when `(` is entered
  - (Note: `_` indicates cursor position)
- Semantic Validations, Diagnostics, and Quick Fixes
  - Type System: inference rules for linear and discrete types, following the formalization in [Bean: A Language for Backward Error Analysis](https://doi.org/10.48550/arXiv.2501.14550) (§3)
  - Detect unused variables and type declaration violations
  - Quick fixes to remove unused variables or toggle between `let` and `dlet`

## System Requirements

- JetBrains MPS 2025.3
- [Download MPS](https://www.jetbrains.com/mps/download/)

## Installation and Setup

Clone the repository and open the `projectional` folder in JetBrains MPS. The project includes a single language module:

- `Bean`: language definitions (structure, type system, editor, etc.)

When you open the project, MPS may show build errors. To resolve them, right-click on the `Bean` module and select **Rebuild Language 'Bean'**.


## Development Workflow

MPS combines language design with runtime execution. To modify or extend the language:

1. Edit language definitions in the aspect editors (Structure, Type System, Editor, etc.)
2. Rebuild the project
3. Test with example programs in the solutions

See the [JetBrains MPS documentation](https://www.jetbrains.com/help/mps/) for more details.