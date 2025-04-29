-- Disable because this is breaking loading other LSPs
-- if true then
--   return {}
-- end

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      denols = {
        filetypes = { "typescript", "typescriptreact" },
        root_dir = function(...)
          return require("lspconfig.util").root_pattern("deno.jsonc", "deno.json")(...)
        end,
      },
    },
  },
}
