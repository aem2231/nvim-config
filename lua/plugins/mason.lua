return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Formatters
        "stylua",
        "prettier",
        "clang-format",
        
        -- Linters
        "eslint_d",
        "pylint",
      },
    },
  },
  
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- C/C++
        "clangd",
        
        -- Python
        "pyright",
        "ruff_lsp",
        
        -- Web/JS/TS
        "ts_ls",
        "volar",        -- Vue
        "html",
        "cssls",
        "tailwindcss",
        "emmet_ls",
      },
    },
  },
  
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
      servers = {
        clangd = {
          cmd = {
            "nix",
            "develop",
            "--command",
            "clangd",
            "--background-index",
            "--clang-tidy",
          },
        },
      },
    },
  },
}
