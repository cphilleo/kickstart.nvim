-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    config = function()
      require('gruvbox').setup {
        transparent_mode = true,
      }
      vim.o.background = 'dark'
      -- vim.cmd.colorscheme 'gruvbox'
    end,
  },
  {
    'mcauley-penney/techbase.nvim',
    opts = {
      italic_comments = false,

      -- set to true to make the background, floating windows, statusline,
      -- signcolumn, foldcolumn, and tabline transparent
      transparent = true,

      plugin_support = {
        aerial = false,
        blink = true,
        edgy = false,
        gitsigns = true,
        hl_match_area = false,
        lazy = true,
        lualine = true,
        mason = true,
        mini_cursorword = false,
        nvim_cmp = false,
        vim_illuminate = false,
        visual_whitespace = false,
      },

      -- allows you to override any highlight group for finer-grained control
      hl_overrides = {},
    },
    init = function()
      -- vim.cmd.colorscheme 'techbase'
    end,
    priority = 1000,
  },
  {
    'rebelot/kanagawa.nvim',
    priority = 1000,
    config = function()
      local colors = require('kanagawa.colors').setup { theme = 'wave' }

      require('kanagawa').setup {
        transparent = true, -- make background transparent
        theme = 'wave',
        colors = {
          theme = {
            wave = {
              ui = {
                bg_gutter = 'none', -- make the background of the gutter transparent
              },
              syn = {
                keyword = colors.palette.waveRed,
                keyword = colors.palette.waveRed,
                preproc = colors.palette.oniViolet,
                special1 = colors.palette.waveRed,
                special2 = colors.palette.springBlue,
              },
            },
          },
        },
      }

      -- vim.cmd.colorscheme 'kanagawa'
    end,
  },
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.everforest_enable_italic = true
      vim.g.everforest_transparent_background = true
      -- vim.cmd.colorscheme 'everforest'
    end,
  },
  {
    'hyperb1iss/silkcircuit-nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('silkcircuit').setup {
        transparent = true, -- make background transparent
        variant = 'soft',
      }

      -- vim.cmd.colorscheme 'silkcircuit'
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'auto',
        },
      }
    end,
  },
  {
    'github/copilot.vim',
  },
  {
    'tpope/vim-dadbod',
    'kristijanhusak/vim-dadbod-ui',
    'kristijanhusak/vim-dadbod-completion',
  },
  {
    'kndndrj/nvim-dbee',
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
    build = function()
      -- Install tries to automatically detect the install method.
      -- if it fails, try calling it with one of these parameters:
      --    "curl", "wget", "bitsadmin", "go"
      require('dbee').install()
    end,
    config = function()
      require('dbee').setup(--[[optional config]])
    end,
  },
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
      'TmuxNavigatorProcessList',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },
  {
    'tpope/vim-fugitive',
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },
  {
    'goolord/alpha-nvim',
    config = function()
      -- require('alpha').setup(require('alpha.themes.theta').config)

      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      -- Set header
      dashboard.section.header.val = {
        '                                                             ░░░                                                                                      ',
        '▓▓▓▓  ▓▓▓█▒  ▓▓▓▓ ▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓▓  ▓▓▓▓  ▓▓▓▓      ░░  ░░▒▒░  ░         ▓▓▓▓▓▓▓▓  ▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓  ▓▓▓▓  ▓▓▓▓ ▓▓▓▓  ▓▓▓▓ ▓▓▓▓▓▓▓▓▓  ▓▓█▓▓▓▓▓ ',
        '▓███  ▓████  ███ ▓████████▓ ▓████████▓ ▓██▓ ▓██▓          ░▒▒▒▒▒░  ░       ▓████████▓ ▓████████▓ ▓████████▓ ▓██▓  ▓██▓ ▓███  ▓███ ▓███████▓ ▓███▓ ███▓',
        ' ████ ▓███▓ ▓██▓ ▓███  ███▓ ▓███  ███▓ ▓███ ███         ░ ░▒██▒▒▒░         ▓███  ▓▓▓▓ ▓███  ███▓ ▓███  ███▓ ▓██▓  ▓██▓ ▓███▓ ▓███ ▓███ ███▓ ▓███  ▓▓▓▓',
        ' ▓██▓ ▓███▓ ▓██▓ ▓██▓  ▓██▓ ▓███  ███▓ ▓██████▓        ░░▒▒▒▓▓▓▒▒▒░░       ▓██▓       ▓███  ███▓ ▓██▓  ▓██▓ ▓██▓  ▓██▓ ▓████ ████ ▓███ ▓██▓ ▓███▓     ',
        ' ▓███ █████ ███▓ ▓██▓  ▓██▓ ▓████████  ▓██████         ▒▒▒▒▒▓▒▓▓▒▒▒▒       ▓██▓ ▓▓▓▓▓ ▓████████  ▓██▓  ▓██▓ ▓██▓  ▓██▓ ▓█████████ ▓███ ▓██▓  ▓████▓   ',
        ' ▓█████████████  ▓██▓  ▓██▓ ▓████████▓ ▓██████       ░░▒▒▒▓▒▒▒▒▓█▒▒▒█▒     ▓██▓ ▓███▓ ▓████████▓ ▓██▓  ▓██▓ ▓██▓  ▓██▓ ▓██ ██████ ▓███ ▓██▓    ▓████▓ ',
        '  ██████ █████▓  ▓██▓  ▓██▓ ▓███  ███▓ ▓██████▓     ░░▒▓███▓▓▒▒▒▒▒▒██▒░    ▓██▓  ███▓ ▓███  ███▓ ▓██▓  ▓██▓ ▓██▓  ▓██▓ ▓█▓ ▓█████ ▓███ ▓██▓      ▓███▓',
        '  ▓████▓ ▓████▓  ▓██▓  ▓██▓ ▓██▓  ▓██▓ ▓███████     ░▓▓▓▒░░▓▓▓▓███████▒    ▓██▓  ▓██▓ ▓██▓  ▓██▓ ▓██▓  ▓██▓ ▓██▓  ▓██▓ ▓█▓  █████ ▓███ ▓██▓ ▓▓▓▓  ███▓',
        '  ▓████▓ ▓████▓  ▓███  ███▓ ▓██▓  ▓██▓ ▓███ ████    ░▓▓▓▓▒▒░░▒▒▓▓▓▓█░░░    ▓███  ███▓ ▓██▓  ▓██▓ ▓███  ███▓ ▓███  ███▓ ▓█▓  ▓████ ▓███ ███▓ ▓███  ███▓',
        '  ▓████▓ ▓████   ▓████████▓ ▓██▓  ▓██▓ ▓██▓ ████▓   ░▒▒▒▒▒▒▒░░░░░░░░▒▒░░   ▓████▓▓██▓ ▓██▓  ▓██▓ ▓████████▓ ▓███████▓  ▓█▓   ████ ▓███████▓ ▓████████▓',
        '   ▓▓▓▓  ▓▓▓▓▓     ▓▓▓▓▓▓█  ▓▓▓▓  ▓▓▓▓ ▓▓▓▓  ▓▓▓▓    ▒▒▒▒▒        ░░░░░     ▓▓▓▓▓  ▓▓ ▓▓▓▓  ▓▓▓▓  ▓▓▓▓▓▓▓    ▓▓▓▓▓▓▓   ▓▓▓   ▓▓▓▓ ▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓  ',
      }

      -- See `:help telescope.builtin`
      -- local builtin = require 'telescope.builtin'
      -- vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      -- vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      -- vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      -- vim.keymap.set('n', '<leader>ss', builtin.builtin, { desc = '[S]earch [S]elect Telescope' })
      -- vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      -- vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      -- vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      -- vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      -- vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      -- vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

      -- Shortcut for searching your Neovim configuration files
      -- vim.keymap.set('n', '<leader>sn', function()
      --   builtin.find_files { cwd = vim.fn.stdpath 'config' }
      -- end, { desc = '[S]earch [N]eovim files' })
      --
      -- local settings = function()
      --   builtin.find_files { cwd = vim.fn.stdpath 'config' }
      -- end

      -- Set menu
      dashboard.section.buttons.val = {
        -- dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
        -- dashboard.button('f', '  > Find file', builtin.find_files),
        -- dashboard.button('r', '  > Recent', builtin.oldfiles),
        -- dashboard.button('s', '  > Settings', settings),
        dashboard.button('q', '  > Quit NVIM', ':qa<CR>'),
      }

      -- Set footer
      dashboard.section.footer.val = require 'alpha.fortune'()

      -- Send config to alpha
      alpha.setup(dashboard.opts)

      -- Disable folding on alpha buffer
      --       vim.cmd [[
      --     autocmd FileType alpha setlocal nofoldenable
      -- ]]
    end,
  },
}
