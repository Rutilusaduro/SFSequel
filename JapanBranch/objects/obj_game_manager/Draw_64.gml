var gx = display_get_gui_width() / 2;
var gy = 20;

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(-1);

var _char = global.lunch_char;
var _who  = (_char >= 0 && _char < CHAR_COUNT) ? global.char_name[_char] : "Solo";
draw_text(gx, gy, "Lunch with: " + _who);
draw_text(gx, gy+26, "[Click food to serve it]");

if (_char >= 0 && _char < CHAR_COUNT) {
    var _stage = ds_grid_get(global.statgrid, _char, STAT_STAGE);
    var _pts   = ds_grid_get(global.statgrid, _char, STAT_PTS);
    var _maxp  = ds_grid_get(global.statgrid, _char, STAT_MAXPTS);
    draw_text(gx, gy+52, "Stage " + string(_stage)
        + "  (" + string(_pts) + "/" + string(_maxp) + " pts)");
}

if (filled) {
    draw_set_color(c_yellow);
    draw_text(gx, display_get_gui_height()/2, "Lunch over!");
}
