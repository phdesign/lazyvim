-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "v",
  "<leader>t",
  ":s/\\%V\\<\\(\\w\\)\\(\\w*\\)\\>/\\u\\1\\L\\2/ge<bar>noh<cr>",
  { desc = "Title Case Selection" }
)

vim.keymap.set("v", "gj", "<esc>:'<,'>!jq --sort-keys -c '.'<cr>", { desc = "Sort JSON" })

vim.keymap.set(
  "n",
  "<leader>uu",
  '"=system(\'python3 -c "import uuid; print(uuid.uuid4(), end=\\"\\");"\')<CR>p',
  { desc = "Insert new GUID" }
)

vim.cmd("command -range=% DeleteBlanks <line1>,<line2>g/^\\s*$/d")
vim.cmd("command -range=% DeleteDuplicateLines <line1>,<line2>sort|<line1>,<line2>g/^\\(.*\\)\\n\\1$/d")
-- vim.api.nvim_create_user_command("DeleteBlanks", "<line1>,<line2>g/^\\s*$/d", { range = "%" })
-- vim.api.nvim_create_user_command(
--   "DeleteDuplicateLines",
--   "<line1>,<line2>sort|<line1>,<line2>g/^\\(.*\\)\\n\\1$/d",
--   { range = "%" }
-- )
