return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "fixjson",
        "flake8",
        "graphql-language-service-cli",
        "isort",
        "mypy",
      },
    },
    version = "1.11.0",
  },
  { "mason-org/mason-lspconfig.nvim", version = "1.32.0" },
}
