META="Mod4+"
ALTMETA="Mod1+"

dopath("cfg_defaults")
dopath("cfg_notioncore")
dopath("nest_ws.lua")

defbindings("WScreen", {
   bdoc("Go to next/previous screen on multihead setup."),
   kpress(META.."Shift+period", "ioncore.goto_next_screen()"),
})

defbindings("WFrame.toplevel", {
   kpress(META.."O", "WFrame.switch_next(_)"),
   kpress(META.."U", "WFrame.switch_prev(_)"),
   bdoc("Display the main menu."),
   kpress(ALTMETA.."F2", "mod_query.query_menu(_, _sub, 'mainmenu', 'Main menu:')"),
})
