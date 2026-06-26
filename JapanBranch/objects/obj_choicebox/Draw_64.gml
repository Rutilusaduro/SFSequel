if (!instance_exists(obj_scene_manager)) exit;
var _sm = obj_scene_manager;
if (!_sm.in_choice) exit;

var _n  = _sm.choice_count;
var _ca = _sm.choicearray;
var ih  = 44;
var bw  = 420;
var bx  = (display_get_gui_width() - bw) / 2;
var by  = display_get_gui_height() - 180 - (_n * ih) - 10;

for (var i = 0; i < _n; i++) {
    var iy  = by + i * ih;
    var sel = (i == choice_sel);
    draw_set_alpha(sel ? 1.0 : 0.8);
    draw_set_color(sel ? c_yellow : c_black);
    draw_rectangle(bx, iy, bx+bw, iy+ih, false);
    draw_set_alpha(1);
    draw_set_color(sel ? c_black : c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(-1);
    if (is_array(_ca) && i < array_length(_ca)) {
        draw_text(bx + bw/2, iy + ih/2, _ca[i]);
    }
}
