return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "python",
        "javascript",
        "typescript",
        "tsx",
        "vue",
        "html",
        "css",
        "json",
        "lua",
        "vim",
        "vimdoc",
        "markdown",
        "markdown_inline",
      },
      -- Disable auto_install on NixOS
      auto_install = false,
    },
  },
}
