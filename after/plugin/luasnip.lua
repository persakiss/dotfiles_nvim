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
 
vim.g['luasnip.snippet_dirs'] = {'~/.config/nvim/snipbook'}

vim.api.nvim_set_keymap('i', '<c-l>', '<cmd>lua require("luasnip").expand_or_jump()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<c-h>', '<cmd>lua require("luasnip").jump(-1)<CR>', { noremap = true, silent = true })

-- Tab functionality to either expand LuaSnip snippet or fallback to UltiSnips
vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.expand_snippet_or_fallback()', { noremap = true, expr = true, silent = true })


-- Lua function to expand snippet or fallback to UltiSnips
_G.expand_snippet_or_fallback = function()
  if not require("luasnip").expand() then
    vim.fn["UltiSnips#ExpandSnippetOrJump"]()
  end
  return ""
end

require("luasnip/loaders/from_vscode").lazy_load()
