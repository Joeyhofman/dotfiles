require('packer')
require("joey.remap")
require("joey.set")

vim.cmd("colorscheme onedark")
vim.cmd([[
hi Normal guibg=#000000
hi NormalNC guibg=#000000
hi SignColumn  guibg=#000000
hi NormalFloat  guibg=#000000
hi FloatBorder  guibg=#000000
]])

vim.opt.guifont = "JetBrainsMono Nerd Font:h28"


vim.diagnostic.config({
    virtual_text = {
        prefix = "*",
        spacing = 2,
    },
    signs = true,
    underline = true,
    severity_sort = true
})

vim.api.nvim_set_hl(0, "DiagnosticError", { fg = "#ff5555", bg = "#330000", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = "#ffaa00", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = "#00ffff", bold = true })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = "#00ff00", bold = true })

vim.opt.cursorline = true
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ffffff", bold = true })

-- Create a unique namespace for our custom highlights
local diag_ns = vim.api.nvim_create_namespace("LineDiagnosticHighlights")

-- Function that updates full-line highlights
local function update_diagnostic_lines(bufnr)
  -- Make sure buffer still exists and diagnostics are enabled
  if not vim.api.nvim_buf_is_valid(bufnr) then return end

  vim.api.nvim_buf_clear_namespace(bufnr, diag_ns, 0, -1)

  local diagnostics = vim.diagnostic.get(bufnr)
  for _, d in ipairs(diagnostics) do
    local hl
    if d.severity == vim.diagnostic.severity.ERROR then
      hl = "DiagnosticLineError"
    elseif d.severity == vim.diagnostic.severity.WARN then
      hl = "DiagnosticLineWarn"
    elseif d.severity == vim.diagnostic.severity.INFO then
      hl = "DiagnosticLineInfo"
    elseif d.severity == vim.diagnostic.severity.HINT then
      hl = "DiagnosticLineHint"
    end
    if hl and d.lnum then
      -- Highlight the full line
      vim.api.nvim_buf_add_highlight(bufnr, diag_ns, hl, d.lnum, 0, -1)
    end
  end
end

-- Auto update when diagnostics change or buffer is shown
vim.api.nvim_create_autocmd({ "DiagnosticChanged", "BufEnter" }, {
  callback = function(args)
    update_diagnostic_lines(args.buf)
  end,
})

