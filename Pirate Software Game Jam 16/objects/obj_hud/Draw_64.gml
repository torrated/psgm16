/// @description 

// version
draw_sprite(spr_version,1,32+1,display_get_gui_height()-1);

//timer
if (instance_exists(obj_timer))
{
    var _font = draw_get_font();
    var _color = draw_get_color();
    
    draw_set_font(global.font_timer);
    draw_set_color(obj_timer.color);
    draw_text(1024-(72*1.5),72*1.5,string(obj_timer.tiempo));
    
    draw_set_font(_font);
    draw_set_color(_color);
}