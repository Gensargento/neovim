return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "mhartington/formatter.nvim",
    {
  'stevearc/conform.nvim',
  config = function() 
	  local conform = require("conform")
	  conform.setup({
		  formatters_by_ft = {
			  vue = {"prettier"}
		  },
		  format_on_save = {
			  lsp_fallback = true,
			  async = false,
			  timeout_ms = 500
		  }
	  })
  end
}
}
