-- vim.g.tokyonight_style = "storm"
-- vim.g.tokyonight_italic_comments=false
-- vim.g.tokyonight_italic_keywords=false

vim.cmd [[
try
" colorscheme catppuccin
" set background=light
colorscheme nord
catch /^Vim\%((\a\+)\)\=:E185/
colorscheme default
set background=dark
endtry
]]

local catppuccin = require("catppuccin")
-- configure it
catppuccin.setup(
  {
    transparent_background = false,
    term_colors = false,
    styles = {
      comments = "italic",
      functions = "italic",
      keywords = "italic",
      strings = "NONE",
      variables = "italic",
    },
    integrations = {
      treesitter = true,
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = "italic",
          hints = "italic",
          warnings = "italic",
          information = "italic",
        },
        underlines = {
          errors = "underline",
          hints = "underline",
          warnings = "underline",
          information = "underline",
        },
      },
      lsp_trouble = false,
      cmp = true,
      lsp_saga = false,
      gitgutter = false,
      gitsigns = true,
      telescope = true,
      nvimtree = {
        enabled = true,
        show_root = false,
        transparent_panel = false,
      },
      neotree = {
        enabled = false,
        show_root = false,
        transparent_panel = false,
      },
      which_key = false,
      indent_blankline = {
        enabled = true,
        colored_indent_levels = false,
      },
      dashboard = true,
      neogit = false,
      vim_sneak = false,
      fern = false,
      barbar = false,
      bufferline = true,
      markdown = true,
      lightspeed = false,
      ts_rainbow = false,
      hop = false,
      notify = true,
      telekasten = true,
      symbols_outline = true,
    }
  }
)
