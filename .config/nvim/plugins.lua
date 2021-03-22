
local cmd = vim.cmd

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.pyright.setup{
    capabilities = capabilities,
    on_attach = function(client)
      require 'illuminate'.on_attach(client)
    end,
}


-- nvim lsp
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {virtual_text = false}) 

require'bufferline'.setup{}

require('nvim-autopairs').setup()

require'nvim-treesitter.configs'.setup{
    ensure_installed = "maintained",
    highlight = {enable = true},
    rainbow = {enable = true}
}

require('gitsigns').setup()

require'telescope'.load_extension('project')
require'colorizer'.setup()
require('lspkind').init()

-- tree folder name , icon color
cmd("hi NvimTreeFolderIcon guifg = #83a598")
cmd("hi NvimTreeFolderName guifg = #83a598")

--require('hardline').setup{
 --   bufferline = true
--}

