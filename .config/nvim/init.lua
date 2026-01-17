-- ######################## 基本設定 (Options) ########################
local opt = vim.opt

opt.encoding = "utf-8"
opt.title = true
opt.number = true
opt.wrap = true
opt.showmatch = true
opt.list = true
opt.matchtime = 3
opt.listchars = { tab = ">.", space = "-" }
opt.ignorecase = true
opt.smartcase = true
opt.wrapscan = true
opt.hlsearch = true
opt.incsearch = true
opt.inccommand = "split"
opt.smartindent = true
opt.autoindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.wildmode = "list:longest"
opt.infercase = true
opt.wildmenu = true
opt.clipboard:append("unnamedplus")
opt.paste = true
opt.backspace = { "indent", "eol", "start" }
opt.hidden = true
opt.textwidth = 0
opt.history = 5000
opt.swapfile = false
opt.undofile = false
opt.backup = false
opt.writebackup = false
opt.viminfo = ""

-- ######################## 見た目 (Appearance) ########################
vim.cmd('syntax enable')

-- ハイライト設定（透過設定）
local highlights = {
    "Normal", "NonText", "LineNr", "Folded", "EndOfBuffer", 
    "NormalNC", "NormalSB"
}
for _, group in ipairs(highlights) do
    vim.api.nvim_set_hl(0, group, { bg = "none", ctermbg = "none" })
end

-- ######################## キーマッピング (Mappings) ########################
local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- 検索ハイライト消去
map('n', '<ESC><ESC>', ':nohl<CR>')
