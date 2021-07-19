if !exists('g:lspconfig')
  finish
endif

lua << EOF

local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')
local saga = require('lspsaga')

local on_attach = function(client, bufnr)
  
  local function buf_set_keymap(...) vim.api.buf_set_keymap(bufnr, ...)end
  local function buf_set_option(...) vim.api.buf_set_option(bufnr, ...)end

  local opts = { noremap = true, silent = true }

  buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)

end

nvim_lsp.tsserver.setup {

  on_attach = on_attach,
  filetype = {'typescript', 'typescriptreact', 'typescript.tsx', 'javascript', 'javascriptreact', 'javascript.jsx'}

}

nvim_lsp.phpactor.setup {}

nvim_lsp.intelephense.setup {
  }

saga.init_lsp_saga {
  error_sign = '?',
  warn_sign = '?',
  hint_sign = '?',
  infor_sign = '?',
  border_style = "round",
}
EOF

