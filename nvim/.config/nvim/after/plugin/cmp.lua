local cmp = require 'cmp'
local types = require("cmp.types")
local luasnip = require 'luasnip'

local function deprioritize_snippet(entry1, entry2)
  if entry1:get_kind() == types.lsp.CompletionItemKind.Snippet then return false end
  if entry2:get_kind() == types.lsp.CompletionItemKind.Snippet then return true end
end

cmp.setup {
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

  sorting = {
    priority_weight = 2,
    comparators = {
      deprioritize_snippet,
      -- the rest of the comparators are pretty much the defaults
      cmp.config.compare.offset,
      cmp.config.compare.exact,
      cmp.config.compare.scopes,
      cmp.config.compare.score,
      cmp.config.compare.recently_used,
      cmp.config.compare.locality,
      cmp.config.compare.kind,
      cmp.config.compare.sort_text,
      cmp.config.compare.length,
      cmp.config.compare.order,
    },
  },

  sources = {
    {
      name = 'nvim_lsp',
      keyword_length = 3,
      max_item_count = 20
    },
    {
      name = 'luasnip',
      keyword_length = 3,
      max_item_count = 20
    },
    { name = "path" },
    {
      name = "buffer",
      keyword_length = 4
    },
  },

  preselect = cmp.PreselectMode.None,

  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },

  mapping = cmp.mapping.preset.insert {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<S-CR>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = false,
    },
  },
}
