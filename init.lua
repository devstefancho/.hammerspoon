local fn = hs.loadSpoon("devstefancho")

fn.autoReload()

-- [[ Launch App ]]
fn.hotkeyBindApp({ "alt" }, "1", "Alacritty")
fn.hotkeyBindApp({ "alt" }, "2", "Google Chrome")
fn.hotkeyBindApp({ "alt" }, "3", "Obsidian")

-- [[ Remapper ]]
local FRemap = hs.loadSpoon("foundation_remapping")

local remapper = FRemap.new()
remapper:remap("rcmd", "F19") -- 한/영 변환키
-- remapper:remap("capslock", "lctrl")
remapper:register()

-- function stroke_arrow(arrow_key)
--   -- hs.eventtap.keyStroke()의 경우 중간에 timer.usleep()이
--   -- 포함되어 있어, 연속 입력이 어려우므로, 다음처럼 처리하였다.
--   local event = require("hs.eventtap").event
--   event.newKeyEvent({}, arrow_key, true):post()
--   event.newKeyEvent({}, arrow_key, false):post()
-- end

-- hs.hotkey.bind({ "ctrl" }, "H", function()
--   stroke_arrow("left")
-- end, function() end, function()
--   stroke_arrow("left")
-- end)
-- hs.hotkey.bind({ "ctrl" }, "J", function()
--   stroke_arrow("down")
-- end, function() end, function()
--   stroke_arrow("down")
-- end)
-- hs.hotkey.bind({ "ctrl" }, "K", function()
--   stroke_arrow("up")
-- end, function() end, function()
--   stroke_arrow("up")
-- end)
-- hs.hotkey.bind({ "ctrl" }, "L", function()
--   stroke_arrow("right")
-- end, function() end, function()
--   stroke_arrow("right")
-- end)
