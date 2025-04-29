local sql_ft = { "sql", "mysql", "plsql" }

return {
  recommended = function()
    return LazyVim.extras.wants({
      ft = sql_ft,
    })
  end,
  {
    "williamboman/mason.nvim",
    opts = { ensure_installed = {
      "sqlfluff",
      "sqlfmt",
    } },
  },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = function(_, opts)
      for _, ft in ipairs(sql_ft) do
        opts.linters_by_ft[ft] = opts.linters_by_ft[ft] or {}
        table.insert(opts.linters_by_ft[ft], "sqlfluff")
      end
    end,
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = function(_, opts)
      opts.formatters.sqlfmt = {
        env = {
          SQLFMT_LINE_LENGTH = 80,
        },
      }
      for _, ft in ipairs(sql_ft) do
        opts.formatters_by_ft[ft] = opts.formatters_by_ft[ft] or {}
        table.insert(opts.formatters_by_ft[ft], "sqlfmt")
      end
    end,
  },
}
