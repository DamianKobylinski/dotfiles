return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		dashboard = {
			preset = {
				pick = function(cmd, opts)
					return LazyVim.pick(cmd, opts)()
				end,
				header = [[
  /$$$$$$  /$$   /$$ /$$$$$$$$ /$$$$$$ /$$    /$$ /$$$$$$ /$$$$$$$  /$$$$$$$$ /$$$$$$ /$$$$$$$  /$$$$$$$$
 /$$__  $$| $$$ | $$|__  $$__/|_  $$_/| $$   | $$|_  $$_/| $$__  $$| $$_____/|_  $$_/| $$__  $$| $$_____/
| $$  \ $$| $$$$| $$   | $$     | $$  | $$   | $$  | $$  | $$  \ $$| $$        | $$  | $$  \ $$| $$      
| $$$$$$$$| $$ $$ $$   | $$     | $$  |  $$ / $$/  | $$  | $$$$$$$ | $$$$$     | $$  | $$  | $$| $$$$$   
| $$__  $$| $$  $$$$   | $$     | $$   \  $$ $$/   | $$  | $$__  $$| $$__/     | $$  | $$  | $$| $$__/   
| $$  | $$| $$\  $$$   | $$     | $$    \  $$$/    | $$  | $$  \ $$| $$        | $$  | $$  | $$| $$      
| $$  | $$| $$ \  $$   | $$    /$$$$$$   \  $/    /$$$$$$| $$$$$$$/| $$$$$$$$ /$$$$$$| $$$$$$$/| $$$$$$$$
|__/  |__/|__/  \__/   |__/   |______/    \_/    |______/|_______/ |________/|______/|_______/ |________/
]],
        -- stylua: ignore
        ---@type snacks.dashboard.Item[]
        keys = {
          { icon = "🪟", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
          { icon = "🧻", key = "n", desc = "New File", action = ":ene | startinsert" },
          { icon = "🪧", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
          { icon = "📋", key = "p", desc = "Projects", action = ":lua Snacks.dashboard.pick('projects')" },
          { icon = "⚙️", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
          { icon = "🏡", key = "s", desc = "Restore Session", section = "session" },
          { icon = "🧪", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
          { icon = "⛏️", key = "l", desc = "Lazy", action = ":Lazy" },
          { icon = "🚪", key = "q", desc = "Quit", action = ":qa" },
        },
			},
		},
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
