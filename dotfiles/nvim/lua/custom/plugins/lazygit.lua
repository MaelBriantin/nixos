return {
  'kdheepak/lazygit.nvim',
  cmd = {
    'LazyGit',
    'LazyGitConfig',
    'LazyGitCurrentFile',
    'LazyGitFilter',
    'LazyGitFilterCurrentFile',
  },
  dependencies = {
    'nvim-lua/plenary.nvim', -- Requis pour les fonctions de Neovim utilisées par LazyGit
  },
  keys = {
    { '<leader>lg', '<cmd>LazyGit<CR>', desc = 'Ouvrir LazyGit' },
  },
  config = function()
  end,
}
