# ✳️ Nvim Export

A plugin to export every `.ts` file from the current file buffer folder.

## Installation

Install with your plugin manager of choice. Example for `lazy`
```lua
  {
    "OsmarJoseph/Export.nvim",
    event = "BufEnter *.ts",
    lazy = true,
    config = function()
      require('export').setup()
    end,
  },
```

## Usage

run `:Export` with the `index.ts` file of your choice open.
