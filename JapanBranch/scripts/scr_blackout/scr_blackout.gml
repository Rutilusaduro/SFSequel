/// Spawn a fade-to-black overlay.
/// @param {bool} fade_in  true = fade in (reveal), false = fade out (darken)
function scr_blackout(_fade_in) {
    if (!instance_exists(obj_blackscrn)) {
        var _b = instance_create_layer(0, 0, "UI", obj_blackscrn);
        _b.fading_in = _fade_in;
    }
}
