/// Feed a dish to a character. Adds weight points and checks stage advancement.
/// @param {real} dish_index
/// @param {real} char_index
function scr_give_gift(_dish, _char) {
    var _pts = ds_grid_get(global.dishgrid, _dish, DISH_PTS);
    var _cur = ds_grid_get(global.statgrid, _char, STAT_PTS);
    ds_grid_set(global.statgrid, _char, STAT_PTS, _cur + _pts);
    scr_check_level(_char);
}
