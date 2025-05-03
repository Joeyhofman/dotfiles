require("luasnip.loaders.from_vscode").lazy_load() -- Load friendly-snippets

-- Optional: Keybindings for snippet expansion and navigation
vim.keymap.set({ "i", "s" }, "<C-k>", function()
  if require("luasnip").expand_or_jumpable() then
    require("luasnip").expand_or_jump()
  end
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-j>", function()
  if require("luasnip").jumpable(-1) then
    require("luasnip").jump(-1)
  end
end, { silent = true })

vim.keymap.set("i", "<C-l>", function()
  if require("luasnip").choice_active() then
    require("luasnip").change_choice(1)
  end
end)

local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body) -- Use LuaSnip for snippet expansion
    end,
  },
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" }, -- Add LuaSnip as a source
    { name = "buffer" },
  },
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
})

