if (!instance_exists(obj_scene_manager)) { instance_destroy(); exit; }
var _sm = obj_scene_manager;
if (_sm.WAIT || _sm.in_choice) exit;

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_return)
    || mouse_check_button_pressed(mb_left)) {
    global.line++;
    if (global.line >= array_length(_sm.textarray)) {
        _sm.done = true;
    } else if (scene_manager_needs_refresh(_sm)) {
        // Scene function re-evaluates on new line if needed
    }
}

function scene_manager_needs_refresh(_sm) { return false; }
