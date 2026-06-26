/// Call after any stat change. Advances STAT_STAGE if threshold crossed.
/// @param {real} char_index
function scr_check_level(_char) {
    var _pts    = ds_grid_get(global.statgrid, _char, STAT_PTS);
    var _maxpts = ds_grid_get(global.statgrid, _char, STAT_MAXPTS);
    var _stage  = ds_grid_get(global.statgrid, _char, STAT_STAGE);

    if (_pts >= _maxpts && _stage < STAGE_MAX) {
        _stage++;
        ds_grid_set(global.statgrid, _char, STAT_STAGE, _stage);
        // Raise threshold for next stage (each stage costs more)
        ds_grid_set(global.statgrid, _char, STAT_MAXPTS, _maxpts + ONE_STAGE);

        // Trigger stage scene if unseen
        var _key = "seen_" + global.char_name[_char] + "_s" + string(_stage);
        if (!ds_map_exists(global.events, _key)) {
            ds_map_add(global.events, _key, 1);
            scr_callscene("scr_" + string(global.char_name[_char]) + "_stage" + string(_stage));
        }
    }
}
