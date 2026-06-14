# Text-based IDE: Langium/VS Code Implementation

This folder contains a small IDE prototype for the [BEAN](https://github.com/Athena-Types/Bean) research programming language. The project is meant to demonstrate applications of IDEs and language tooling to PLs in the research field. Developed using [Eclipse Langium](https://langium.org/).

## Features

- Syntax highlighting
- Variable scoping
- Semantic validators
  - Type declarations inside linear/discrete contexts
  - Unused variables
  - Linear variables can only be accessed once
- LSP Code Actions (Quickfixes)
  - Remove unused variable

## System Requirements

- Node.js v20.0 or higher
- npm v10.0 or higher
- A recent version of VS Code
- [Download Node.js](https://nodejs.org/en/download/)
- [Download VS Code](https://code.visualstudio.com/download)

## Running the application

Clone the repository and open the `textual` folder in VS Code.

Install dependencies:
```
npm install
```

Generate AST definitions and build the extension:

```
npm run langium:generate
npm run build
```

Run the application by launching the `Run Extension` configuration in `launch.json`.

### Code Examples

Once the extension is running, open the `examples` folder to inspect some well-formed programs. The `DEMO_<>.be` source files demonstrate the main functionalities of the language extension.