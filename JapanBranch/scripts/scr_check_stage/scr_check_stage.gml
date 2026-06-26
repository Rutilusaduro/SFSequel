/// Returns the current weight stage for a character.
/// @param {real} char_index
/// @return {real}
function scr_check_stage(_char) {
    return ds_grid_get(global.statgrid, _char, STAT_STAGE);
}
