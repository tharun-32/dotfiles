return {
	--mason to download required lsp servers
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},

	--mason lsp config to connect mason tool installer and lsp servers
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "eslint", "html", "cssls", "ts_ls" , "emmet_ls"},
				automatic_installation = true,
			})
		end,
	},

	--nvim lsp config to connect both mason lsps and neovim lsp to interact
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			local on_attach = function(client, bufnr)
				local opts = { buffer = bufnr, noremap = true, silent = true }
			end
			require("cmp").setup({
				sources = {
					{ name = "nvim_lsp" },
				},
			})
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			vim.lsp.config("lua_ls", {
				capabilities = capabilities,
				on_attach = on_attach,
			})
			vim.lsp.config("eslint", {
				capabilities = capabilities,
				on_attach = on_attach,
			})
			vim.lsp.config("html", {
				capabilities = capabilities,
				on_attach = on_attach,
			})
			vim.lsp.config("cssls", {
				capabilities = capabilities,
				on_attach = on_attach,
			})
			vim.lsp.config("ts_ls", {
				capabilities = capabilities,
				on_attach = on_attach,
			})
            vim.lsp.config("emmet_ls", {
                capabilities = capabilities,
                on_attach = on_attach,
            })
			--keymaps for nvim lspconfig buffer
			vim.keymap.set("n", "gd", function()
				vim.lsp.buf.definition()
				vim.defer_fn(function()
					vim.lsp.buf.clear_references() --this removes the highlight after 100ms
				end, 100)
			end, { desc = "Go to definition (and clear highlight)" })

			-- Go to declarations/definitions/etc
			vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- Go to declaration
			vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts) -- Go to implementation
			vim.keymap.set("n", "gr", vim.lsp.buf.references, opts) -- Go to references

			-- Hover & Signature help
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts) -- Hover doc
			vim.keymap.set("n", "<C-I>", vim.lsp.buf.signature_help, opts) -- Signature help

			-- Actions
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- Rename symbol

			-- Diagnostics
			vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- Show diagnostics
			vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- Previous diagnostic
			vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- Next diagnostic

			-- Format (optional)
			vim.keymap.set("n", "<leader>cf", function()
				vim.lsp.buf.format({ async = true })
			end, opts)
		end,
		vim.diagnostic.config({
			virtual_text = {
				prefix = "●", -- or ">>", or any symbol you like
				spacing = 2,
			},
			signs = true,
			underline = true,
			update_in_insert = true,
			severity_sort = true,
		}),
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"stylua", --lua formatter
					"prettier", --js formatter
					"eslint", --js formatter
				},
				auto_update = false,
				run_on_start = true,
			})
		end,
	},
}
