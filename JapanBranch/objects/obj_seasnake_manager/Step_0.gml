// Day-gated scenes for SeaSnake
var _day = global.daynum;
var _key_prefix = "seen_seasnake_day";

if (_day >= 1 && !ds_map_exists(global.events, _key_prefix + "1")) {
    ds_map_add(global.events, _key_prefix + "1", 1);
    scr_callscene("scr_seasnake_day1");
}

// ── Room navigation ───────────────────────────────────────────────
// 1=Lobby  2=Home  3=BreakRoom  4=Archive  5=IT  6=Maintenance
// 7=Management  8=Executive  9=Kitchen
// ─────────────────────────────────────────────────────────────────
if (keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(ord("1"))) room_goto(rm_lobby);
if (keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(ord("2"))) room_goto(rm_home);
if (keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(ord("3"))) room_goto(rm_breakroom);
if (keyboard_check_pressed(vk_numpad4) || keyboard_check_pressed(ord("4"))) room_goto(rm_archive);
if (keyboard_check_pressed(vk_numpad5) || keyboard_check_pressed(ord("5"))) room_goto(rm_it);
if (keyboard_check_pressed(vk_numpad6) || keyboard_check_pressed(ord("6"))) room_goto(rm_maintenance);
if (keyboard_check_pressed(vk_numpad7) || keyboard_check_pressed(ord("7"))) room_goto(rm_management);
if (keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(ord("8"))) room_goto(rm_exec);
if (keyboard_check_pressed(vk_numpad9) || keyboard_check_pressed(ord("9"))) room_goto(rm_kitchen);
