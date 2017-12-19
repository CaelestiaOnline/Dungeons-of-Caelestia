switch(menupos) {
    case 0: {
        var window_height = 1080;
        var window_width = 1920;
        
        var window_x = display_get_width()/2;
        var window_y = display_get_height()/2;  
        var window_x1 = window_x - (window_width/2);
        var window_y1 = window_y - (window_height/2);
    
        window_set_rectangle(window_x1, window_y1, window_width, window_height);
        break;
    }
    case 1: {
        var window_height = 900;
        var window_width = 1600;
        
        var window_x = display_get_width()/2;
        var window_y = display_get_height()/2;  
        var window_x1 = window_x - (window_width/2);
        var window_y1 = window_y - (window_height/2);
    
        window_set_rectangle(window_x1, window_y1, window_width, window_height);
        break;
    }
    case 2: {
        var window_height = 765;
        var window_width = 1360;
        
        var window_x = display_get_width()/2;
        var window_y = display_get_height()/2;  
        var window_x1 = window_x - (window_width/2);
        var window_y1 = window_y - (window_height/2);
    
        window_set_rectangle(window_x1, window_y1, window_width, window_height);
        break;
    }
    case 3: {
        var window_height = 720;
        var window_width = 1280;
        
        var window_x = display_get_width()/2;
        var window_y = display_get_height()/2;  
        var window_x1 = window_x - (window_width/2);
        var window_y1 = window_y - (window_height/2);
    
        window_set_rectangle(window_x1, window_y1, window_width, window_height);
        break;
    }
    case 4: {
        var window_height = 320;
        var window_width = 640;
        
        var window_x = display_get_width()/2;
        var window_y = display_get_height()/2;  
        var window_x1 = window_x - (window_width/2);
        var window_y1 = window_y - (window_height/2);
    
        window_set_rectangle(window_x1, window_y1, window_width, window_height);
        break;        
    }
    case 5: {
        var mousex = display_mouse_get_x();
        var mousey = display_mouse_get_y();
        
        window_set_position(mousex, mousey);
        break;
    }
    case 6: {
        var window_x = display_get_width()/2;
        var window_y = display_get_height()/2;
        var window_x1 = window_x - (window_get_width()/2);
        var window_y1 = window_y - (window_get_height()/2);
    
        window_set_position(window_x1, window_y1);
        break;
    }
    case 7: {
        scr_sidefade(rm_ext_options_menu, 60);
        break;
    }
    default: {
        break;
    }
}
