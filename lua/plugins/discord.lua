return {
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    opts = {
      auto_update = true,
      neovim_image_text = "Trans rights are human rights",
      main_image = "neovim",
      client_id = "793271441293967371",
      log_level = "debug",
      debounce_timeout = 10,
      enable_line_number = true,
      blacklist = {},
      buttons = true,
      file_assets = {},
      show_time = true,
      editing_text = "Editing %s",
      file_explorer_text = "Browsing %s",
      git_commit_text = "Committing changes",
      plugin_manager_text = "Managing plugins",
      reading_text = "Reading %s",
      workspace_text = function(project_name, filename)
        print("Project:", project_name, "File:", filename)
        return string.format("Working on %s", project_name or "Unknown")
      end,
      line_number_text = "Line %s out of %s",
    },
  },
}
