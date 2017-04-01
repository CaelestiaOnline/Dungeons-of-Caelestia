switch(menupos) {
    case 0: {
        scr_sidefade(rm_main_menu, 60);
        break;
    }
    case 1: {
        game_end();
        break;
    }
    default: {
        break;
    }
}
