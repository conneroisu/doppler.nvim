---@class CustomModule
local M = {}

---@return nil
M.doppler_configs = function()
  vim.cmd("!doppler configs")
end

return M
