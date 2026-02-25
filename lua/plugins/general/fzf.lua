local hls = {
	bg = "PmenuSbar",
	sel = "PmenuSel",
	title = "IncSearch",
}
return {
	"ibhagwan/fzf-lua",
	opts = {
		desc = "borderless and not so minimalistic",
		winopts = {
			border = function(_, m)
				if m.nwin == 1 then
					return { " ", " ", " ", " ", " ", " ", " ", " " }
				end
				if m.layout == "down" or m.layout == "up" then
					return { " ", " ", " ", " ", "", "", "", " " }
				end
				return { " ", " ", "", "", "", " ", " ", " " }
			end,
			preview = {
				border = "solid",
				scrollbar = "float",
				scrolloff = "-1",
				title_pos = "center",
			},
		},
	},
}
