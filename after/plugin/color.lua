vim.keymap.set( 'n', '<leader>cs', function()
    vim.cmd.colorscheme({ vim.fn.input("Color > ") });
end)
-- setting colorscheme on nvim startup handled by DeviceConfig.lua
