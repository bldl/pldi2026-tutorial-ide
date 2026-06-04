# Projectional Editor for the BEAN Language

This repository. contains a projectional editor for a subset of the [BEAN](https://github.com/Athena-Types/Bean) research programming language. 
The project is meant to demonstrate applications of IDEs and language tooling to PLs in the research field. 
Developed using [JetBrains Meta Programming System](https://www.jetbrains.com/mps/).

Features:
- Type System for the BEAN language
  - Inference Rules for linear and discrete types, according to the paper (https://doi.org/10.48550/arXiv.2501.14550, Fig. 3)
- Side Transformations
  - (Note: `_`indicates the position of the cursor)
  - `_x -> !x` wraps a variable reference into a discrete conversion expression when `!`is entered
  - `let _x = e; -> let (x, ...) = e;` replaces a `let/dlet` binding with a tensor destructor expression when `(` is entered 
- Syntax highlighting
- Per-file Variable scoping
- Semantic validators
    - Type declarations inside linear/discrete contexts
    - Unused variables
- Quick Fixes
    - Remove unused variable
    - Toggle between `let` and `dlet` bindings

## System Requirements

- JetBrains MPS 2025.3

## Running the application

Clone the repository and open the root folder inside MPS.

### Code Examples

Once the extension is running, open the `Example` solution to inspect some BEAN programs rewritten in MPS.