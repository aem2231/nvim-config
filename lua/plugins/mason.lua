return {
  {
    "mason-org/mason.nvim",
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
    "mason-org/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        -- C/C++
        "clangd",
        "asm_lsp",
        
        -- Python
        "pyright",
        "ruff",
        
        -- Web/JS/TS
        "ts_ls",
        "vue_ls",        -- Vue
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
