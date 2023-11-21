local plugins = {
  { 
  "jose-elias-alverez/null-ls.nvim",
  ft = {"python"},
  opts = function ()
	return require "custom.configs.null-ls"
		end,
	}
}
