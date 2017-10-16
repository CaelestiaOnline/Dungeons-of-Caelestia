switch(menupos) {
    case 0: {
        if(file_exists(working_directory + "SaveData\" + "savedata.ini")) {
            file_delete(working_directory + "SaveData\" + "savedata.ini");
            scr_create_savefile_debug();
            game_restart();
        }
        break;
    }
    case 1: {
        scr_sidefade(rm_volume_menu, 60);
        break;
    }
    case 2: {
        break;
    }
    case 3: {
        scr_sidefade(rm_credits, 60);
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
