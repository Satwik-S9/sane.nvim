local utils = {}

utils.color_overrides = require 'utils.color_overrides'

--- get the operating system name
--- "windows", "mac", "linux"
function utils.get_os()
  local uname = vim.loop.os_uname()
  local os_name = uname.sysname
  if os_name == 'Windows_NT' then
    return 'windows'
  elseif os_name == 'Darwin' then
    return 'mac'
  else
    return 'linux'
  end
end

function utils.expand_path(path)
  if path:sub(1, 1) == '~' then
    return os.getenv 'HOME' .. path:sub(2)
  end
  return path
end

function utils.center_in(outer, inner)
  return (outer - inner) / 2
end

return utils
