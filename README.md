# ✳️ Nvim Export

A plugin to export every .ts file from the current file buffer folder.

## Installation

Install with your plugin manager of choice. Example for `lazy`
```lua
  {
    "OsmarJoseph/Export.nvim",
    lazy = true,
    config = function()
      require('export').setup()
    end,
  },
```

