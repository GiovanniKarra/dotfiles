require("config.lazy")

vim.cmd("colorscheme onedark_vivid")

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 0
vim.opt.smartindent = true
vim.opt.expandtab = false

vim.diagnostic.enable = true
vim.diagnostic.config({
	virtual_text = true
})

vim.opt.completeopt = {"noinsert", "menu", "menuone"}
local chars = {}
for i = 48, 57 do
	table.insert(chars, string.char(i))
end
for i = 60, 90 do
	table.insert(chars, string.char(i))
end
for i = 97, 122 do
	table.insert(chars, string.char(i))
end
table.insert(chars, '_')
table.insert(chars, '.')
vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'Enable vim.lsp.completion',
  callback = function(event)
    local client_id = vim.tbl_get(event, 'data', 'client_id')
    if client_id == nil then
      return
    end
	local client = client_id and vim.lsp.get_client_by_id(client_id)
	
	client.server_capabilities.completionProvider.triggerCharacters = chars
    vim.lsp.completion.enable(true, client_id, event.buf, {
		autotrigger = true
	})
  end
})
