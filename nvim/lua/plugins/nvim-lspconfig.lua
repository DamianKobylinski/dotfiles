return {
	"neovim/nvim-lspconfig",
	opts = {
		setup = {
			eslint = function()
				require("lazyvim.util").lsp.on_attach(function(client)
					if client.name == "eslint" then
						client.server_capabilities.documentFormattingProvider = true
					elseif client.name == "tsserver" then
						client.server_capabilities.documentFormattingProvider = false
					end
				end)
			end,
			clangd = function(_, opts)
				opts.capabilities.offsetEncoding = { "utf-16" }
			end,
		},
		servers = {
			eslint = {},
			tsserver = {
				keys = {
					{ "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", desc = "Organize Imports" },
					{ "<leader>cR", "<cmd>TypescriptRenameFile<CR>", desc = "Rename File" },
				},
			},
		},
	},
}
