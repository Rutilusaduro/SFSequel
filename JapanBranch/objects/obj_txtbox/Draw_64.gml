if (!instance_exists(obj_scene_manager)) exit;
var _sm = obj_scene_manager;

// Box background
draw_set_alpha(0.88);
draw_set_color(c_black);
draw_rectangle(bx, by, bx+bw, by+bh, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(bx, by, bx+bw, by+bh, true);

// Dialogue text
var _line = global.line;
var _ta   = _sm.textarray;
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);
if (is_array(_ta) && _line < array_length(_ta)) {
    draw_text_ext(bx+20, by+14, _ta[_line], -1, bw-40);
}

// Advance indicator
if ((current_time mod 700) < 350) {
    draw_set_halign(fa_right);
    draw_text(bx+bw-18, by+bh-28, ">");
    draw_set_halign(fa_left);
}
