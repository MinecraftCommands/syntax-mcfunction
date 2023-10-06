<img align="right" src="https://raw.githubusercontent.com/MinecraftCommands/syntax-mcfunction/main/icon.png?sanitize=true" alt="logo" width="76">

# syntax-mcfunction

<p align="center">
A syntax definition for <a href="https://minecraft.wiki/w/Commands">Minecraft Commands</a>.
<br>
Give this repo a ⭐ if you like it!
</p>


> **Warning**
> This syntax is in **beta** targeting Minecraft 1.20.2+

![demo](https://raw.githubusercontent.com/MinecraftCommands/syntax-mcfunction/main/imgs/preview.png)

## Goals

The aim of this syntax definition is to provide a general, feature complete language spec for Minecraft commands. It is **not** geared towards error checking or the specific commands and specifically contains **zero** error highlighting, allowing for decent hightlighting of invalid or custom pre-processed command scripts.

## TODOs

- [x] Add explicit macro support
- [x] Fix issues with nbt and other suffixes on numbrs
- [x] Fix issues on resource names versus keywords
- [ ] Add tests for Bedrock
- [ ] (VSCode & Sublime) Add jsonschema file for `pack.mcmeta`
- [-] Compare w/ `language-mcfunction` to synchronize scope names
  - Likely won't get better than this tbh, will need feedback

## Installing

### [VSCode Extension](https://marketplace.visualstudio.com/items?itemName=MinecraftCommands.syntax-mcfunction)

Install the extension from the [marketplace](https://marketplace.visualstudio.com/items?itemName=MinecraftCommands.syntax-mcfunction) or by searching for `syntax-mcfunction` in the extensions tab.

### Sublime Text

It is recommended you use [Package Control](https://packagecontrol.io/) to manage the package:

1. [Install Package Control](https://packagecontrol.io/installation) if it is not already present.
2. Run the `Package Control: Add Repository` [command](https://packagecontrol.io/docs/usage) and enter `https://github.com/MinecraftCommands/syntax-mcfunction.git` to add the repository as a package.
3. Run the `Package Control: Install Package` and search for `syntax-mcfunction` to install it as you would a normal package.

<details><summary> If you already had <code>language-mcfunction</code> </summary>

> **Note**
> You might want to remove Arc's language-mcfunction if you have it installed. You can do that via `Package Control: Remove Repository` and selecting https://github.com/Arcensoth/language-mcfunction then `Package Control: Remove Package` and selecting `language-mcfunction` from 2021.

</details>

This will keep the package updated with the repository automatically.

Otherwise you can clone the repository into user packages (e.g. `%appdata%\Sublime Text 3\Packages`) and update it manually.

## Acknowledgements

This repo is entirely dedicated to our beloved community member and friend, [Arcensoth](https://github.com/Arcensoth). His work on the original [language-mcfunction](https://github.com/Arcensoth/language-mcfunction) and overall contributions to the Minecraft Commands community was invaluable and he will be missed.

> Rest in Peace, Arcensoth
