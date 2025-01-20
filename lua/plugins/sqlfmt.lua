return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        sqlfmt = {
          env = {
            SQLFMT_LINE_LENGTH = 80,
          },
        },
      },
      formatters_by_ft = {
        sql = { "sqlfmt" },
      },
    },
  },
}
