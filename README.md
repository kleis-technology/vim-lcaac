# vim-lcaac

Vim plugin for [LCA as Code](https://lca-as-code.com), providing filetype detection, syntax highlighting, and indentation support for `.lca` files.

## Features

- **Filetype detection** — automatically activates for `*.lca` files
- **Syntax highlighting** — keywords, block headers, builtin functions, types, strings, numbers, operators, and comments (`//` and `/* */`)
- **Indentation** — brace-based auto-indent with 4-space soft tabs
- **Comment settings** — `gc` and `commentstring` configured for `//` and `/* */` styles

## Installation

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'kleis-technology/vim-lcaac'
```

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{ 'kleis-technology/vim-lcaac' }
```

### Manual

Clone the repository into your Vim packages directory:

```sh
git clone https://github.com/kleis-technology/vim-lcaac ~/.vim/pack/plugins/start/vim-lcaac
```

## Commands

These commands wrap the `lcaac` CLI and are available in `.lca` buffers. Additional flags and options supported by the CLI can be appended directly.

| Command | Description |
|---------|-------------|
| `:LcaacAssess {name} [opts]` | Returns the unitary impacts of a process in CSV format |
| `:LcaacTest [name] [opts]` | Runs all tests, or only those matching the given process name |
| `:LcaacTrace {name} [opts]` | Traces the contributions of a process |
| `:LcaacVersion` | Prints the `lcaac` version |

Examples:

```vim
:LcaacAssess my_process
:LcaacAssess my_process -l geo="FR" -D x="12 kg"
:LcaacTest
:LcaacTest my_process
:LcaacTrace my_process -f params.csv
```

## License

Affero GPL — see [LICENSE.txt](LICENSE.txt).
