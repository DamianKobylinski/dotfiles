return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		picker = {
			sources = {
				explorer = {
					layout = {
						layout = { position = "right" },
						preset = "sidebar",
						preview = false,
					},
					enabled = true,
				},
			},
		},
	},
}
