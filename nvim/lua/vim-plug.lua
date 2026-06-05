local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('neovim/nvim-lspconfig')
Plug('hrsh7th/cmp-nvim-lsp')
Plug('hrsh7th/cmp-buffer')
Plug('hrsh7th/cmp-path')
Plug('hrsh7th/cmp-cmdline')
Plug('hrsh7th/nvim-cmp')

-- For vsnip users.
Plug('hrsh7th/cmp-vsnip')
Plug('hrsh7th/vim-vsnip')

-- Typescript syntax
Plug('leafgarland/typescript-vim')
-- jsx/tsx syntax
-- Plug('peitalin/vim-jsx-typescript')

-- Git Integration
Plug('tpope/vim-fugitive')
-- Fugitive Github plugin
-- Plug('tpope/vim-rhubarb')

-- Advanced Vim Targets (/!\ Will override some basic ones)
-- Plug('wellle/targets.vim')

-- Vim Session handling
-- Plug('tpope/vim-obsession')

-- NERDTree
Plug('scrooloose/nerdtree')
-- Plug('Xuyuanp/nerdtree-git-plugin')
Plug('scrooloose/nerdcommenter')

-- .editorconfig support
Plug('editorconfig/editorconfig-vim')

-- Indent guide
Plug('preservim/vim-indent-guides')

-- Region Expansion
Plug('terryma/vim-expand-region')

-- Surrounding plugin (to add quotes/parens/brackets around stuff)
Plug('tpope/vim-surround')

-- Best status bar ever
Plug('vim-airline/vim-airline')

-- Conquer of Code (Completion and LSP support)
Plug('neoclide/coc.nvim', {['branch'] = 'release'})

-- Ack support
-- Beware ! git.fsck might not like this plugin. Use manual install if needed:
-- git clone --config transfer.fsckobjects=false https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
-- Plug('mileszs/ack.vim')

-- Better substitution: use S instead of s and never look back !
Plug('tpope/vim-abolish')

-- Easy motion
Plug('easymotion/vim-easymotion')

-- Code formatting
Plug('sbdchd/neoformat')

-- Javascript syntax highlighting
Plug('pangloss/vim-javascript')
Plug('othree/jsdoc-syntax.vim')

-- PlantUML support
-- Plug('aklt/plantuml-syntax')
-- vim.g.plantuml_set_makeprg = 0

-- Better swap file handling
Plug('gioele/vim-autoswap')

-- Async library for Vim (not required on Vim8 but required on Neovim ?)
Plug('Shougo/vimproc.vim')

-- Easy HTML writing
Plug('mattn/emmet-vim')

-- Increment/Decrement in Visual Block mode
Plug('vim-scripts/VisIncr')

-- Undotree visualizer
-- Plug('vim-scripts/undotree.vim')

-- Best language tool checker
-- Plug('rhysd/vim-grammarous')
-- -- LanguageTool v6.x does not support --api anymore, breaking most LT-based
-- -- plugins :(
-- vim.g['grammarous#jar_url'] =
    -- 'https://www.languagetool.org/download/LanguageTool-5.9.zip'
-- vim.g['grammarous#use_vim_spelllang'] = 1

Plug('catppuccin/nvim', {['as'] = 'catppuccin'})

Plug('sphamba/smear-cursor.nvim')

Plug('ellisonleao/gruvbox.nvim')

-- Plug('MunifTanjim/nui.nvim')
-- Plug('m4xshen/hardtime.nvim')
-- Plug('rcarriga/nvim-notify')

-- Plug('HiPhish/jinja.vim')

Plug 'nvim-lua/plenary.nvim'
Plug 'epwalsh/obsidian.nvim'

Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-telescope/telescope-fzf-native.nvim', {['build']='make'})

vim.call('plug#end')

require('smear_cursor').enabled = true

-- Color scheme loaded after plugins
-- Prepended with !silent to avoid showing errors when not installed
vim.cmd('silent! colorscheme gruvbox')
