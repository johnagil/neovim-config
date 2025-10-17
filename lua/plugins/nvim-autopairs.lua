-- https://github.com/windwp/nvim-autopairs
-- automatically pairs symbols such as () {} [] '' ""
-- python f strings would not automatically insert the closing curly bracket '}' but this plugin solves that
return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
}
