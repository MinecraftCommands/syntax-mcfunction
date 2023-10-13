# Changelog

## v0.6.0

- Added `##` as a valid block starter
- Fixed comments ordering so that both inline AND commented commands work

## v0.5.0

- Literals with suffixes (b, B, l, L) now highlight properly
- Literals inside properties (specifically `true`/`false`) highlight better
- Resource Names within properties highlight better
  - This causes false-positives via `minecraft:block{key:value}` to highlight incorrectly
- Added `-`, `.` as a valid special fakeplayer character
  - These characters will only highlight within valid fakeplayer starting characters (`#%$.`)
- Adjusted some scope names to match `language-mcfunction` better
- Fixed sublime support (hopefully)
- Improved some testing

## v0.4.x

- Fiddling around w/ VSCode Publishing

## v0.3.1

- Update name to `syntax-mcfunction`
- Move to `MinecraftCommands` organization

## v0.3.0

- Added support for Sublime Text
- Reverted commenting changes from last release
  - This caused issues when you commented out normal code
- Slightly restructured GA + some naming

## v0.2.0

Refactor and additions to qualify for a `mcfunction` language

- Added explicit macro support
- Loosened restrictions on special commenting
- Fixed various bugs

## v0.1.0

Initial release for the `bolt` community with major support for multiline commands
