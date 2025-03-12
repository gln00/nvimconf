------------------------------
-- Function for make HotKey -- 
------------------------------
local function map(mode, lsh, rsh, opts)
	opts = { noremap = true, silent = true }
	vim.keymap.set(mode, lsh, rsh, opts)
end


-------------
-- HotKeys --
-------------

-- Save file
map('i', '<C-s>', '<Esc>:w<CR>')
map('n', '<C-s>', ':w<CR>')

-- Copy in system buffer
map('v', '<C-c>', '"+y')

-- Save and quit
map('i', '<C-q>', '<Esc>:wq<CR>')
map('n', '<C-q>', ':wq<CR>')

-- Move line up 
map('n' , '<C-Up>','ddkkp')
map('i', '<C-Up>', '<Esc>ddkkp')

-- Move line down 
map('i', '<C-Down>', '<Esc>ddp')
map('n' , '<C-Down>', 'ddp')

-- BufferNext 
map('i', '<C-u>', '<Esc>:BufferNext<CR>' )
map('n', '<C-u>', ':BufferNext<CR>' )

-- BufferClose
map('n', '<C-m>', ':w<CR> :BufferClose<CR>')

-- Open or close NvimTree 
map('i', '<C-n>', '<Esc> :lua require("nvim-tree.api").tree.toggle()<CR>')
map('n', '<C-n>', ':lua require("nvim-tree.api").tree.toggle()<CR>')

-- Copy line and paste on next line
map('i', '<C-d>', '<Esc>yyp')
map('n', '<C-d>', 'yyp')

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map('n', 'm', ':noh<CR>')
