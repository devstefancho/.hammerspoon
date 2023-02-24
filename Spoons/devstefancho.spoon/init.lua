local M = {}

function M.hotkeyBindApp(modifier, char, application)
  hs.hotkey.bind(modifier, char, function()
    hs.application.launchOrFocus(application)
  end)
end

return M
