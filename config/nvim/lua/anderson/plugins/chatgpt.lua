local home = vim.fn.expand("$HOME")
local secert_path = "/.dotfiles/chatgpt_secret.txt.gpg"

require("chatgpt").setup({
    api_key_cmd = "gpg --decrypt " .. home .. secert_path
})
