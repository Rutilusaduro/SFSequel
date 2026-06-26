/// Called by choicebox when a choice is selected.
/// @param {real} choice_index
function scr_madechoice(_choice) {
    global.events[$ "lastchoice"] = _choice;
}
