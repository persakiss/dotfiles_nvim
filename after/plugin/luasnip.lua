local luasnip = require("luasnip")

-- html snippets in javascript and javascriptreact
luasnip.snippets = {
  html = {},
}

luasnip.add_snippets("html", {
	luasnip.parser.parse_snippet("testtest", "worksworks")
})

luasnip.filetype_extend("javascript", {"html"})
luasnip.filetype_extend("javascriptreact", {"html"})
luasnip.filetype_extend("typescriptreact", {"html"})
 


require("luasnip/loaders/from_vscode").lazy_load()
