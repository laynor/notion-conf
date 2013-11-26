--
-- Options to get some programs work more nicely (or at all)
--

defwinprop {
	class = "Xephyr",
	instance = "Xephyr",
	target = "xephyrframe"
}
defwinprop {
	class = "Skype",
	instance = "skype",
	target = "skypeframe"
}
defwinprop {
	class = "Plasmoidviewer",
	instance = "message-indicator",
	statusbar="systray"
}

defwinprop{
    class = "AcroRead",
    instance = "documentShell",
    acrobatic = true
}


defwinprop{
    class = "Xpdf",
    instance = "openDialog_popup",
    ignore_cfgrq = true,
}


-- Put all dockapps in the statusbar's systray, also adding the missing
-- size hints necessary for this to work.
defwinprop{
    is_dockapp = true,
    statusbar = "systray",
    -- max_size = { w = 64, h = 64},
    -- min_size = { w = 64, h = 64},
}


-- You might want to enable these if you really must use XMMS.
--[[
defwinprop{
    class = "xmms",
    instance = "XMMS_Playlist",
    transient_mode = "off"
}

defwinprop{
    class = "xmms",
    instance = "XMMS_Player",
    transient_mode = "off"
}
--]]


defwinprop {
    class = "Operapluginwrapper-ia32-linux",
    instance = "operapluginwrapper-ia32-linux",
    match = function(prop, cwin, id) return is_fullscreen(cwin); end,
    switchto = false,
    flash_fullscreen = true,
}
defwinprop {
    class = "Firefox",
    instance = "firefox",
    name = "Firefox",
    match = function(prop, cwin, id) return is_fullscreen(cwin); end,
    switchto = false,
    flash_fullscreen = true,
}
defwinprop {
    class = "Prism",
    instance = "prism",
    match = function(prop, cwin, id) return is_fullscreen(cwin); end,
    switchto = false,
    flash_fullscreen = true,
}
defwinprop {
    class = "Exe",  -- google chrome
    instance = "exe",
    name = "exe",
    match = function(prop, cwin, id) return is_fullscreen(cwin); end,
    switchto = false,
    flash_fullscreen = true,
}
defwinprop{
   class = "Gimp",
   acrobatic = true,
}
-- defwinprop {class="wmsystray", statusbar="trayion"}
-- defwinprop {class="stalonetray", statusbar="dock"}
defwinprop {class="uim-toolbar-qt4", statusbar="uim"}
-- defwinprop {class="trayer", statusbar="trayer"}
-- defwinprop {class="panel", statusbar="panel"}
defwinprop {
   class = "jetbrains-idea",
   instance = "sun-awt-X11-XWindowPeer",
   transient_mode = "current",
}

defwinprop {
   class = "jetbrains-android-studio",
   instance = "sun-awt-X11-XWindowPeer",
   transient_mode = "current",
}

defwinprop {
    class = "Player",
    instance = "player",
    transient_mode = "normal",
}

defwinprop {
    class = "Player",
    instance = "player",
    name = "^Genymotion$",
    transient_mode = "current",
}

defwinprop {
   class = "jetbrains-idea-ce",
   instance = "sun-awt-X11-XWindowPeer",
   transient_mode = "current",
}

defwinprop {
    class = "GNUstep",
    intance = "ProjectCenter",
    transient_mode = "current",
}

defwinprop {
    class = "GNUstep",
    instance = "ProjectCenter",
    name =  ".*%[English%]",
    transient_mode = "normal",
}

ioncore.get_hook('clientwin_do_manage_alt'):add(
    function(cwin, table)
    ioncore.write_savefile("windowinfos", cwin:get_ident())
end)

-- Define some additional title shortening rules to use when the full
-- title doesn't fit in the available space. The first-defined matching
-- rule that succeeds in making the title short enough is used.
ioncore.defshortening("(.*) - Mozilla(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("(.*) - Mozilla", "$1$|$1$<...")
ioncore.defshortening("XMMS - (.*)", "$1$|...$>$1")
ioncore.defshortening("[^:]+: (.*)(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("[^:]+: (.*)", "$1$|$1$<...")
ioncore.defshortening("(.*)(<[0-9]+>)", "$1$2$|$1$<...$2")
ioncore.defshortening("(.*)", "$1$|$1$<...")


