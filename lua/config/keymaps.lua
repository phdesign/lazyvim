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
