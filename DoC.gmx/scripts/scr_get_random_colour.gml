/*
scr_random_colour(

);
Liefert eine zufällige schöne Farbe
*/

var random_colour = make_colour_hsv(
    random_range(0, 255),
    random_range(255*0.75, 255),
    random_range(255*0.25, 255)
    );
    
return random_colour;
