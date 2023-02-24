local fn = hs.loadSpoon("devstefancho")

-- [[ Launch App ]]
fn.hotkeyBindApp({ "alt" }, "1", "iTerm")
fn.hotkeyBindApp({ "alt" }, "2", "Google Chrome")
fn.hotkeyBindApp({ "alt" }, "3", "Obsidian")

-- [[ Remapper ]]
local FRemap = hs.loadSpoon("foundation_remapping")

local remapper = FRemap.new()
remapper:remap("rcmd", "F19") -- 한/영 변환키
remapper:register()
