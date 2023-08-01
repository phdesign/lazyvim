return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
  keys = {
    {
      "<leader>/",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      desc = "Grep (root dir)",
    },
    {
      "<leader>sg",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args()
      end,
      desc = "Grep (root dir)",
    },
    {
      "<leader>sG",
      function()
        require("telescope").extensions.live_grep_args.live_grep_args({ cwd = false })
      end,
      desc = "Grep (cwd)",
    },
  },
  opts = function()
    local lga_actions = require("telescope-live-grep-args.actions")
    return {
      extensions = {
        live_grep_args = {
          auto_quoting = true,
          mappings = {
            i = {
              ["<C-k>"] = lga_actions.quote_prompt(),
              ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
            },
          },
        },
      },
    }
  end,
  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("fzf")
    telescope.load_extension("live_grep_args")
  end,
}
