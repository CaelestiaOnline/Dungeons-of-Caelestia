switch(menupos) {
    case 0: {
        if(file_exists(working_directory + "SaveData\" + "savedata.ini")) {
            var status = file_delete(working_directory + "SaveData\" + "savedata.ini");
            scr_create_savefile_debug();
            game_restart();
        }
        break;
    }
    case 1: {
        var int = 2;
        show_debug_message("Das kann ja nicht funktionieren: " + int);
        break;
    }
    case 2: {
        while(true) {};
        break;
    }
    case 3: {
        var status = choose(1,2);
        if(status == 1) {
            if(!instance_exists(obj_player)) instance_create(64, 64, obj_player)
        }
        if(status == 2) {
            scr_loading_screen(rm_main_menu, 1000, "BAMBOOZLING");
        }
        break;
    }
    case 4: {
        scr_sidefade(rm_graphics_menu, 60);
        break;
    }
    case 5: {
        scr_sidefade(rm_options_menu, 60);
        break;
    }
    default: {
        break;
    }
}
