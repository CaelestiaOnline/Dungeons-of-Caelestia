switch(menupos) {
    case 0: {
        room_goto(rm_main_hub);
        break;
    }
    case 1: {
        room_goto(rm_options_menu);
        break;
    }
    case 2: {
        room_goto(rm_credits);
        break;
    }
    case 3: {
        game_end();
        break;
    }
    default: {
        break;
    }
}
