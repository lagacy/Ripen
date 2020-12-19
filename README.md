# Ripen
Ripen is an MIT source code project pipeline manager, it is a toolbox that can be scripted to manage single or multi-langage project from start to finish.

Ripen acts on these phases:

1. Configuration: When cloning a project, Ripen will manage all dependancies setup for your project. A manifest of all dependancies and how to configure them is kept, those will then be downloaded and installed without the need of users manual actions. This helps teams members and contributors to avoid errors and losing time on endless setup steps.

2. Development: Ripen gives tooling for packages setups, test workflow, generators configuration, codes generation, templating(Boiler-plate && Snippet), documentation generation, test pipeline setup, generate interoperability interfaces in polyglot project and more.

3. Build: Build for multiple configuration targets simultaneously, monitors builds, (Experimental,C++) Use GPU CUDA cores for faster parallel build, cloud distributed build using IaC.

4. Quality: Projects can specify rules that need to be followed before a push or commits can be done.
