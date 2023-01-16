vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Q", "<nop>")

-- add string to list translation for providing multiple buffers
vim.keymap.set('n', '<leader>c', function()
    print(vim.cmd('buffers'))
    local buffer = tonumber(vim.fn.input("close buffer #"))
    local buf_name = vim.api.nvim_buf_get_name(buffer)
    vim.api.nvim_buf_delete(
        buffer,
        {}
    )
    print("closed " .. buf_name .. "buffer.")
end)

