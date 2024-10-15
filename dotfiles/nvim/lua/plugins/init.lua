return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "Pocco81/auto-save.nvim",
    lazy = false,
  },
  {
    "kdheepak/lazygit.nvim",
    lazy = false,
    dependencies =  {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("telescope").load_extension("lazygit")
    end,
  },
  {
    "mpas/marp-nvim",
    lazy = false,
    config = function ()
      require("marp").setup({
        port = 8080,
        wait_for_response_timeout = 30,
        wait_for_response_delay = 1,
      })
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
