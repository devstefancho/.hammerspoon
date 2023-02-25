local M = {}

function M.hotkeyBindApp(modifier, char, application)
  hs.hotkey.bind(modifier, char, function()
    hs.application.launchOrFocus(application)
  end)
end

function M.autoReload()
  function reloadConfig(files)
    doReload = false
    for _, file in pairs(files) do
      if file:sub(-4) == ".lua" then
        doReload = true
      end
    end
    if doReload then
      hs.reload()
    end
  end
  myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
  hs.alert.show("Config loaded")
end

return M
