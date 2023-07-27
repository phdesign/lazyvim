return {
  {
    "chriskempson/tomorrow-theme",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/vim")
      vim.cmd([[colorscheme Tomorrow-Night-Eighties]])
    end,
  },
}
