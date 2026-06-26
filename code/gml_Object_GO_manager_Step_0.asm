.localvar 0 arguments
.localvar 1 t_string 595

:[0]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [24]

:[1]
push.s "Start the day over"@2210
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Go back to home screen"@2211
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
pushglb.v global.gotate
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "Call for help"@2212
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices

:[3]
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength
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
push.v self.csel
push.e 1
add.i.v
pop.v.v self.csel
push.v self.csel
push.v self.choicelength
cmp.v.v GTE
bf [9]

:[8]
pushi.e 0
pop.v.i self.csel

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
push.v self.csel
push.e 1
sub.i.v
pop.v.v self.csel
push.v self.csel
pushi.e 0
cmp.i.v LT
bf [15]

:[14]
push.v self.choicelength
pushi.e 1
sub.i.v
pop.v.v self.csel

:[15]
pushi.e -1
push.v self.csel
conv.v.i
push.v [array]self.choices
pop.v.v global.choice
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [24]

:[16]
pushglb.v global.choice
push.s "Start the day over"@2210
cmp.s.v EQ
bf [20]

:[17]
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
pushi.e 1
pop.v.i global.continuing
call.i madechoice(argc=0)
popz.v
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v

:[20]
pushglb.v global.choice
push.s "Go back to home screen"@2211
cmp.s.v EQ
bf [22]

:[21]
call.i madechoice(argc=0)
popz.v
pushi.e 2
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v

:[22]
pushglb.v global.choice
push.s "Call for help"@2212
cmp.s.v EQ
bf [24]

:[23]
pushi.e 1
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[24]
push.v self.roommode
pushi.e 1
cmp.i.v EQ
bf [37]

:[25]
pushi.e 3
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [27]

:[26]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[27]
push.s "Should I call a rescue? It costs "@2213
pushglb.v global.rescuecost
call.i string(argc=1)
add.v.s
push.s "g. If I do, it’ll end the day and I’ll wake up in my bed tomorrow. Course, being eaten has its price. My body will shrink significantly."@2214
add.s.v
pop.v.v global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [31]

:[28]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [30]

:[29]
push.s "Yes!!!"@2215
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Nevermind..."@2216
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[30]
popenv [29]

:[31]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [33]

:[32]
pushi.e 0
pop.v.i self.roommode
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
call.i madechoice(argc=0)
popz.v
b [37]

:[33]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [37]

:[34]
pushglb.v global.choice
push.s "Nevermind..."@2216
cmp.s.v EQ
bf [36]

:[35]
pushi.e 0
pop.v.i self.roommode
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
call.i madechoice(argc=0)
popz.v
b [37]

:[36]
pushi.e 2
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[37]
push.v self.roommode
pushi.e 2
cmp.i.v EQ
bf [end]

:[38]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "*RING RING*"@1963
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Monster spelunker's rescue"@1964
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hello hello! Monster spelunker's rescue! Your reception is terrible! Where are you calling from? Oh...I see. "@2217
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.rescuecost
cmp.v.v GTE
bf [40]

:[39]
push.s "Monster spelunker's rescue"@1964
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Sit tight! We’ll get’cha outta there. Ah, but payment up front please~"@2218
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "*click*"@796
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushi.e 0
conv.i.v
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
pop.v.i self.rescued
b [41]

:[40]
push.s "Monster spelunker's rescue"@1964
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Sorry pal, looks like your payment isn’t going through. My suggestion: bring a rope next time!"@2220
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "*click*"@796
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushi.e 0
pop.v.i self.rescued

:[41]
call.i do_namebox(argc=0)
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [43]

:[42]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [44]

:[43]
push.e 0

:[44]
bf [end]

:[45]
pushi.e 0
pop.v.i global.gotate
pushi.e 0
pop.v.i global.line
push.v self.rescued
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
b [48]

:[47]
pushi.e 0
pop.v.i self.roommode

:[48]
pushi.e 3
conv.i.v
call.i instance_destroy(argc=1)
popz.v
call.i madechoice(argc=0)
popz.v

:[end]