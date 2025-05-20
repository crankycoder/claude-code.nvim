---@mod claude-code.version Version information for claude-code.nvim
---@brief [[
--- This module provides version information for claude-code.nvim.
---@brief ]]

--- @table M
--- Version information for Claude Code
--- @field major number Major version (breaking changes)
--- @field minor number Minor version (new features)
--- @field patch number Patch version (bug fixes)
--- @field string function Returns formatted version string

local M = {}

-- Individual version components
M.major = 0
M.minor = 5
M.patch = 0

-- Combined semantic version
M.version = string.format('%d.%d.%d', M.major, M.minor, M.patch)

--- Returns the formatted version string (for backward compatibility)
--- @return string Version string in format "major.minor.patch"
function M.string()
  return M.version
end

--- Prints the current version of the plugin
function M.print_version()
  vim.notify('Claude Code version: ' .. M.string(), vim.log.levels.INFO)
end

return M
