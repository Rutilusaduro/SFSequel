// Day-gated incident triggers
var _day = global.daynum;

if (_day >= 2 && !ds_map_exists(global.events, "incident_lobby")) {
    ds_map_add(global.events, "incident_lobby", 1);
    scr_callscene("scr_incident_lobby");
    exit;
}
if (_day >= 4 && !ds_map_exists(global.events, "incident_breakroom")) {
    ds_map_add(global.events, "incident_breakroom", 1);
    scr_callscene("scr_incident_breakroom");
    exit;
}
if (_day >= 6 && !ds_map_exists(global.events, "incident_archive")) {
    ds_map_add(global.events, "incident_archive", 1);
    scr_callscene("scr_incident_archive");
    exit;
}
if (_day >= 8 && !ds_map_exists(global.events, "incident_it")) {
    ds_map_add(global.events, "incident_it", 1);
    scr_callscene("scr_incident_it");
    exit;
}
