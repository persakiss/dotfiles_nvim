require("koba.remap")
require("koba.set")


local luasnip = require("luasnip")

-- Extend typescriptreact with snippets from html, javascript, and typescript
luasnip.filetype_extend("typescriptreact", {"html", "javascript", "typescript"})

luasnip.filetype_extend("javascript", {"html"})
luasnip.filetype_extend("javascriptreact", {"html"})
luasnip.filetype_extend("typescriptreact", {"html"})

require("luasnip/loaders/from_vscode").lazy_load()

