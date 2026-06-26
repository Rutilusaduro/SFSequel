/// Adjust relationship score between two characters (symmetric).
/// @param {real} charA
/// @param {real} charB
/// @param {real} amount
function scr_pair_change(_a, _b, _amount) {
    var _cur = ds_grid_get(global.pair_grid, _a, _b);
    var _new = _cur + _amount;
    ds_grid_set(global.pair_grid, _a, _b, _new);
    ds_grid_set(global.pair_grid, _b, _a, _new);
}
