function toggle_git_status_cmd()
    if string.find(vim.api.nvim_buf_get_name(0), 'fugitive:/') then
        vim.cmd(':bd')
    else
        vim.cmd(':Git')
    end
end
