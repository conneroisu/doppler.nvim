vim.api.nvim_create_user_command("DopplerConfigs", require("doppler.nvim").hello, {})

-- set -a
-- source <(doppler secrets download --no-file --format env)
-- set +a
vim.cmd("!set -a")
vim.cmd("!source <(doppler secrets download --no-file --format env)")
vim.cmd("!set +a")
