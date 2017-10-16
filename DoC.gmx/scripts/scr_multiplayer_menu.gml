switch(menupos) {
    case 0:
        scr_loading_screen(rm_game_crash, 10, "CONNECTING");
        show_debug_message("MENUPOS: " + string(menupos));
        break;
    case 1:
        scr_loading_screen(rm_game_crash, 20, "ACCESSING SERVER");
        show_debug_message("MENUPOS: " + string(menupos));
        break;
    case 2:
        scr_loading_screen(rm_game_crash, 40, "DOING SOMETHING");
        show_debug_message("MENUPOS: " + string(menupos));
        break;
    case 3:
        scr_loading_screen(rm_game_crash, 60, "INSTALLING VIRUS.EXE");
        show_debug_message("MENUPOS: " + string(menupos));
        break;
    case 4:
        scr_sidefade(rm_main_menu, 60);
        break;
}
