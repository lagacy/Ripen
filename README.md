# Ripen(WIP)
Ripen is an MIT source code project pipeline manager, it is a toolbox that can be scripted to manage single or multi-langages project from start to finish.

This will be the only thing you'll need to install to make your projects works, Ripen will be built around the extensibility. Most features will be made availlable as extensions that will be created with the Ripen Extension Development Kit(aka Ripen EDK).

The Ripen EDK will give developer the ability to expand Ripen with an easy to use API with direct access to hooks, events and other mean. Those C++ extensions build as dynamic library will then be used by Ripen using runtime dynamic linking. Other langages will be supported eventualy (Through extensions) for extension development and custom scripting.

Ripen will acts on these phases:

1. Configuration: When cloning a project, Ripen will manage all dependancies setup for your project. A manifest of all dependancies and how to configure them is kept, those will then be downloaded and installed without the need of users manual actions. This helps teams members and contributors to avoid errors and losing time on endless setup steps.

2. Development: Ripen gives tooling for packages setups, generators configuration, code generation, templating(Boiler-plate && Snippet), documentation generation, test pipeline setup, generate interoperability interfaces in polyglot project and more.

3. Build: Tooling to help manage the build process.

4. Quality: source code linting and insight.

5. Continuous Integration: Toolings for CI pipeline automation (Github Actions generation, Gitlab CI, etc...).

6. Continuous Delivery: Toolings for CD pipeline automation, IaC.

7. Language Agnostic: Use multiple langage with some specific extensions or even incorporate your favorite tool in your pipeline script(like nodejs, Composer, etc.)
