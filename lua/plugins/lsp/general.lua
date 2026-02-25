local lsps_with_file_types = {
	nil_ls = { "nix" },
	nixd = { "nix" },
	clangd = { "c", "cpp", "cc" },
	pyright = { "py" },
	zls = { "zig" },
	svelte = { "svelte" },
	ts_ls = { "ts", "tsx" },
	taplo = { "toml" },
	hls = { "hs" },
}

local function format_lsp(lsp_name, file_types)
	return {

		{
			"neovim/nvim-lspconfig",
			name = "lspconfig." .. lsp_name,
			ft = file_types,
			opts = {},
			config = function(_, opts)
				require("lspconfig").lsp_name.setup(opts)
			end,
		},

		vim.lsp.enable(lsp_name),
	}
end

local function inyect_lsps_args_into_formatter()
	local formatted_lsps = {}

	for lsp, file_types in pairs(lsps_with_file_types) do
		table.insert(formatted_lsps, format_lsp(lsp, file_types))
	end

	return formatted_lsps
end

return {

	vim.lsp.enable("lua_ls"), -- cause' lua lsp is like supported out of the box

	require("lspconfig").qmlls.setup({
		cmd = { "qmlls", "-E" },
	}),

	inyect_lsps_args_into_formatter(),

	{
		"stevearc/conform.nvim",

		optional = true,
		opts = {
			formatters_by_ft = {
				nix = { "nixfmt" },
			},
		},
	},

	-- for make lsp
	vim.api.nvim_create_autocmd({ "BufEnter" }, {
		pattern = { "Makefile.am", "Makefile" },
		callback = function()
			vim.lsp.start({
				name = "make",
				cmd = { "make-language-server" },
			})
		end,
	}),
}
