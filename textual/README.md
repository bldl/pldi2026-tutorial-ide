# Text-based IDE for the BEAN Language

This folder contains a small IDE prototype for the [BEAN](https://github.com/Athena-Types/Bean) research programming language. The project is meant to demonstrate applications of IDEs and language tooling to PLs in the research field. Developed using [Langium](https://langium.org/).

Features:
- Syntax highlighting
- Variable scoping
- Semantic validators
  - Type declarations inside linear/discrete contexts
  - Unused variables
  - Linear variables can only be accessed once
- LSP Code Actions (Quickfixes)
  - Remove unused variable
- Text generation

## System Requirements

- Node >= v20.0.

- VSCode >= v1.122.1.

## Running the application

Clone the repository and open the root folder inside VSCode.

Install dependencies:
```
npm install
```

Run the application by launching the `Run Extension` configuration in `launch.json`.

### Code Examples

Once the extension is running, open the `examples` folder to inspect some well-formed programs. The `DEMO_<>.be` source files demonstrate the main functionalities of the language extension. 