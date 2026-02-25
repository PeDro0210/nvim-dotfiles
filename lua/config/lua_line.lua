local config = {
	options = {
		-- Disable sections and component separators
		component_separators = "",
		section_separators = "",
		theme = "auto",
	},
	sections = {
		-- these are to remove the defaults
		lualine_a = {
			"mode",
		},
		lualine_b = { "branch" },
		lualine_c = { "lsp_status" },
		lualine_y = { "progress" },
		-- These will be filled later
		lualine_x = { "buffers" },
		lualine_z = {},
	},
	inactive_sections = {
		-- these are to remove the defaults
		lualine_a = {
			"location",
		},
		lualine_b = {},
		lualine_y = {},
		lualine_z = {},
		lualine_c = {},
		lualine_x = {},
	},
}
require("lualine").setup(config)
