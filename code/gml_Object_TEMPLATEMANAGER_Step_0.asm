.localvar 0 arguments
.localvar 1 i 633
.localvar 2 feelings 638

:[0]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
pushi.e 0
pop.v.i self.datemus

:[2]
pushi.e 7
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bt [4]

:[3]
pushi.e 8
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [5]

:[4]
push.e 1

:[5]
bf [14]

:[6]
push.v self.datemus
pushi.e 1
cmp.i.v EQ
bf [10]

:[7]
pushi.e 15
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [9]

:[8]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 15
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[9]
b [13]

:[10]
pushglb.v global.cutmusic
pushi.e 1
cmp.i.v EQ
bf [13]

:[11]
pushi.e 13
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [13]

:[12]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 13
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[13]
b [16]

:[14]
pushi.e 12
conv.i.v
call.i audio_is_playing(argc=1)
conv.v.b
not.b
bf [16]

:[15]
call.i audio_stop_all(argc=0)
popz.v
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
pushi.e 12
conv.i.v
call.i audio_play_sound(argc=3)
popz.v

:[16]
push.v self.roommode
pushi.e 1
cmp.i.v EQ
bf [26]

:[17]
push.v self.chatkey
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [24]

:[18]
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.chatarray
pushi.e -5
pushglb.v global.line
conv.v.i
pop.v.v [array]global.text
pushglb.v global.line
push.v self.chatlen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [20]

:[19]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.l 3
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.l 3
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.v self.chatkey
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[23]
b [26]

:[24]
push.v self.nomorechat
pop.v.v global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [26]

:[25]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[26]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [30]

:[27]
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [29]

:[28]
push.v other.me
pop.v.v self.me

:[29]
popenv [28]

:[30]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [82]

:[31]
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i global.hide_inventory
push.v self.myseen
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.v self.myseen
call.i callscene(argc=1)
popz.v
b [82]

:[36]
push.v self.specialscene
pushi.e 0
cmp.i.v NEQ
bf [38]

:[37]
push.v self.specialscene
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
push.v self.specialscene
call.i callscene(argc=1)
popz.v
b [82]

:[41]
push.l 1
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pop.v.v global.boxname
push.v self.me
call.i trustlvl(argc=1)
pop.v.v self.trusts
push.v self.trusts
pushi.e 8
cmp.i.v GT
bf [43]

:[42]
pushi.e 8
pop.v.i self.trusts

:[43]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [45]

:[44]
pushi.e -1
push.v self.trusts
conv.v.i
push.v [array]self.intro
pushi.e -1
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]self.weightline
add.v.v
pop.v.v global.text
b [46]

:[45]
pushi.e -1
push.v self.trusts
conv.v.i
push.v [array]self.intro
pop.v.v global.text

:[46]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [65]

:[47]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [64]

:[48]
pushi.e 0
pop.v.i local.i
push.s "daily"@2135
push.l 1
conv.l.v
push.v other.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [50]

:[49]
push.s "Have a chat"@2261
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[50]
push.s "Give gift"@2262
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.l 9
conv.l.v
push.v other.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v GT
bf [52]

:[51]
push.s "Recieve gift"@2263
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[52]
pushglb.v global.lunch
pushi.e 0
cmp.i.v EQ
bf [54]

:[53]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.lunchcost
cmp.v.v GTE
b [55]

:[54]
push.e 0

:[55]
bf [57]

:[56]
push.s "Offer lunch"@2264
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[57]
push.v other.me
push.l 3
cmp.l.v EQ
bf [60]

:[58]
push.s "gotcandybowl"@498
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [60]

:[59]
push.s "abusedcandybowl"@499
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [61]

:[60]
push.e 0

:[61]
bf [63]

:[62]
push.s "Take some candy from the candy bowl"@2265
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[63]
push.s "Leave"@2266
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[64]
popenv [48]

:[65]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [67]

:[66]
pushi.e 16
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [82]

:[67]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [82]

:[68]
pushglb.v global.choice
dup.v 0
push.s "Leave"@2266
cmp.s.v EQ
bt [75]

:[69]
dup.v 0
push.s "Have a chat"@2261
cmp.s.v EQ
bt [76]

:[70]
dup.v 0
push.s "Give gift"@2262
cmp.s.v EQ
bt [77]

:[71]
dup.v 0
push.s "Offer lunch"@2264
cmp.s.v EQ
bt [78]

:[72]
dup.v 0
push.s "Take some candy from the candy bowl"@2265
cmp.s.v EQ
bt [79]

:[73]
dup.v 0
push.s "Recieve gift"@2263
cmp.s.v EQ
bt [80]

:[74]
b [81]

:[75]
pushi.e 16
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [81]

:[76]
push.s ""@150
pushi.e -5
push.v self.chatlen
conv.v.i
pop.v.s [array]global.text
pushi.e -1
pushi.e 0
push.v [array]self.chatarray
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
pushi.e 1
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [81]

:[77]
pushi.e 2
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [81]

:[78]
pushi.e 3
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [81]

:[79]
pushi.e 5
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [81]

:[80]
push.l 9
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pop.v.v self.giftmax
pushi.e 6
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [81]

:[81]
popz.v

:[82]
push.v self.roommode
pushi.e 3
cmp.i.v EQ
bf [104]

:[83]
push.v self.me
call.i trustlvl(argc=1)
pop.v.v self.test
push.v self.test
push.v self.tolerance
cmp.v.v GTE
bf [102]

:[84]
push.v self.test
push.v self.date
cmp.v.v GTE
bf [87]

:[85]
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 7
cmp.i.v GTE
bf [87]

:[86]
push.l 14
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
b [88]

:[87]
push.e 0

:[88]
bf [90]

:[89]
pushi.e 4
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [101]

:[90]
push.l 1
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.namearray
push.v self.accepttxt
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Do you want to go to lunch with "@2268
push.l 1
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [101]

:[91]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [95]

:[92]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [94]

:[93]
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

:[94]
popenv [93]

:[95]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [101]

:[97]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [101]

:[98]
pushglb.v global.choice
push.s "Yes"@668
cmp.s.v EQ
bf [100]

:[99]
push.v self.me
call.i goto_lunch(argc=1)
popz.v
call.i madechoice(argc=0)
popz.v
b [101]

:[100]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[101]
b [104]

:[102]
push.v self.rejecttxt
pop.v.v global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [104]

:[103]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[104]
push.v self.roommode
pushi.e 4
cmp.i.v EQ
bf [120]

:[105]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [117]

:[106]
push.l 1
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.namearray
push.v self.speciallunch
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Do you want to go?"@2269
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [117]

:[107]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [111]

:[108]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [110]

:[109]
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

:[110]
popenv [109]

:[111]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [117]

:[113]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [117]

:[114]
pushglb.v global.choice
push.s "Yes"@668
cmp.s.v EQ
bf [116]

:[115]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
b [117]

:[116]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[117]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [120]

:[118]
pushi.e 1
pop.v.i self.datemus
push.v self.datekey
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [120]

:[119]
push.v self.datekey
call.i callscene(argc=1)
popz.v

:[120]
push.v self.roommode
pushi.e 2
cmp.i.v EQ
bf [159]

:[121]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v NEQ
bf [153]

:[122]
pushbltn.v self.room_width
pop.v.v self.ww
push.v self.ww
pushi.e 4
conv.i.d
div.d.v
pop.v.v self.bubx
pushi.e 64
pop.v.i self.buby
push.v self.introgift
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
pushi.e 1
pop.v.i global.giving
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [124]

:[123]
pushi.e 0
pop.v.i global.giving
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [152]

:[124]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [152]

:[125]
pushi.e 33
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [127]

:[126]
pushi.e 33
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[127]
pushi.e 0
conv.i.v
pushglb.v global.invent_choice
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pop.v.v self.mygift
push.v self.mygift
pushi.e 0
cmp.i.v NEQ
bf [152]

:[128]
push.v self.mygift
push.l 8
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
call.i ds_list_find_index(argc=2)
pop.v.v self.past
push.v self.past
pushi.e -1
cmp.i.v NEQ
bf [130]

:[129]
pushi.e 1
pop.v.i self.hadit
b [131]

:[130]
pushi.e 0
pop.v.i self.hadit

:[131]
push.v self.me
push.v self.mygift
call.i give_gift(argc=2)
pop.v.v self.GIVEGIFT
pushi.e 33
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [133]

:[132]
push.v other.GIVEGIFT
pop.v.v self.image_index

:[133]
popenv [132]
push.v self.GIVEGIFT
pushi.e 3
cmp.i.v EQ
bf [143]

:[134]
push.v self.hadit
pushi.e 0
cmp.i.v EQ
bf [139]

:[135]
push.l 13
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [137]

:[136]
push.v self.fulllike
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text
b [138]

:[137]
push.v self.likegift
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text

:[138]
b [142]

:[139]
push.l 13
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [141]

:[140]
push.v self.fullhadit
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text
b [142]

:[141]
push.v self.likedhadit
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text

:[142]
b [151]

:[143]
push.v self.hadit
pushi.e 0
cmp.i.v EQ
bf [148]

:[144]
push.l 13
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [146]

:[145]
push.v self.fullbad
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text
b [147]

:[146]
push.v self.badgift
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text

:[147]
b [151]

:[148]
push.l 13
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [150]

:[149]
push.v self.fullbadhadit
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text
b [151]

:[150]
push.v self.badhadit
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text

:[151]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[152]
b [159]

:[153]
pushi.e 0
pop.v.i global.giving
pushglb.v global.text
call.i is_array(argc=1)
conv.v.b
bf [157]

:[154]
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [156]

:[155]
push.s ""@150
pop.v.s global.boxname
push.s "Whoops, don't have anything to give..."@2272
pop.v.s global.text

:[156]
b [159]

:[157]
push.s ""@150
pop.v.s global.boxname
push.s "Whoops, don't have anything to give..."@2272
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [159]

:[158]
push.l 1
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pop.v.v global.boxname
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[159]
push.v self.roommode
pushi.e 5
cmp.i.v EQ
bf [193]

:[160]
pushglb.v global.dailycandy
pushi.e 0
cmp.i.v GT
bf [189]

:[161]
push.l 93
conv.l.v
pushi.e 0
conv.i.v
pushi.e 4
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.invent
call.i ds_grid_value_x(argc=6)
pop.v.v self.candyspot
push.s "Feel free to take some!"@2275
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "You must really like candy~"@2276
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "...Are you getting some for someone else, too?"@2277
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Um..."@2278
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "S-Sorry, looks like you can't take any more."@2279
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Uh...Okay, I guess you can do that too?"@2280
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [164]

:[162]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
exit.i

:[163]
b [181]

:[164]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [181]

:[165]
pushglb.v global.choice
push.s "Finish"@2281
cmp.s.v EQ
bf [167]

:[166]
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
exit.i

:[167]
pushglb.v global.choice
push.s "Take some candy"@2282
cmp.s.v EQ
bf [179]

:[168]
push.l 93
conv.l.v
call.i buy(argc=1)
pop.v.v self.buying
push.v self.buying
pushi.e 1
cmp.i.v EQ
bf [177]

:[169]
push.v global.dailycandy
push.e 1
sub.i.v
pop.v.v global.dailycandy
pushglb.v global.dailycandy
pushi.e 3
cmp.i.v LTE
bf [171]

:[170]
pushi.e 3
pop.v.i global.line
b [176]

:[171]
pushglb.v global.dailycandy
pushi.e 6
cmp.i.v LTE
bf [173]

:[172]
pushi.e 2
pop.v.i global.line
b [176]

:[173]
pushglb.v global.dailycandy
pushi.e 9
cmp.i.v LTE
bf [175]

:[174]
pushi.e 1
pop.v.i global.line
b [176]

:[175]
pushi.e 0
pop.v.i global.line

:[176]
b [178]

:[177]
pushi.e 4
pop.v.i global.line

:[178]
call.i madechoice(argc=0)
popz.v

:[179]
pushglb.v global.choice
push.s "Put back some candy"@2283
cmp.s.v EQ
bf [181]

:[180]
pushi.e 5
pop.v.i global.line
push.v global.dailycandy
push.e 1
add.i.v
pop.v.v global.dailycandy
push.l 10
conv.l.v
pushi.e 0
conv.i.v
push.v self.candyspot
pushglb.v global.invent
call.i ds_grid_get(argc=3)
call.i give_gift(argc=2)
pop.v.v local.feelings
call.i madechoice(argc=0)
popz.v

:[181]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [188]

:[182]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [187]

:[183]
push.s "Take some candy"@2282
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
pushglb.v global.dailycandy
pushi.e 12
cmp.i.v LT
bf [185]

:[184]
push.s "Put back some candy"@2283
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Finish"@2281
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
b [186]

:[185]
push.s "Finish"@2281
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices

:[186]
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[187]
popenv [183]

:[188]
b [193]

:[189]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [191]

:[190]
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[191]
push.s "Um...Sorry, we're all out."@2284
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [193]

:[192]
pushi.e 0
pop.v.i global.line
pushi.e 1
conv.i.v
push.s "abusedcandybowl"@499
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[193]
push.v self.roommode
pushi.e 6
cmp.i.v EQ
bf [end]

:[194]
push.l 9
conv.l.v
push.v other.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v GT
bf [206]

:[195]
pushi.e 1
pop.v.i global.hide_inventory
pushbltn.v self.room_width
pop.v.v self.ww
push.v self.ww
pushi.e 2
conv.i.d
div.d.v
pop.v.v self.bubx
pushi.e 64
pop.v.i self.buby
push.v self.me
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
push.s "(Press SPACE to recieve gifts, as long as there's more to recieve. press TAB to end.)"@2285
pop.v.s self.instructions
push.v self.givinggift
push.v self.instructions
add.v.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [197]

:[196]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [205]

:[197]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [205]

:[198]
pushi.e 33
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [200]

:[199]
pushi.e 33
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[200]
pushi.e 3
pushi.e -1
pushi.e 0
pop.v.i [array]self.gulp
pushi.e 4
pushi.e -1
pushi.e 1
pop.v.i [array]self.gulp
pushi.e 5
pushi.e -1
pushi.e 2
pop.v.i [array]self.gulp
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.gsound
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e -1
push.v self.gsound
conv.v.i
push.v [array]self.gulp
call.i audio_play_sound(argc=3)
popz.v
push.l 0
conv.l.v
push.l 92
conv.l.v
call.i give_gift(argc=2)
pop.v.v self.GIVEGIFT
push.l 9
conv.l.v
push.v other.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
sub.i.v
push.l 9
conv.l.v
push.v other.me
pushglb.v global.statgrid
call.i ds_grid_set_post(argc=4)
popz.v
pushi.e 33
conv.i.v
push.v self.buby
push.v self.bubx
call.i instance_create(argc=3)
conv.v.i
pushenv [202]

:[201]
pushi.e 3
pop.v.i self.image_index
pushi.e -1
pop.v.i self.image_xscale

:[202]
popenv [201]
pushi.e 33
conv.i.v
push.v self.buby
pushi.e 42
conv.i.v
call.i sprite_get_height(argc=1)
add.v.v
push.v self.bubx
call.i instance_create(argc=3)
conv.v.i
pushenv [204]

:[203]
pushi.e 5
pop.v.i self.image_index

:[204]
popenv [203]
call.i madechoice(argc=0)
popz.v

:[205]
b [end]

:[206]
push.s "Sorry, that's all I got for now."@2289
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
bf [end]

:[207]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[end]