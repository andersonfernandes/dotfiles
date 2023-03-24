function toggle_git_status_cmd()
    if string.find(vim.api.nvim_buf_get_name(0), 'fugitive:/') then
        vim.cmd(':bd')
    else
        vim.cmd(':vertical Git')
    end
end

function live_grep_word()
    require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })
end
