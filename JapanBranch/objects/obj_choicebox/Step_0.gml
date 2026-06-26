if (!instance_exists(obj_scene_manager)) { instance_destroy(); exit; }
var _sm = obj_scene_manager;
if (!_sm.in_choice) exit;

var _n = _sm.choice_count;
if (_n <= 0) exit;

if (keyboard_check_pressed(vk_up))   choice_sel = (choice_sel - 1 + _n) mod _n;
if (keyboard_check_pressed(vk_down)) choice_sel = (choice_sel + 1) mod _n;

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_return)
    || mouse_check_button_pressed(mb_left)) {
    scr_madechoice(choice_sel);
    _sm.in_choice = false;
    global.line++;
    if (_sm.scene != "" && script_exists(asset_get_index(_sm.scene))) {
        script_execute(asset_get_index(_sm.scene));
    }
    instance_destroy();
}
