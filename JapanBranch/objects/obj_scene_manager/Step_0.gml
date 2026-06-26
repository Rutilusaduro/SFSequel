if (WAIT) exit;
if (done) {
    global.hidestats      = false;
    global.hide_inventory = false;
    if (instance_exists(obj_txtbox))   instance_destroy(obj_txtbox);
    if (instance_exists(obj_namebox))  instance_destroy(obj_namebox);
    if (instance_exists(obj_choicebox)) instance_destroy(obj_choicebox);
    instance_destroy();
}
