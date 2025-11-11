return {
  cmd = { "gopls" },
  filetypes = { "go", "go.mod" },
  root_markers = { "go.mod", "go.work", ".git" },
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
        nilness = true,
        shadow = true,
        completeUnimported = true,
      },
      staticcheck = true,
    },
  },
}
