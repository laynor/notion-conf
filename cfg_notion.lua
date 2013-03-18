META="Mod4+"
ALTMETA="Mod1+"

dopath("cfg_defaults")
dopath("cfg_notioncore")
dopath("nest_ws.lua")
dopath("mod_fuzzy_query")
dopath("emacs_bindings")

defbindings("WScreen", {
   bdoc("Go to next/previous screen on multihead setup."),
   kpress(META.."Shift+period", "ioncore.goto_next_screen()"),
})

defbindings("WFrame.toplevel", {
   kpress(META.."O", "WFrame.switch_next(_)"),
   kpress(META.."U", "WFrame.switch_prev(_)"),
})

defbindings("WMPlex.toplevel", {
   bdoc("Display the main menu."),
   kpress(ALTMETA.."F2", "mod_query.query_menu(_, _sub, 'mainmenu', 'Main menu:')"),
   bdoc("Query for a client window to go to."),
   kpress(META.."J", "mod_query.query_fuzzy_gotoclient(_)"),
})
