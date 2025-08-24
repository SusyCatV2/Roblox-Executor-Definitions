# Roblox Executor Definitions
Modular type definitions for exploit environments using VS Code’s [Luau Language Server](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp).  
⚠️ **Note:** Please read the [Observations](#observations) before reporting issues.

## What is this?
This project provides type definitions needed for a Roblox exploit environment.  
It works with **any executor** (just avoid functions not supported by your executor).  
Includes autocomplete (Monaco) and type checking for executor-exclusive functions.

## Installation
1. Install [VS Code](https://code.visualstudio.com/).  
2. Install the [Luau Language Server](https://marketplace.visualstudio.com/items?itemName=JohnnyMorganz.luau-lsp) extension.  
3. Download the definitions you need **and** the official Roblox definitions from [here](https://github.com/JohnnyMorganz/luau-lsp/blob/main/scripts/globalTypes.d.luau).  
   *(This repo only covers executor-specific functions. The official Roblox definitions are required too.)*  
4. Place all downloaded definitions in your workspace or a sub-folder.  
5. Configure your `luau-lsp`. For example, in `.vscode/settings.json`:  
   ```json
   {
     "luau-lsp.types.definitionFiles": [
       "path/to/definitions/file.d.luau"
     ]
   }

6) Restart VS Code.

## Features
- [**Core**](main.d.luau): Closures, HTTP, Input, Instance, Metatables, Scripts, WebSocket
- [**Additional**](secundary.d.luau): Actors, Bit, CSV, Cache, Debug, Directory Watcher, Drawing, Drawing Immediate, Duration, File System, Miscellaneous, Regex, Secure Table, Stopwatch
- [**Cryptography**](cryptography.d.luau): Base64, Crypt, Derive, Hex, RSA
- [**Math**](math.d.luau): Constants, Spatial Mathematics, Angle/Trig helpers, Numeric helpers, Other math functions

## Observations:
1) Math definitions are not complete and will probably never be because of how many there are and most executors don't support only some of them.
2) I tryed defining popular alliases used in executors, but didn't define all, because of the big number (remember, use the appropiate function/allias if it exists, else, report an issue).
3) Not all cryptographic algorithms or modes are defined. Certain executors may have extra ones not covered here.
4) Some functions are unique to specific executors. These definitions may not match exactly across all environments.
5) In some cases, functions were typed with simplified return types. Real return values may differ depending on executor implementation.
6) The structure allows further expansion and will be updated if new functions will be added to the executors. You can customize it however you want.

## How to extend and create definitions:
- If you want to create a new function (eg: hookfunction()) you can use:
```luau
define function name(parameter_name: type): return_type --Use () for functions that don't return anything. Use (return1: type, return2: type, etc) for multiple returns
```
