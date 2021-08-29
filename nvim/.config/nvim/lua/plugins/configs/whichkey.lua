local present, wk = pcall(require, "which-key")

wk.setup{
  layout = {
    align =  "center",
  }
}

wk.register({
   b = {
      name = "buffer", -- optional group name
      n = { "<cmd>enew <cr>", "New Buffer" }, -- create a binding with label
      x = { "<cmd>lua require('core.utils').close_buffer() <cr>", "Close Buffer" }, -- create a binding with label
   },
   c = {
      name = "code", -- optional group name
      c = { "<cmd>CommentToggle<cr>", "Comment" }, -- create a binding with label
      n = { "<cmd>set nu!<cr>", "Line Number" }, -- create a binding with label
      r = { "<cmd>set rnu!<cr>", "Relative Line Number" }, -- create a binding with label
   },
   f = {
      name = "file", -- optional group name
      t = { "<cmd>NvimTreeToggle<cr>", "File Tree" }, -- create a binding with label
      f = { "<cmd>Telescope find_files<cr>", "Find File" }, -- create a binding with label
      g = { "<cmd>Telescope live_grep<cr>", "Live Grep" }, -- create a binding with label
      p = { "<cmd>Telescope project<cr>", "Open Project" }, -- create a binding with label
      r = { "<cmd>Telescope oldfiles<cr>", "Recent File" }, -- create a binding with label
   },
   g = {
      name = "git", -- optional group name
      b = { "<cmd>Git blame<cr>", "Git Blame" }, -- create a binding with label
      c = { "<cmd>Telescope git_commits<cr>", "Git Commits" }, -- create a binding with label
      s = { "<cmd>Git<cr>", "Git Status" }, -- create a binding with label
      r = { "<cmd>Telescope oldfiles<cr>", "Recent File" }, -- create a binding with label
   },
   h = {
      name = "help", -- optional group name
      c = { "<cmd>lua require('cheatsheet').show_cheatsheet_telescope()<cr>", "Cheatsheet" }, -- create a binding with label
      d = { "<cmd>lua require('cheatsheet').show_cheatsheet_telescope{bundled_cheatsheets = false, bundled_plugin_cheatsheets = false} <cr>", " UserCheatsheet" }, -- create a binding with label
   },
   p = {
      name = "Package Manager", -- optional group name
      c = { "<cmd>PackerClean <cr>", "Packer Clean" }, -- create a binding with label
      C = { "<cmd>PackerCompile <cr>", "Packer Compile" }, -- create a binding with label
      i = { "<cmd>PackerInstall <cr>", "Packer Install" }, -- create a binding with label
      s = { "<cmd>PackerStatus <cr>", "Packer Status" }, -- create a binding with label
      S = { "<cmd>PackerSync <cr>", "Packer Sync" }, -- create a binding with label
      u = { "<cmd>PackerUpdate <cr>", "Packer Update" }, -- create a binding with label
   },
   t = {
      name = "terminal", -- optional group name
      n = { "<cmd>execute 'terminal' | let b:term_type = 'wind' | startinsert <cr>", "New Terminal" }, -- create a binding with label
      h = { "<cmd>execute 15 .. 'new +terminal' | let b:term_type = 'hori' | startinsert <cr>", "Horizontal Terminal" }, -- create a binding with label
      v = { "<cmd>execute 'vnew +terminal' | let b:term_type = 'vert' | startinsert <cr>", "Vertical Terminal" }, -- create a binding with label
   },
   z = {
      name = "Zen", -- optional group name
      a = { "<cmd>TZAtaraxis<cr>", "Ataraxis Mode" }, -- create a binding with label
      f = { "<cmd>TZFocus<cr>", "Focus Mode" }, -- create a binding with label
      m = { "<cmd>TZMinimalist<cr>", "Minimalist Mode" }, -- create a binding with label
   },
}, { prefix = "<leader>" })
