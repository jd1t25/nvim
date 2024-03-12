return {
  'luckasRanarison/tree-sitter-hypr',
  event = 'BufRead */hypr/*.conf',
  config = function()
    require('nvim-treesitter.parsers').get_parser_configs().hypr = {
      install_info = {
        url = 'https://github.com/luckasRanarison/tree-sitter-hypr',
        files = { 'src/parser.c' },
        branch = 'master',
      },
      filetype = 'hypr',
    }
  end,
}
