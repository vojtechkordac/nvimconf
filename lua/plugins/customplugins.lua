return {
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- Make sure it's loaded before LazyVim sets the colorscheme
    config = function()
      require("onedarkpro").setup({
        options = {
          transparency = true,
          lualine_transparency = true,
          terminal_colors = false,
        },
      })
      vim.cmd("colorscheme onedark_vivid") -- or onedark_dark / onedark_vivid
    end,
  },
  -- {
  --   "WhiteBlackGoose/andromeda.nvim",
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark_vivid",
      -- colorscheme = "andromeda",
    },
  },
  { "NvChad/nvim-colorizer.lua", opts = {
    filetypes = { "*" },
    sass = { enable = true },
  } },
  { "numToStr/Comment.nvim" },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   opts = function(_, opts)
  --     -- Other blankline configuration here
  --     return require("indent-rainbowline").make_opts(opts)
  --   end,
  --   dependencies = {
  --     "TheGLander/indent-rainbowline.nvim",
  --   },
  -- },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   main = "ibl",
  --   ---@module "ibl"
  --   ---@type ibl.config
  --   opts = {},
  -- },
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
  },

  { "posva/vim-vue" },
  { "yaegassy/coc-volar" },
  { "yaegassy/coc-volar-tools" },
  -- Vue and TypeScript language server
  { "neovim/nvim-lspconfig" }, -- Core LSP support (likely already installed)
  { "jose-elias-alvarez/nvim-lsp-ts-utils" }, -- Extra TypeScript support for formatting, imports, etc.
  -- Optional: Icon support for completion
  { "onsails/lspkind-nvim" }, -- Adds vscode-like icons in autocompletion
  -- {
  --   "vuejs/vetur", -- Vue.js syntax highlighting, snippets, and LSP
  --   ft = "vue",
  -- },
  {
    "nvim-tree/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup({ default = true })
    end,
  },
  {
    "numToStr/Comment.nvim",
  },
  {
    "https://github.com/janiczek/vim-latte.git",
  },
}
