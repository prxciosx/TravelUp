draw_self();
draw_set_colour(c_black);
draw_set_font(Font1_1);
draw_text_ext(x-175, y-180,text,-1,400);

draw_set_colour(c_green);
draw_set_font(Font2);
draw_text(x-80,y-24,textp);

draw_set_color(c_black);
draw_set_font(Font1_1);
draw_text(x - 300, y - 24, "Erros: " + string(global.erros));

draw_set_color(c_black);
draw_set_font(Font1_1);
draw_text(x + 200, y - 24, "Acertos: " + string(global.acertos));