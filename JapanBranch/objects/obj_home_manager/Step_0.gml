// Toggle shop
if (keyboard_check_pressed(ord("S"))) shop_open = !shop_open;

// Buy dish by number key (1-5) when shop is open
if (shop_open) {
    for (var _i = 0; _i < global.dish_count && _i < 9; _i++) {
        if (keyboard_check_pressed(ord(string(_i + 1)))) {
            var _req = ds_grid_get(global.dishgrid, _i, DISH_EQUIP);
            if (global.equipment_tier >= _req) {
                scr_buy(_i);
            }
        }
    }
}

// Advance day
if (keyboard_check_pressed(ord("N"))) {
    global.daynum++;
    room_goto(rm_lobby);
}

// Go to lunch (press L, then 0-6 for character, or -1 for solo)
if (keyboard_check_pressed(ord("L"))) {
    scr_goto_lunch(CHAR_KIT); // default: lunch with Kit
}
