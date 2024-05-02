vim.api.nvim_create_user_command("DopplerConfigs", require("doppler").doppler_configs, {})

local Job = require'plenary.job'

-- Define a function to chain jobs sequentially
local function chain_jobs(jobs)
  local i = 1
  local function run_next_job()
    if i <= #jobs then
      jobs[i]:start()
      i = i + 1
    else
      -- Optional: callback when all jobs are completed
      print("All commands completed")
    end
  end

  for _, job in ipairs(jobs) do
    job.on_exit = function()
      run_next_job()
    end
  end

  run_next_job()
end

-- Create jobs for each command
local set_a = Job:new({
  command = 'bash',
  args = {'-c', 'set -a'}
})

local source_doppler = Job:new({
  command = 'bash',
  args = {'-c', 'source <(doppler secrets download --no-file --format env)'}
})

local set_plus_a = Job:new({
  command = 'bash',
  args = {'-c', 'set +a'}
})

-- Chain the jobs to ensure they are run in sequence
chain_jobs({set_a, source_doppler, set_plus_a})
