# Roblox Executor Definitions
Modular definitions for an exploit enviroment using VS Code's [Luau Language Server](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp)

## What is this?
This project provides you with type definitions neede for a Roblox exploit enviroment based on [Zenith executor](https://docs.zenith.win/) (This will work with any executor, just make sure to not use functions that are not supported). This also adds autocomplete (Monaco) and type checking for executor exclusive functions.

## Instalation:
1) Install [VS Code](https://code.visualstudio.com/) (Of course);
2) Install the [Luau Language Server](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp) extension;
3) Download what definitions you need and, very important, download the official Roblox definitions from [here](https://github.com/JohnnyMorganz/luau-lsp/blob/main/scripts/globalTypes.d.luau);
4) Paste all of the downloaded definitions in your workspace or a sub-folder;
5) Configure your `luau-lsp`. Best way to do this is either by using this [starter guide](https://github.com/JohnnyMorganz/luau-lsp/blob/main/editors/README.md) or by opening the `.vscode/settings.json` and adding this:
```json
{
  "luau-lsp.types.definitionFiles": [
       "path to your definitions file (do this for all, on different rows)",
  ]
}
```
6) Restart VS Code.

# Features
## Main:
- Closures
- HTTP
- Input
- Instance
- Metatables
- Scripts
- Websoket
## Secundary: (not full)
- Actors
- Bit
- Csv
- Cache
- Debug
- Directory Watcher
- Drawing
- Drawing Immediate
- Duration
- File System
- Miscellaneous
- Regex
- Secure Table
- Stopwatch
## Cryptography: (soon)
- Base64
- Crypt
- Derive
- Hex
- RSA
## Math: (soon)
- Spatial Math
- Other Math Functions
