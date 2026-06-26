if (paused) exit;

// All food spawned and cleared — lunch over
if (ds_list_size(menulist) == 0 && !instance_exists(obj_food)) {
    filled = true;
    paused = true;
    alarm[0] = room_speed * 2;
}
