require("sessions").setup({
    events = { "WinEnter" },
    session_filepath = vim.fn.stdpath("data") .. "/sessions",
    absolute = true,
})

vim.keymap.set("n", "<leader>s", function() -- loads entered session
    vim.cmd.SessionsLoad ({search = vim.fn.input("Path > ")} );
end)
