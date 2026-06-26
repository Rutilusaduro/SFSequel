.localvar 0 arguments
.localvar 1 i 623
.localvar 2 a 624

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.specialscene
pushi.e 0
pop.v.i self.tolerance
pushi.e 0
pop.v.i self.date
push.l 2
pop.v.l self.me
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [2]

:[1]
push.v other.me
pop.v.v self.me

:[2]
popenv [1]
push.l 1
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.namearray
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [4]

:[3]
push.l 1
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pop.v.v global.boxname

:[4]
popenv [3]
push.s "seenChloe"@436
pop.v.s self.myseen
push.s "dailyChloe"@446
pop.v.s self.chatkey
push.s "finalchloe"@455
pop.v.s self.datekey
push.s "put the text array here."@2228
pushi.e -1
pushi.e 8
pop.v.s [array]self.intro
push.s "Put the special line here"@2230
pushi.e -1
pushi.e 8
pop.v.s [array]self.weightline
push.s "you're giving me a gift?"@2232
pop.v.s self.introgift
push.s "I liked the gift!"@2234
pop.v.s self.likegift
push.s "I didn't like the gift!"@2236
pop.v.s self.badgift
push.s "Oh I had this before"@2238
pop.v.s self.likedhadit
push.s "Oh I had this before and it sucked"@2240
pop.v.s self.badhadit
push.s ""@150
pop.v.s self.fulllikegift
push.s ""@150
pop.v.s self.fullbadgift
push.s ""@150
pop.v.s self.fullhadit
push.s ""@150
pop.v.s self.fullbadhadit
push.s ""@150
pop.v.s self.rejecttxt
push.s ""@150
pop.v.s self.accepttxt
push.s ""@150
pop.v.s self.speciallunch
push.s ""@150
pop.v.s self.nomorechat
pushi.e 0
pop.v.i self.chatarray
push.v self.me
call.i trustlvl(argc=1)
pop.v.v self.trusttst
pushi.e 0
pop.v.i local.i
pushi.e 0
pop.v.i local.a
push.v self.trusttst
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [12]

:[5]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [12]

:[6]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [12]

:[7]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [12]

:[8]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [13]

:[9]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [13]

:[10]
b [14]

:[11]
b [15]

:[12]
push.s "Oh...I have some time. But I don't like to chat long."@2252
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [15]

:[13]
push.s "Oh...I have some time. But I don't like to chat long."@2252
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [15]

:[14]
push.s "Oh...I have some time. But I don't like to chat long."@2252
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [15]

:[15]
popz.v
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.hintline
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.hintline
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.hintline
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.hintline
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.hintline
push.v self.hintline
call.i array_length_1d(argc=1)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.rand
pushi.e -1
push.v self.rand
conv.v.i
push.v [array]self.hintline
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushi.e 0
pop.v.i local.a
push.l 13
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [17]

:[16]
pushi.e 1
pop.v.i self.upped
b [18]

:[17]
pushi.e 0
pop.v.i self.upped

:[18]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [66]

:[19]
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [29]

:[20]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [33]

:[21]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [37]

:[22]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [41]

:[23]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [45]

:[24]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [49]

:[25]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [53]

:[26]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [57]

:[27]
b [61]

:[28]
b [65]

:[29]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [31]

:[30]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [32]

:[31]
push.s "I've been working on a strict diet lately you know. I'm determined to stick to it, I used to miss a whole lot of foods starting off. But I don't as much anymore. You start to get over it."@2256
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[32]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[33]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [35]

:[34]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [36]

:[35]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[36]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[37]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [39]

:[38]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [40]

:[39]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[40]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[41]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [43]

:[42]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [44]

:[43]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[44]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[45]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [47]

:[46]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [48]

:[47]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[48]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[49]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [51]

:[50]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [52]

:[51]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[52]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[53]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [55]

:[54]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [56]

:[55]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[56]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[57]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [60]

:[59]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[60]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[61]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [64]

:[63]
push.s "hi"@2255
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[64]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [65]

:[65]
popz.v

:[66]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.trustline
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [68]

:[67]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.trustline
push.v self.trustline
call.i array_length_1d(argc=1)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.rand
pushi.e -1
push.v self.rand
conv.v.i
push.v [array]self.trustline
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushi.e 0
pop.v.i local.a

:[68]
push.v self.chatarray
call.i array_length_1d(argc=1)
pop.v.v self.chatlen

:[end]