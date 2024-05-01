vim.api.nvim_create_user_command("DopplerConfigs", require("doppler").doppler_configs, {})

vim.cmd("silent !set -a")
vim.cmd("silent !source <(doppler secrets download --no-file --format env)")
vim.cmd("silent !set +a")
