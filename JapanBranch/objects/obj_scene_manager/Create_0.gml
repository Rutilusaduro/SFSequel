scene        = "";
confirm      = false;
WAIT         = false;
vmode        = false;
scenefeed    = false;
likelevel    = 3;
namearray    = [];
textarray    = [];
choicearray  = [];
choice_count = 0;
in_choice    = false;
done         = false;
depth        = -9990;
global.line  = 0;

global.hidestats      = true;
global.hide_inventory = true;

// Spawn UI
instance_create_layer(0, 0, "UI", obj_txtbox);
instance_create_layer(0, 0, "UI", obj_namebox);

// Run the scene function
if (scene != "" && script_exists(asset_get_index(scene))) {
    script_execute(asset_get_index(scene));
}
