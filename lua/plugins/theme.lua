return {

{
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
 -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
 -- priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
    })

  end,
},
{
	'rmehri01/onenord.nvim',
	name = 'onenord',
	lazy = false,
	priority = 1000,
	config = function()
		require('onenord').setup({

		})

	end
},
{
	'shaunsingh/nord.nvim',
	name = 'nord',
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd('colorscheme nord')
	end
},
{
	"ms-jpq/chadtree",
	keys = {
		{"<leader>ct", "<cmd>CHADopen<cr>"}
	}
},
{
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  -- Optional dependencies
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  keys = {

  },
  name = 'oil',
  config = function ()
	require('oil').setup(){}
end
},
{
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    keys =  {
	    {"<Leader>nt", "<cmd>Neotree<cr>"}
    }


}
}
