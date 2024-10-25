return {
  'ibhagwan/fzf-lua',
  -- optional for icon support
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local fzf = require 'fzf-lua'
    -- calling `setup` is optional for customization
    fzf.setup {
      lsp = {
        code_actions = {
          previewer = 'codeaction_native',
          preview_pager = 'delta --side-by-side --width=$FZF_PREVIEW_COLUMNS',
        },
      },
    }
    vim.keymap.set('n', '<leader><space>', fzf.files, { desc = 'Fzf Files' })
    vim.keymap.set('n', '<leader>a', fzf.buffers, { desc = 'Fzf Buffers' })
    vim.keymap.set('n', '<leader>/', fzf.live_grep, { desc = 'Fzf Live Grep' })
    vim.keymap.set('n', '<leader>K', fzf.grep_cword, { desc = 'Fzf Grep Current Word' })
    vim.keymap.set('v', '<leader>K', fzf.grep_visual, { desc = 'Fzf Grep Current Word' })
  end,
}
