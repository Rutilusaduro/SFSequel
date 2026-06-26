/// Purchase a dish by index, deducting gold.
/// @param {real} dish_index
function scr_buy(_dish) {
    var _cost = ds_grid_get(global.dishgrid, _dish, DISH_COST);
    var _req  = ds_grid_get(global.dishgrid, _dish, DISH_EQUIP);
    if (global.gold >= _cost && global.equipment_tier >= _req) {
        global.gold -= _cost;
        ds_list_add(global.inventory, _dish);
    }
}
