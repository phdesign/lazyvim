return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')

    lspconfig.denols.setup {
      root_dir = lspconfig.util.root_pattern("deno.json", "deno.jsonc"),
    }

    lspconfig.tsserver.setup {
      root_dir = lspconfig.util.root_pattern("package.json"),
      single_file_support = false
    }
  end
}
