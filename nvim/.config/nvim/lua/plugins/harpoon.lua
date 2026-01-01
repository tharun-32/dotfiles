return {
	"ThePrimeagen/harpoon",
	config = function()
		local harpoon_mark = require("harpoon.mark")
		local harpoon_ui = require("harpoon.ui")

		-- Add files to Harpoon
		vim.keymap.set("n", "<leader>a", harpoon_mark.add_file)

		-- Toggle Harpoon menu
		vim.keymap.set("n", "<leader>o", harpoon_ui.toggle_quick_menu)

		-- Navigate between files with Ctrl-h/j/k/l
		vim.keymap.set("n", "<C-i>", function() harpoon_ui.nav_file(1) end)
		vim.keymap.set("n", "<C-t>", function() harpoon_ui.nav_file(2) end)
		vim.keymap.set("n", "<C-n>", function() harpoon_ui.nav_file(3) end)
		vim.keymap.set("n", "<C-v>", function() harpoon_ui.nav_file(4) end)

	end
}
