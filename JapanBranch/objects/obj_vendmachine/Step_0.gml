if (keyboard_check_pressed(ord("V"))) vend_open = !vend_open;
if (vend_open) {
    for (var _i = 0; _i < global.dish_count && _i < 9; _i++) {
        if (keyboard_check_pressed(ord(string(_i + 1)))) {
            scr_buy(_i);
        }
    }
}
