return { 
  "nyoom-engineering/oxocarbon.nvim",
  priority = 1000,
  config = function()
	  vim.cmd([[colorscheme oxocarbon]])
  end,
  -- Add in any other configuration; 
  --   event = foo, 
  --   config = bar
  --   end,
} 
