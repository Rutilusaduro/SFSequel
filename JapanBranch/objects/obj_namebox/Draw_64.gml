if (!instance_exists(obj_scene_manager)) { instance_destroy(); exit; }
var _sm   = obj_scene_manager;
var _line = global.line;
var _na   = _sm.namearray;
if (!is_array(_na) || _line >= array_length(_na)) exit;
var _name = _na[_line];
if (_name == "") exit;

var bx = 40;
var by = display_get_gui_height() - 180;
var bw = 200;
var bh = 34;

draw_set_alpha(0.9);
draw_set_color(c_black);
draw_rectangle(bx, by, bx+bw, by+bh, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(bx, by, bx+bw, by+bh, true);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(-1);
draw_text(bx+10, by+bh/2, _name);
