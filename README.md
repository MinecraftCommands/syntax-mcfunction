<img align="right" src="https://raw.githubusercontent.com/MinecraftCommands/syntax-mcfunction/main/icon.png?sanitize=true" alt="logo" width="76">

# syntax-mcfunction

<p align="center">
A syntax definition for <a href="https://minecraft.wiki/w/Commands">Minecraft Commands</a>.
<br>
Give this repo a ⭐ if you like it!
</p>

![demo](https://raw.githubusercontent.com/MinecraftCommands/syntax-mcfunction/main/imgs/preview.png)

This project contains syntax definitions for Minecraft commands (`.mcfunction`) using the textmate grammer spec. It is a general, feature complete language spec built via generic syntatical components that describe the language (aka, mimimal hardcoded command support). This means it should support future game versions, many modded commands, and even custom language compilers such as [bolt](https://github.com/mcbeet/bolt) and [jmc](https://jmc.wingedseal.com/).

> [!Warning]
> This syntax does **not** contain any error highlighting meaning invalid commands will highlight correctly. If you are looking error validation and auto-complete for vanilla commands, we recommend the [Spyglass](https://spyglassmc.com/) project for a language-server that builds upon this simple grammar!

## Installing

### [VSCode Extension](https://marketplace.visualstudio.com/items?itemName=MinecraftCommands.syntax-mcfunction)

Install the extension from the [marketplace](https://marketplace.visualstudio.com/items?itemName=MinecraftCommands.syntax-mcfunction) or by searching for `syntax-mcfunction` in the extensions tab.

### [open-vsix Extension](https://open-vsx.org/extension/MinecraftCommands/syntax-mcfunction)

Follow these [instructions](https://github.com/eclipse/openvsx/wiki/Using-Open-VSX-in-VS-Code) if you are looking on using the open-vsix version of this project in VSCode or any of it's forks.

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

## `language-mcfunction`

While this grammar was created from scratch, much of it's work was adapted from the original [`language-mcfunction`](https://github.com/arcensoth/language-mcfunction) grammar. One of the original ideas for `language-mcfunction` was to develop a general, simpler version for `mcfunction`.

> [!Note]
> Actually, an earlier prototype of this grammar was going to be used as a base for a `language-mcfunction` rewrite.

There are some key differences to note between this syntax and the original:
- `language-mcfunction` is designed to operate on singular lines. If one line is broken, it does not affect lines after it and commands **cannot** span across multiple lines at all.
  - This was the core issue that caused me to develop `syntax-mcfunction` (even before Minecraft 1.20.2 introduced multi-line commands) as I needed a grammar that had multi-line support.
- `language-mcfunction` contains specific commands validation and reports errors for invalid commands
  - `syntax-mcfunction` differs in philosophy here. Textmate grammars are not well-equipped to actually validate commands — that's more of a role for language servers.
  - This project also generally highlights commands as it allows for easier maintenance and is better for platforms such as Github where multiple command extensions / modded commands might reuse the `.mcfunction` extension.

Due to these, coloring and highlighting will vary in a couple of places when comparing these grammars. While the goal is to match `language-mcfunction` as close as possible, there will never be a true 1:1 match in highlighting as the entire design of the grammar differs.

## Contributing

We are happy to accept any PRs just make sure to make a cooresponding issue first to track it. When making a PR, make sure the branch of your fork is **not** `main` and also make sure maintainers are allowed to edit your PR. This is helpful for me making small edits to the PR before merging.

We only require edits to the `yaml` file as the `json` and `plist` files are generated. You can use the npm package, `js-yaml`, to generate the `json` file after editting the `yaml` file.

```bash
npx js-yaml mcfunction.tmLanguage.yaml > mcfunction.tmLanguage.json
```

### Making Releases

Releases are semi-automated in this repo. Once your PR is merged into the `main` branch, the maintainer will create a new tag to trigger our Github CI to produce a new version.

```bash
git tag -a v1.2.3
git push --tags
```

This will generate the json and plist variations of the grammar, create and push a `.vsix` extension to the VSCode and open-vsix marketplaces, and create a release in the [releases](https://github.com/MinecraftCommands/syntax-mcfunction/releases) tab.

The maintainer will then need to manually fill in the body of the release to add in the changelog and links.

## Acknowledgements

This repo is entirely dedicated to our beloved community member and friend, [Arcensoth](https://github.com/Arcensoth). His work on the original [language-mcfunction](https://github.com/Arcensoth/language-mcfunction) and overall contributions to the Minecraft Commands community was invaluable and he will be missed.

> Rest in Peace, Arcensoth
