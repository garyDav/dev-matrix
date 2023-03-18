local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
  return
end

ts.setup {
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true
  },
  indent = {
    enable = true,
    disable = { "yaml" },
  },
  ensure_installed = {
    "tsx",
    "javascript",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
  sync_install = false
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
