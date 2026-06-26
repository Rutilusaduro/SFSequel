/// Navigate to the lunch mini-game for a specific character.
/// @param {real} char_index  (-1 = solo lunch)
function scr_goto_lunch(_char) {
    global.lunch_char = _char;
    room_goto(rm_kitchen);
}
