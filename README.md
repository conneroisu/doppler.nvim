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


### Plugin structure

```
.
├── lua
│   ├── plugin_name
│   │   └── module.lua
│   └── plugin_name.lua
├── Makefile
├── plugin
│   └── plugin_name.lua
├── README.md
├── tests
│   ├── minimal_init.lua
│   └── plugin_name
│       └── plugin_name_spec.lua
```
