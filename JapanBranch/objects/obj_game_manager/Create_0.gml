filled   = false;
paused   = false;
vmode    = false;
friend   = false;
nomoney  = false;
total_fed = 0;

global.hidestats      = true;
global.hide_inventory = true;

menulist  = ds_list_create();
bufflength = 0;

// Build menu from player inventory; fallback to onigiri
if (ds_list_size(global.inventory) > 0) {
    for (var _i = 0; _i < ds_list_size(global.inventory); _i++) {
        ds_list_add(menulist, ds_list_find_value(global.inventory, _i));
    }
    ds_list_shuffle(menulist);
} else {
    ds_list_add(menulist, 0);
    ds_list_add(menulist, 0);
    ds_list_add(menulist, 0);
}
bufflength = ds_list_size(menulist);

// Spawn conveyor
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_conveyor);
