-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('BufWritePost', {
  pattern = { '*.c', '*.h', '*.m', '*.py' },
  command = 'silent! !ctags . &',
  desc = 'Generate tags after saving buffer',
})

--vim.api.nvim_create_autocmd('BufEnter', {
--  pattern = { '*.m', '*.py' },
--  command = 'setlocal expandtab shiftwidth=4 softtabstop=4 tabstop=4',
--  desc = 'Set shift width to 4 for matlab and python files',
--})
--vim.cmd([[
--augroup pythonic
--  au!
--  autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
--  autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
--augroup end
--]])
