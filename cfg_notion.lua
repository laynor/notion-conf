META="Mod4+"
ALTMETA="Mod1+"

dopath("cfg_defaults")
dopath("nest_ws.lua")
dopath("mod_fuzzy_query")
dopath("emacs_bindings")

defbindings("WScreen", {
   bdoc("Go to next/previous screen on multihead setup."),
   kpress(META.."Shift+period", "ioncore.goto_next_screen()"),
   bdoc("Display the main menu."),
   kpress(ALTMETA.."F2", "mod_query.query_menu(_, _sub, 'mainmenu', 'Main menu:')"),
   kpress(META.."U", nil),
   --submap("META..U", nil),
})

defbindings("WFrame.toplevel", {
   kpress(META.."O", "WFrame.switch_next(_)"),
   kpress(META.."U", "WFrame.switch_prev(_)"),
   kpress(META.."Y", "WFrame.switch_prev(_)"),
})

defbindings("WMPlex", {
   kpress(META.."U", nil),
   --submap("META..U", nil),
})

defbindings("WMPlex.toplevel", {
   bdoc("Query for a client window to go to."),
   kpress(META.."J", "mod_query.query_fuzzy_gotoclient(_)"),
   kpress(ALTMETA.."F2", nil),
   kpress(META.."Y", nil),
   kpress(META.."U", nil),
   --submap("META..U", nil),
})
