.localvar 0 arguments

:[0]
pushglb.v global.guest
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 14
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
pushi.e 14
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[2]
pushi.e 0
pop.v.i self.image_index
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.lunchcost
cmp.v.v LTE
bf [4]

:[3]
pushi.e 0
pop.v.i self.hp
pushi.e 0
pop.v.i self.myhp
pushi.e 1
pop.v.i self.nomoney

:[4]
push.v self.hp
pushi.e 0
cmp.i.v LTE
bt [6]

:[5]
push.v self.myhp
pushi.e 0
cmp.i.v LTE
b [7]

:[6]
push.e 1

:[7]
bf [11]

:[8]
pushi.e 1
pop.v.i self.paused
pushi.e 3
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [10]

:[9]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[10]
push.s "lunchend"@742
conv.s.v
call.i callscene(argc=1)
popz.v
b [end]

:[11]
push.v self.paused
pushi.e 1
cmp.i.v EQ
bf [56]

:[12]
pushi.e 1
pop.v.i global.goldonly
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e 1
cmp.i.v EQ
bf [14]

:[13]
pushi.e 2
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[14]
pushi.e -1
pushi.e 0
dup.l 0
push.v [array]self.alarm
push.e 1
add.i.v
pop.i.v [array]self.alarm
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [35]

:[15]
pushi.e 3
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [17]

:[16]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[17]
push.s "PAUSED!"@2736
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[18]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [20]

:[19]
push.s "Unpause"@2737
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "End lunch"@2738
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Tutorial"@2739
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[20]
popenv [19]

:[21]
pushi.e 9
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [23]

:[22]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [24]

:[23]
push.e 1

:[24]
bf [26]

:[25]
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i self.paused
call.i madechoice(argc=0)
popz.v
b [35]

:[26]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [35]

:[27]
pushglb.v global.choice
dup.v 0
push.s "End lunch"@2738
cmp.s.v EQ
bt [31]

:[28]
dup.v 0
push.s "Tutorial"@2739
cmp.s.v EQ
bt [32]

:[29]
dup.v 0
push.s "Unpause"@2737
cmp.s.v EQ
bt [33]

:[30]
b [34]

:[31]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [34]

:[32]
pushi.e 0
conv.i.v
push.s "lunchtut"@345
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 2
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [34]

:[33]
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i self.paused
call.i madechoice(argc=0)
popz.v
b [34]

:[34]
popz.v

:[35]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [49]

:[36]
push.s "End lunch and go back to work?"@2740
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [40]

:[37]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [39]

:[38]
push.s "Yes"@668
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "No"@667
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[39]
popenv [38]

:[40]
pushi.e 9
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [42]

:[41]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [43]

:[42]
push.e 1

:[43]
bf [45]

:[44]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [49]

:[45]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [49]

:[46]
pushglb.v global.choice
push.s "Yes"@668
cmp.s.v EQ
bf [48]

:[47]
pushi.e 0
pop.v.i self.hp
pushi.e 0
pop.v.i self.myhp
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i self.paused
call.i madechoice(argc=0)
popz.v
b [49]

:[48]
pushi.e 0
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[49]
push.v self.vmode
pushi.e 2
cmp.i.v EQ
bf [55]

:[50]
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [52]

:[51]
pushi.e 1
pop.v.i global.line

:[52]
push.s "lunchtut"@345
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [54]

:[53]
pushi.e 0
pop.v.i self.vmode
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v
exit.i

:[54]
push.s "lunchtut"@345
conv.s.v
call.i callscene(argc=1)
popz.v

:[55]
b [end]

:[56]
push.s "lunchtut"@345
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.s "lunchtut"@345
conv.s.v
call.i callscene(argc=1)
popz.v
b [end]

:[58]
pushi.e 1
pop.v.i global.goldonly
pushi.e 3
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [60]

:[59]
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[60]
pushi.e 0
pop.v.i self.vmode
pushi.e 9
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bt [62]

:[61]
pushi.e 8
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
b [63]

:[62]
push.e 1

:[63]
bf [66]

:[64]
pushi.e 1
pop.v.i self.paused
exit.i

:[65]
b [end]

:[66]
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e -1
cmp.i.v EQ
bf [end]

:[67]
pushi.e 45
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[end]