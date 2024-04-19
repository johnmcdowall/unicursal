local wezterm = require("wezterm")
local act = wezterm.action

return {
	leader = { key = "[", mods = "CTRL", timeout_milliseconds = 1000 },

	keys = {
		{
			key = "k",
			mods = "CMD",
			action = act.Multiple({
				act.ClearScrollback("ScrollbackAndViewport"),
			}),
		},
		{
			key = "w",
			mods = "CMD",
			action = act.CloseCurrentPane({ confirm = true }),
		},

		-- activate resize mode
		{
			key = "r",
			mods = "LEADER",
			action = act.ActivateKeyTable({
				name = "resize_pane",
				one_shot = false,
			}),
		},

		-- focus panes
		{
			key = "LeftArrow",
			mods = "LEADER",
			action = act.ActivatePaneDirection("Left"),
		},
		{
			key = "RightArrow",
			mods = "LEADER",
			action = act.ActivatePaneDirection("Right"),
		},
		{
			key = "UpArrow",
			mods = "LEADER",
			action = act.ActivatePaneDirection("Up"),
		},
		{
			key = "DownArrow",
			mods = "LEADER",
			action = act.ActivatePaneDirection("Down"),
		},

		-- add new panes
		{
			key = "-",
			mods = "LEADER",
			action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
		},
		{
			key = "\\",
			mods = "LEADER",
			action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		},
	},

	key_tables = {
		resize_pane = {
			{ key = "LeftArrow", action = act.AdjustPaneSize({ "Left", 5 }) },
			{ key = "k", action = act.AdjustPaneSize({ "Left", 5 }) },

			{ key = "RightArrow", action = act.AdjustPaneSize({ "Right", 5 }) },
			{ key = "i", action = act.AdjustPaneSize({ "Right", 5 }) },

			{ key = "UpArrow", action = act.AdjustPaneSize({ "Up", 2 }) },
			{ key = "e", action = act.AdjustPaneSize({ "Up", 2 }) },

			{ key = "DownArrow", action = act.AdjustPaneSize({ "Down", 2 }) },
			{ key = "n", action = act.AdjustPaneSize({ "Down", 2 }) },

			{ key = "Escape", action = "PopKeyTable" },
		},
	},
}
