------------------------------
-- Function for make HotKey -- 
------------------------------
local function map(mode, lsh, rsh, opts)
	opts = { noremap = true, silent = true }
	vim.keymap.set(mode, lsh, rsh, opts)
end
-- Save file
map('i', '<C-s>', '<Esc>:w<CR>')
map('n', '<C-s>', ':w<CR>')

-- Copy in system buffer
map('v', '<C-c>', '"+y')

-- Save and quit
map('i', '<C-q>', '<Esc>:wq<CR>')
map('n', '<C-q>', ':wq<CR>')

-- Open or close NvimTree 
map('n', '<C-n>', ':lua require("nvim-tree.api").tree.toggle()<CR>')

-- Copy line and paste on next line
map('n', '<C-d>', 'yyp')

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map('n', '<leader>v', ':noh<CR>')

map('n', 'U', '<C-r>')

-- For buffer 
map('n', '<leader>d', ':bd!<CR>')
map('n', '<leader>bn', ':belowright new<CR>')
map('n', '<leader>bvn', ':belowright vnew<CR>')
map('n', '<leader>+', ':resize +5<CR>')
map('n', '<leader>-', ':resize -5<CR>')
map('n', '<leader><', ':vertical resize +10<CR>')
map('n', '<leader>>', ':vertical resize -10<CR>')
map('n', '<leader>j', ':wincmd j<CR>')
map('n', '<leader>k', ':wincmd k<CR>')
map('n', '<leader>l', ':wincmd l<CR>')
map('n', '<leader>h', ':wincmd h<CR>')
map('n', '<leader>bo', ':%bd|e#<CR>')
map('n', '<leader>bp', ':b#<CR>')

map('v', '<leader>"', ':s/\\v%V.*%V./"&"<CR> gv= :no<CR>')
map('v', '<leader>\'', ':s/\\v%V.*%V./\'&\'<CR> gv= :noh<CR>')
map('v', '<leader>(',  ':s/\\v%V.*%V./(&)<CR> gv= :noh<CR>')
map('v', '<leader>{',  ':s/\\v%V.*%V./{&}<CR> gv= :noh<CR>')
map('v', '<leader>[',  ':s/\\v%V.*%V./[&]<CR> gv= :noh<CR>')

map('v', '<leader>m"', '<Esc> `<i" <Esc> `>a" <Esc> ')
map('v', '<leader>m\'','<Esc> `<i\'<Esc> `>a\'<Esc> ')
map('v', '<leader>m(', '<Esc> `<i( <Esc> `>a) <Esc> ')
map('v', '<leader>m{', '<Esc> `<i{ <Esc> `>a} <Esc> ')
map('v', '<leader>m[', '<Esc> `<i[ <Esc> `>a] <Esc> ')
