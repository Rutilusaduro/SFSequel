.localvar 0 arguments
.localvar 1 t_string 289

:[0]
pushi.e 11
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [2]

:[1]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 11
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[2]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [40]

:[3]
pushi.e 40
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [5]

:[4]
pushi.e 83
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [6]

:[5]
push.e 1

:[6]
bf [9]

:[7]
push.v self.scrnline
push.e 1
add.i.v
pop.v.v self.scrnline
push.v self.scrnline
push.v self.choicelength
cmp.v.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.scrnline

:[9]
pushi.e 38
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [11]

:[10]
pushi.e 87
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [12]

:[11]
push.e 1

:[12]
bf [15]

:[13]
push.v self.scrnline
push.e 1
sub.i.v
pop.v.v self.scrnline
push.v self.scrnline
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
push.v self.choicelength
pushi.e 1
sub.i.v
pop.v.v self.scrnline

:[15]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [40]

:[16]
pushi.e -1
push.v self.scrnline
conv.v.i
push.v [array]self.openarray
push.s "New Game"@649
cmp.s.v EQ
bf [20]

:[17]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
push.s "FAS_BLANK.ini"@630
conv.s.v
call.i ini_open(argc=1)
popz.v
push.s ""@150
conv.s.v
push.s "Moxie"@634
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.t_string
pushloc.v local.t_string
push.s ""@150
cmp.s.v NEQ
bf [19]

:[18]
pushloc.v local.t_string
pushglb.v global.events
call.i ds_map_read(argc=2)
popz.v

:[19]
push.s ""@150
conv.s.v
push.s "Swag"@639
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_read_string(argc=3)
pushglb.v global.statgrid
call.i ds_grid_read(argc=2)
popz.v
call.i ini_close(argc=0)
popz.v
call.i madechoice(argc=0)
popz.v
pushi.e 0
pop.v.i global.continuing
pushi.e 4
conv.i.v
call.i room_goto(argc=1)
popz.v

:[20]
pushi.e -1
push.v self.scrnline
conv.v.i
push.v [array]self.openarray
push.s "Credits"@652
cmp.s.v EQ
bf [22]

:[21]
pushi.e 2
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[22]
pushi.e -1
push.v self.scrnline
conv.v.i
push.v [array]self.openarray
push.s "Start Over"@648
cmp.s.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[24]
pushi.e -1
push.v self.scrnline
conv.v.i
push.v [array]self.openarray
push.s "Continue"@647
cmp.s.v EQ
bf [28]

:[25]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 0
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
push.s "FAS_SAVE.ini"@645
conv.s.v
call.i ini_open(argc=1)
popz.v
push.s ""@150
conv.s.v
push.s "Moxie"@634
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.t_string
pushloc.v local.t_string
push.s ""@150
cmp.s.v NEQ
bf [27]

:[26]
pushloc.v local.t_string
pushglb.v global.events
call.i ds_map_read(argc=2)
popz.v

:[27]
push.s ""@150
conv.s.v
push.s "Swag"@639
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_read_string(argc=3)
pushglb.v global.statgrid
call.i ds_grid_read(argc=2)
popz.v
call.i ini_close(argc=0)
popz.v
pushi.e 1
pop.v.i global.continuing
call.i madechoice(argc=0)
popz.v
pushi.e 4
conv.i.v
call.i room_goto(argc=1)
popz.v

:[28]
pushi.e -1
push.v self.scrnline
conv.v.i
push.v [array]self.openarray
push.s "Unmute Game Sounds"@650
cmp.s.v EQ
bt [30]

:[29]
pushi.e -1
push.v self.scrnline
conv.v.i
push.v [array]self.openarray
push.s "Mute Game Sounds"@651
cmp.s.v EQ
b [31]

:[30]
push.e 1

:[31]
bf [36]

:[32]
pushglb.v global.muted
pushi.e 1
cmp.i.v EQ
bf [34]

:[33]
pushi.e 1
conv.i.v
pushi.e 0
conv.i.v
call.i audio_set_master_gain(argc=2)
popz.v
pushi.e 0
pop.v.i global.muted
b [35]

:[34]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i audio_set_master_gain(argc=2)
popz.v
pushi.e 1
pop.v.i global.muted

:[35]
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i event_perform(argc=2)
popz.v

:[36]
pushi.e -1
push.v self.scrnline
conv.v.i
push.v [array]self.openarray
push.s "Settings Tester"@665
cmp.s.v EQ
bf [40]

:[37]
push.s "FAS_SAVE.ini"@645
conv.s.v
call.i ini_open(argc=1)
popz.v
push.s ""@150
conv.s.v
push.s "Moxie"@634
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_read_string(argc=3)
pop.v.v local.t_string
pushloc.v local.t_string
push.s ""@150
cmp.s.v NEQ
bf [39]

:[38]
pushloc.v local.t_string
pushglb.v global.events
call.i ds_map_read(argc=2)
popz.v

:[39]
push.s ""@150
conv.s.v
push.s "Swag"@639
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_read_string(argc=3)
pushglb.v global.statgrid
call.i ds_grid_read(argc=2)
popz.v
call.i ini_close(argc=0)
popz.v
call.i madechoice(argc=0)
popz.v
pushi.e 9
conv.i.v
call.i room_goto(argc=1)
popz.v

:[40]
push.v self.roommode
pushi.e 1
cmp.i.v EQ
bf [53]

:[41]
pushi.e 3
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [43]

:[42]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[43]
push.s "Delete your SAVE and START OVER? (Note: this action is PERMANENT)"@666
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [47]

:[44]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [46]

:[45]
push.s "No"@667
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Yes"@668
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[46]
popenv [45]

:[47]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [49]

:[48]
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [53]

:[49]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [53]

:[50]
pushglb.v global.choice
push.s "No"@667
cmp.s.v EQ
bf [52]

:[51]
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [53]

:[52]
push.s "FAS_SAVE.ini"@645
conv.s.v
call.i file_delete(argc=1)
popz.v
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i event_perform(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v

:[53]
push.v self.roommode
pushi.e 2
cmp.i.v EQ
bf [end]

:[54]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [end]

:[55]
pushi.e 0
pop.v.i self.roommode

:[end]