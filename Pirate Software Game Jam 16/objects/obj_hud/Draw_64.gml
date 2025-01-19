/// @description 

draw_sprite(spr_version,1,32+1,display_get_gui_height()-1);
var _font = draw_get_font();
draw_set_font(global.font_timer);
draw_text(1024-(72*1.5),72*1.5,"00");

draw_set_font(_font);