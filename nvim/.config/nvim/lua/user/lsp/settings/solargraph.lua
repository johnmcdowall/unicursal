local util = require 'lspconfig.util'

return {
  cmd = {"solargraph", "stdio"},
  default_options = {
    cmd_env = '.'
  },
  settings = {
    solargraph = {
      useBundler = true,
    }
  }
}

