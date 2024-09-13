local map = vim.keymap.set
-- Remove highlight search by pressing escape key
map("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Easy window navigation
map("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Neo Tree toggle
map("n", "<C-n>", "<cmd>:Neotree filesystem toggle right<CR>", { desc = "Neotree toggle" })

-- LSP, Linters keymaps
map("n", "K", vim.lsp.buf.hover, { desc = "Hover Docs" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Goto Definition" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
map("n", "<leader>gf", vim.lsp.buf.format, { desc = "Format File" })

-- Bufferline
map("n", "<S-h>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bd", "<Cmd>bdelete<CR>", { desc = "Close Current Buffer" })
map("n", "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", { desc = "Toggle Pin" })
map("n", "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", { desc = "Delete Non-Pinned Buffers" })
map("n", "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", { desc = "Delete Other Buffers" })
map("n", "<leader>br", "<Cmd>BufferLineCloseRight<CR>", { desc = "Delete Buffers to the Right" })
map("n", "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", { desc = "Delete Buffers to the Left" })
map("n", "[B", "<cmd>BufferLineMovePrev<cr>", { desc = "Move buffer prev" })
map("n", "]B", "<cmd>BufferLineMoveNext<cr>", { desc = "Move buffer next" })

-- Neovim tmux navigation
map("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { desc = "Move to Left TMUX Pane" })
map("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { desc = "Move to Down TMUX Pane" })
map("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { desc = "Move to Up TMUX Pane" })
map("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { desc = "Move to Right TMUX Pane" })

-- Gitsigns
map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview Hunk" })
map("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Line Blame Toggle" })
map("n", "<leader>lg", "<cmd>LazyGit<cr>", { desc = "LazyGit" })