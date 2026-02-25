vim.g.lazyvim_check_order = false

return {
	{
		-- The only thing that I hate about lazy
		require("plugins.disable"),
	},
	{
		-- Themes
		require("plugins.themes.synthwave84"),
		require("plugins.themes.alpha"),
		require("plugins.themes.snacks"),
		require("plugins.themes.neopywal"),
	},
	{
		-- Lsp
		require("plugins.lsp.general"),
	},
	{
		require("plugins.db-related.dadbod"),
	},
	{
		require("plugins.general.fzf"),
		require("plugins.general.treesitter"),
		require("plugins.general.neo_tree"),
		require("plugins.general.nvim_notify"),
		require("plugins.general.conform"),
		require("plugins.general.cursor"),
	},
	{
		require("plugins.debugging.rustaceanvim"),
		require("plugins.debugging.trouble"),
	},

	--General Configs
	{

		-- override nvim-cmp and add cmp-emoji
		{
			"hrsh7th/nvim-cmp",
			dependencies = { "hrsh7th/cmp-emoji" },
			---@param opts cmp.ConfigSchema
			opts = function(_, opts)
				table.insert(opts.sources, { name = "emoji" })
			end,
		},
	},
}
