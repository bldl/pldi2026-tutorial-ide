# Implementing an Integrated Development Environment: a Quick Start Guide for PL Researchers

This tutorial illustrates how to quickly prototype an Integrated Development Environment for research programming languages, using two complementary approaches: text-based tools relying on the Language Server Protocol, and Projectional Editors. We implement a parser-based IDE using Visual Studio Code and Eclipse Langium by defining traditional grammar rules. Then, we show how to define a parser-less, projectional IDE within JetBrains Meta Programming System. During the presentation we will implement foundational IDE features such as cross-reference resolution, auto-completion, semantic validators, type checking rules, and quickfixes.

### Project Structure

This repository is organised in three main folders:
- `textual` contains the source code for the Langium IDE;
- `projectional` contains the source code for the MPS IDE;
- `resources` contains documentation about the structure of the language:
    - `grammar`: EBNF grammar definition, used for the textual IDE;
    - `concepts`: class diagram of language constructs, used for the projectional IDE;
    - `rules`: formal definition of the language syntax and typing rules.

### Branches

There are two main ways of using this repository:
- clone the `tutorial-start` branch, which contains the starter project for the tutorial, and follow along the live coding session;
- clone the `main` branch and play around with the full version of both IDEs.

### For more information

Please have a look at the README in the `textual` and `projectional` subfolders.