/// @param {string} scene_name
function scr_callscene(_scene) {
    if (!instance_exists(obj_scene_manager)) {
        var _sm = instance_create_layer(0, 0, "UI", obj_scene_manager);
        _sm.scene = _scene;
    }
}
