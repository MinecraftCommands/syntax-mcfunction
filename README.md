<img align="right" src="https://raw.githubusercontent.com/MinecraftCommands/syntax-mcfunction/main/icon.png?sanitize=true" alt="logo" width="76">

# syntax-mcfunction

> **Warning**
> This syntax is in **beta** targeting Minecraft 1.20.2+

![demo](https://raw.githubusercontent.com/MinecraftCommands/syntax-mcfunction/main/imgs/preview.png)

## Goals

The aim of this syntax definition is to provide a general, feature complete language spec for Minecraft commands. It is **not** geared towards error checking or the specific commands and specifically contains **zero** error highlighting, allowing for decent hightlighting of invalid or custom pre-processed command scripts.

## TODOs

- [x] Add explicit macro support
- [ ] Fix issues with nbt and other suffixes on numbrs
- [ ] Fix issues on resource names versus keywords
  - Specifically when using dotted names
- [ ] Add tests for Bedrock
- [ ] (VSCode & Sublime) Add jsonschema file for `pack.mcmeta`
- [ ] Compare w/ `language-mcfunction` to synchronize scope names
  - It'll never reach 1:1, but we can get to 70-80%

## Installing

### VSCode

1. Grab the `.vsix` extension from [here](https://github.com/MinecraftCommands/syntax-mcfunction/releases).
2. Drag and drop it into VSCode (any folder).
3. Right click the file and click "Install Extension VSIX".

*Marketplace coming soon*

### Sublime Text

It is recommended you use [Package Control](https://packagecontrol.io/) to manage the package:

1. [Install Package Control](https://packagecontrol.io/installation) if it is not already present.
2. Run the `Package Control: Add Repository` [command](https://packagecontrol.io/docs/usage) and enter `https://github.com/MinecraftCommands/syntax-mcfunction.git` to add the repository as a package.
3. Run the `Package Control: Install Package` and search for `syntax-mcfunction` to install it as you would a normal package.

<details><summary> If you already had language-mcfunction </summary>

> **Note**
> You might want to remove Arc's language-mcfunction if you have it installed. You can do that via `Package Control: Remove Repository` and selecting https://github.com/Arcensoth/language-mcfunction then `Package Control: Remove Package` and selecting `language-mcfunction` from 2021.

</details>

This will keep the package updated with the repository automatically.

Otherwise you can clone the repository into user packages (e.g. `%appdata%\Sublime Text 3\Packages`) and update it manually.

## Acknowledgements

This repo is entirely dedicated to our beloved community member and friend, [Arcensoth](https://github.com/Arcensoth). His work on the original [language-mcfunction](https://github.com/Arcensoth/language-mcfunction) and overall contributions to the Minecraft Commands community was invaluable and he will be missed.

> Rest in Peace, Arcensoth
