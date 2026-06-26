/// One character eats another. Transfers weight points; marks prey as eaten.
/// @param {real} predator_char
/// @param {real} prey_char
function scr_vore(_pred, _prey) {
    var _prey_eaten = ds_grid_get(global.statgrid, _prey, STAT_EATEN);

    if (_prey_eaten) {
        // Prey already gone — just award base monster pts
        var _sc = ds_grid_get(global.statgrid, _pred, STAT_SCORE);
        ds_grid_set(global.statgrid, _pred, STAT_SCORE, _sc + global.monsterpts);
    } else {
        var _prey_pts = ds_grid_get(global.statgrid, _prey, STAT_PTS);
        var _pred_pts = ds_grid_get(global.statgrid, _pred, STAT_PTS);
        var _transfer = max(1, _prey_pts);

        if (_pred_pts < STAGE_MAX * ONE_STAGE) {
            ds_grid_set(global.statgrid, _pred, STAT_PTS, _pred_pts + _transfer);
        }

        var _sc = ds_grid_get(global.statgrid, _pred, STAT_SCORE);
        ds_grid_set(global.statgrid, _pred, STAT_SCORE, _sc + (_transfer * global.monsterpts) + global.monsterpts);

        ds_grid_set(global.statgrid, _prey, STAT_EATEN, 1);
    }

    scr_check_level(_pred);
}
