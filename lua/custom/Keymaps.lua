-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Deleting string content ]]
vim.keymap.set('n', 'd"', 'ldt"h', { silent = true })
vim.keymap.set('n', "d'", "ldt'h", { silent = true })

-- [[ Moving selected lines ]]
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { silent = true })

-- [[ Moving current line ]]
vim.keymap.set('n', '<M-k>', ":m -2<CR>", { silent = true })
vim.keymap.set('n', '<M-j>', ":m +1<CR>", { silent = true })

-- [[ Switching windows ]]
vim.keymap.set('n', '<C-h>', ":<C-U>TmuxNavigateLeft<cr>", { silent = true })
vim.keymap.set('n', '<C-j>', ":<C-U>TmuxNavigateDown<cr>", { silent = true })
vim.keymap.set('n', '<C-k>', ":<C-U>TmuxNavigateUp<cr>", { silent = true })
vim.keymap.set('n', '<C-l>', ":<C-U>TmuxNavigateRight<cr>", { silent = true })
vim.keymap.set('n', '<C-u>', ":<C-U>TmuxNavigatePrevious<cr>", { silent = true })
-- [[ Close window ]]
vim.keymap.set('n', '<leader>c', ":close<CR>", { silent = true })

-- Ex
vim.keymap.set('n', '<leader>oo', ":Ex<CR>", { silent = true })

-- [[ wraping text with parenthesis ]]
local function mmap(s, e)
	vim.keymap.set('v', s,
		-- using a the register r(eplace) so the default one doesn't get overwritten
		string.format('"rc%s<C-r>"%s<esc>', s, e),
		{ silent = true }
	)
end
mmap('(', ')')
mmap('[', ']')
mmap('{', '}')
mmap('"', '"')
mmap("'", "'")
