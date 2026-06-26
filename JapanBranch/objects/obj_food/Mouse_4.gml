// Left button pressed on food — serve it
if (!instance_exists(obj_game_manager)) exit;
var _gm = obj_game_manager;
if (_gm.paused || _gm.filled) exit;

var _char = global.lunch_char;
if (_char >= 0 && _char < CHAR_COUNT) {
    scr_give_gift(dish_index, _char);
    _gm.total_fed++;
}
instance_destroy();
