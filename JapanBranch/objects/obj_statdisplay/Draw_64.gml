if (global.hidestats) exit;

var bx   = 10;
var by   = 10;
var rh   = 22;
var cw   = 110;
var cols = CHAR_COUNT;

draw_set_alpha(0.78);
draw_set_color(c_black);
draw_rectangle(bx, by, bx + 70 + cols * cw, by + 5 * rh + 10, false);
draw_set_alpha(1);

draw_set_font(-1);
draw_set_color(c_ltgray);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(bx+4, by+4,        "Gold:");
draw_text(bx+4, by+4+rh,     string(global.gold) + "G");
draw_text(bx+4, by+4+rh*2,   "Day:");
draw_text(bx+4, by+4+rh*3,   string(global.daynum));

for (var c = 0; c < cols; c++) {
    var cx    = bx + 70 + c * cw;
    var stage = ds_grid_get(global.statgrid, c, STAT_STAGE);
    var pts   = ds_grid_get(global.statgrid, c, STAT_PTS);
    var maxp  = ds_grid_get(global.statgrid, c, STAT_MAXPTS);
    var eaten = ds_grid_get(global.statgrid, c, STAT_EATEN);

    draw_set_color(eaten ? c_red : c_white);
    draw_text(cx, by+4,       global.char_name[c]);
    draw_set_color(c_aqua);
    draw_text(cx, by+4+rh,    "S" + string(stage));
    draw_set_color(c_ltgray);
    draw_text(cx, by+4+rh*2,  string(pts) + "/" + string(maxp));
    draw_set_color(eaten ? c_red : c_lime);
    draw_text(cx, by+4+rh*3,  eaten ? "gone" : "here");
}
