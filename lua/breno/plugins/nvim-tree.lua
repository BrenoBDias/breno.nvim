return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
 },
  config = function()
	local nvimtree = require("nvim-tree")
	-- recomended settings
	vim.g.loaded_netrw = 1
	vim.g.loaded_netrwPlugin = 1
	nvimtree.setup()
	-- set keymaps
	local keymap = vim.keymap -- for conciseness
	keymap.set("n", "<leader>fe", "<cmd>NvimTreeFocus<CR>", { desc = "Focus file explorer" }) -- toggle file explorer
	keymap.set("n", "<leader>ef", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer on current file

  end,
}
