#!/usr/bin/env python3
"""
Japan Branch — GMS2 Project Generator
Run:  python3 generate_project.py
Output: JapanBranch/  (open JapanBranch.yyp in GameMaker Studio 2)

Characters: Yuki, Kit, BigKit, Haradashi, Eyes, SeaSnake, Bones
"""

import json, os, struct, uuid, zlib
from pathlib import Path

# ── Config ────────────────────────────────────────────────────────────────────
PROJECT = "JapanBranch"
BASE    = Path(PROJECT)
W, H    = 1366, 768

CHARS = ["Yuki", "Kit", "BigKit", "Haradashi", "Eyes", "SeaSnake", "Bones"]
CHAR_COLORS = [          # placeholder sprite fill colors (R,G,B)
    (220, 80,  120),     # Yuki     – pink/magenta
    (220, 140, 60),      # Kit      – orange
    (140, 100, 220),     # BigKit   – purple/silver
    (60,  120, 80),      # Haradashi – teal/dark
    (100, 160, 80),      # Eyes     – sickly green
    (60,  100, 160),     # SeaSnake – blue-green
    (200, 200, 200),     # Bones    – white/gray
]
ROOM_COLORS = {          # room background fill (R,G,B)
    "rm_init":        (20,  20,  20),
    "rm_lobby":       (30,  50,  70),
    "rm_home":        (40,  30,  50),
    "rm_breakroom":   (70,  30,  40),
    "rm_archive":     (30,  30,  50),
    "rm_it":          (20,  40,  60),
    "rm_maintenance": (40,  50,  30),
    "rm_management":  (30,  40,  30),
    "rm_exec":        (20,  30,  50),
    "rm_kitchen":     (50,  40,  20),
    "rm_vendroom":    (40,  40,  40),
}

# ── ID cache ──────────────────────────────────────────────────────────────────
_ids: dict[str, str] = {}

def uid(name: str = "") -> str:
    if name and name in _ids:
        return _ids[name]
    v = str(uuid.uuid4())
    if name:
        _ids[name] = v
    return v

# ── File writer ───────────────────────────────────────────────────────────────
def write(rel: str, content) -> None:
    p = BASE / rel
    p.parent.mkdir(parents=True, exist_ok=True)
    if isinstance(content, (bytes, bytearray)):
        p.write_bytes(content)
    else:
        p.write_text(content, encoding="utf-8")

def jdump(obj) -> str:
    return json.dumps(obj, indent=2)

# ── PNG generator ─────────────────────────────────────────────────────────────
def make_png(w: int, h: int, r: int, g: int, b: int, a: int = 255) -> bytes:
    def chunk(tag: bytes, data: bytes) -> bytes:
        c = tag + data
        return struct.pack(">I", len(data)) + c + struct.pack(">I", zlib.crc32(c) & 0xFFFFFFFF)
    raw = b"".join(b"\x00" + bytes([r, g, b, a] * w) for _ in range(h))
    return (b"\x89PNG\r\n\x1a\n"
            + chunk(b"IHDR", struct.pack(">II", w, h) + bytes([8, 6, 0, 0, 0]))
            + chunk(b"IDAT", zlib.compress(raw, 9))
            + chunk(b"IEND", b""))

# ── Asset registry ────────────────────────────────────────────────────────────
resources: list[dict] = []
room_order: list[dict] = []

def reg(name: str, folder: str) -> None:
    path = f"{folder}/{name}/{name}.yy"
    resources.append({"id": {"name": name, "path": path}, "order": len(resources)})
    if folder == "rooms":
        room_order.append({"roomId": {"name": name, "path": path}})

def folder_ref(folder_name: str) -> dict:
    return {"name": folder_name, "path": f"folders/{folder_name}.yy"}

def obj_ref(name: str) -> dict:
    return {"name": name, "path": f"objects/{name}/{name}.yy"}

def spr_ref(name: str) -> dict:
    return {"name": name, "path": f"sprites/{name}/{name}.yy"}

def room_ref(name: str) -> dict:
    return {"name": name, "path": f"rooms/{name}/{name}.yy"}

# ── Sprite maker ──────────────────────────────────────────────────────────────
def make_sprite(name: str, w: int, h: int, r: int, g: int, b: int,
                parent_folder: str = "Sprites", ox: int = 0, oy: int = 0) -> None:
    reg(name, "sprites")
    frame_id  = uid(f"{name}_frame0")
    layer_id  = uid(f"{name}_layer0")
    kf_id     = uid(f"{name}_kf0")
    seq_id    = uid(f"{name}_seq")

    spr_yy = {
        "resourceType": "GMSprite",
        "resourceVersion": "1.0",
        "name": name,
        "tags": [],
        "bboxMode": 0,
        "collisionKind": 1,
        "type": 0,
        "origin": 0,
        "preMultiplyAlpha": False,
        "edgeFiltering": False,
        "collisionTolerance": 0,
        "swfPrecision": 2.525,
        "bbox_left": 0, "bbox_right": max(0, w-1),
        "bbox_top": 0,  "bbox_bottom": max(0, h-1),
        "HTile": False, "VTile": False, "For3D": False,
        "width": w, "height": h,
        "textureGroupId": {"name": "Default", "path": "texturegroups/Default.yy"},
        "swatchColours": None,
        "gridX": 0, "gridY": 0,
        "frames": [{
            "resourceType": "GMSpriteFrame",
            "resourceVersion": "1.0",
            "name": frame_id,
            "compositeImage": {
                "resourceType": "GMSpriteBitmap", "resourceVersion": "1.0",
                "name": "composite.png", "For3D": False,
                "FrameId": {"name": frame_id, "path": f"sprites/{name}/frames/{frame_id}.yy"},
                "LayerId": None
            },
            "images": [{
                "resourceType": "GMSpriteBitmap", "resourceVersion": "1.0",
                "name": "composite.png", "For3D": False,
                "FrameId": {"name": frame_id, "path": f"sprites/{name}/frames/{frame_id}.yy"},
                "LayerId": {"name": layer_id, "path": f"sprites/{name}/layers/{layer_id}.yy"}
            }]
        }],
        "sequence": {
            "resourceType": "GMSequence", "resourceVersion": "1.5",
            "name": name, "timeUnits": 1, "playback": 1,
            "playbackSpeed": 15.0, "playbackSpeedType": 0,
            "autoRecord": True, "volume": 1.0, "length": 1.0,
            "events": {"Keyframes": [], "resourceType": "KeyframeStore<MessageEventKeyframe>", "resourceVersion": "1.0"},
            "moments": {"Keyframes": [], "resourceType": "KeyframeStore<MomentsEventKeyframe>", "resourceVersion": "1.0"},
            "tracks": [{
                "resourceType": "GMSpriteFramesTrack", "resourceVersion": "1.0",
                "name": "frames", "spriteId": None,
                "keyframes": {
                    "Keyframes": [{
                        "resourceType": "Keyframe<SpriteFrameKeyframe>", "resourceVersion": "1.0",
                        "id": kf_id, "Key": 0.0, "Length": 1.0,
                        "Stretch": False, "Disabled": False, "IsCreationKey": False,
                        "Channels": {"0": {
                            "resourceType": "SpriteFrameKeyframe", "resourceVersion": "1.0",
                            "Id": {"name": frame_id, "path": f"sprites/{name}/frames/{frame_id}.yy"}
                        }}
                    }],
                    "resourceType": "KeyframeStore<SpriteFrameKeyframe>", "resourceVersion": "1.0"
                },
                "trackColour": 0, "inheritsTrackColour": True,
                "builtinName": 0, "traits": 0, "interpolation": 1,
                "tracks": [], "events": [], "modifiers": [], "isCreationTrack": False
            }],
            "visibleRange": None, "lockOrigin": False,
            "showBackdrop": True, "showBackdropImage": False,
            "backdropImagePath": "", "backdropImageOpacity": 0.5,
            "backdropWidth": W, "backdropHeight": H,
            "backdropXOffset": 0.0, "backdropYOffset": 0.0,
            "xorigin": ox, "yorigin": oy,
            "eventToFunction": {}, "eventStubScript": None,
            "parent": spr_ref(name)
        },
        "layers": [{
            "resourceType": "GMImageLayer", "resourceVersion": "1.0",
            "name": layer_id, "visible": True, "isLocked": False,
            "blendMode": 0, "opacity": 100.0, "displayName": "default",
            "isGroup": False
        }],
        "nineSlice": None,
        "parent": folder_ref(parent_folder)
    }
    write(f"sprites/{name}/{name}.yy", jdump(spr_yy))

    # Frame .yy
    frame_yy = {
        "resourceType": "GMSpriteBitmap", "resourceVersion": "1.0",
        "name": "composite.png", "For3D": False,
        "FrameId": {"name": frame_id, "path": f"sprites/{name}/frames/{frame_id}.yy"},
        "LayerId": None
    }
    write(f"sprites/{name}/frames/{frame_id}.yy", jdump(frame_yy))

    # Layer .yy
    layer_yy = {
        "resourceType": "GMImageLayer", "resourceVersion": "1.0",
        "name": layer_id, "visible": True, "isLocked": False,
        "blendMode": 0, "opacity": 100.0, "displayName": "default", "isGroup": False
    }
    write(f"sprites/{name}/layers/{layer_id}.yy", jdump(layer_yy))

    # PNG files
    png_data = make_png(w, h, r, g, b)
    write(f"sprites/{name}/{frame_id}.png", png_data)
    write(f"sprites/{name}/layers/{layer_id}/{frame_id}.png", png_data)

# ── Script maker ──────────────────────────────────────────────────────────────
def make_script(name: str, code: str, parent_folder: str = "Scripts") -> None:
    reg(name, "scripts")
    yy = {
        "resourceType": "GMScript", "resourceVersion": "1.0",
        "name": name, "isCompatibility": False, "isDnD": False,
        "tags": [],
        "parent": folder_ref(parent_folder)
    }
    write(f"scripts/{name}/{name}.yy", jdump(yy))
    write(f"scripts/{name}/{name}.gml", code)

# ── Object maker ──────────────────────────────────────────────────────────────
EVENT_NAMES = {
    (0, 0): "Create_0",
    (1, 0): "Destroy_0",
    (2, 0): "Alarm_0", (2, 1): "Alarm_1",
    (3, 0): "Step_0",
    (6, 4): "Mouse_4",      # Left Button Pressed
    (7, 4): "Other_4",      # Room Start
    (8, 0): "Draw_0",
    (8, 64): "Draw_64",     # Draw GUI
    (10, 32): "KeyPress_32", # Space
    (10, 13): "KeyPress_13", # Return
}

def make_object(name: str, events: dict, parent_folder: str = "Objects",
                sprite: str = None, persistent: bool = False,
                parent_obj: str = None, visible: bool = True) -> None:
    reg(name, "objects")
    event_list = []
    for (etype, enum), code in events.items():
        event_list.append({
            "resourceType": "GMEvent", "resourceVersion": "1.0",
            "name": "", "eventNum": enum, "eventType": etype,
            "isDnD": False, "collisionObjectId": None
        })
        fname = EVENT_NAMES.get((etype, enum), f"Type{etype}_{enum}")
        write(f"objects/{name}/{fname}.gml", code)

    yy = {
        "resourceType": "GMObject", "resourceVersion": "1.0",
        "name": name,
        "spriteId": spr_ref(sprite) if sprite else None,
        "solid": False, "visible": visible,
        "spriteMaskId": None, "persistent": persistent,
        "parentObjectId": obj_ref(parent_obj) if parent_obj else None,
        "physicsObject": False, "physicsSensor": False, "physicsShape": 1,
        "physicsGroup": 1, "physicsDensity": 0.5, "physicsRestitution": 0.1,
        "physicsLinearDamping": 0.1, "physicsAngularDamping": 0.1,
        "physicsFriction": 0.2, "physicsStartAwake": True, "physicsKinematic": False,
        "physicsShapePoints": [],
        "eventList": event_list,
        "properties": [], "overriddenProperties": [],
        "managed": False,
        "tags": [],
        "parent": folder_ref(parent_folder)
    }
    write(f"objects/{name}/{name}.yy", jdump(yy))

# ── Room maker ────────────────────────────────────────────────────────────────
def make_room(name: str, instances: list[dict], bg_sprite: str = None,
              persistent: bool = False) -> None:
    reg(name, "rooms")
    inst_layer_id  = uid(f"{name}_inst_layer")
    ui_layer_id    = uid(f"{name}_ui_layer")
    bg_layer_id    = uid(f"{name}_bg_layer")

    inst_entries = []
    creation_order = []
    for inst in instances:
        iid = uid(f"{name}_{inst['obj']}_{uid()}")
        iname = "inst_" + iid.replace("-", "")[:12]
        entry = {
            "resourceType": "GMRInstance", "resourceVersion": "1.0",
            "name": iname, "properties": [], "isDnD": False,
            "objectId": obj_ref(inst["obj"]),
            "inheritCode": False, "hasCreationCode": False,
            "colour": 4294967295, "rotation": 0.0,
            "scaleX": 1.0, "scaleY": 1.0,
            "imageIndex": 0, "imageSpeed": 1.0,
            "inheritedItemId": None, "frozen": False,
            "ignore": False, "inheritItemSettings": False,
            "x": float(inst.get("x", 0)),
            "y": float(inst.get("y", 0)),
            "id": {"name": iname, "path": f"rooms/{name}/{name}.yy"}
        }
        inst_entries.append(entry)
        creation_order.append({"name": iname, "path": f"rooms/{name}/{name}.yy"})

    layers = [
        {
            "resourceType": "GMRInstanceLayer", "resourceVersion": "1.0",
            "name": "Instances", "tags": [],
            "depth": 0, "visible": True,
            "userdefinedDepth": False, "inheritLayerDepth": False,
            "inheritLayerSettings": False, "gridX": 32, "gridY": 32,
            "layers": [], "hierarchyFrozen": False,
            "effectEnabled": True, "effectType": None, "properties": [],
            "instances": inst_entries
        },
        {
            "resourceType": "GMRInstanceLayer", "resourceVersion": "1.0",
            "name": "UI", "tags": [],
            "depth": -100, "visible": True,
            "userdefinedDepth": False, "inheritLayerDepth": False,
            "inheritLayerSettings": False, "gridX": 32, "gridY": 32,
            "layers": [], "hierarchyFrozen": False,
            "effectEnabled": True, "effectType": None, "properties": [],
            "instances": []
        },
        {
            "resourceType": "GMRBackgroundLayer", "resourceVersion": "1.0",
            "name": "Background", "tags": [],
            "depth": 100, "visible": True,
            "userdefinedDepth": False, "inheritLayerDepth": False,
            "inheritLayerSettings": False, "gridX": 32, "gridY": 32,
            "layers": [], "hierarchyFrozen": False,
            "effectEnabled": True, "effectType": None, "properties": [],
            "spriteId": spr_ref(bg_sprite) if bg_sprite else None,
            "colour": 4278190080, "x": 0, "y": 0,
            "htiled": False, "vtiled": False,
            "vspeed": 0.0, "hspeed": 0.0, "stretch": True,
            "animationFPS": 15.0, "animationSpeedType": 0, "userdefinedAnimFPS": False
        }
    ]

    room_yy = {
        "resourceType": "GMRoom", "resourceVersion": "1.0",
        "name": name, "tags": [],
        "isDnD": False, "volume": 1.0, "parentRoom": None,
        "views": [{"resourceType":"GMRView","resourceVersion":"1.0",
                   "visible":False,"xview":0,"yview":0,"wview":W,"hview":H,
                   "xport":0,"yport":0,"wport":W,"hport":H,
                   "hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,
                   "objectId":None}],
        "layers": layers,
        "roomSettings": {"resourceType":"GMRoomSettings","resourceVersion":"1.0",
                         "inheritRoomSettings":False,"Width":W,"Height":H,
                         "persistent":persistent},
        "viewSettings": {"resourceType":"GMRViewSettings","resourceVersion":"1.0",
                         "inheritViewSettings":False,"enableViews":False,
                         "clearViewBackground":False,"clearDisplayBuffer":True},
        "physics": {"resourceType":"GMRPhysicsSettings","resourceVersion":"1.0",
                    "inheritPhysicsSettings":False,"PhysicsWorld":False,
                    "PhysicsWorldGravityX":0.0,"PhysicsWorldGravityY":10.0,
                    "PhysicsWorldPixToMetres":0.1},
        "parent": folder_ref("Rooms"),
        "creationCodeFile": "", "inheritCode": False,
        "instanceCreationOrder": creation_order,
        "inheritCreationOrder": False, "sequenceId": None
    }
    write(f"rooms/{name}/{name}.yy", jdump(room_yy))

# ── Folder maker ──────────────────────────────────────────────────────────────
def make_folder(name: str, filter_type: str, order: int) -> None:
    path = f"folders/{name}.yy"
    yy = {
        "resourceType": "GMFolder", "resourceVersion": "1.0",
        "name": name, "folderPath": path, "order": order,
        "tags": [], "isDefaultView": False,
        "filterType": filter_type, "defaultView": False,
        "localisedFolderName": ""
    }
    write(path, jdump(yy))
    resources.append({"id": {"name": name, "path": path}, "order": len(resources)})

# ══════════════════════════════════════════════════════════════════════════════
# GML CODE
# ══════════════════════════════════════════════════════════════════════════════

GML = {}

# ── Macros ────────────────────────────────────────────────────────────────────
GML["scr_macros"] = """\
// Character indices
#macro CHAR_YUKI       0
#macro CHAR_KIT        1
#macro CHAR_BIGKIT     2
#macro CHAR_HARADASHI  3
#macro CHAR_EYES       4
#macro CHAR_SEASNAKE   5
#macro CHAR_BONES      6
#macro CHAR_COUNT      7

// statgrid rows
#macro STAT_STAGE      0   // current weight stage (0-STAGE_MAX)
#macro STAT_PTS        1   // accumulated weight points
#macro STAT_MAXPTS     2   // points threshold for next stage
#macro STAT_EATEN      3   // 1 = this char has been vored
#macro STAT_SCORE      4   // predator score (monster pts)
#macro STAT_ROW_COUNT  5

// dishgrid rows
#macro DISH_ID         0
#macro DISH_NAME       1
#macro DISH_COST       2
#macro DISH_PTS        3
#macro DISH_EQUIP      4   // equipment tier required
#macro DISH_ROW_COUNT  5

#macro STAGE_MAX       5
#macro ONE_STAGE       20  // weight points per stage
#macro DISH_SLOTS      32
"""

# ── Core scripts ──────────────────────────────────────────────────────────────
GML["scr_callscene"] = """\
/// @param {string} scene_name
function scr_callscene(_scene) {
    if (!instance_exists(obj_scene_manager)) {
        var _sm = instance_create_layer(0, 0, "UI", obj_scene_manager);
        _sm.scene = _scene;
    }
}
"""

GML["scr_check_stage"] = """\
/// Returns the current weight stage for a character.
/// @param {real} char_index
/// @return {real}
function scr_check_stage(_char) {
    return ds_grid_get(global.statgrid, _char, STAT_STAGE);
}
"""

GML["scr_check_level"] = """\
/// Call after any stat change. Advances STAT_STAGE if threshold crossed.
/// @param {real} char_index
function scr_check_level(_char) {
    var _pts    = ds_grid_get(global.statgrid, _char, STAT_PTS);
    var _maxpts = ds_grid_get(global.statgrid, _char, STAT_MAXPTS);
    var _stage  = ds_grid_get(global.statgrid, _char, STAT_STAGE);

    if (_pts >= _maxpts && _stage < STAGE_MAX) {
        _stage++;
        ds_grid_set(global.statgrid, _char, STAT_STAGE, _stage);
        // Raise threshold for next stage (each stage costs more)
        ds_grid_set(global.statgrid, _char, STAT_MAXPTS, _maxpts + ONE_STAGE);

        // Trigger stage scene if unseen
        var _key = "seen_" + global.char_name[_char] + "_s" + string(_stage);
        if (!ds_map_exists(global.events, _key)) {
            ds_map_add(global.events, _key, 1);
            scr_callscene("scr_" + string(global.char_name[_char]) + "_stage" + string(_stage));
        }
    }
}
"""

GML["scr_give_gift"] = """\
/// Feed a dish to a character. Adds weight points and checks stage advancement.
/// @param {real} dish_index
/// @param {real} char_index
function scr_give_gift(_dish, _char) {
    var _pts = ds_grid_get(global.dishgrid, _dish, DISH_PTS);
    var _cur = ds_grid_get(global.statgrid, _char, STAT_PTS);
    ds_grid_set(global.statgrid, _char, STAT_PTS, _cur + _pts);
    scr_check_level(_char);
}
"""

GML["scr_vore"] = """\
/// One character eats another. Transfers weight points; marks prey as eaten.
/// @param {real} predator_char
/// @param {real} prey_char
function scr_vore(_pred, _prey) {
    var _prey_eaten = ds_grid_get(global.statgrid, _prey, STAT_EATEN);

    if (_prey_eaten) {
        // Prey already gone — just award base monster pts
        var _sc = ds_grid_get(global.statgrid, _pred, STAT_SCORE);
        ds_grid_set(global.statgrid, _pred, STAT_SCORE, _sc + global.monsterpts);
    } else {
        var _prey_pts = ds_grid_get(global.statgrid, _prey, STAT_PTS);
        var _pred_pts = ds_grid_get(global.statgrid, _pred, STAT_PTS);
        var _transfer = max(1, _prey_pts);

        if (_pred_pts < STAGE_MAX * ONE_STAGE) {
            ds_grid_set(global.statgrid, _pred, STAT_PTS, _pred_pts + _transfer);
        }

        var _sc = ds_grid_get(global.statgrid, _pred, STAT_SCORE);
        ds_grid_set(global.statgrid, _pred, STAT_SCORE, _sc + (_transfer * global.monsterpts) + global.monsterpts);

        ds_grid_set(global.statgrid, _prey, STAT_EATEN, 1);
    }

    scr_check_level(_pred);
}
"""

GML["scr_buy"] = """\
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
"""

GML["scr_pair_change"] = """\
/// Adjust relationship score between two characters (symmetric).
/// @param {real} charA
/// @param {real} charB
/// @param {real} amount
function scr_pair_change(_a, _b, _amount) {
    var _cur = ds_grid_get(global.pair_grid, _a, _b);
    var _new = _cur + _amount;
    ds_grid_set(global.pair_grid, _a, _b, _new);
    ds_grid_set(global.pair_grid, _b, _a, _new);
}
"""

GML["scr_madechoice"] = """\
/// Called by choicebox when a choice is selected.
/// @param {real} choice_index
function scr_madechoice(_choice) {
    global.events[$ "lastchoice"] = _choice;
}
"""

GML["scr_goto_lunch"] = """\
/// Navigate to the lunch mini-game for a specific character.
/// @param {real} char_index  (-1 = solo lunch)
function scr_goto_lunch(_char) {
    global.lunch_char = _char;
    room_goto(rm_kitchen);
}
"""

GML["scr_blackout"] = """\
/// Spawn a fade-to-black overlay.
/// @param {bool} fade_in  true = fade in (reveal), false = fade out (darken)
function scr_blackout(_fade_in) {
    if (!instance_exists(obj_blackscrn)) {
        var _b = instance_create_layer(0, 0, "UI", obj_blackscrn);
        _b.fading_in = _fade_in;
    }
}
"""

GML["scr_fade"] = """\
/// Quick fade helper used by blackout.
/// (logic lives in obj_blackscrn)
function scr_fade() {
    scr_blackout(false);
}
"""

# ── Scene stubs (one file per character + incidents) ─────────────────────────
for char in CHARS:
    lower = char.lower()
    GML[f"scr_{lower}_scenes"] = f"""\
// ── {char} scene stubs ────────────────────────────────────────────────────
// Day scenes
function scr_{lower}_day1() {{
    with (obj_scene_manager) {{
        namearray = ["{char}"];
        textarray = ["[{char} day 1 dialogue — TODO]"];
    }}
}}

function scr_{lower}_day2() {{
    with (obj_scene_manager) {{
        namearray = ["{char}"];
        textarray = ["[{char} day 2 dialogue — TODO]"];
    }}
}}

function scr_{lower}_day3() {{
    with (obj_scene_manager) {{
        namearray = ["{char}"];
        textarray = ["[{char} day 3 dialogue — TODO]"];
    }}
}}

// Weight stage scenes
function scr_{lower}_stage1() {{
    with (obj_scene_manager) {{
        namearray = ["{char}"];
        textarray = ["[{char} reaches stage 1 — TODO]"];
    }}
}}

function scr_{lower}_stage2() {{
    with (obj_scene_manager) {{
        namearray = ["{char}"];
        textarray = ["[{char} reaches stage 2 — TODO]"];
    }}
}}

function scr_{lower}_stage3() {{
    with (obj_scene_manager) {{
        namearray = ["{char}"];
        textarray = ["[{char} reaches stage 3 — TODO]"];
    }}
}}

function scr_{lower}_stage4() {{
    with (obj_scene_manager) {{
        namearray = ["{char}"];
        textarray = ["[{char} reaches stage 4 — TODO]"];
    }}
}}

function scr_{lower}_stage5() {{
    with (obj_scene_manager) {{
        namearray = ["{char}"];
        textarray = ["[{char} reaches stage 5 — TODO]"];
    }}
}}
"""

# Pair scenes
GML["scr_pair_scenes"] = """\
// ── Pair interaction scene stubs ─────────────────────────────────────────────
// Add pair scenes here as: scr_pair_CharA_CharB_1(), scr_pair_CharA_CharB_2() etc.

function scr_pair_yuki_kit_1() {
    with (obj_scene_manager) {
        namearray = ["Yuki", "Kit"];
        textarray = [
            "[Yuki + Kit interaction — TODO]",
            "[Kit response — TODO]"
        ];
    }
}

function scr_pair_bigkit_kit_1() {
    with (obj_scene_manager) {
        namearray = ["BigKit", "Kit"];
        textarray = [
            "[BigKit + Kit senior/junior scene — TODO]",
            "[Kit response — TODO]"
        ];
    }
}

// Add more pair scenes below as needed
"""

# Incident stubs
GML["scr_incident_scenes"] = """\
// ── Incident scene stubs ─────────────────────────────────────────────────────
function scr_incident_lobby() {
    with (obj_scene_manager) {
        namearray = ["???"];
        textarray = ["[Lobby incident — TODO]"];
    }
}

function scr_incident_breakroom() {
    with (obj_scene_manager) {
        namearray = ["???"];
        textarray = ["[Break room incident — TODO]"];
    }
}

function scr_incident_archive() {
    with (obj_scene_manager) {
        namearray = ["???"];
        textarray = ["[Archive incident — TODO]"];
    }
}

function scr_incident_it() {
    with (obj_scene_manager) {
        namearray = ["???"];
        textarray = ["[IT incident — TODO]"];
    }
}

function scr_incident_maintenance() {
    with (obj_scene_manager) {
        namearray = ["???"];
        textarray = ["[Maintenance incident — TODO]"];
    }
}

function scr_incident_management() {
    with (obj_scene_manager) {
        namearray = ["???"];
        textarray = ["[Management incident — TODO]"];
    }
}

function scr_incident_exec() {
    with (obj_scene_manager) {
        namearray = ["???"];
        textarray = ["[Executive floor incident — TODO]"];
    }
}
"""

# ── Object GML ────────────────────────────────────────────────────────────────

OBJ = {}   # name → {(etype,enum): code}

# ── obj_global_init ───────────────────────────────────────────────────────────
OBJ["obj_global_init"] = {
    (0, 0): """\
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
"""}

# ── obj_scene_manager ─────────────────────────────────────────────────────────
OBJ["obj_scene_manager"] = {
    (0, 0): """\
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
""",
    (3, 0): """\
if (WAIT) exit;
if (done) {
    global.hidestats      = false;
    global.hide_inventory = false;
    if (instance_exists(obj_txtbox))   instance_destroy(obj_txtbox);
    if (instance_exists(obj_namebox))  instance_destroy(obj_namebox);
    if (instance_exists(obj_choicebox)) instance_destroy(obj_choicebox);
    instance_destroy();
}
""",
    (1, 0): """\
global.hidestats      = false;
global.hide_inventory = false;
"""}

# ── obj_txtbox ────────────────────────────────────────────────────────────────
OBJ["obj_txtbox"] = {
    (0, 0): """\
depth = -9985;
bw = display_get_gui_width() - 80;
bh = 150;
bx = 40;
by = display_get_gui_height() - bh - 20;
""",
    (3, 0): """\
if (!instance_exists(obj_scene_manager)) { instance_destroy(); exit; }
var _sm = obj_scene_manager;
if (_sm.WAIT || _sm.in_choice) exit;

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_return)
    || mouse_check_button_pressed(mb_left)) {
    global.line++;
    if (global.line >= array_length(_sm.textarray)) {
        _sm.done = true;
    } else if (scene_manager_needs_refresh(_sm)) {
        // Scene function re-evaluates on new line if needed
    }
}

function scene_manager_needs_refresh(_sm) { return false; }
""",
    (8, 64): """\
if (!instance_exists(obj_scene_manager)) exit;
var _sm = obj_scene_manager;

// Box background
draw_set_alpha(0.88);
draw_set_color(c_black);
draw_rectangle(bx, by, bx+bw, by+bh, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(bx, by, bx+bw, by+bh, true);

// Dialogue text
var _line = global.line;
var _ta   = _sm.textarray;
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);
if (is_array(_ta) && _line < array_length(_ta)) {
    draw_text_ext(bx+20, by+14, _ta[_line], -1, bw-40);
}

// Advance indicator
if ((current_time mod 700) < 350) {
    draw_set_halign(fa_right);
    draw_text(bx+bw-18, by+bh-28, ">");
    draw_set_halign(fa_left);
}
"""}

# ── obj_namebox ───────────────────────────────────────────────────────────────
OBJ["obj_namebox"] = {
    (0, 0): "depth = -9984;\n",
    (8, 64): """\
if (!instance_exists(obj_scene_manager)) { instance_destroy(); exit; }
var _sm   = obj_scene_manager;
var _line = global.line;
var _na   = _sm.namearray;
if (!is_array(_na) || _line >= array_length(_na)) exit;
var _name = _na[_line];
if (_name == "") exit;

var bx = 40;
var by = display_get_gui_height() - 180;
var bw = 200;
var bh = 34;

draw_set_alpha(0.9);
draw_set_color(c_black);
draw_rectangle(bx, by, bx+bw, by+bh, false);
draw_set_alpha(1);
draw_set_color(c_white);
draw_rectangle(bx, by, bx+bw, by+bh, true);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_font(-1);
draw_text(bx+10, by+bh/2, _name);
"""}

# ── obj_choicebox ─────────────────────────────────────────────────────────────
OBJ["obj_choicebox"] = {
    (0, 0): "choice_sel = 0;\ndepth = -9983;\n",
    (3, 0): """\
if (!instance_exists(obj_scene_manager)) { instance_destroy(); exit; }
var _sm = obj_scene_manager;
if (!_sm.in_choice) exit;

var _n = _sm.choice_count;
if (_n <= 0) exit;

if (keyboard_check_pressed(vk_up))   choice_sel = (choice_sel - 1 + _n) mod _n;
if (keyboard_check_pressed(vk_down)) choice_sel = (choice_sel + 1) mod _n;

if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_return)
    || mouse_check_button_pressed(mb_left)) {
    scr_madechoice(choice_sel);
    _sm.in_choice = false;
    global.line++;
    if (_sm.scene != "" && script_exists(asset_get_index(_sm.scene))) {
        script_execute(asset_get_index(_sm.scene));
    }
    instance_destroy();
}
""",
    (8, 64): """\
if (!instance_exists(obj_scene_manager)) exit;
var _sm = obj_scene_manager;
if (!_sm.in_choice) exit;

var _n  = _sm.choice_count;
var _ca = _sm.choicearray;
var ih  = 44;
var bw  = 420;
var bx  = (display_get_gui_width() - bw) / 2;
var by  = display_get_gui_height() - 180 - (_n * ih) - 10;

for (var i = 0; i < _n; i++) {
    var iy  = by + i * ih;
    var sel = (i == choice_sel);
    draw_set_alpha(sel ? 1.0 : 0.8);
    draw_set_color(sel ? c_yellow : c_black);
    draw_rectangle(bx, iy, bx+bw, iy+ih, false);
    draw_set_alpha(1);
    draw_set_color(sel ? c_black : c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(-1);
    if (is_array(_ca) && i < array_length(_ca)) {
        draw_text(bx + bw/2, iy + ih/2, _ca[i]);
    }
}
"""}

# ── obj_statdisplay ───────────────────────────────────────────────────────────
OBJ["obj_statdisplay"] = {
    (0, 0): "depth = -9970;\n",
    (8, 64): """\
if (global.hidestats) exit;

var bx   = 10;
var by   = 10;
var rh   = 22;
var cw   = 110;
var cols = CHAR_COUNT;

draw_set_alpha(0.78);
draw_set_color(c_black);
draw_rectangle(bx, by, bx + 70 + cols * cw, by + 5 * rh + 10, false);
draw_set_alpha(1);

draw_set_font(-1);
draw_set_color(c_ltgray);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(bx+4, by+4,        "Gold:");
draw_text(bx+4, by+4+rh,     string(global.gold) + "G");
draw_text(bx+4, by+4+rh*2,   "Day:");
draw_text(bx+4, by+4+rh*3,   string(global.daynum));

for (var c = 0; c < cols; c++) {
    var cx    = bx + 70 + c * cw;
    var stage = ds_grid_get(global.statgrid, c, STAT_STAGE);
    var pts   = ds_grid_get(global.statgrid, c, STAT_PTS);
    var maxp  = ds_grid_get(global.statgrid, c, STAT_MAXPTS);
    var eaten = ds_grid_get(global.statgrid, c, STAT_EATEN);

    draw_set_color(eaten ? c_red : c_white);
    draw_text(cx, by+4,       global.char_name[c]);
    draw_set_color(c_aqua);
    draw_text(cx, by+4+rh,    "S" + string(stage));
    draw_set_color(c_ltgray);
    draw_text(cx, by+4+rh*2,  string(pts) + "/" + string(maxp));
    draw_set_color(eaten ? c_red : c_lime);
    draw_text(cx, by+4+rh*3,  eaten ? "gone" : "here");
}
"""}

# ── obj_home_manager ──────────────────────────────────────────────────────────
OBJ["obj_home_manager"] = {
    (0, 0): """\
global.hidestats      = false;
global.hide_inventory = false;
shop_open = false;
""",
    (3, 0): """\
// Toggle shop
if (keyboard_check_pressed(ord("S"))) shop_open = !shop_open;

// Buy dish by number key (1-5) when shop is open
if (shop_open) {
    for (var _i = 0; _i < global.dish_count && _i < 9; _i++) {
        if (keyboard_check_pressed(ord(string(_i + 1)))) {
            var _req = ds_grid_get(global.dishgrid, _i, DISH_EQUIP);
            if (global.equipment_tier >= _req) {
                scr_buy(_i);
            }
        }
    }
}

// Advance day
if (keyboard_check_pressed(ord("N"))) {
    global.daynum++;
    room_goto(rm_lobby);
}

// Go to lunch (press L, then 0-6 for character, or -1 for solo)
if (keyboard_check_pressed(ord("L"))) {
    scr_goto_lunch(CHAR_KIT); // default: lunch with Kit
}
""",
    (8, 64): """\
var gx = display_get_gui_width() / 2;
var gy = 60;

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(-1);
draw_text(gx, gy,      "~ Home — Day " + string(global.daynum) + " ~");
draw_text(gx, gy+30,   "Gold: " + string(global.gold) + "G");
draw_text(gx, gy+60,   "[S] Shop   [L] Lunch   [N] Next Day");

if (shop_open) {
    var bx = gx - 260;
    var by = gy + 110;
    var bw = 520;
    var ih = 48;
    draw_set_alpha(0.9);
    draw_set_color(c_black);
    draw_rectangle(bx, by, bx+bw, by + 40 + global.dish_count * ih, false);
    draw_set_alpha(1);
    draw_set_color(c_yellow);
    draw_text(gx, by + 14, "SHOP");
    for (var i = 0; i < global.dish_count; i++) {
        var iy    = by + 40 + i * ih;
        var dname = ds_grid_get(global.dishgrid, i, DISH_NAME);
        var dcost = ds_grid_get(global.dishgrid, i, DISH_COST);
        var dpts  = ds_grid_get(global.dishgrid, i, DISH_PTS);
        var dreq  = ds_grid_get(global.dishgrid, i, DISH_EQUIP);
        var ok    = (global.equipment_tier >= dreq) && (global.gold >= dcost);
        draw_set_color(ok ? c_white : c_gray);
        draw_text(gx, iy + ih/2,
            "[" + string(i+1) + "]  " + dname
            + "   " + string(dcost) + "G   +" + string(dpts) + " pts"
            + (dreq > 0 ? "   (Equip " + string(dreq) + ")" : ""));
    }
}

// Inventory
if (!global.hide_inventory && ds_list_size(global.inventory) > 0) {
    draw_set_color(c_white);
    draw_text(gx, gy + 140, "Inventory: " + string(ds_list_size(global.inventory)) + " items");
}
"""}

# ── obj_game_manager (lunch mini-game) ────────────────────────────────────────
OBJ["obj_game_manager"] = {
    (0, 0): """\
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
""",
    (3, 0): """\
if (paused) exit;

// All food spawned and cleared — lunch over
if (ds_list_size(menulist) == 0 && !instance_exists(obj_food)) {
    filled = true;
    paused = true;
    alarm[0] = room_speed * 2;
}
""",
    (2, 0): """\
// Return to home after lunch
with (obj_conveyor) instance_destroy();
room_goto(rm_home);
""",
    (1, 0): "ds_list_destroy(menulist);\n",
    (8, 64): """\
var gx = display_get_gui_width() / 2;
var gy = 20;

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_font(-1);

var _char = global.lunch_char;
var _who  = (_char >= 0 && _char < CHAR_COUNT) ? global.char_name[_char] : "Solo";
draw_text(gx, gy, "Lunch with: " + _who);
draw_text(gx, gy+26, "[Click food to serve it]");

if (_char >= 0 && _char < CHAR_COUNT) {
    var _stage = ds_grid_get(global.statgrid, _char, STAT_STAGE);
    var _pts   = ds_grid_get(global.statgrid, _char, STAT_PTS);
    var _maxp  = ds_grid_get(global.statgrid, _char, STAT_MAXPTS);
    draw_text(gx, gy+52, "Stage " + string(_stage)
        + "  (" + string(_pts) + "/" + string(_maxp) + " pts)");
}

if (filled) {
    draw_set_color(c_yellow);
    draw_text(gx, display_get_gui_height()/2, "Lunch over!");
}
"""}

# ── obj_conveyor ──────────────────────────────────────────────────────────────
OBJ["obj_conveyor"] = {
    (0, 0): """\
spawn_timer    = 60;
spawn_interval = 90;
""",
    (3, 0): """\
if (!instance_exists(obj_game_manager)) exit;
var _gm = obj_game_manager;
if (_gm.paused || _gm.filled) exit;

spawn_timer--;
if (spawn_timer <= 0) {
    spawn_timer = spawn_interval;
    if (ds_list_size(_gm.menulist) > 0) {
        var _dish = ds_list_find_value(_gm.menulist, 0);
        ds_list_delete(_gm.menulist, 0);
        var _food = instance_create_layer(room_width + 80, room_height * 0.55,
                                          "Instances", obj_food);
        _food.dish_index = _dish;
    }
}
"""}

# ── obj_food ──────────────────────────────────────────────────────────────────
OBJ["obj_food"] = {
    (0, 0): """\
dish_index = 0;
move_spd   = 2;
image_xscale = 2;
image_yscale = 2;
""",
    (3, 0): """\
x -= move_spd;
if (x < -80) instance_destroy();
""",
    (6, 4): """\
// Left button pressed on food — serve it
if (!instance_exists(obj_game_manager)) exit;
var _gm = obj_game_manager;
if (_gm.paused || _gm.filled) exit;

var _char = global.lunch_char;
if (_char >= 0 && _char < CHAR_COUNT) {
    scr_give_gift(dish_index, _char);
    _gm.total_fed++;
}
instance_destroy();
"""}

# ── obj_vendmachine ───────────────────────────────────────────────────────────
OBJ["obj_vendmachine"] = {
    (0, 0): "vend_open = false;\n",
    (3, 0): """\
if (keyboard_check_pressed(ord("V"))) vend_open = !vend_open;
if (vend_open) {
    for (var _i = 0; _i < global.dish_count && _i < 9; _i++) {
        if (keyboard_check_pressed(ord(string(_i + 1)))) {
            scr_buy(_i);
        }
    }
}
""",
    (8, 64): """\
if (!vend_open) {
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_font(-1);
    draw_text(display_get_gui_width()/2, display_get_gui_height()-40,
              "[V] Vending Machine");
    exit;
}
var gx = display_get_gui_width() / 2;
var by = 200;
var bw = 480;
var ih = 46;
draw_set_alpha(0.92);
draw_set_color(c_black);
draw_rectangle(gx-bw/2, by, gx+bw/2, by + 40 + global.dish_count*ih, false);
draw_set_alpha(1);
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_font(-1);
draw_text(gx, by+12, "VENDING MACHINE");
for (var i = 0; i < global.dish_count; i++) {
    var iy    = by + 40 + i * ih;
    var dname = ds_grid_get(global.dishgrid, i, DISH_NAME);
    var dcost = ds_grid_get(global.dishgrid, i, DISH_COST);
    var dpts  = ds_grid_get(global.dishgrid, i, DISH_PTS);
    var dreq  = ds_grid_get(global.dishgrid, i, DISH_EQUIP);
    var ok    = (global.equipment_tier >= dreq) && (global.gold >= dcost);
    draw_set_color(ok ? c_white : c_gray);
    draw_text(gx, iy + ih/2,
        "[" + string(i+1) + "] " + dname + "  " + string(dcost) + "G  +" + string(dpts) + " pts");
}
"""}

# ── obj_incident_manager ──────────────────────────────────────────────────────
OBJ["obj_incident_manager"] = {
    (0, 0): """\
vmode    = false;
scene    = "";
savespot = 0;

// Weight-comment lines per character (spoken about a prey char)
preyline = array_create(CHAR_COUNT);
preyline[CHAR_YUKI]      = "[Yuki preyline — TODO]";
preyline[CHAR_KIT]       = "[Kit preyline — TODO]";
preyline[CHAR_BIGKIT]    = "[BigKit preyline — TODO]";
preyline[CHAR_HARADASHI] = "[Haradashi preyline — TODO]";
preyline[CHAR_EYES]      = "[Eyes preyline — TODO]";
preyline[CHAR_SEASNAKE]  = "[SeaSnake preyline — TODO]";
preyline[CHAR_BONES]     = "[Bones preyline — TODO]";

alarm[0] = 5;
""",
    (2, 0): """\
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
"""}

# ── obj_blackscrn ─────────────────────────────────────────────────────────────
OBJ["obj_blackscrn"] = {
    (0, 0): """\
depth    = -9999;
alpha    = 0;
fading_in = false;
speed_rate = 0.04;
""",
    (3, 0): """\
if (fading_in) {
    alpha -= speed_rate;
    if (alpha <= 0) { alpha = 0; instance_destroy(); }
} else {
    alpha += speed_rate;
    if (alpha >= 1) { alpha = 1; }
}
""",
    (8, 0): """\
draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);
"""}

# ── Character managers ────────────────────────────────────────────────────────
CHAR_ROOMS = {
    "Yuki":      ("rm_breakroom",  3),
    "Kit":       ("rm_lobby",      1),
    "BigKit":    ("rm_it",         2),
    "Haradashi": ("rm_management", 4),
    "Eyes":      ("rm_maintenance",5),
    "SeaSnake":  ("rm_exec",       6),
    "Bones":     ("rm_archive",    7),
}

for char in CHARS:
    idx   = CHARS.index(char)
    lower = char.lower()
    OBJ[f"obj_{lower}_manager"] = {
        (0, 0): f"""\
char_index = CHAR_{char.upper()};
char_name  = "{char}";
instance_create_layer(0, 0, "UI", obj_incident_manager);
instance_create_layer(0, 0, "UI", obj_statdisplay);
""",
        (3, 0): f"""\
// Day-gated scenes for {char}
var _day = global.daynum;
var _key_prefix = "seen_{lower}_day";

if (_day >= 1 && !ds_map_exists(global.events, _key_prefix + "1")) {{
    ds_map_add(global.events, _key_prefix + "1", 1);
    scr_callscene("scr_{lower}_day1");
}}
"""}

# ── Room navigation helper (keyboard-driven) ──────────────────────────────────
NAV_HELP = """\
// ── Room navigation ───────────────────────────────────────────────
// 1=Lobby  2=Home  3=BreakRoom  4=Archive  5=IT  6=Maintenance
// 7=Management  8=Executive  9=Kitchen
// ─────────────────────────────────────────────────────────────────
if (keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(ord("1"))) room_goto(rm_lobby);
if (keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(ord("2"))) room_goto(rm_home);
if (keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(ord("3"))) room_goto(rm_breakroom);
if (keyboard_check_pressed(vk_numpad4) || keyboard_check_pressed(ord("4"))) room_goto(rm_archive);
if (keyboard_check_pressed(vk_numpad5) || keyboard_check_pressed(ord("5"))) room_goto(rm_it);
if (keyboard_check_pressed(vk_numpad6) || keyboard_check_pressed(ord("6"))) room_goto(rm_maintenance);
if (keyboard_check_pressed(vk_numpad7) || keyboard_check_pressed(ord("7"))) room_goto(rm_management);
if (keyboard_check_pressed(vk_numpad8) || keyboard_check_pressed(ord("8"))) room_goto(rm_exec);
if (keyboard_check_pressed(vk_numpad9) || keyboard_check_pressed(ord("9"))) room_goto(rm_kitchen);
"""

# Add nav to each character manager step
for char in CHARS:
    lower = char.lower()
    OBJ[f"obj_{lower}_manager"][(3, 0)] += "\n" + NAV_HELP

# ══════════════════════════════════════════════════════════════════════════════
# MAIN GENERATION
# ══════════════════════════════════════════════════════════════════════════════

def main():
    print(f"Generating {PROJECT}/ ...")

    # ── Folders ───────────────────────────────────────────────────────────────
    folder_defs = [
        ("Scripts",              "GMScript", 0),
        ("Objects",              "GMObject",  1),
        ("Rooms",                "GMRoom",    2),
        ("Sprites",              "GMSprite",  3),
        ("Sounds",               "GMSound",   4),
    ]
    for name, ft, order in folder_defs:
        make_folder(name, ft, order)

    # ── Sprites ───────────────────────────────────────────────────────────────
    # Room backgrounds (1366×768)
    for rname, (r, g, b) in ROOM_COLORS.items():
        sname = "spr_bg_" + rname.replace("rm_", "")
        make_sprite(sname, W, H, r, g, b)

    # Character portrait placeholders (256×512, per-char color)
    for i, char in enumerate(CHARS):
        r, g, b = CHAR_COLORS[i]
        make_sprite(f"spr_{char.lower()}", 256, 512, r, g, b)

    # Food sprites (64×64, warm colors)
    food_colors = [(240,200,80),(200,120,60),(220,80,60),(240,240,160),(200,160,100)]
    food_names  = ["onigiri","bento","ramen","sushi","kaiseki"]
    for i, (fn, fc) in enumerate(zip(food_names, food_colors)):
        make_sprite(f"spr_food_{fn}", 64, 64, fc[0], fc[1], fc[2])

    # UI / misc placeholders
    make_sprite("spr_placeholder", 64, 64, 128, 128, 128)

    # ── Scripts ───────────────────────────────────────────────────────────────
    make_script("scr_macros",           GML["scr_macros"])
    make_script("scr_callscene",        GML["scr_callscene"])
    make_script("scr_check_stage",      GML["scr_check_stage"])
    make_script("scr_check_level",      GML["scr_check_level"])
    make_script("scr_give_gift",        GML["scr_give_gift"])
    make_script("scr_vore",             GML["scr_vore"])
    make_script("scr_buy",              GML["scr_buy"])
    make_script("scr_pair_change",      GML["scr_pair_change"])
    make_script("scr_madechoice",       GML["scr_madechoice"])
    make_script("scr_goto_lunch",       GML["scr_goto_lunch"])
    make_script("scr_blackout",         GML["scr_blackout"])
    make_script("scr_fade",             GML["scr_fade"])
    make_script("scr_pair_scenes",      GML["scr_pair_scenes"])
    make_script("scr_incident_scenes",  GML["scr_incident_scenes"])
    for char in CHARS:
        make_script(f"scr_{char.lower()}_scenes", GML[f"scr_{char.lower()}_scenes"])

    # ── Objects ───────────────────────────────────────────────────────────────
    make_object("obj_global_init",    OBJ["obj_global_init"],
                persistent=True,   visible=False)
    make_object("obj_scene_manager",  OBJ["obj_scene_manager"],
                visible=False)
    make_object("obj_txtbox",         OBJ["obj_txtbox"],   visible=False)
    make_object("obj_namebox",        OBJ["obj_namebox"],  visible=False)
    make_object("obj_choicebox",      OBJ["obj_choicebox"],visible=False)
    make_object("obj_statdisplay",    OBJ["obj_statdisplay"], visible=False)
    make_object("obj_home_manager",   OBJ["obj_home_manager"],  visible=False)
    make_object("obj_game_manager",   OBJ["obj_game_manager"],  visible=False)
    make_object("obj_conveyor",       OBJ["obj_conveyor"],      visible=False)
    make_object("obj_food",           OBJ["obj_food"],
                sprite="spr_food_onigiri")
    make_object("obj_vendmachine",    OBJ["obj_vendmachine"],   visible=False)
    make_object("obj_incident_manager", OBJ["obj_incident_manager"], visible=False)
    make_object("obj_blackscrn",      OBJ["obj_blackscrn"],     visible=False)

    for char in CHARS:
        lower = char.lower()
        spr   = f"spr_{lower}"
        make_object(f"obj_{lower}_manager", OBJ[f"obj_{lower}_manager"],
                    sprite=spr, visible=True)

    # ── Rooms ─────────────────────────────────────────────────────────────────
    make_room("rm_init",
              [{"obj": "obj_global_init", "x": 0, "y": 0}],
              bg_sprite=None)

    make_room("rm_lobby",
              [{"obj": "obj_kit_manager", "x": W//2, "y": H//2}],
              bg_sprite="spr_bg_lobby")

    make_room("rm_home",
              [{"obj": "obj_home_manager", "x": 0, "y": 0}],
              bg_sprite="spr_bg_home")

    make_room("rm_breakroom",
              [{"obj": "obj_yuki_manager",    "x": W//2, "y": H//2},
               {"obj": "obj_vendmachine",     "x": W//4, "y": H//2}],
              bg_sprite="spr_bg_breakroom")

    make_room("rm_archive",
              [{"obj": "obj_bones_manager",   "x": W//2, "y": H//2}],
              bg_sprite="spr_bg_archive")

    make_room("rm_it",
              [{"obj": "obj_bigkit_manager",  "x": W//2, "y": H//2}],
              bg_sprite="spr_bg_it")

    make_room("rm_maintenance",
              [{"obj": "obj_eyes_manager",    "x": W//2, "y": H//2}],
              bg_sprite="spr_bg_maintenance")

    make_room("rm_management",
              [{"obj": "obj_haradashi_manager","x": W//2, "y": H//2}],
              bg_sprite="spr_bg_management")

    make_room("rm_exec",
              [{"obj": "obj_seasnake_manager","x": W//2, "y": H//2}],
              bg_sprite="spr_bg_exec")

    make_room("rm_kitchen",
              [{"obj": "obj_game_manager",    "x": 0,     "y": 0}],
              bg_sprite="spr_bg_kitchen")

    make_room("rm_vendroom",
              [{"obj": "obj_vendmachine",     "x": W//2, "y": H//2}],
              bg_sprite="spr_bg_vendroom")

    # ── Texture / audio groups ────────────────────────────────────────────────
    write("texturegroups/Default.yy", jdump({
        "resourceType": "GMTextureGroup", "resourceVersion": "1.0",
        "name": "Default", "isScaled": True, "autocrop": True,
        "border": 2, "mipsToGenerate": 0, "targets": -1,
        "parent": {"name": PROJECT, "path": f"{PROJECT}.yyp"}
    }))
    write("audiogroups/audiogroup_default.yy", jdump({
        "resourceType": "GMAudioGroup", "resourceVersion": "1.0",
        "name": "audiogroup_default", "targets": -1,
        "parent": {"name": PROJECT, "path": f"{PROJECT}.yyp"}
    }))

    # ── Options (minimum set for GMS2 to load) ────────────────────────────────
    win_opts = {
        "resourceType": "GMWindowsOptions", "resourceVersion": "1.0",
        "name": "Windows",
        "option_windows_game_guid": uid("win_guid"),
        "option_windows_display_name": PROJECT,
        "option_windows_executable_name": PROJECT,
        "option_windows_version": {"major":1,"minor":0,"build":0,"revision":0},
        "option_windows_company_info": "",
        "option_windows_product_info": "",
        "option_windows_copyright_info": "",
        "option_windows_description_info": "",
        "option_windows_display_cursor": True,
        "option_windows_icon": "${base_options_dir}/windows/icons/icon.ico",
        "option_windows_save_location": 0,
        "option_windows_splash_screen": "${base_options_dir}/windows/splash/splash.png",
        "option_windows_use_splash": False,
        "option_windows_start_fullscreen": False,
        "option_windows_allow_fullscreen_switching": True,
        "option_windows_interpolate_pixels": False,
        "option_windows_vsync": False,
        "option_windows_resize_window": False,
        "option_windows_borderless": False,
        "option_windows_scale": 0,
        "option_windows_copy_exe_to_dest": False,
        "option_windows_sleep_margin": 10,
        "option_windows_texture_page": "2048x2048",
        "option_windows_installer_finished": "${base_options_dir}/windows/installer/finished.bmp",
        "option_windows_installer_header": "${base_options_dir}/windows/installer/header.bmp",
        "option_windows_license": "${base_options_dir}/windows/installer/license.txt",
        "option_windows_nsis_file": "${base_options_dir}/windows/installer/nsis_installer.nsi",
        "option_windows_enable_steam": False,
        "option_windows_disable_sandbox": False,
        "option_windows_steam_app_id": "0",
        "parent": {"name": "Windows", "path": "options/windows/options_windows.yy"}
    }
    write("options/windows/options_windows.yy", jdump(win_opts))
    resources.append({"id": {"name": "Windows",
                              "path": "options/windows/options_windows.yy"},
                       "order": len(resources)})

    main_opts = {
        "resourceType": "GMMainOptions", "resourceVersion": "1.0",
        "name": "Main",
        "option_gameguid": uid("main_guid"),
        "option_game_speed": 60,
        "option_mips_for_3d_textures": False,
        "option_draw_colour": 4294967295,
        "option_steam_app_id": "0",
        "option_sci_usesci": False,
        "option_author": "",
        "option_lastchanged": "",
        "option_gameid": "0",
        "option_template_image": "${base_options_dir}/main/template_image.png",
        "option_template_icon": "${base_options_dir}/main/template_icon.png",
        "option_template_description": None,
        "parent": {"name": "Main", "path": "options/main/options_main.yy"}
    }
    write("options/main/options_main.yy", jdump(main_opts))
    resources.append({"id": {"name": "Main",
                              "path": "options/main/options_main.yy"},
                       "order": len(resources)})

    # ── .yyp project file ─────────────────────────────────────────────────────
    yyp = {
        "resourceType": "GMProject",
        "resourceVersion": "2.0",
        "name": PROJECT,
        "configs": {"name": "Default", "children": []},
        "defaultScriptType": 1,
        "isEcma": False,
        "tutorialPath": "",
        "resources": resources,
        "RoomOrderNodes": room_order,
        "AudioGroups": [{
            "resourceType": "GMAudioGroup", "resourceVersion": "1.0",
            "name": "audiogroup_default", "targets": -1,
            "parent": {"name": PROJECT, "path": f"{PROJECT}.yyp"}
        }],
        "TextureGroups": [{
            "resourceType": "GMTextureGroup", "resourceVersion": "1.0",
            "name": "Default", "isScaled": True, "autocrop": True,
            "border": 2, "mipsToGenerate": 0, "targets": -1,
            "parent": {"name": PROJECT, "path": f"{PROJECT}.yyp"}
        }],
        "IncludedFiles": [],
        "MetaData": {"IDEVersion": "2024.11.0.295"},
        "parent": {"name": PROJECT, "path": f"{PROJECT}.yyp"}
    }
    write(f"{PROJECT}.yyp", jdump(yyp))

    # Count outputs
    total = sum(1 for _ in BASE.rglob("*") if _.is_file())
    print(f"Done. {total} files written to {BASE}/")
    print(f"Open: {BASE}/{PROJECT}.yyp  in GameMaker Studio 2")

if __name__ == "__main__":
    main()
