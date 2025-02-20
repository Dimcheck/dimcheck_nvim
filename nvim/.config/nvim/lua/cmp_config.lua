-- cmp_config.lua

-- Load nvim-cmp and configure it
local cmp = require'cmp'

cmp.setup({
  snippet = {
    -- REQUIRED - specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)  -- For `vsnip` users
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-n>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },                -- LSP source for autocompletion
    { name = 'vsnip' },                   -- Vsnip source for snippets
  }, {
    { name = 'buffer' },                  -- Buffer source
  })
})

-- Enable completion in command-line mode for `/` and `?`
cmp.setup.cmdline({ '/', '?' }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = 'buffer' }
  }
})

-- Enable path and cmdline completion for `:`
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = 'path' }
  }, {
    { name = 'cmdline' }
  })
})

-- Configure LSP servers for Python, JavaScript, and HTML
local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.pyright.setup {
  capabilities = capabilities
}

lspconfig.ts_ls.setup {
  capabilities = capabilities
}

lspconfig.html.setup {
  capabilities = capabilities
}
