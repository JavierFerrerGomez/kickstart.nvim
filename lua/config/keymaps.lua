-- Useful scape. it removes highlighs and exits terminal mode
vim.keymap.set({ 'n', 't' }, '<Leader><Esc>', '<C-\\><C-N>:noh<CR>:cclose<CR>:lclose<CR><Esc>', { silent = true })

-- Shortcuts to edit and refresh this file
vim.keymap.set('n', '<Leader>vr', ':source $MYVIMRC<CR>', { silent = true })
vim.keymap.set('n', '<Leader>ve', ':tabe $MYVIMRC<CR>', { silent = true })
vim.keymap.set('n', '<Leader>vs', ':tabe ~/.config/nvim/lua/config/keymaps.lua<CR>',
  { silent = true, desc = 'Vim Shortcuts' })

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

vim.keymap.set('n', '<Leader>fp', ':!prettier % --write --config $WORK/w3/.prettierrc.js<CR>:update<CR>',
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

vim.keymap.set('n', '<leader><leader>', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>so', require('telescope.builtin').oldfiles, { desc = '[S]earch [O]ld files' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = 'Previous [Search] [R]esume' })
vim.keymap.set('n', '<leader>st', require('telescope.builtin').treesitter, { desc = '[S]earch [T]reesitter' })

vim.keymap.set('o', 'm', ':<C-U>lua require(\'tsht\').nodes()<CR>', { noremap = true, silent = true })
vim.keymap.set('x', 'm', ':lua require(\'tsht\').nodes()<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>cd', ':lcd %:h<CR>', { noremap = true, desc = '[C]hange working [D]irectory' })
vim.keymap.set('n', '<leader>iu', ':r !uuidgen<CR>', { noremap = true, desc = '[I]hange working [UUID]irectory' })
vim.keymap.set('n', '<leader>cd', ':lcd %:h<CR>', { noremap = true, desc = '[C]hange working [D]irectory' })
-- vim.keymap.set('n', '<leader>ppn', '/w3-<CR>yt/ggp', { noremap = trueinsert_current_w3_project})

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>sb', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('i', 'jj', '<Esc>')
vim.keymap.set('i', 'jf', '<Esc>')
vim.keymap.set('n', '<leader>pv', "yiwoconsole.log('<Esc>pa:', <Esc>pa)<Esc>", { desc = '[P]rint [V]ariable' })

local api = vim.api

function _G.insert_parent_dir()
  local filename = api.nvim_buf_get_name(0)
  local directory = vim.fn.fnamemodify(filename, ':h:t')
  api.nvim_put({ directory }, 'c', true, true)
end

api.nvim_set_keymap('n', '<Leader>pcd', ':lua insert_parent_dir()<CR>',
  { noremap = true, silent = true, desc = "[P]aste [C]urrent [D]ir" })


function _G.insert_current_w3_project()
  local filename = api.nvim_buf_get_name(0)
  local matched = string.match(filename, ".*/(w3-.*)/")
  if matched then
    api.nvim_put({ matched }, 'c', true, true)
  end
end

api.nvim_set_keymap('n', '<Leader>ppn', ':lua insert_current_w3_project()<CR>',
  { noremap = true, silent = true, desc = "[P]aste [P]roject [N]ame" })
api.nvim_set_keymap('n', '<Leader>cm', '/w3-<CR>yt/ggpa: ',
  { noremap = true, silent = true, desc = "[Fugitive] [P]aste [P]roject [N]ame" })
