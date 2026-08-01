return {
	{
		"folke/snacks.nvim",
		opts = {
			picker = {
				sources = {
					explorer = {
						hidden = true,
						ignored = true,
						follow_file = true,
					},

					files = {
						hidden = true,
						ignored = true,
					},
				},
			},
		},
	},
}
