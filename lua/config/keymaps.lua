-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

vim.keymap.set(
  "v",
  "<leader>t",
  ":s/\\%V\\<\\(\\w\\)\\(\\w*\\)\\>/\\u\\1\\L\\2/ge<bar>noh<cr>",
  { desc = "Title Case Selection" }
)
vim.keymap.set("v", "gj", "<esc>:'<,'>!jq --sort-keys -c '.'<cr>", { desc = "Sort JSON" })
wk.register({ i = { name = "+indent" } }, { prefix = "<leader>" })
vim.keymap.set("n", "<leader>i2", ":setlocal sts=2 ts=2 sw=2 et<cr>", { desc = "Indent 2 spaces" })
vim.keymap.set("n", "<leader>i4", ":setlocal sts=4 ts=4 sw=4 et<cr>", { desc = "Indent 4 spaces" })
vim.keymap.set("n", "<leader>it", ":setlocal sts=4 ts=4 sw=4 noet<cr>", { desc = "Indent tab" })
vim.keymap.set(
  "n",
  "<leader>uu",
  '"=system(\'python3 -c "import uuid; print(uuid.uuid4(), end=\\"\\");"\')<CR>p',
  { desc = "Insert new GUID" }
)

vim.keymap.set("n", "<leader>bc", ':let @* = expand("%")<cr>', { desc = "Copy filename" })

vim.cmd("command -range=% DeleteBlanks <line1>,<line2>g/^\\s*$/d")
vim.cmd("command -range=% DeleteDuplicateLines <line1>,<line2>sort|<line1>,<line2>g/^\\(.*\\)\\n\\1$/d")
vim.cmd("command -range=% DeleteTrailingSpaces <line1>,<line2>s/\\s\\+$//g")
-- vim.api.nvim_create_user_command("DeleteBlanks", "<line1>,<line2>g/^\\s*$/d", { range = "%" })
-- vim.api.nvim_create_user_command(
--   "DeleteDuplicateLines",
--   "<line1>,<line2>sort|<line1>,<line2>g/^\\(.*\\)\\n\\1$/d",
--   { range = "%" }
-- )
