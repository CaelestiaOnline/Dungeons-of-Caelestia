switch(menupos) {
    case 0: {
        scr_loading_screen(rm_loading_screen, 10, "");
        break;
    }
    case 1: {
        scr_loading_screen(rm_loading_screen, 20, "");
        break;
    }
    case 2: {
        scr_loading_screen(rm_loading_screen, 40, "");
        break;
    }
    case 3: {
        scr_loading_screen(rm_loading_screen, -2, "");
        break;
    }
    case 4: {
        scr_sidefade(rm_main_menu, 60);
        break;
    }
    default: {
        break;
    }
}
