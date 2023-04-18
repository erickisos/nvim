local lsp = require('lsp-zero')
lsp.preset('recommended')
lsp.ensure_installed({
	'tsserver',
	'eslint',
	'rust_analyzer',
	'clojure_lsp',
	'angularls',
	'pyright',
	'jdtls'
})

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.on_attach(function(client, bufnr)
	vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, { buffer= bufnr, remap = false, desc = '[G]o to [D]efinition' })
    vim.keymap.set('n', 'gr', function() vim.lsp.buf.references() end, { buffer = bufnr, remap = false, desc = '[G]o to [R]eferences' })
	vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, { buffer= bufnr, remap = false, desc = '' })
	vim.keymap.set('n', '<leader>vws', function() vim.lsp.buf.workspace_symbol() end, { buffer= bufnr, remap = false, desc = '' })
end)

lsp.setup()
