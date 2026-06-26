if (!instance_exists(obj_game_manager)) exit;
var _gm = obj_game_manager;
if (_gm.paused || _gm.filled) exit;

spawn_timer--;
if (spawn_timer <= 0) {
    spawn_timer = spawn_interval;
    if (ds_list_size(_gm.menulist) > 0) {
        var _dish = ds_list_find_value(_gm.menulist, 0);
        ds_list_delete(_gm.menulist, 0);
        var _food = instance_create_layer(room_width + 80, room_height * 0.55,
                                          "Instances", obj_food);
        _food.dish_index = _dish;
    }
}
