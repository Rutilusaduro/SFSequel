.localvar 0 arguments
.localvar 1 i 286

:[0]
pushi.e 64
pop.v.i self.text_x
pushi.e 64
pop.v.i self.text_y
pushi.e 0
pop.v.i self.openarray
pushi.e 0
pop.v.i local.i
push.s "FAS_SAVE.ini"@645
conv.s.v
call.i file_exists(argc=1)
conv.v.b
bf [2]

:[1]
push.s "Continue"@647
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.openarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "Start Over"@648
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.openarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[2]
push.s "New Game"@649
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.openarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[3]
pushglb.v global.muted
pushi.e 1
cmp.i.v EQ
bf [5]

:[4]
push.s "Unmute Game Sounds"@650
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.openarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[5]
push.s "Mute Game Sounds"@651
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.openarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[6]
push.s "Credits"@652
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.openarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s ""@150
pop.v.s self.comment
push.v self.openarray
call.i array_length_1d(argc=1)
pop.v.v self.choicelength
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.scrnline

:[end]