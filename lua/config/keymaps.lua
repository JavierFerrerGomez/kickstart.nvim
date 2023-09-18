-- Useful scape. it removes highlighs and exits terminal mode
vim.keymap.set({ 'n', 't' }, '<Leader><Esc>', '<C-\\><C-N>:noh<CR>:cclose<CR>:lclose<CR><Esc>', { silent = true })

-- Shortcuts to edit and refresh this file
vim.keymap.set('n', '<Leader>vr', ':source $MYVIMRC<CR>', { silent = true })
vim.keymap.set('n', '<Leader>ve', ':tabe $MYVIMRC<CR>', { silent = true })

-- Windows style. Old habits never die.
vim.keymap.set('n', '<C-s>', ':wa<CR>')
vim.keymap.set('n', '<Leader>sa', ':wa<CR>')
vim.keymap.set('n', '<C-S-s>', ':wa<CR>:mks! ~/session.vim<CR>')
vim.keymap.set('i', '<C-s>', '<ESC>:wa<CR>')
vim.keymap.set('i', '<C-S-s>', '<ESC>:wa<CR>:mks! ~/session.vim<CR>')
vim.keymap.set('n', '<Leader>sa', '<ESC>:wa<CR>:mks! ~/session.vim<CR>', { desc = '[S]ave [A]ll' })
vim.keymap.set('n', '<leader>of', ':NvimTreeFindFileToggle<CR>', { desc = '[O]pen [F]ile Tree' })
vim.keymap.set('n', '<F4>', ':cnext<CR>')
vim.keymap.set('n', '<F3>', ':cprev<CR>')
vim.keymap.set('i', '<F4>', '<ESC>:cnext<CR>')
vim.keymap.set('i', '<F3>', '<ESC>:cprev<CR>')
vim.keymap.set('n', '<Leader>rv', ':%s/<C-R><C-W>//g<Left><Left>')
vim.keymap.set('n', '<Leader>j', ':HopWord<CR>')
vim.keymap.set('n', '<Leader>m', ':wa | make<CR>')

vim.keymap.set('n', '<Leader>fg', ':Git<CR><C-W>15-', { desc = "Fugitive Git interface" })
vim.keymap.set('n', '<Leader>fd', ':Gvdiffsplit! HEAD<CR>', { desc = "Fugitive Diff current buffer" })
vim.keymap.set('n', '<Leader>fh', ':0Gllog<CR>', { desc = "Fugitive History current buffer" })

vim.keymap.set('n', '<Leader>fp', ':!prettier % --write --config ../.prettierrc.js<CR>:update<CR>',
  { silent = true, desc = "Format Prettier" })

vim.keymap.set('n', '<Leader>dg', ':diffget<CR>', { silent = true, desc = "Diff Get" })
vim.keymap.set('n', '<Leader>dp', ':diffput<CR>', { silent = true, desc = "Diff Put" })

vim.keymap.set('n', '<Leader>nt', ':tabnew<CR>:tabmove 0<CR>', { desc = "New Tab" })

vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  { silent = true, noremap = true }
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  { silent = true, noremap = true }
)

vim.keymap.set('x', 'p', 'pgvy')

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>so', require('telescope.builtin').oldfiles, { desc = '[S]earch [O]ld files' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = 'Previous [Search] [R]esume' })
vim.keymap.set('n', '<leader>st', require('telescope.builtin').treesitter, { desc = '[S]earch [T]reesitter' })

vim.keymap.set('o', 'm', ':<C-U>lua require(\'tsht\').nodes()<CR>', {noremap = true, silent = true})
vim.keymap.set('x', 'm', ':lua require(\'tsht\').nodes()<CR>', {noremap = true, silent = true})
