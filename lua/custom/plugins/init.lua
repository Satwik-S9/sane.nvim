-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- For Commenting correctly
  {
    'numToStr/Comment.nvim',
    opts = {
      -- add any options here
    },
  },

  -- Use custom lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },

  -- Smooth cursor caret animations
  {
    'sphamba/smear-cursor.nvim',
    opts = {},
  },

  -- Nvim Surround
  {
    'kylechui/nvim-surround',
    version = '^3.0.0', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  -- Dashboard Plugin
  {
    'goolord/alpha-nvim',
    config = function()
      require('alpha').setup(require('alpha.themes.dashboard').config)
    end,
  },

  -- Better replacement for colorcolumn
  {
    'lukas-reineke/virt-column.nvim',
    opts = {},
  },

  -- Theme selector
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        -- add the config here
      }
    end,
  },
}
