# Doppler Neovim Plugin


## Features and structure

Injects doppler secrets into your neovim environment based on the doppler configs for the project.

## Installation/Usage

Lazy.nvim is a plugin manager that allows you to load plugins on demand. To install this plugin, add the following to your `init.lua`:

```lua
return {
    "conneroisu/doppler.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
}
```

## Why?

Sometimes your tests require environmental secrets. 

This plugin allows you to automatically inject them into your neovim environment when launching neovim inside of a known doppler project.

### Plugin structure

The following is the structure of the project.

```
.
├── lua
│   ├── doppler
│   │   └── module.lua
│   └── doppler.lua
├── Makefile
├── plugin
│   └── doppler.lua
├── README.md
├── tests
│   ├── minimal_init.lua
│   └── doppler
│       └── doppler_spec.lua
```
### Development 

Tests in Github actions :) 
Automatic Doc Generation 😄
