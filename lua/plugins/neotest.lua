return {
  {
    "nvim-neotest/neotest",
    keys = {
      {
        "<leader>tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Run Last Test",
      },
    },
    opts = function(_, opts)
      table.insert(opts.adapters, require("neotest-python"))
    end,
  },
}
