// Prevent duplicate inits
if (instance_number(obj_global_init) > 1) {
    instance_destroy();
    exit;
}

// Day / economy
global.daynum        = 1;
global.gold          = 50;
global.lunch_char    = -1;  // which char today's lunch is with (-1 = solo)
global.onetrust      = ONE_STAGE;
global.monsterpts    = 5;
global.scrnpct       = 0.8;
global.equipment_tier = 0;

// UI flags
global.hidestats      = false;
global.hide_inventory = false;
global.cutmusic       = false;

// Line counters for scene_manager
global.line = 0;
global.text = 0;

// Character names (matches CHAR_* index order)
global.char_name = array_create(CHAR_COUNT);
global.char_name[CHAR_YUKI]      = "Yuki";
global.char_name[CHAR_KIT]       = "Kit";
global.char_name[CHAR_BIGKIT]    = "BigKit";
global.char_name[CHAR_HARADASHI] = "Haradashi";
global.char_name[CHAR_EYES]      = "Eyes";
global.char_name[CHAR_SEASNAKE]  = "SeaSnake";
global.char_name[CHAR_BONES]     = "Bones";

// stat grid: [char_index, stat_row]
global.statgrid = ds_grid_create(CHAR_COUNT, STAT_ROW_COUNT);
ds_grid_clear(global.statgrid, 0);
for (var _c = 0; _c < CHAR_COUNT; _c++) {
    ds_grid_set(global.statgrid, _c, STAT_MAXPTS, ONE_STAGE);
}

// pair grid: relationship scores between characters
global.pair_grid = ds_grid_create(CHAR_COUNT, CHAR_COUNT);
ds_grid_clear(global.pair_grid, 0);

// dish grid: [dish_slot, dish_row]
global.dishgrid = ds_grid_create(DISH_SLOTS, DISH_ROW_COUNT);
ds_grid_clear(global.dishgrid, 0);

// Populate default dishes
var _d = 0;
// Onigiri
ds_grid_set(global.dishgrid, _d, DISH_ID,    _d);
ds_grid_set(global.dishgrid, _d, DISH_NAME,  "Onigiri");
ds_grid_set(global.dishgrid, _d, DISH_COST,  5);
ds_grid_set(global.dishgrid, _d, DISH_PTS,   2);
ds_grid_set(global.dishgrid, _d, DISH_EQUIP, 0); _d++;
// Bento Box
ds_grid_set(global.dishgrid, _d, DISH_ID,    _d);
ds_grid_set(global.dishgrid, _d, DISH_NAME,  "Bento Box");
ds_grid_set(global.dishgrid, _d, DISH_COST,  10);
ds_grid_set(global.dishgrid, _d, DISH_PTS,   4);
ds_grid_set(global.dishgrid, _d, DISH_EQUIP, 0); _d++;
// Ramen
ds_grid_set(global.dishgrid, _d, DISH_ID,    _d);
ds_grid_set(global.dishgrid, _d, DISH_NAME,  "Ramen");
ds_grid_set(global.dishgrid, _d, DISH_COST,  15);
ds_grid_set(global.dishgrid, _d, DISH_PTS,   6);
ds_grid_set(global.dishgrid, _d, DISH_EQUIP, 1); _d++;
// Sushi Platter
ds_grid_set(global.dishgrid, _d, DISH_ID,    _d);
ds_grid_set(global.dishgrid, _d, DISH_NAME,  "Sushi Platter");
ds_grid_set(global.dishgrid, _d, DISH_COST,  25);
ds_grid_set(global.dishgrid, _d, DISH_PTS,   10);
ds_grid_set(global.dishgrid, _d, DISH_EQUIP, 1); _d++;
// Kaiseki Set
ds_grid_set(global.dishgrid, _d, DISH_ID,    _d);
ds_grid_set(global.dishgrid, _d, DISH_NAME,  "Kaiseki Set");
ds_grid_set(global.dishgrid, _d, DISH_COST,  40);
ds_grid_set(global.dishgrid, _d, DISH_PTS,   18);
ds_grid_set(global.dishgrid, _d, DISH_EQUIP, 2); _d++;

global.dish_count = _d;

// Inventory: player-owned dish indices
global.inventory = ds_list_create();

// Event flags map
global.events = ds_map_create();

room_goto(rm_lobby);
