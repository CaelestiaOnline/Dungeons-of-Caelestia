switch(menupos) {
    case 0: {
        scr_enter_game(false);
        break;
    }
    case 1: {
        scr_test_feature();
        break;
    }
    case 2: {
        scr_sidefade(rm_multiplayer, 40);
        break;
    }
    case 3: {
        scr_sidefade(rm_options_menu, 40);
        break;
    }
    case 4: {
        scr_sidefade(rm_game_end, 120);
        break;
    }
    default: {
        break;
    }
}
