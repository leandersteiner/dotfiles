return {
  "lukas-reineke/headlines.nvim",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = {
    markdown = {
      bullet_highlights = {
        "@text.title.1.marker.markdown",
        "@text.title.2.marker.markdown",
        "@text.title.3.marker.markdown",
        "@text.title.4.marker.markdown",
        "@text.title.5.marker.markdown",
        "@text.title.6.marker.markdown",
      },
      codeblock_highlight = "CodeBlock",
      dash_highlight = "Dash",
      dash_string = "-",
      quote_highlight = "Quote",
      quote_string = "┃",
      fat_headlines = true,
      fat_headline_upper_string = "▄",
      fat_headline_lower_string = "▀",
    },
  },
}
