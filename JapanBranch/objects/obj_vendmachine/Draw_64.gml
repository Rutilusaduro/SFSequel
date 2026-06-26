if (!vend_open) {
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_font(-1);
    draw_text(display_get_gui_width()/2, display_get_gui_height()-40,
              "[V] Vending Machine");
    exit;
}
var gx = display_get_gui_width() / 2;
var by = 200;
var bw = 480;
var ih = 46;
draw_set_alpha(0.92);
draw_set_color(c_black);
draw_rectangle(gx-bw/2, by, gx+bw/2, by + 40 + global.dish_count*ih, false);
draw_set_alpha(1);
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_font(-1);
draw_text(gx, by+12, "VENDING MACHINE");
for (var i = 0; i < global.dish_count; i++) {
    var iy    = by + 40 + i * ih;
    var dname = ds_grid_get(global.dishgrid, i, DISH_NAME);
    var dcost = ds_grid_get(global.dishgrid, i, DISH_COST);
    var dpts  = ds_grid_get(global.dishgrid, i, DISH_PTS);
    var dreq  = ds_grid_get(global.dishgrid, i, DISH_EQUIP);
    var ok    = (global.equipment_tier >= dreq) && (global.gold >= dcost);
    draw_set_color(ok ? c_white : c_gray);
    draw_text(gx, iy + ih/2,
        "[" + string(i+1) + "] " + dname + "  " + string(dcost) + "G  +" + string(dpts) + " pts");
}
