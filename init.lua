local use_viml = false

local exists_vscode = vim.api.nvim_eval('exists("g:vscode")') == 1
local is_unix = vim.fn.has("unix")
local is_win32 = vim.fn.has("win32")

if exists_vscode then
  if is_unix then
    vim.cmd("source " .. "~/.config/nvim/vscode/init.vim")
  elseif is_win32 then
    vim.cmd("source " .. "~/AppData/Local/nvim/vscode/init.vim")
  end
elseif use_viml then
  if is_unix then
    vim.cmd("source " .. "~/.config/nvim/viml/init.vim")
  elseif is_win32 then
    vim.cmd("source " .. "~/AppData/Local/nvim/viml/init.vim")
  end
else
  require("user.options")
  require("user.keymaps")
  require("user.plugins")
  require("user.colorscheme")
  require("user.cmp")
  require("user.lsp")
  require("user.telescope")
  require("user.treesitter")
  require("user.autopairs")
  require("user.comment")
  require("user.gitsigns")
  require("user.nvim-tree")
  require("user.bufferline")
  require("user.lualine")
  require("user.toggleterm")
  require("user.project")
  require("user.impatient")
  require("user.indentline")
  require("user.alpha")
  require("user.whichkey")
  require("user.indentline")
  require("user.autocommands")
end
