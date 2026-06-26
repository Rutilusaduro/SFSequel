# How to Build the Japan Branch Game in GameMaker Studio 2

This document is a step-by-step construction guide. Follow the phases in order — each phase depends on the one before it. The original SFSequel code is compiled bytecode (`.asm`), so you cannot paste it directly; use it as a logic reference while writing fresh GML.

---

## Before You Start

- Use **GameMaker Studio 2** (GMS2), any recent version.
- Create a **new blank project** — do not try to open the old project, it won't work.
- Keep this repo open alongside GMS2 as your reference.
- The `.asm` files in `/code` are readable — the GML logic maps almost 1:1 to what you'd write.

---

## Phase 1 — Project Setup

### Folder structure to create in GMS2's Asset Browser:

```
Objects/
  Managers/
  UI/
  Characters/
  Minigame/
  Misc/
Scripts/
  Core/
  Characters/
  Scenes/
Rooms/
Sprites/
  Characters/
  Rooms/
  UI/
  Food/
Sounds/
```

### Define character indices as Macros (Scripts > Core > macros.gml):

```gml
#macro CHAR_DEMON    0
#macro CHAR_SKELETON 1
#macro CHAR_TENGU    2
#macro CHAR_ZOMBIE   3
#macro CHAR_LAMIA    4
#macro CHAR_KITSUNE  5
#macro CHAR_FOX      6
#macro CHAR_COUNT    7

// statgrid row indices
#macro STAT_STAGE    0   // current weight stage (0-5)
#macro STAT_PTS      1   // current weight points
#macro STAT_MAXPTS   2   // points needed for next stage
#macro STAT_EATEN    3   // 1 if this character has been vored
#macro STAT_SCORE    4   // monster points (predator score)
#macro STAT_ROW_COUNT 5
```

---

## Phase 2 — Global State (build this first, everything else reads from it)

Create **`obj_global_init`** — a persistent object, placed in Room 0 (a blank init room). Its Create event runs once and is never destroyed.

```gml
// Create event of obj_global_init

// Day tracking
global.daynum      = 1;
global.gold        = 50;
global.lunch       = 1;   // which character is today's lunch guest (0 = solo)
global.onetrust    = 20;  // points per weight stage threshold

// UI visibility flags
global.hidestats      = true;
global.hide_inventory = true;

// The main stat grid: STAT_ROW_COUNT rows × CHAR_COUNT columns
global.statgrid = ds_grid_create(CHAR_COUNT, STAT_ROW_COUNT);
ds_grid_clear(global.statgrid, 0);

// Set starting max-points per character (all same to start, tune later)
for (var _c = 0; _c < CHAR_COUNT; _c++) {
    ds_grid_set(global.statgrid, _c, STAT_MAXPTS, global.onetrust);
}

// Pair relationship grid: CHAR_COUNT × CHAR_COUNT
// pair_grid[A, B] = relationship score between character A and character B
global.pair_grid = ds_grid_create(CHAR_COUNT, CHAR_COUNT);
ds_grid_clear(global.pair_grid, 0);

// Food/dish data grid (set up in Phase 3)
// global.dishgrid created when you fill in dish data

// Event flags map — all story booleans/integers live here
global.events = ds_map_create();

// Shorthand helpers
global.line  = 0;
global.text  = 0;

// Dish grid: columns = dish slots, rows = [dish_id, dish_name, cost, pts_value, equipment_req]
#macro DISH_ID    0
#macro DISH_NAME  1
#macro DISH_COST  2
#macro DISH_PTS   3
#macro DISH_EQUIP 4
global.dishgrid = ds_grid_create(32, 5);  // up to 32 dishes, tune as needed
```

> **Tip:** The original used `ds_map_find_value(global.events, "keyname")` everywhere for flags. Do the same — string keys, integer/bool values. This is your save state.

---

## Phase 3 — Core Manager Objects

Build these objects in this order. Each one is a persistent, single-instance controller.

---

### 3A. `obj_scene_manager` — Dialogue & Cutscene Player

This is the most important object. Everything narrative goes through it.

**Variables (Create):**
```gml
scene      = "";      // name of the script/function to run
confirm    = false;
WAIT       = false;
vmode      = false;   // vore scene mode
scenefeed  = false;   // feeding scene flag
namearray  = [];      // array of speaker names per line
likelevel  = 3;       // which "prey comment" variant to use
```

**How scenes work (from original):**
- `callscene("scene_name")` creates one instance of `obj_scene_manager` if none exists, then sets `scene = "scene_name"` on it.
- The Step event reads `global.line` and `global.text`, advances dialogue, handles choices.
- Each scene is a GML **function** (not a script asset) that sets dialogue lines into arrays.

**`callscene` script (Scripts/Core/callscene.gml):**
```gml
function callscene(_scene) {
    if (!instance_exists(obj_scene_manager)) {
        var _sm = instance_create_layer(0, 0, "Instances", obj_scene_manager);
        _sm.scene = _scene;
    }
}
```

---

### 3B. `obj_game_manager` — Day Loop & Lunch Mini-Game

Placed in the Kitchen/Canteen room. Controls the conveyor belt feeding session.

**Variables (Create):**
```gml
filled    = false;
paused    = false;
vmode     = false;
friend    = false;
nomoney   = false;
listspot  = 0;
menulist  = ds_list_create();
bufflength = 0;
hp        = 0;    // guest's hunger capacity
maxhp     = 0;
myhp      = 0;    // player's capacity
maxmyhp   = 0;
```

**On Create, build `menulist`:**
- Check `global.events["defaultcafe"]` — if 0, build the menu from unlocked dishes in `global.dishgrid`
- Shuffle the list, then spawn food objects on the conveyor from it
- Reference: `gml_Object_game_manager_Create_0.asm`

**Step event:** handles food reaching the end of the conveyor, updating HP bars, triggering the "full" state.

---

### 3C. `obj_incident_manager` — Workplace Events

Fires random + scripted incidents per department per day.

**Variables (Create):**
```gml
makearray = false;
vmode     = false;
scene     = "testscene";
turnoffbg = false;
savespot  = 0;
```

The `preyline[]` array holds per-character weight-comment strings (one per character index). When a vore scene happens, the predator's reaction is pulled from this array based on the prey's character index.

Fill it like:
```gml
preyline[CHAR_DEMON]    = "...";
preyline[CHAR_SKELETON] = "...";
// etc.
```

---

### 3D. `obj_home_manager` — End-of-Day Shop & Resource Screen

Drawn room: shows gold balance, inventory, and the shop.

From the original, this uses `Draw_64` (GUI layer draw). Replicate the same pattern: draw everything in the **Draw GUI** event so it sits on top of the room background.

---

## Phase 4 — UI Objects

These three objects are universal — they persist across rooms and appear over everything else. Place them on a GUI layer or set their depth to a very low number (drawn last = on top in GMS2's default depth system — **lower depth = drawn on top**).

### `obj_txtbox` — Dialogue Text Box
- Draws a box at the bottom of the screen with the current dialogue line
- Step event: advances `global.line` on confirm key, destroys self when scene ends
- Key events: `vk_space` / mouse click = confirm

### `obj_namebox` — Speaker Name Tag
- Small box drawn above `obj_txtbox` showing the current speaker name
- Updated by `obj_scene_manager` each line

### `obj_choicebox` — Choice Menu
- Appears when a scene branches
- Draws 2–4 choice options, keyboard/mouse selects one
- Calls `madechoice(_index)` script on selection

**`madechoice` script:**
```gml
function madechoice(_choice) {
    global.events["lastchoice"] = _choice;
    // scene_manager reads this to branch
}
```

---

## Phase 5 — Key Scripts

Write these in `Scripts/Core/`. Each maps directly to a `.asm` file in the original.

### `trustlvl(char_index)` → weight stage number
```gml
function trustlvl(_char) {
    return floor(ds_grid_get(global.statgrid, _char, STAT_PTS) / global.onetrust);
}
```

### `check_level(char_index)` → called after any stat change to see if stage threshold was crossed
```gml
function check_level(_char) {
    var _stage = trustlvl(_char);
    var _prev  = ds_grid_get(global.statgrid, _char, STAT_STAGE);
    if (_stage > _prev) {
        ds_grid_set(global.statgrid, _char, STAT_STAGE, _stage);
        // trigger stage scene if one exists for this character + stage
        var _scene_key = "seen_" + char_name[_char] + "_stage" + string(_stage);
        if (!ds_map_find_value(global.events, _scene_key)) {
            global.events[_scene_key] = true;
            callscene("scr_" + char_name[_char] + "_stage" + string(_stage));
        }
    }
}
```

### `vore(pred, prey)` — one character eats another
```gml
function vore(_pred, _prey) {
    // play a random gulp sound (you'll add sound assets later)
    // audio_play_sound(snd_gulp[irandom_range(0,2)], 5, false);

    var _prey_eaten = ds_grid_get(global.statgrid, _prey, STAT_EATEN);

    if (_prey_eaten == 1) {
        // prey already eaten — just award monster points
        var _pts = ds_grid_get(global.statgrid, _pred, STAT_SCORE);
        ds_grid_set(global.statgrid, _pred, STAT_SCORE, _pts + global.monsterpts);
    } else {
        // transfer prey's weight points to predator
        var _prey_pts = ds_grid_get(global.statgrid, _prey, STAT_PTS);
        var _pred_pts = ds_grid_get(global.statgrid, _pred, STAT_PTS);
        var _weight   = max(1, _prey_pts);  // at minimum 1 point transferred

        if (_pred_pts < 7) {   // 7 = original cap before max stage
            ds_grid_set(global.statgrid, _pred, STAT_PTS, _pred_pts + _weight);
        }

        // award score
        var _score = ds_grid_get(global.statgrid, _pred, STAT_SCORE);
        ds_grid_set(global.statgrid, _pred, STAT_SCORE, _score + (_weight * global.monsterpts) + global.monsterpts);

        ds_grid_set(global.statgrid, _prey, STAT_EATEN, 1);
    }

    check_level(_pred);
}
```

### `buy(dish_index)` — purchase a food item
```gml
function buy(_dish) {
    var _cost = ds_grid_get(global.dishgrid, _dish, DISH_COST);
    if (global.gold >= _cost) {
        global.gold -= _cost;
        // add to inventory (ds_list or array)
        ds_list_add(global.inventory, _dish);
    }
}
```

### New: `pair_change(charA, charB, amount)` — update inter-character relationship
```gml
function pair_change(_a, _b, _amount) {
    var _cur = ds_grid_get(global.pair_grid, _a, _b);
    ds_grid_set(global.pair_grid, _a, _b, _cur + _amount);
    ds_grid_set(global.pair_grid, _b, _a, _cur + _amount);  // symmetric
}
```

---

## Phase 6 — Character Managers

One small manager object per character: `obj_demon_manager`, `obj_skeleton_manager`, etc.

These don't do much on their own — they're hooks for character-specific events. Pattern:

```gml
// obj_demon_manager Create event
char_index = CHAR_DEMON;
char_name  = "Demon";   // placeholder until you name her

// Step event: check for day-gated events
if (global.daynum == 3 && !ds_map_exists(global.events, "demon_day3")) {
    global.events[$ "demon_day3"] = true;
    callscene("scr_demon_day3");
}
```

Each character manager lives in the room that character "owns." When the player visits that room, the manager is active.

---

## Phase 7 — Rooms

Build rooms in this order (simplest first):

| Order | Room Name | Manager object to place | Notes |
|---|---|---|---|
| 1 | `rm_init` | `obj_global_init` | Blank room, auto-transitions to lobby |
| 2 | `rm_lobby` | `obj_fox_manager` | First room each day |
| 3 | `rm_home` | `obj_home_manager` | End-of-day; shop and rest |
| 4 | `rm_breakroom` | `obj_demon_manager` | Vending machine here |
| 5 | `rm_archive` | `obj_skeleton_manager` | Quiet, restricted |
| 6 | `rm_it` | `obj_kitsune_manager` | |
| 7 | `rm_maintenance` | `obj_zombie_manager` | |
| 8 | `rm_management` | `obj_tengu_manager` | Locked early game |
| 9 | `rm_exec` | `obj_lamia_manager` | Locked early game |
| 10 | `rm_kitchen` | `obj_game_manager` | Mini-game room |

**Stage-based room sprites:**
Each room has a background sprite that changes based on its character's weight stage. In the Room Start event (or the character manager's Create event):

```gml
// In obj_skeleton_manager Create
var _stage = ds_grid_get(global.statgrid, CHAR_SKELETON, STAT_STAGE);
layer_background_sprite(layer_get_id("Background"), spr_archive_bg[_stage]);
```

Make 6 background sprites per room (stages 0–5), stored as an array: `spr_archive_bg[0]` through `spr_archive_bg[5]`.

---

## Phase 8 — Mini-Game (Conveyor Belt)

Three objects work together:

### `obj_conveyor`
- Moves food objects from right to left at a set speed
- Step: check if any food reached the end (leftmost x); if so, add to "missed" count

### `obj_food`
- Spawned by `obj_game_manager` at the right edge
- Has a `dish_index` variable pointing into `global.dishgrid`
- On click/interact: call `give_gift(dish_index, global.guest)` then destroy self

### `give_gift(dish_index, char_index)` script
```gml
function give_gift(_dish, _char) {
    var _pts = ds_grid_get(global.dishgrid, _dish, DISH_PTS);
    var _cur  = ds_grid_get(global.statgrid, _char, STAT_PTS);
    ds_grid_set(global.statgrid, _char, STAT_PTS, _cur + _pts);
    check_level(_char);
}
```

---

## Phase 9 — Writing Scenes

Scenes are just GML functions that push dialogue into arrays on `obj_scene_manager`. Pattern:

```gml
// Scripts/Scenes/scr_fox_day1.gml
function scr_fox_day1() {
    with (obj_scene_manager) {
        namearray[0] = "Fox Girl";
        // set dialogue lines into a text array
        // scene_manager Step event reads these and advances on confirm
    }
}
```

Name scenes: `scr_[charname]_day[N]`, `scr_[charname]_stage[N]`, `scr_pair_[a]_[b]_[id]`

Reference the incident manager's `preyline` array for weight-comment dialogue — each character index has her own reaction line.

---

## Build Order Summary

1. Macros + `obj_global_init` (Phase 1–2)
2. `obj_scene_manager` + `callscene` (Phase 3A)
3. `obj_txtbox` + `obj_namebox` + `obj_choicebox` (Phase 4)
4. Write one test scene, confirm dialogue works end-to-end
5. `obj_game_manager` + mini-game objects (Phase 3B + 8)
6. `buy`, `give_gift`, `trustlvl`, `check_level`, `vore` scripts (Phase 5)
7. `obj_incident_manager` + `obj_home_manager` (Phase 3C–D)
8. Character managers + rooms (Phase 6–7)
9. `pair_change` + pair event triggers (Phase 5 new)
10. Fill in scenes and story content last

---

## Referencing the Original ASM

When you need to understand how something worked:
- Each `.asm` file = one event/script
- `push` = read a value, `pop` = write a value
- `call.i ds_grid_get(argc=3)` = `ds_grid_get(grid, col, row)` in GML
- `pushglb.v global.X` = `global.X`
- `push.s "string"@offset` = a string literal
- `bf [label]` = branch-if-false (an `if` statement)
- `b [label]` = unconditional jump (end of an `if` branch)

The files most worth reading as references:
- `gml_Script_vore.asm` — weight point transfer logic
- `gml_Script_trustlvl.asm` — stage calculation
- `gml_Script_callscene.asm` — scene spawning
- `gml_Object_game_manager_Create_0.asm` — menu list building
- `gml_Object_incidentmanager_Create_0.asm` — preyline dialogue setup
