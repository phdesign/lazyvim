return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.diagnostics.flake8,
        nls.builtins.formatting.black,
      },
    }
  end,
}
