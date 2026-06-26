.localvar 0 arguments
.localvar 1 i 363
.localvar 2 v 366
.localvar 3 o 370
.localvar 4 a 388
.localvar 5 gain 389

:[0]
push.v self.scene
push.s "testscene"@347
cmp.s.v EQ
bf [18]

:[1]
push.s "Test scene!"@726
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Question?"@727
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Answer!"@728
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Whatever"@729
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [13]

:[2]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [6]

:[3]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [5]

:[4]
push.s "Yes?"@731
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "No?"@732
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[5]
popenv [4]

:[6]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [13]

:[7]
pushglb.v global.choice
dup.v 0
push.s "Yes"@668
cmp.s.v EQ
bt [10]

:[8]
dup.v 0
push.s "No"@667
cmp.s.v EQ
bt [11]

:[9]
b [12]

:[10]
push.s "You said yes!"@733
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [12]

:[11]
push.s "You said no!"@734
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [12]

:[12]
popz.v

:[13]
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [15]

:[14]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[18]
push.v self.scene
push.s "lunchtut"@345
cmp.s.v EQ
bf [41]

:[19]
pushi.e 0
pop.v.i global.cutmusic
pushi.e 3
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [21]

:[20]
pushi.e 3
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[21]
push.s "Oh? Is this your first time in my kitchen dearie? Need me to explain how it works?"@735
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "See that conveyor belt before you, dear? The food’s going to come sliding along that when we get started. Wait until it’s right in front of you to grab it though! The little screen there will change to tell you it’s time."@736
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "When you want to pick something up press the SHIFT key! That will bring the dish to you. However, if you’re sitting with a guest you can press the SPACE key to bring the food to them. Got that? SHIFT for you, SPACE for them! Whenever you pick up a dish it will automatically charge your card, so don’t worry about that~ But watch your spending now!"@737
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Right now our menu is very boring. The last guy sold off our equipment...Rest his soul. You can buy us some more menu items under your “manage office resources” menu back at your desk. I’m sure the girls will appreciate it~ There’s lots of things I can cook up for you! Take a gander when you have the time."@738
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Got all that dearie? Always remember if you need me just press TAB or BACKSPACE for the menu. I can always go over the rules again~"@739
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [34]

:[22]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [26]

:[23]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [25]

:[24]
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

:[25]
popenv [24]

:[26]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [33]

:[27]
pushglb.v global.choice
dup.v 0
push.s "Yes"@668
cmp.s.v EQ
bt [30]

:[28]
dup.v 0
push.s "No"@667
cmp.s.v EQ
bt [31]

:[29]
b [32]

:[30]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [32]

:[31]
push.s "Oh aren’t you a clever little duckling~ Always remember if you need me just press TAB or BACKSPACE for the menu. "@740
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushi.e 4
pop.v.i global.line
call.i madechoice(argc=0)
popz.v
b [32]

:[32]
popz.v

:[33]
b [36]

:[34]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [36]

:[35]
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[36]
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [38]

:[37]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [39]

:[38]
push.e 0

:[39]
bf [41]

:[40]
push.s "destroying scene"@741
conv.s.v
call.i show_debug_message(argc=1)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[41]
push.v self.scene
push.s "lunchend"@742
cmp.s.v EQ
bf [106]

:[42]
pushi.e 0
pop.v.i global.cutmusic
pushi.e 0
pop.v.i local.i
push.v 31.nomoney
pushi.e 1
cmp.i.v EQ
bf [44]

:[43]
push.s "Whoops...Looks like I'm out of money."@744
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[44]
pushglb.v global.guest
push.l 0
cmp.l.v NEQ
bf [46]

:[45]
push.l 1
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.namearray
call.i do_namebox(argc=0)
popz.v

:[46]
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pop.v.v self.playername
pushglb.v global.guest
dup.v 0
push.l 0
cmp.l.v EQ
bt [56]

:[47]
dup.v 0
push.l 2
cmp.l.v EQ
bt [60]

:[48]
dup.v 0
push.l 3
cmp.l.v EQ
bt [64]

:[49]
dup.v 0
push.l 6
cmp.l.v EQ
bt [68]

:[50]
dup.v 0
push.l 4
cmp.l.v EQ
bt [72]

:[51]
dup.v 0
push.l 7
cmp.l.v EQ
bt [76]

:[52]
dup.v 0
push.l 5
cmp.l.v EQ
bt [80]

:[53]
dup.v 0
push.l 8
cmp.l.v EQ
bt [84]

:[54]
dup.v 0
push.l 9
cmp.l.v EQ
bt [88]

:[55]
b [92]

:[56]
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [58]

:[57]
push.s "Oof...looks like lunchtime's over. I'm stuffed!!!"@747
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
b [59]

:[58]
push.s "Oof...looks like lunchtime's over."@748
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text

:[59]
b [92]

:[60]
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.s "Ungh, no more. I think I may have overeaten today..."@749
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
b [63]

:[62]
push.s "I think I'm done for today."@750
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text

:[63]
b [92]

:[64]
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.s "*urp* I-I think I'm done for today. I'm *stuffed*!!! Thank you so much for lunch "@751
push.v self.playername
call.i string(argc=1)
add.v.s
push.s "~!"@752
add.s.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]global.text
b [67]

:[66]
push.s "I think I'm done for today. Thank you so much for lunch "@753
push.v self.playername
call.i string(argc=1)
add.v.s
push.s "~!"@752
add.s.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]global.text

:[67]
b [92]

:[68]
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.s "*hic!* I'm stuffed~!!! You really know how to treat a girl~ ;3c"@754
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
b [71]

:[70]
push.s "Ungh. I think I gotta stop for today. Thanks for lunch "@755
push.v self.playername
call.i string(argc=1)
add.v.s
push.s "~ ;3c"@756
add.s.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]global.text

:[71]
b [92]

:[72]
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "Ah...I'm so f-full *urp*..."@757
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
b [75]

:[74]
push.s "...t-thanks."@758
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text

:[75]
b [92]

:[76]
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.s "*BUARP!!!* Woo-ee~!!! You really know how to treat a monster don'cha? I'm STUFFED~!!! Now I gotta waddle back to work..."@759
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
b [79]

:[78]
push.s "Alright I gotta call it quits. Thanks for spotting me, pal~ I owe ya."@760
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text

:[79]
b [92]

:[80]
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "*BUARP!!!* Thanks for lunch, dude~ Now roll me back to my desk won'cha?"@761
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
b [83]

:[82]
push.s "Alright I think I gotta duck. Thanks for lunch~ Don't expect any special favors for this though."@762
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text

:[83]
b [92]

:[84]
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
push.s "Oh my~!!! I haven't been this stuffed in AGES~! I'm about likely to just pop!!! If my pants don't go first..."@763
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
b [87]

:[86]
push.s "Alright I think that's enough for me today. Oh "@764
push.v self.playername
call.i string(argc=1)
add.v.s
push.s "~ You're such a doll for treating me like this~<3"@765
add.s.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]global.text

:[87]
b [92]

:[88]
push.l 13
conv.l.v
pushglb.v global.guest
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [90]

:[89]
push.s "Oh my~! I'm so zzztuffed I'm likely to just pop!!! If my skirt don't go first..."@766
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
b [91]

:[90]
push.s "Alright I think that'zzz enough for me today. Oh, "@767
push.v self.playername
call.i string(argc=1)
add.v.s
push.s "~ You're such a doll for treating me like thizzz~<3"@768
add.s.v
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.v [array]global.text

:[91]
b [92]

:[92]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [94]

:[93]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [95]

:[94]
push.e 0

:[95]
bf [106]

:[96]
pushi.e 0
pop.v.i local.v

:[97]
pushloc.v local.v
push.v 31.menulist
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [99]

:[98]
push.l 1
conv.l.v
pushloc.v local.v
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
call.i show_debug_message(argc=1)
popz.v
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [97]

:[99]
push.l 0
pop.v.l local.i

:[100]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [105]

:[101]
pushloc.v local.i
pushglb.v global.guest
cmp.v.v NEQ
bf [104]

:[102]
push.l 10
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.v 31.menulist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bf [104]

:[103]
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
pushi.e 2
conv.i.d
div.d.v
add.v.v
push.l 11
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushloc.v local.i
call.i check_level(argc=1)
popz.v

:[104]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [100]

:[105]
push.v 31.menulist
call.i ds_list_destroy(argc=1)
popz.v
pushi.e 1
pop.v.i global.lunch
pushi.e 3
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[106]
push.v self.scene
push.s "pizzatime"@360
cmp.s.v EQ
bf [169]

:[107]
pushi.e 0
pop.v.i global.cutmusic
pushi.e 1
pop.v.i global.bossnotif
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [158]

:[108]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
cmp.v.v GTE
bf [141]

:[109]
pushi.e 0
pop.v.i global.hidestats
pushi.e 0
pop.v.i global.hide_inventory
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [111]

:[110]
pushi.e 6
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[111]
pushi.e 1
pop.v.i global.goldonly
pushi.e 9
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [113]

:[112]
pushi.e 9
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[113]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [115]

:[114]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[115]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Oh wait!!! Today's our pizza party. I need to call in for pizza as well. *click* "@773
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Joe's Prehistoric Pizza Parlor"@774
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hey, dude~! Welcome to Joe's Prehistoric Pizza Parlor~!!! A large pizza's "@775
pushglb.v global.donutcost
call.i string(argc=1)
add.v.s
push.s "ea. How many can I get ya?"@776
add.s.v
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
cmp.i.v GTE
bf [140]

:[116]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [119]

:[117]
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i global.text
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
exit.i

:[118]
b [130]

:[119]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [121]

:[120]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [122]

:[121]
push.e 0

:[122]
bf [130]

:[123]
pushglb.v global.choice
push.s "Finished"@777
cmp.s.v EQ
bf [126]

:[124]
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i global.text
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
exit.i

:[125]
b [130]

:[126]
push.v csel
pop.v.v self.savespot
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.needarray
pop.v.v self.myselection
push.v self.myselection
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pop.v.v self.findspot
push.v self.findspot
pushi.e -1
cmp.i.v EQ
bf [128]

:[127]
push.v self.myselection
pushglb.v global.pizzalist
call.i ds_list_add(argc=2)
popz.v
push.s "Joe's Prehistoric Pizza Parlor"@774
pushi.e -1
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]self.namearray
push.s "Aight, so one large "@780
push.l 1
conv.l.v
push.v self.myselection
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "? Anything else?"@781
add.s.v
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.v [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [129]

:[128]
push.v self.findspot
pushglb.v global.pizzalist
call.i ds_list_delete(argc=2)
popz.v
push.s "Joe's Prehistoric Pizza Parlor"@774
pushi.e -1
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]self.namearray
push.s "Op! Ha ha, whoops. I'll take that off your order then."@783
pushi.e -5
pushglb.v global.line
pushi.e 1
add.i.v
conv.v.i
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
add.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[129]
call.i madechoice(argc=0)
popz.v

:[130]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [140]

:[131]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.needarray
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [139]

:[132]
push.v 7.savespot
pop.v.v self.csel
pushi.e 0
pop.v.i local.o
push.l 67
pop.v.l local.i

:[133]
pushloc.v local.i
push.l 74
cmp.l.v LT
bf [138]

:[134]
pushloc.v local.i
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pop.v.v self.findme
push.v self.findme
pushi.e -1
cmp.i.v EQ
bf [136]

:[135]
push.s "Order "@786
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
add.v.s
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices
b [137]

:[136]
push.s "Remove "@787
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
add.v.s
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices

:[137]
pushloc.v local.i
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.needarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [133]

:[138]
push.s "Finished"@777
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength
push.v id
pop.v.v self.mybox

:[139]
popenv [132]

:[140]
b [158]

:[141]
pushglb.v global.text
call.i is_array(argc=1)
conv.v.b
not.b
bf [145]

:[142]
push.s "Oh no!!! I was supposed to call in pizza today! But, there's not enough money. The boss isn't going to like this..."@789
pop.v.s global.text
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [144]

:[143]
push.s "airboss2"@363
pop.v.s global.bossscene
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[144]
b [158]

:[145]
push.s "Joe's Prehistoric Pizza Parlor"@774
pop.v.s global.boxname
push.s "Oh man, looks like you can't afford any more. Finalize your order or, should I take the last selection off?"@790
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [149]

:[146]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [148]

:[147]
push.s "Yes, finish my order"@791
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Nevermind, go back"@792
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[148]
popenv [147]
b [151]

:[149]
pushi.e 0
pushi.e 0
push.v [array]self.choices
push.s "Yes, finish my order"@791
cmp.s.v NEQ
bf [151]

:[150]
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[151]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [153]

:[152]
push.v self.pizalist
call.i ds_list_size(argc=1)
pop.v.v self.listlen
push.v self.listlen
pushi.e 1
sub.i.v
push.v self.pizalist
call.i ds_list_delete(argc=2)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
add.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v
b [158]

:[153]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [158]

:[154]
pushglb.v global.choice
push.s "Nevermind, go back"@792
cmp.s.v EQ
bf [156]

:[155]
push.v self.pizalist
call.i ds_list_size(argc=1)
pop.v.v self.listlen
push.v self.listlen
pushi.e 1
sub.i.v
push.v self.pizalist
call.i ds_list_delete(argc=2)
popz.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.donutcost
add.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v

:[156]
pushglb.v global.choice
push.s "Yes, finish my order"@791
cmp.s.v EQ
bf [158]

:[157]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[158]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [169]

:[159]
push.s "Joe's Prehistoric Pizza Parlor"@774
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Alright bro you just hang tight and we'll get that baked up and out to ya'll in a jiffy~!"@795
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "*click*"@796
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Okay, now it's time for work."@797
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
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
bf [161]

:[160]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [162]

:[161]
push.e 0

:[162]
bf [169]

:[163]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
pushi.e 1
cmp.i.v EQ
bf [165]

:[164]
push.s "airboss2"@363
pop.v.s global.bossscene
b [168]

:[165]
pushglb.v global.pizzalist
call.i ds_list_size(argc=1)
pushi.e 3
cmp.i.v LTE
bf [167]

:[166]
push.s "airboss3"@364
pop.v.s global.bossscene
b [168]

:[167]
push.s "airboss4"@365
pop.v.s global.bossscene

:[168]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[169]
push.v self.scene
push.s "icecreamman"@368
cmp.s.v EQ
bf [213]

:[170]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [181]

:[171]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
push.s "As you're strolling up to the building you see the familiar shape and jingle of an ice cream truck. He only shows up once a week, an eager line is already forming at his window. Want any?"@799
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [175]

:[172]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [174]

:[173]
push.s "Sure"@800
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Not today"@801
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[174]
popenv [173]

:[175]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [177]

:[176]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [181]

:[177]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [181]

:[178]
pushglb.v global.choice
push.s "Not today"@801
cmp.s.v EQ
bf [180]

:[179]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [181]

:[180]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v

:[181]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [210]

:[182]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.icecreamcost
cmp.v.v GTE
bf [208]

:[183]
pushi.e 6
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [185]

:[184]
pushi.e 6
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[185]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [187]

:[186]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[187]
push.s "Ice-cream man"@802
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "What can I get for ya? Make it snappy there's a line, pal."@803
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Ice-cream man"@802
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "What else?"@804
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Ice-cream man"@802
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Are ya kiddin' me? You can't hold any more!!!"@805
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [190]

:[188]
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i global.text
pushi.e 2
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
exit.i

:[189]
b [207]

:[190]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [192]

:[191]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
b [193]

:[192]
push.e 0

:[193]
bf [200]

:[194]
pushglb.v global.choice
push.s "Finished"@777
cmp.s.v EQ
bf [197]

:[195]
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i global.text
pushi.e 2
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
exit.i

:[196]
b [200]

:[197]
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.needarray
pop.v.v self.purchase
push.v self.purchase
call.i buy(argc=1)
pop.v.v self.buying
push.v self.buying
pushi.e 1
cmp.i.v EQ
bf [199]

:[198]
push.v csel
pop.v.v self.savespot
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.icecreamcost
sub.v.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
pop.v.i global.line
call.i madechoice(argc=0)
popz.v
b [200]

:[199]
pushi.e 2
pop.v.i global.line

:[200]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [207]

:[201]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.needarray
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [206]

:[202]
push.v 7.savespot
pop.v.v self.csel
push.l 85
pop.v.l local.o
pushi.e 0
pop.v.i local.i

:[203]
pushloc.v local.o
push.l 91
cmp.l.v LT
bf [205]

:[204]
push.l 1
conv.l.v
pushloc.v local.o
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.o
pushi.e -2
pushloc.v local.i
conv.v.i
pop.v.v [array]self.needarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [203]

:[205]
push.s "Finished"@777
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength
push.v id
pop.v.v self.mybox

:[206]
popenv [202]

:[207]
b [210]

:[208]
push.s "Ice-cream man"@802
pop.v.s global.boxname
push.s "Sorry. Looks like you got no dough! Now scram."@808
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [210]

:[209]
call.i madechoice(argc=0)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[210]
push.v self.vmode
pushi.e 2
cmp.i.v EQ
bf [213]

:[211]
push.s "Ice-cream man"@802
pop.v.s global.boxname
push.s "Thanks for yer business , pal~ Now scram."@809
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [213]

:[212]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[213]
push.v self.scene
push.s "downsizing"@810
cmp.s.v EQ
bf [234]

:[214]
push.v self.makearray
pushi.e 0
cmp.i.v EQ
bf [216]

:[215]
push.s "This wasn't exactly in the job description. But I suppose if it's necessary..."@811
pushi.e -1
push.l 2
conv.l.i
pop.v.s [array]self.utextarray
push.s "A-Ah I'm sorry! I've got to! But I promise it won't be so bad!"@813
pushi.e -1
push.l 3
conv.l.i
pop.v.s [array]self.utextarray
push.s "So sorry to have to do this to ya. But if it's any consolation you do look mighty tasty~ *slurp*"@814
pushi.e -1
push.l 7
conv.l.i
pop.v.s [array]self.utextarray
push.s "Sorry this had to fall on you! I paw-mise I'm not thoroughly enjoying this, tee-hee~ Now no squirming!"@815
pushi.e -1
push.l 6
conv.l.i
pop.v.s [array]self.utextarray
push.s "Sucks to be you! But hey, now you get the chance to be a part of something greater! Me."@816
pushi.e -1
push.l 5
conv.l.i
pop.v.s [array]self.utextarray
push.s "...A-Ah, You look...delicious~"@817
pushi.e -1
push.l 4
conv.l.i
pop.v.s [array]self.utextarray
push.s "Such a shame. I was starting to like you!"@818
pushi.e -1
push.l 9
conv.l.i
pop.v.s [array]self.utextarray
push.s "Oh come now dear~ It's not so bad. Think of this as an opportunity! You're moving up in the world!!! Becoming a part of something...bigger~ *slurp*"@819
pushi.e -1
push.l 8
conv.l.i
pop.v.s [array]self.utextarray
push.s "You apologize about having to do this. It's nothing personal, just buisness~ But you can't deny the hungry growl from your stomach."@820
pushi.e -1
push.l 0
conv.l.i
pop.v.s [array]self.utextarray
push.s "*sigh* After I worked so hard for my diet...You'd better appreciate this."@821
pushi.e -1
push.l 2
conv.l.i
pop.v.s [array]self.dtextarray
push.s "W-Well if it has to be done. Just let me know if I was delicious!"@823
pushi.e -1
push.l 3
conv.l.i
pop.v.s [array]self.dtextarray
push.s "I gotta say this wasn't on the job description when I came in..."@824
pushi.e -1
push.l 7
conv.l.i
pop.v.s [array]self.dtextarray
push.s "Yeah, well. I hope you get a hairball over me."@825
pushi.e -1
push.l 6
conv.l.i
pop.v.s [array]self.dtextarray
push.s "You know this means I'm gonna haunt the shit out of your guts now."@826
pushi.e -1
push.l 5
conv.l.i
pop.v.s [array]self.dtextarray
push.s "...O-Oh my ///"@827
pushi.e -1
push.l 4
conv.l.i
pop.v.s [array]self.dtextarray
push.s "At least you have tazzzte."@828
pushi.e -1
push.l 9
conv.l.i
pop.v.s [array]self.dtextarray
push.s "You know, now that I'm on the other side of this situation: I think I understand why everyone was so freaked out every time..."@829
pushi.e -1
push.l 8
conv.l.i
pop.v.s [array]self.dtextarray
push.s "*urp* Ungh, this is SO not on my diet..."@830
pushi.e -1
push.l 2
conv.l.i
pop.v.s [array]self.fintextarray
push.s "*BUARP!!!* O-Oh my! Excuse me..."@832
pushi.e -1
push.l 3
conv.l.i
pop.v.s [array]self.fintextarray
push.s "*BUUORP~!!!* Woof~!!! can't say ya didn't hit the spot~"@833
pushi.e -1
push.l 7
conv.l.i
pop.v.s [array]self.fintextarray
push.s "*BUARP!!!* Delicious~ >:3c"@834
pushi.e -1
push.l 6
conv.l.i
pop.v.s [array]self.fintextarray
push.s "*BUUORP* Couldn't they have given you some salt or sauce or somethin'???"@835
pushi.e -1
push.l 5
conv.l.i
pop.v.s [array]self.fintextarray
push.s "s-so good~"@836
pushi.e -1
push.l 4
conv.l.i
pop.v.s [array]self.fintextarray
push.s "*urp* Pardon me~"@837
pushi.e -1
push.l 9
conv.l.i
pop.v.s [array]self.fintextarray
push.s "My dear you should really know you're simply delectable~!!! *urp*"@838
pushi.e -1
push.l 8
conv.l.i
pop.v.s [array]self.fintextarray
push.s "You stifle a rumbling belch that rolls up from your stuffed gut. Your 'meal' still rolls about and sits awkwardly off your figure, making the waddle back to your desk difficult."@839
pushi.e -1
push.l 0
conv.l.i
pop.v.s [array]self.fintextarray
push.s "With that, she slumps back into her desk chair. Getting comfortable and lazily patting her rolling gut..."@840
pushi.e -1
pushi.e 0
pop.v.s [array]self.finalline
push.s "The monstress can't help but hungrily smack her lips. Savoring the taste of her prey as they begin to gurgle away in her stomach below."@842
pushi.e -1
pushi.e 1
pop.v.s [array]self.finalline
push.s "The monstress tries to take a few awkward steps back to her desk. Her rolling, kicking gut swaying her off-balance along the way..."@843
pushi.e -1
pushi.e 2
pop.v.s [array]self.finalline
push.s "You eagerly flop back into your desk chair. Reclining back and lazily patting and rubbing over your stuffed belly."@844
pushi.e -1
pushi.e 0
pop.v.s [array]self.finallinep
push.s "You can't help but smack your lips, savoring the taste of your 'meal' as it begins to gurgle away below you..."@846
pushi.e -1
pushi.e 1
pop.v.s [array]self.finallinep
push.s "Every shift and kick threatens to sway you off balance. You decide to heft your bloated gut with both hands. Just have to make it back to your chair..."@847
pushi.e -1
pushi.e 2
pop.v.s [array]self.finallinep
pushi.e 2
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.rand
pushi.e 1
pop.v.i self.makearray

:[216]
push.l 1
conv.l.v
push.v 14.upsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 0
pop.v.v [array]self.namearray
pushi.e -1
push.v 14.upsze
conv.v.i
push.v [array]self.utextarray
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.l 1
conv.l.v
push.v 14.downsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.namearray
pushi.e -1
push.v 14.downsze
conv.v.i
push.v [array]self.dtextarray
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "*GULP*~!"@851
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.l 1
conv.l.v
push.v 14.upsze
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 3
pop.v.v [array]self.namearray
pushi.e -1
push.v 14.upsze
conv.v.i
push.v [array]self.fintextarray
pushi.e -5
pushi.e 3
pop.v.v [array]global.text
push.v 14.upsze
push.l 0
cmp.l.v EQ
bf [218]

:[217]
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
pushi.e -1
push.v self.rand
conv.v.i
push.v [array]self.finallinep
pushi.e -5
pushi.e 4
pop.v.v [array]global.text
b [219]

:[218]
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
pushi.e -1
push.v self.rand
conv.v.i
push.v [array]self.finalline
pushi.e -5
pushi.e 4
pop.v.v [array]global.text

:[219]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [221]

:[220]
push.v 14.downsze
push.v 14.upsze
call.i call_actors(argc=2)
popz.v

:[221]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [225]

:[222]
push.v self.gameover
pushi.e 0
cmp.i.v EQ
bf [224]

:[223]
pushi.e 0
conv.i.v
pushi.e 3
conv.i.v
pushi.e 3
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.i self.gameover

:[224]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[225]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [229]

:[226]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [229]

:[227]
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [229]

:[228]
push.v 14.downsze
push.v 14.upsze
call.i vore(argc=2)
popz.v
push.v 14.upsze
call.i check_level(argc=1)
popz.v
pushi.e 0
conv.i.v
push.v 14.upsze
call.i call_actors(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[229]
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [231]

:[230]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [232]

:[231]
push.e 0

:[232]
bf [234]

:[233]
pushi.e 1
conv.i.v
push.v 14.downsizetag
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[234]
push.v self.scene
push.s "dayend"@855
cmp.s.v EQ
bf [264]

:[235]
pushi.e 0
pop.v.i global.cutmusic
push.l 7
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [254]

:[236]
push.v self.confirm
pushi.e 0
cmp.i.v EQ
bf [253]

:[237]
pushi.e 5
pop.v.i self.points
pushi.e 0
pop.v.i self.visitarr
push.s "Still here? We brought in pizza but couldn't finish the whole box. Want these last slices?"@858
pushi.e -1
pushi.e 9
pop.v.s [array]self.diaarray
push.s "Hope I'm not interrupting? I got an extra snack from the vending machine but I don't know if I'll finish it today. Do you want it?"@860
pushi.e -1
pushi.e 8
pop.v.s [array]self.diaarray
push.s "Almost done for the day? I didn't finish off this chip bag and they're about to go stale. Why don't you have a few?"@861
pushi.e -1
pushi.e 7
pop.v.s [array]self.diaarray
push.s "Hope your still hungry~ I got bagels that didn't get eaten. Help me polish them off."@862
pushi.e -1
pushi.e 6
pop.v.s [array]self.diaarray
push.s "Woof. The monster scouts came by and I always buy too many cookie boxes. Take some of these from me, please."@863
pushi.e -1
pushi.e 5
pop.v.s [array]self.diaarray
push.s "You still here? Didn't expect anyone to be up this late. I got some leftover candy. Want some?"@864
pushi.e -1
pushi.e 4
pop.v.s [array]self.diaarray
push.s "Knock Knock! Hey I'm trying to get the rest of these sweets eaten. Want any?"@865
pushi.e -1
pushi.e 3
pop.v.s [array]self.diaarray
push.s "Burning the midnight oil? Don't overwork youself! I got you a snack cuz it looked like you could use it~"@866
pushi.e -1
pushi.e 2
pop.v.s [array]self.diaarray
push.s "Hi there~ You're always working so hard in here. I got some of those snacks you like as a little reward~"@867
pushi.e -1
pushi.e 1
pop.v.s [array]self.diaarray
push.s "Oh I'm so glad you're still here! We gotta get rid of these muffins. Take some!"@868
pushi.e -1
pushi.e 0
pop.v.s [array]self.diaarray
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You sit down and focus in on running the reports for the day..."@869
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
pop.v.i local.a
pushi.e 0
pop.v.i local.gain
push.l 2
pop.v.l local.i

:[238]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [246]

:[239]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [245]

:[240]
pushi.e 8
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.rand
pushloc.v local.i
call.i trustlvl(argc=1)
push.v self.rand
cmp.v.v GT
bf [245]

:[241]
pushi.e 1
pop.v.i self.visitarr
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.namearray
pushloc.v local.i
push.l 4
cmp.l.v EQ
bf [243]

:[242]
push.s "...I brought you some extra snacks. Please take them."@871
pushi.e -5
pushloc.v local.a
conv.v.i
pop.v.s [array]global.text
b [244]

:[243]
pushi.e -1
push.v self.diaarray
call.i array_length_1d(argc=1)
pushi.e 1
sub.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
conv.v.i
push.v [array]self.diaarray
pushi.e -5
pushloc.v local.a
conv.v.i
pop.v.v [array]global.text

:[244]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.v local.gain
push.v self.points
add.v.v
pop.v.v local.gain

:[245]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [238]

:[246]
push.s ""@150
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.namearray
push.v self.visitarr
pushi.e 1
cmp.i.v EQ
bf [251]

:[247]
push.s "somebody came"@872
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.l 11
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushloc.v local.gain
add.v.v
push.l 11
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 0
conv.l.v
call.i check_level(argc=1)
popz.v
push.l 13
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [249]

:[248]
push.s "You can't turn down your co-workers' generous gifts while you grind away at the daily workload. But a day of absent-minded snacking doesn't come without consequence. As you stand and try to waddle for the door you realize just how much you've overeaten today. Your waistline creaks and your gut groans from such constricting office attire. You can't wait to get home and relax..."@873
pushi.e -5
pushloc.v local.a
conv.v.i
pop.v.s [array]global.text
b [250]

:[249]
push.s "You can't turn down your co-workers' generous gifts while you grind away at the daily workload. You made fast progress between absent-minded snacking, but despite the gifted food you don't feel as full as you'd like by the end of the day. Time to head home!"@874
pushi.e -5
pushloc.v local.a
conv.v.i
pop.v.s [array]global.text

:[250]
b [252]

:[251]
push.s "nobody came"@875
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.s "After a short while you finish your daily obligations with little interruption. Time to head home!"@876
pushi.e -5
pushloc.v local.a
conv.v.i
pop.v.s [array]global.text

:[252]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushi.e 1
pop.v.i self.confirm

:[253]
b [255]

:[254]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You sit down and focus in on running the reports for the day..."@869
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "After a short while you finish your daily obligations with little interruption. Time to head home!"@876
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen

:[255]
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [257]

:[256]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [258]

:[257]
push.e 0

:[258]
bf [264]

:[259]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 15
cmp.i.v EQ
bf [261]

:[260]
push.s "endgame"@348
pop.v.s global.bossscene
pushi.e 18
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [264]

:[261]
pushglb.v global.bossnotif
pushi.e 1
cmp.i.v EQ
bf [263]

:[262]
push.s "failedboss"@351
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
add.i.v
push.s "failedboss"@351
conv.s.v
pushglb.v global.events
call.i ds_map_set_post(argc=3)
popz.v

:[263]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[264]
push.v self.scene
push.s "seenmyself"@445
cmp.s.v EQ
bf [301]

:[265]
pushi.e 0
pop.v.i global.cutmusic
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [276]

:[266]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [277]

:[267]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [278]

:[268]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [279]

:[269]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [280]

:[270]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [284]

:[271]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [288]

:[272]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [292]

:[273]
b [275]

:[274]
b [296]

:[275]
push.s "it works"@878
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
b [296]

:[276]
push.s "You roll out of bed to the familiar tune of the alarm blaring, and fumble for your phone in the sheets. As you freshen up you can't help but notice a bit of a paunch forming off your middle, smoothing your figure out. That’s to be expected for a new, more sedentary job you suppose..."@879
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
b [296]

:[277]
push.s "You roll out of bed to the familiar tune of the alarm blaring. You immediately notice the portly belly jutting off your figure and wobbling in your lap. You really have been snacking more than ever before, you realize. Hopefully you have something that still fits. Maybe it’s time for a new diet? And a new wardrobe..."@880
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
b [296]

:[278]
push.s "You lug yourself up as soon as the alarm kicks in and realize you have a bit more heft than usual. You’re very sure you weren't this big yesterday...No doubt about it, you’ve grazed and gobbled yourself fat! You try to suck it in and squeeze the buttons closed around your bloated middle. They barely hold. Better really start watching what you eat else you may risk some serious dress code violations..."@881
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
b [296]

:[279]
push.s "The alarm goes off and you grunt with effort to roll over and switch it off. Your hefty body gives you a hard time just sitting up on the side of the bed. You sigh and realize you’ve gotten bigger again. You’re fast becoming the department store’s favorite customer. Your gait has become a jiggly waddle and you have to reach over a good foot or so of belly to reach counters or desks. The good news is though it’s become a very convenient shelf for snacks and plates."@882
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v
b [296]

:[280]
push.s "The alarm goes off and you blink awake. You’re immediately taken aback by the jiggling mound of belly looming over you. Looks like you got fatter again… What the heck is it about this job??? You struggle to your feet and waddle with heavy, whomping steps to a mirror. You can barely recognize the blubbery blob you see before you. Your arms can’t even lay straight down anymore, propped up by wobbling love handles. "@883
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "With great effort, you tug your straining office wear into place around your spherical middle. Once finished it hung and jiggled carelessly over your waistband, already groaning and growling with hunger. Your newfound appetite seems to have gotten quite used to all the snacking already, and gave little regard to your overspent clothing budget..."@884
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [282]

:[281]
pushi.e 1
pop.v.i global.hidebody
b [283]

:[282]
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v

:[283]
b [296]

:[284]
push.s "You awake with a snort to the blare of the alarm. The first thought that crosses your mind is of the warm, hearty breakfast awaiting you! (And maybe a few donut snacks before lunch) But as you try to lurch yourself to your feet, you realize just what happens with such food-focused thinking..."@885
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "An expanse of pillowy fat stretches around you in all directions. You strain to see your long-lost toes over the horizon, but the effort is futile. Just how much bigger are you going to get??? Luckily, a series of ‘as-seen-on-tv’ products you had the foresight to order helps you accomplish the simple task of getting dressed and ready for the day. Your massive girth would have made it impossible otherwise."@886
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "You’ve long since moved past worrying about outgrowing shirts and belts. Now you’re starting to worry about door frames and car mileage..."@887
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [286]

:[285]
pushi.e 1
pop.v.i global.hidebody
b [287]

:[286]
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v

:[287]
b [296]

:[288]
push.s "You, quite literally, roll out of bed to the familiar tune of the alarm blaring and whomp your way over to the bathroom mirror (after a few door frame complications). Your groggy mind barely recognizes the blob you see before you as a person, much less yourself! You would have never imagined you’d wake up so gigantically fat one day...and in such a short timespan. Yet you can barely remember how small you used to be. The comparison is staggering."@888
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Just waddling around getting ready for the day is an exhausting effort. As you peer over the wobbling expanse of your belly, you worry if you still fit a lane of traffic... much less your front door. Yet your ravenous appetite demands you shovel a feast of breakfast down your gullet before you can even think about work."@889
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "But as you plow through delicious plate after plate, you consider how much you’ve grown comfortable in your new ever-growing figure. Everything’s so warm and soft now, and food brings you new levels of pleasure you’ve never experienced before. You don’t think you’ll be slowing anytime soon..."@890
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [290]

:[289]
pushi.e 1
pop.v.i global.hidebody
b [291]

:[290]
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v

:[291]
b [296]

:[292]
push.s "You wake up to the blaring alarm with heavy blinking eyes. Your one-track mind is already demanding you lug yourself to the kitchen for a daily breakfast gorge but you find the inertia of just reaching over and hitting the clock is a herculean effort all on its own. You somehow struggle your way to standing and heft yourself out of the room. You’re pretty sure there’s no way you should be walking but you don’t worry about that too much."@891
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "The gargantuan figure you’ve become is staggering to behold. You struggle to fit the very halls and rooms of your living space. But you just don’t care about your size anymore. Every waking moment you have is spent gorging on whatever fatty foods you can get your tubby fingers around, never satisfied or full. You’re used to people gawking and dodging out of the way of your swaying gait as you trundle down the street."@892
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Just the thought of what decadent eating awaits you at another day in the office gets you drooling. You lick your watering lips and march (or more like waddle) your way up to the office for another full day of feasting~"@893
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [294]

:[293]
pushi.e 1
pop.v.i global.hidebody
b [295]

:[294]
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 0
conv.l.v
call.i call_actors(argc=2)
popz.v

:[295]
b [296]

:[296]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [298]

:[297]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [299]

:[298]
push.e 0

:[299]
bf [301]

:[300]
pushi.e 3
pop.v.i 17.roommode
call.i instance_destroy(argc=0)
popz.v

:[301]
push.v self.scene
push.s "firstday"@306
cmp.s.v EQ
bf [307]

:[302]
pushi.e 0
pop.v.i global.cutmusic
pushi.e 1
pop.v.i global.hide_inventory
push.s ""@150
pop.v.s global.boxname
push.s "You find your way to your new office desk easily enough. Everything's already set up and ready for you."@894
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "It's your first day and you can't deny you're a little nervous. But you repeat to yourself that its just like any old job, and you'll do just fine! Even if you are surrounded by hungry, judgmental monsters..."@895
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "A sudden *bing* interrupts your thoughts. A notice has popped up on your monitor..."@896
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [304]

:[303]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [305]

:[304]
push.e 0

:[305]
bf [307]

:[306]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[307]
push.v self.scene
push.s "airscene"@361
cmp.s.v EQ
bf [327]

:[308]
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
push.s "As you walk into the office you immediately notice a problem: The air is off. Why is the air off??? Pearl is panting at the front desk. She splashes a water bottle over her face before you walk up."@897
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Morning "@898
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "! Ah, the air is down today. I'm sure you could tell...it's kind of stuffy."@899
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s "Some of the employees have taken to using personal desk fans and spare ones are littered about the halls. But, the effort is futile. Without proper airflow the environment is stifling, it’s like your working in a fog. For a brief moment you wonder what kind of horrible ventilation the building must have. Is this even safe to be in here right now? Legal? Can you go home?"@900
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "You don’t get to think long on this though. An urgent notice pops up on your monitor..."@901
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [318]

:[309]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [313]

:[310]
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [312]

:[311]
push.l 3
pop.v.l self.me

:[312]
popenv [311]

:[313]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [317]

:[314]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [316]

:[315]
push.s "Pearl"@620
pop.v.s global.boxname

:[316]
popenv [315]

:[317]
b [322]

:[318]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [320]

:[319]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[320]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [322]

:[321]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[322]
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [324]

:[323]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [325]

:[324]
push.e 0

:[325]
bf [327]

:[326]
pushi.e 1
pop.v.i self.turnoffbg
pushi.e 1
pop.v.i self.bg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[327]
push.v self.scene
push.s "cakescene"@366
cmp.s.v EQ
bf [360]

:[328]
pushi.e 0
pop.v.i global.cutmusic
pushi.e 1
conv.i.v
pushi.e 1
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
push.s "You walk into work like usual and head straight for your desk. But just as you get settled in you are surprised to see Chloe walking up to see you."@902
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Hello. I'm here to ask you what kind of cake you want."@903
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "In this office we celebrate all the employee birthdays for a month on one day (today), but yours is the only birthday this month. So, you get to pick the cake."@904
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "It's not really a big deal though, just tell me which sounds the best to you:"@905
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Got it. We'll have it out in the break room after lunch. Oh, and happy birthday from corporate."@906
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "And just as suddenly as she came in, she leaves..."@907
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
pushi.e 1
cmp.i.v GTE
bf [330]

:[329]
pushglb.v global.line
pushi.e 5
cmp.i.v LT
b [331]

:[330]
push.e 0

:[331]
bf [341]

:[332]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [336]

:[333]
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [335]

:[334]
push.l 2
pop.v.l self.me

:[335]
popenv [334]

:[336]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [340]

:[337]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [339]

:[338]
push.s "Chloe"@619
pop.v.s global.boxname

:[339]
popenv [338]

:[340]
b [345]

:[341]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [343]

:[342]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[343]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [345]

:[344]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[345]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [355]

:[346]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [353]

:[347]
pushi.e 0
pushi.e -1
pushi.e 0
pop.v.i [array]self.cakearray
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [352]

:[348]
pushi.e 0
pop.v.i local.a
push.l 76
pop.v.l local.i

:[349]
pushloc.v local.i
push.l 83
cmp.l.v LT
bf [351]

:[350]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.i
pushi.e -2
pushloc.v local.a
conv.v.i
pop.v.v [array]self.cakearray
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [349]

:[351]
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[352]
popenv [348]

:[353]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [355]

:[354]
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.cakearray
push.s "cake"@367
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[355]
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [357]

:[356]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [358]

:[357]
push.e 0

:[358]
bf [360]

:[359]
pushi.e 1
pop.v.i self.turnoffbg
pushi.e 1
pop.v.i self.bg
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[360]
push.v self.scene
push.s "fridgescene"@346
cmp.s.v EQ
bf [369]

:[361]
pushi.e 1
pop.v.i global.hide_inventory
push.s ""@150
pop.v.s global.boxname
push.s "You walk into an immediate commotion in the office. That’s never good...It seems to be focused in the breakroom."@909
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "With great effort to push through the crowd and make sense of what’s happening you manage to gather the situation: the fridge is missing??? How!? The feeling is mutual apparently as everyone is chattering and theorizing. There’s no way in hell it was stolen, thing was a piece of shit. But then someone suggests it might have been eaten and accusatory glances flash around the room at the larger members of staff."@910
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.fridgesize
cmp.v.v GTE
bf [363]

:[362]
push.s "With that you hurriedly waddle out of the room."@911
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
b [364]

:[363]
push.s "With that you decide to duck out of the scene. "@912
pushi.e -5
pushi.e 2
pop.v.s [array]global.text

:[364]
push.s "You flop back in your desk and right on cue there’s a notification from the boss waiting for your. You can probably guess what it’s about..."@913
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [366]

:[365]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [367]

:[366]
push.e 0

:[367]
bf [369]

:[368]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[369]
push.v self.scene
push.s "leviintro"@349
cmp.s.v EQ
bf [377]

:[370]
pushi.e 1
pop.v.i global.hide_inventory
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [372]

:[371]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[372]
push.s "Levi"@914
pop.v.s global.boxname
push.s "Eeeey, look at the lil donut rollin out of their box. You must be the Boss's latest snack to join the spread. That glutton lick his chops at you yet?"@915
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Oh, where are my manners~ Name's Levi. Pleasures all yours, shrimp. I keep this operation afloat while the boss works at ruining another suit. You wanna survive this shindig then I suggest you listen well. Its a monster eat everything world out here, and I doubt you want to be another notch on someones belt."@916
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [374]

:[373]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [375]

:[374]
push.e 0

:[375]
bf [377]

:[376]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[377]
push.v self.scene
push.s "firstmeeting"@295
cmp.s.v EQ
bf [385]

:[378]
push.s "Boss"@917
pop.v.s global.boxname
push.s "Well well~ You actually remembered to come back and see me. More than can be said for some of our past hires. Did you see the notice on your desktop display? I won’t always give you a heads-up like earlier when I need to talk, so keep an eye out for that."@918
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Anyways. I’m here to run you through the goals for your trial period. The office has a few much-needed upgrades and it’s your job to find a way to make that all fit in the budget. Easy enough? Currently we just need new chairs, a copier, and some fancy new drone-tech (all the rage right now) to make our lives a little easier. "@919
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "You can pay all this off on your desktop under “Manage office resources”. It’s in your best interest to familiarize yourself with the functions you have available under that menu. You can also do things like upgrade the snacks and cafe menu. We don’t have much available under either as your predecessor tried to sell off all we had to save a buck, and look how well that worked out for him~"@920
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "I’m always in the interest of stretching our dollars, of course. But remember, you do work in a den of monsters (for someone so edible, is what I’m saying). Keeping readily-available snacks between you and our staff on a bad day may just be your key to survival~ Plus, a well-fed staff is a productive one! But… an overfed staff gets lazy. So don’t overdo it, either. "@921
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Remember this: your budget available to you at the start of the day is dependent on how productive everyone was the day before. It’s in your best interest to spend the day going around and trying to iron out the messes you find. And trust me, there’s always a mess to be found with this bunch. If you need tips on what to do, you can talk to the assistant manager, Levi. He’s usually lazing around somewhere…"@922
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Alright you’re dismissed. Remember what I said. And try not to disappoint me~ There’s always plenty more suckers like you just laying around."@923
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [380]

:[379]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[380]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [382]

:[381]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [383]

:[382]
push.e 0

:[383]
bf [385]

:[384]
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[385]
push.v self.scene
push.s "airboss1"@362
cmp.s.v EQ
bf [393]

:[386]
push.s "Boss"@917
pop.v.s global.boxname
push.s "Still here? Amazing! I didn’t believe in you for a second! So I’ve got a big project coming up for you: our semi-annual pizza party! It’s this Friday~ Chloe will notify everyone so don’t worry about that. But I need you to save up, pizza ain’t cheap. So spend carefully this week!"@924
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "What? The air? Oh yeah it went out over this weekend. But it’s going to be expensive to replace. I’ve added that to your payoff goals if you want to check it out later, but it’s not important right now. What? Is it really that bad? Are you sssuuurree? The girls may hate you until you fix it, and these are the ideal growing conditions for the toxic mold in the forbidden stairway...But what’s more important than pizza~? "@925
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Alright alright fine, I won’t tell you how to do your job. But there’s your mission. Get the funds together for a bomb-ass pizza party by Friday! Here’s the number for our regular joint. Do NOT forget to call friday morning!!! And if there’s room in the budget, maybe look into the air. Especially if everyone’s going to keep griping about it. Dismissed. "@926
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [388]

:[387]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[388]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [390]

:[389]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [391]

:[390]
push.e 0

:[391]
bf [393]

:[392]
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[393]
push.v self.scene
push.s "airboss2"@363
cmp.s.v EQ
bf [418]

:[394]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [396]

:[395]
push.s "Yes, I know you paid off the air repairs. What about it??? I gave you a job to do! "@927
pop.v.s self.gotair
b [397]

:[396]
push.s "Where did the money go??? How could you possibly not have the money for a single pizza!? "@929
pop.v.s self.gotair

:[397]
push.s "Boss"@917
pop.v.s global.boxname
push.s "..."@930
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "So...I’m sort of missing the distinct smell of fresh-baked pizza in the office. Is it coming by later today? You didn’t happen to forget did you~? Hm..."@931
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "..."@930
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "This simply won’t do. You understand that, right~? "@932
push.v self.gotair
add.v.s
push.s "With this kind of performance, I’m afraid I’m just going to have to let you go. I need someone I can rely on. A monster who understands what’s important to this company: pizza."@933
add.s.v
pushi.e -5
pushi.e 3
pop.v.v [array]global.text
push.s "You’ve ruined the pizza lunch I was so looking forward to. But don’t feel so down about it...I know how you can make it up to me! With a brand new lunch:"@934
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "You~!!!"@935
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [400]

:[398]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [400]

:[399]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[400]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [407]

:[401]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [403]

:[402]
pushi.e 39
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[403]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [405]

:[404]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[405]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [407]

:[406]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[407]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [413]

:[408]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [410]

:[409]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 16
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[410]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [412]

:[411]
pushi.e 55
pop.v.i self.sprite_index

:[412]
popenv [411]

:[413]
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [415]

:[414]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [416]

:[415]
push.e 0

:[416]
bf [418]

:[417]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[418]
push.v self.scene
push.s "airboss3"@364
cmp.s.v EQ
bf [429]

:[419]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [421]

:[420]
push.s "Yes I know you paid off the air! What about it??? We put up a barricade on the forbidden stairway. It was going to be fine. "@937
pop.v.s self.gotair
b [422]

:[421]
push.s ""@150
pop.v.s self.gotair

:[422]
push.s "Boss"@917
pop.v.s global.boxname
push.s "Well, I have to say: this is the most lackluster pizza party I’ve ever seen. Sure, you accomplished the bare minimum that was expected of you. Do you think that deserves anything??? "@938
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.v self.gotair
push.s "I’ve been looking forward to this lunch all week! And now I have to worry about sharing it with everyone!!! I’m a big guy! I need a bigger portion!!! And I’m the boss. "@939
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s "Chloe’s already told me I can’t legally get you in trouble for this. But this is a warning! Don’t disappoint me like this again. You’re still being evaluated you know~ Now get out. "@940
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [424]

:[423]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[424]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [426]

:[425]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [427]

:[426]
push.e 0

:[427]
bf [429]

:[428]
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.d 0.1
sub.d.v
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[429]
push.v self.scene
push.s "airboss4"@365
cmp.s.v EQ
bf [440]

:[430]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [432]

:[431]
push.s "And you even paid off the air before the barricade on the toxic mold broke loose~!!! Talk about an overachiever, I’m sure the girls appreciated it. And now I don’t have to read all those emails! "@941
pop.v.s self.gotair
b [433]

:[432]
push.s ""@150
pop.v.s self.gotair

:[433]
push.s "Boss"@917
pop.v.s global.boxname
push.s "Incredible~ You actually did your job! I was almost worried you wouldn’t make it. But I believed in your good budgeting judgement and self-preservation!"@942
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.v self.gotair
push.s "Go ahead and get out there and indulge in the pizza of your labor! You can have as much as you want! So don’t say I never do nothin’ for ya~ Hm? A *actual* reward? What are you talking about??? Is a pizza party not enough!? Don’t be silly~ I never liked these kinds of jokes. You’re dismissed. "@943
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [435]

:[434]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[435]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [437]

:[436]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [438]

:[437]
push.e 0

:[438]
bf [440]

:[439]
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[440]
push.v self.scene
push.s "downgradeexpo"@354
cmp.s.v EQ
bf [448]

:[441]
push.s "Boss"@917
pop.v.s global.boxname
push.s "Well hello hello~ Good to see you’re still alive! Since you’ve come this far, I think you’ve earned a bit more power for your position. No this doesn’t come with a raise!? It’s just part of your job! Now listen:"@944
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Sometimes, it’s necessary to “thin the herd” as it were. It can be more efficient to reduce the number of mouths to feed and instead just focus on one especially big hungry mouth instead. What I’m saying is, I’m giving you the power to downsize our staff. However, in order to do that you’re going to need to “consolidate” them into another position...if you catch my drift?"@945
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "No? Nevermind. You can have some of our monsters eat each other, for the good of the company of course. Sound great~? You can manage all this from your desktop as usual of course. Just look for “downsizing”. And hey! We sure would save on pizza~"@946
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "It’s not mandatory of course, it’s up to you to decide if it’s worth it. But the option is available~ Anyways, dismissed. "@947
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [443]

:[442]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[443]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [445]

:[444]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [446]

:[445]
push.e 0

:[446]
bf [448]

:[447]
pushi.e 1
conv.i.v
push.s "candownsize"@355
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[448]
push.v self.scene
push.s "rescueexpo"@353
cmp.s.v EQ
bf [456]

:[449]
push.s "Boss"@917
pop.v.s global.boxname
push.s "Okay so, this is a thing that happens around here, so don’t freak out. SOMETIMES our employees eat each other. I just didn’t want to hit you with this right off the bat. I wanted to wait a few days. Most don’t make it this far anyways..."@948
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "If that happens don’t panic: we got a service on call for this exact situation, I’m giving you their number. If someone got ate you’ll get a notice on your monitor. Just give them a ring and they’ll pull ‘em out right away and everyone can get right back to work! Their fees are kind of steep though..."@949
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Now, I’m not saying employee safety isn’t our highest priority. But like, these are some resilient gals. Sometimes...they can wait a lil’ while ya know? If you just don’t got the budget. Not that we put finances ahead of our personnel, but like, you’ve got to consider the good of the company! And your job. (Which is still up for review, don’t forget) It’s what they would have wanted, I’m sure."@950
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Anyways you may not even need all this! We almost never do! Kind of. So really, don’t stress about it. It’s just another redundant corporate safety requirement I’m legally obligated to inform you about. Dismissed."@951
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [451]

:[450]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[451]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [453]

:[452]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [454]

:[453]
push.e 0

:[454]
bf [456]

:[455]
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[456]
push.v self.scene
push.s "bossfridge"@371
cmp.s.v EQ
bf [464]

:[457]
push.s "Boss"@917
pop.v.s global.boxname
push.s "Did you see??? Someone ate the dang fridge!!! After I made all that effort of fishing it out of the trash five years ago. I couldn’t find a new one on my way to work today, so I suppose we could just buy a new one. HR informs me that’s the preferred option anyways because of ‘health and safety violations’. Whatever that means."@952
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "I’ve added a new fridge to your goals. Fix this or you’re fired. But that’s not the important part of this scenario, or why I called you in here. I wanna know who dunnit. Don’t you~?"@953
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Maybe go snooping around a lil for me~? I’d like an answer by friday morning. Can’t have you waste much more time than that. I’m eager to see what dirt you can dig up~ "@954
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [459]

:[458]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[459]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [461]

:[460]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [462]

:[461]
push.e 0

:[462]
bf [464]

:[463]
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[464]
push.v self.scene
push.s "FAILBOSS1"@356
cmp.s.v EQ
bf [472]

:[465]
push.s "Boss"@917
pop.v.s global.boxname
push.s "Hm...Did you not see? I sent you a notice oh your desktop to come speak with me. You know I’m a VERY busy man, I wouldn’t call you in if it wasn’t important. And yet you didn’t think so..."@955
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Not the kind of attitude I want to see on this team...If you catch my drift. For your own sake, don’t miss my summons again~ Now then, what I was GOING to say:"@956
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [467]

:[466]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[467]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [469]

:[468]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [470]

:[469]
push.e 0

:[470]
bf [472]

:[471]
call.i instance_destroy(argc=0)
popz.v

:[472]
push.v self.scene
push.s "FAILBOSS2"@357
cmp.s.v EQ
bf [497]

:[473]
push.s "Boss"@917
pop.v.s global.boxname
push.s "FAILBOSS1"@356
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [475]

:[474]
push.s "Boo~!"@957
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Well now, did that get your attention~? I certainly hope so, because I’m running out of options. Did you pay attention at all to my notices? Of course you didn’t. That’s why we’re here now."@958
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "It’s very disappointing, you know. I really thought you were doing well. But I run a business here, you know? A real tight shift too. It’d be unprofessional of me to do you any special favors. I don’t have time for someone who doesn’t make time for me."@959
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
b [476]

:[475]
push.s "Hm…"@960
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "..."@930
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "I’m still thinking. It’s very disappointing, you know. I really thought you were doing well. But I’ve already given my warning once already and it’d be unprofessional of me to do you any special favors. I run a business here, you know? A real tight shift too. I don’t have time for someone who doesn’t make time for me."@961
pushi.e -5
pushi.e 2
pop.v.s [array]global.text

:[476]
push.s "And worst of all, this meeting is cutting into my lunch time! I have so little room to deal with trifling things like this I have to dip into my own personal time to deal with you! So to cut things short, and kill two birds with one stone, I've decided to do you a favor after all. You won’t be leaving this company~"@962
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "No. You won’t be going anywhere in fact! Nowhere at all~!!!"@963
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [479]

:[477]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [479]

:[478]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[479]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [486]

:[480]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i 18.stopmusic
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [482]

:[481]
pushi.e 39
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[482]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [484]

:[483]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[484]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [486]

:[485]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[486]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [492]

:[487]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [489]

:[488]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 16
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[489]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [491]

:[490]
pushi.e 55
pop.v.i self.sprite_index

:[491]
popenv [490]

:[492]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [494]

:[493]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [495]

:[494]
push.e 0

:[495]
bf [497]

:[496]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[497]
push.v self.scene
push.s "accusetime"@380
cmp.s.v EQ
bf [614]

:[498]
push.s "sawfridgeclue"@376
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [500]

:[499]
push.s "You did do some investigating right? At least just...glanced around the breakroom right? Whatever. "@965
pop.v.s self.sherlocktxt
b [501]

:[500]
push.s ""@150
pop.v.s self.sherlocktxt

:[501]
push.s "Boss"@917
pop.v.s global.boxname
push.v self.triedyou
pushi.e 0
cmp.i.v EQ
bf [503]

:[502]
push.v self.triedboss
pushi.e 0
cmp.i.v EQ
b [504]

:[503]
push.e 0

:[504]
bf [506]

:[505]
push.s "So, sherlock. Hope you had time to do some sleuthing! "@967
push.v self.sherlocktxt
add.v.s
push.s "Cuz time’s up. Who ate the fridge~?"@968
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text

:[506]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [508]

:[507]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[508]
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [559]

:[509]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [533]

:[510]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [532]

:[511]
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 0
cmp.l.v NEQ
bf [520]

:[512]
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i ds_list_shuffle(argc=1)
popz.v
pushi.e 0
pop.v.i local.o
pushi.e 0
pop.v.i local.i

:[513]
pushloc.v local.i
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i ds_list_size(argc=1)
cmp.v.v LT
bf [517]

:[514]
push.l 1
conv.l.v
pushloc.v local.i
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i ds_list_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [516]

:[515]
push.s "adding something from guilty list"@971
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.l 1
conv.l.v
pushloc.v local.i
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i ds_list_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushloc.v local.o
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.i
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i ds_list_find_value(argc=2)
pushi.e -2
pushloc.v local.o
conv.v.i
pop.v.v [array]self.needarray
push.v local.o
push.e 1
add.i.v
pop.v.v local.o

:[516]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [513]

:[517]
pushloc.v local.o
pushi.e 0
cmp.i.v EQ
bf [519]

:[518]
push.s "Nobody"@972
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices

:[519]
b [525]

:[520]
push.s "MAKING THE BOSS OPTIONS"@973
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.l 2
pop.v.l local.o
pushi.e 0
pop.v.i local.i

:[521]
pushloc.v local.o
push.l 10
cmp.l.v LT
bf [525]

:[522]
push.l 1
conv.l.v
pushloc.v local.o
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [524]

:[523]
push.l 1
conv.l.v
pushloc.v local.o
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.choices
pushloc.v local.o
pushi.e -2
pushloc.v local.i
conv.v.i
pop.v.v [array]self.needarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[524]
push.v local.o
push.e 1
add.i.v
pop.v.v local.o
b [521]

:[525]
push.s "WERE AT THE END OF CHOICEBOX CREATION"@974
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.v 7.triedyou
pushi.e 0
cmp.i.v EQ
bf [527]

:[526]
push.s "Me"@975
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[527]
push.v 7.triedboss
pushi.e 0
cmp.i.v EQ
bf [529]

:[528]
push.s "You"@976
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[529]
pushloc.v local.i
pushi.e 0
cmp.i.v EQ
bf [531]

:[530]
push.s "Nobody"@972
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices

:[531]
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[532]
popenv [511]

:[533]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [559]

:[534]
pushglb.v global.choice
push.s "Nobody"@972
cmp.s.v EQ
bf [536]

:[535]
push.s "Hmm...That is the only logical answer isn't it? And yet, it had to have been somebody???"@977
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Ungh, this is getting more complicated than it's worth. Whatever, I'm bored of this now anyways. You're dismissed."@978
pushi.e -5
pushi.e 2
pop.v.s [array]global.text

:[536]
pushglb.v global.choice
push.s "You"@976
cmp.s.v EQ
bf [546]

:[537]
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 0
cmp.l.v EQ
bf [544]

:[538]
push.s "comradclue"@378
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [540]

:[539]
push.s "Hm...Oh was that a joke? Funny. I’m not laughing."@979
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "..."@930
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Oh you found what~? About the window? I suppose that does seem a little suspicious."@980
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "And you all came to that conclusion? Hm...Everyone huh? "@981
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Well, you certainly don’t disappoint! I was really looking for something to shake up the joint. And you have the guts to actually go and stand up against the man~! Of course, in the end we don’t REALLY know who ate the fridge. And possibly never will, maybe I’ll suggest a camera system for the budget eventually. But for now, since you proved your ability to network and problem solve: I’ll go ahead and add a little more to the budget for the new fridge. It is an urgent matter after all."@982
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Alright, you’re dismissed! Don’t forget your evaluation is at the end of today~"@983
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 500
add.i.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "comradsuccess"@379
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [543]

:[540]
push.s "sawbossclue"@377
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [542]

:[541]
push.s "Hm...Oh was that a joke? Funny. I’m not laughing."@979
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "..."@930
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Oh you found what~? About the window? I suppose that does seem a little suspicious."@980
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Look, "@984
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s ", I understand you’re a bit new to this game. But you really shouldn’t start playing unless you know all the rules~ There’s really no way of knowing who did this for SURE, so you need to be much more thoughtful of who you finger in these kinds of situations. I can understand being nervous to out a fellow coworker. But I wouldn’t expect you to have to follow up on that. I’m the boss, it’s up to me to dispense disciplinary action and weather that storm. Sometimes we have to take the fall for each other~ I was hoping you would understand. "@985
add.s.v
pushi.e -5
pushi.e 4
pop.v.v [array]global.text
push.s "Your evaluation was so close too. But I think I can get a good enough read on what kind of employee you’re cut out to be with this little test. Oh, now don’t be nervous. I don’t plan on firing you. Quite the opposite! You won’t be leaving this company any time soon~"@986
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "No. You won’t be going anywhere in fact! Nowhere at all~!!!"@963
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
pushi.e 1
pop.v.i self.gameover
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [543]

:[542]
push.s "Hm...Oh was that a joke? Funny. I’m not laughing. Now come on, who are you trying to hide?"@987
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
pop.v.i self.triedboss
call.i madechoice(argc=0)
popz.v

:[543]
b [545]

:[544]
push.s "Hm...Oh was that a joke? Funny. I’m not laughing. Now come on, who are you trying to hide?"@987
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
pop.v.i self.triedboss
call.i madechoice(argc=0)
popz.v

:[545]
b [559]

:[546]
pushglb.v global.choice
push.s "Me"@975
cmp.s.v EQ
bf [551]

:[547]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.fridgesize
cmp.v.v GTE
bf [549]

:[548]
push.s "Did you REALLY? Hm...I can’t really say it’s NOT possible. Given your size recently. "@988
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Well, I must commend your honesty. Though I gotta say: A pretty anti-climatic ending. I dunno, I guess I was hoping for more drama? Intrigue? It gets boring up here."@989
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Well I guess it goes without saying that I'm very disappointed in your actions. You’ve caused a massive, minor inconvenience for everyone! I was even trying to find some room in the budget to wire you some extra funds for the fridge, but knowing this now? It’s better that you dig yourself out of this mess on your own."@990
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Alright, you’re dismissed! Don’t forget your evaluation is at the end of today~"@983
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [550]

:[549]
push.s "No, no you didn’t. You’re not taking the fall for this one. I just want to know who ate it."@991
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
pop.v.i self.triedyou
call.i madechoice(argc=0)
popz.v

:[550]
b [559]

:[551]
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.needarray
push.l 2
cmp.l.v EQ
bf [553]

:[552]
push.s "brokediet"@38
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [554]

:[553]
push.e 0

:[554]
bf [556]

:[555]
push.s "You you can’t be serious. Where would a fridge FIT in Chloe??? Now c’mon. Try something more believable."@992
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
call.i madechoice(argc=0)
popz.v
b [559]

:[556]
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.needarray
pop.v.v self.blamed
push.s "Did she REALLY~? It makes sense. I mean look at the size of her! I’d believe she could eat a fridge. Not to be mean, of course, just stating the facts."@993
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Well I suppose that about wraps things up. I’ll have a talk with her later about all this. I can’t imagine it will go well, but that’s my job to worry about not yours. It’s just business! Sometimes we have to take the fall for each other~ It’s nice to know there’s someone here who understands this. "@994
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Alright you’re dismissed! Oh but uh, you might want to avoid "@995
push.l 1
conv.l.v
push.v self.blamed
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " for a little while after this~"@996
add.s.v
pushi.e -5
pushi.e 3
pop.v.v [array]global.text
push.l 3
conv.l.v
push.v self.blamed
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
pushi.e 2
mul.i.v
sub.v.v
push.l 3
conv.l.v
push.v self.blamed
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.v self.blamed
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [558]

:[557]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.v self.blamed
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[558]
pushi.e 1
pop.v.i self.confirm
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[559]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [573]

:[560]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [567]

:[561]
pushi.e 1
pop.v.i 18.stopmusic
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [563]

:[562]
pushi.e 39
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[563]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [565]

:[564]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[565]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [567]

:[566]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[567]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [573]

:[568]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [570]

:[569]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 16
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[570]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [572]

:[571]
pushi.e 55
pop.v.i self.sprite_index

:[572]
popenv [571]

:[573]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [575]

:[574]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [576]

:[575]
push.e 0

:[576]
bf [614]

:[577]
push.l 2
conv.l.v
push.v self.blamed
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v GTE
bf [579]

:[578]
push.l 7
conv.l.v
push.v self.blamed
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
b [580]

:[579]
push.e 0

:[580]
bf [610]

:[581]
push.v self.blamed
dup.v 0
push.l 2
cmp.l.v EQ
bt [590]

:[582]
dup.v 0
push.l 3
cmp.l.v EQ
bt [596]

:[583]
dup.v 0
push.l 6
cmp.l.v EQ
bt [599]

:[584]
dup.v 0
push.l 7
cmp.l.v EQ
bt [600]

:[585]
dup.v 0
push.l 5
cmp.l.v EQ
bt [603]

:[586]
dup.v 0
push.l 4
cmp.l.v EQ
bt [604]

:[587]
dup.v 0
push.l 8
cmp.l.v EQ
bt [605]

:[588]
dup.v 0
push.l 9
cmp.l.v EQ
bt [606]

:[589]
b [609]

:[590]
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 2
cmp.l.v NEQ
bf [592]

:[591]
push.s "comradclue"@378
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [593]

:[592]
push.e 0

:[593]
bf [595]

:[594]
push.s "blamedchloe"@490
pop.v.s global.frontscene

:[595]
b [609]

:[596]
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 3
cmp.l.v NEQ
bf [598]

:[597]
push.s "blamedpearl"@491
pop.v.s global.frontscene

:[598]
b [609]

:[599]
push.s "blamedkathy"@492
pop.v.s global.salesscene
b [609]

:[600]
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 7
cmp.l.v NEQ
bf [602]

:[601]
push.s "blamedjesse"@493
pop.v.s global.salesscene

:[602]
b [609]

:[603]
push.s "blamedvic"@494
pop.v.s global.itscene
b [609]

:[604]
push.s "blamederika"@495
pop.v.s global.custscene
b [609]

:[605]
push.s "blamedstacy"@496
pop.v.s global.custscene
b [609]

:[606]
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 9
cmp.l.v NEQ
bf [608]

:[607]
push.s "blamedpolly"@497
pop.v.s global.frontscene

:[608]
b [609]

:[609]
popz.v

:[610]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [612]

:[611]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
b [613]

:[612]
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v

:[613]
call.i instance_destroy(argc=0)
popz.v

:[614]
push.v self.scene
push.s "endgame"@348
cmp.s.v EQ
bf [718]

:[615]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [656]

:[616]
pushi.e 0
pop.v.i self.endtype
pushi.e 1
pop.v.i self.allfat
pushi.e 1
pop.v.i self.yourfat
pushi.e 1
pop.v.i self.ateall
pushi.e 0
pop.v.i self.oneate
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.d 0.8
cmp.d.v GTE
bf [618]

:[617]
push.s "perfect"@1002
pop.v.s self.endtype
b [621]

:[618]
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.d 0.6
cmp.d.v GTE
bf [620]

:[619]
push.s "okay"@1003
pop.v.s self.endtype
b [621]

:[620]
push.s "bad"@1004
pop.v.s self.endtype

:[621]
push.s "stayfit"@369
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [654]

:[622]
push.l 2
pop.v.l local.i

:[623]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [627]

:[624]
push.s "youate"@1005
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [626]

:[625]
pushi.e 0
pop.v.i self.ateall
b [627]

:[626]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [623]

:[627]
push.v self.ateall
pushi.e 0
cmp.i.v EQ
bf [651]

:[628]
push.l 2
pop.v.l local.i

:[629]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [639]

:[630]
push.l 2
pop.v.l local.v

:[631]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [638]

:[632]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
pushloc.v local.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [635]

:[633]
b [638]

:[634]
b [637]

:[635]
pushloc.v local.v
push.l 9
cmp.l.v EQ
bf [637]

:[636]
pushi.e 1
pop.v.i self.oneate

:[637]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [631]

:[638]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [629]

:[639]
push.l 2
pop.v.l local.i

:[640]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [644]

:[641]
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v NEQ
bf [643]

:[642]
pushi.e 0
pop.v.i self.allfat
b [644]

:[643]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [640]

:[644]
push.v self.allfat
pushi.e 0
cmp.i.v EQ
bf [650]

:[645]
push.l 2
pop.v.l local.i

:[646]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [650]

:[647]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v LT
bf [649]

:[648]
pushi.e 0
pop.v.i self.yourfat
b [650]

:[649]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [646]

:[650]
b [653]

:[651]
push.v self.endtype
push.s "perfect"@1002
cmp.s.v EQ
bf [653]

:[652]
push.s "okay"@1003
pop.v.s self.endtype

:[653]
b [655]

:[654]
pushi.e 0
pop.v.i self.allfat
pushi.e 0
pop.v.i self.yourfat
pushi.e 0
pop.v.i self.ateall
pushi.e 0
pop.v.i self.oneate

:[655]
pushi.e 0
pop.v.i self.fadeline

:[656]
push.s "Well. It’s the end of your three weeks and you survived. Not everyone makes it this far~ Lets go over your performance."@1007
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
pop.v.i local.i
push.v self.endtype
dup.v 0
push.s "perfect"@1002
cmp.s.v EQ
bt [660]

:[657]
dup.v 0
push.s "okay"@1003
cmp.s.v EQ
bt [669]

:[658]
dup.v 0
push.s "bad"@1004
cmp.s.v EQ
bt [676]

:[659]
b [683]

:[660]
push.s "Incredible! You actually managed to impress me! The company needs more people like you who go above and beyond their minimum required workloads and ask for nothing in return! I guess we’ll have to keep you after all. I gotta be honest, I didn’t see this one coming."@1008
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "stayfit"@369
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [662]

:[661]
push.s "Well...You passed! Nothing to complain about here. Hm? Is something wrong? No. It’s just I sort of figured this would end differently? What do I mean by that? I’m not really sure I guess. I just sort of thought you’d...nevermind. I just hope you got whatever it was you wanted out of this experience."@1009
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[662]
push.v self.oneate
pushi.e 1
cmp.i.v EQ
bf [664]

:[663]
push.s "Your methods are nothing short of unconventional however. But I can’t argue the results. Sometimes you put all your chips on one number and you hit the jackpot! It takes a keen eye to know when to take a risk like that. Let’s hope your luck never runs out. For your sake~"@1010
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[664]
push.v self.allfat
pushi.e 1
cmp.i.v EQ
bf [666]

:[665]
push.s "You’ve also been making quite an impression on the workforce, might I add. It’s like a herd of elephants in this building!!! It’s some unconventional methods you’ve got there but I can’t deny their effectiveness. However, we might need to start discussing a new elevator budget. Seems most our staff is at the weight limit..."@1011
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[666]
push.v self.yourfat
pushi.e 1
cmp.i.v EQ
bf [668]

:[667]
push.s "And might I add, the office has made quite the impact on you hasn’t it~? *snicker* It’s good to know you’ve gotten quite “comfortable” here with us. But it might be in your belt’s best interest to start sharing with others a bit more often..."@1012
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[668]
push.s "Well, since you’re settled in and know what you’re doing by now I suppose I’ll just let you have at it! You pass with flying colors! Now get back to work. And try to last a little longer than the last guy. I’m very tired of trying to find half-decent saps in this town..."@1013
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
pushloc.v local.i
pop.v.v self.fadeline
push.s "With that you’re unceremoniously shoo’d back into the office. It’s a weird feeling...You were so nervous through the evaluation it’s like you didn’t properly absorb the information given to you. Instead it’s slowly coming over you in waves. You did it! You really did it? You got the job!!! For real, of course."@1014
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "There’s a slight spring in your step as you pack up for the day. The trial is over and from now on, the real work begins. News must have spread quick, as when you step into the hall and bump into everyone on the way out they stop to congratulate your success. "@1015
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "These last few weeks may have been taxing. But from now on you’re confident you can handle whatever’s on your plate next~"@1016
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [683]

:[669]
push.s "Incredibly lackluster...Just very middle-of-the-line you are. I guess you got the job done but we’re really looking for someone who can perform above and beyond you know? There’s plenty more qualified schmucks like you waddling about, we can’t exactly just settle. It’s nothing personal. You should have just been better."@1017
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.v self.ateall
pushi.e 1
cmp.i.v EQ
bf [671]

:[670]
push.s "I don’t really need to tell you you did a shit job right? You cleaned out our staff!? Did you think we hired you for a damn buffet? And you don’t even have the results to justify it. The nerve! I was content to let this go if you could prove it’d work. Shows me for taking a risk on new ideas."@1018
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[671]
push.v self.oneate
pushi.e 1
cmp.i.v EQ
bf [673]

:[672]
push.s "In my professional opinion favoritism never yields results. That’s why I never do any favors for anyone. You especially cannot expect to just shove the entire workforce into one monster and think it’ll work. It doesn’t! that’s not how it works!? I’m afraid I can’t let you continue with this kind of performance."@1019
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[673]
push.s "But I don’t really want to get rid of you of course. It’d be such a waste of time and money! No, I think we still have a place for you here in the company believe it or not~ An executive position, even! You’ll be “working” very close with me from now on. Where do you think you’re going? You know the doors are locked."@1020
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.v self.yourfat
pushi.e 1
cmp.i.v EQ
bf [675]

:[674]
push.s "I must say watching you helplessly waddle around is entertaining~ I suppose that’s where our budget ended up in the end hm? Funny, no one else seemed to be making the gains like you did. My advice to you: you really should have shared more. For your belt’s sake if nothing else. But I do appreciate you thinking ahead on this one for me. You look quite delectable~ "@1021
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[675]
pushloc.v local.i
pop.v.v self.fadeline
push.s "I hope you got whatever it was you wanted out of this experience though. Really, I do! And don’t be so hard on yourself. Failure is a learning opportunity! A path to bigger and better things! Like me~ So hold still."@1022
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s ""@150
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
pushi.e 1
pop.v.i self.gameover
b [683]

:[676]
push.s "It’s terrible. Absolutely dreadful! Why did you even bother to show up every day!? What did you even do??? I’ve never seen a more abysmal score in my life!!! I’d kick you straight to the curb but you’ve done such a shit job I think you owe the company back for the time wasted on you to be quite honest."@1023
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.v self.ateall
pushi.e 1
cmp.i.v EQ
bf [678]

:[677]
push.s "I don’t really need to tell you you did a shit job right? You cleaned out our staff!? Did you think we hired you for a damn buffet? And you don’t even have the results to justify it. The nerve! I was content to let this go if you could prove it’d work. Shows me for taking a risk on new ideas."@1018
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[678]
push.v self.oneate
pushi.e 1
cmp.i.v EQ
bf [680]

:[679]
push.s "In my professional opinion favoritism never yields results. That’s why I never do any favors for anyone. You especially cannot expect to just shove the entire workforce into one monster and think it’ll work. It doesn’t! that’s not how it works!? I’m afraid I can’t let you continue with this kind of performance."@1019
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[680]
push.s "Oh don’t go clutching your wallet now, there’s no way you could afford to pay me back anyways. No, I think we still have a place for you here in the company believe it or not~ An executive position, even! You’ll be “working” very close with me from now on. Where do you think you’re going? You know the doors are locked."@1024
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.v self.yourfat
pushi.e 1
cmp.i.v EQ
bf [682]

:[681]
push.s "I must say watching you helplessly waddle around is entertaining~ I suppose that’s where our budget ended up in the end hm? Funny, no one else seemed to be making the gains like you did. My advice to you: you really should have shared more. For your belt’s sake if nothing else. But I do appreciate you thinking ahead on this one for me. You look quite delectable~ "@1021
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[682]
pushloc.v local.i
pop.v.v self.fadeline
push.s "I hope you got whatever it was you wanted out of this experience though. Really, I do! And don’t be so hard on yourself. Failure is a learning opportunity! A path to bigger and better things! Like me~ So hold still."@1022
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s ""@150
pushi.e -5
pushloc.v local.i
conv.v.i
pop.v.s [array]global.text
pushi.e 1
pop.v.i self.gameover
b [683]

:[683]
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [686]

:[684]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [686]

:[685]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[686]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
push.v self.endtype
push.s "perfect"@1002
cmp.s.v EQ
bf [688]

:[687]
pushglb.v global.line
push.v self.fadeline
cmp.v.v GTE
b [689]

:[688]
push.e 0

:[689]
bf [697]

:[690]
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [692]

:[691]
pushi.e 39
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[692]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [694]

:[693]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[694]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [696]

:[695]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[696]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[697]
push.v self.gameover
pushi.e 1
cmp.i.v EQ
bf [711]

:[698]
pushglb.v global.line
push.v self.fadeline
cmp.v.v EQ
bf [705]

:[699]
pushi.e 1
pop.v.i 18.stopmusic
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 39
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [701]

:[700]
pushi.e 39
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[701]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [703]

:[702]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[703]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [705]

:[704]
pushi.e 10
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[705]
pushglb.v global.line
push.v self.fadeline
pushi.e 1
add.i.v
cmp.v.v EQ
bf [711]

:[706]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [708]

:[707]
pushi.e 0
conv.i.v
pushi.e 5
conv.i.v
pushi.e 16
conv.i.v
call.i audio_play_sound(argc=3)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[708]
pushi.e 13
conv.i.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i instance_create(argc=3)
conv.v.i
pushenv [710]

:[709]
pushi.e 55
pop.v.i self.sprite_index

:[710]
popenv [709]

:[711]
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [713]

:[712]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [714]

:[713]
push.e 0

:[714]
bf [718]

:[715]
push.v self.endtype
push.s "perfect"@1002
cmp.s.v EQ
bf [717]

:[716]
pushi.e 4
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v
b [718]

:[717]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[718]
push.v self.scene
push.s "finalchloe"@455
cmp.s.v EQ
bf [733]

:[719]
pushi.e 1
conv.i.v
push.l 14
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
pop.v.i global.lunch
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "The double doors of the buffet pose something of a challenge for Chloe at her current size. Her enormous belly is able to squeeze through but her hips press firmly against the frame. Thankfully, with a bit of shoving and few deep breaths, you manage to help POP her girth through the door."@1025
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oh wow, "@1026
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "! This place looks amazing! Since it's a special occasion it's okay if I indulge a little~"@1027
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Chloe is already making her way to the buffet. Plates and silverware clatter and other customers let out shouts of surprise as the ravenous demon barges her way to the food. The immense demon’s belly spreads against the side of the buffet and over the edges, lapping at the sides of metal steam trays. Chloe doesn’t notice, of course. She is already feeding a greasy burger into her mouth. Even as she downs the first one she is already pushing a second one in after it."@1028
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You make your way to the front desk to see if a table is available that can handle Chloe, a booth perhaps? The hostess informs you that there is a booth near the back available. You offer to Chloe for her to take a seat and you'll bring the food to her."@1029
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "You’re so sweet "@1030
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "~"@1031
add.s.v
pushi.e -5
pushi.e 4
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "With all the grace of a truck backing from a loading dock, Chloe pulls away from the buffet and waddles to your booth. You get a good view of her bloated frame pressing into the booth, belly enveloping the table and pressing into the other side. Looks like you won’t be sitting across from her. You manage to tear your eyes off her and focus on the task at hand. You start filling up plates of food."@1032
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Chloe waits at the booth, hands patting the sides of her massive belly, before snatching the first few plates out of your hands. You watch, amazed, as this once demure, body conscious demon, goes to town. She tips the plates to her mouth, shoving in mouthful after mouthful. She pushes in burgers two at a time and gobbles down fries. The platter of ribs you brought over empties just as quickly, dropping onto her heaving belly. You race back to the buffet to grab more and return just in time to pass more food to those fat, greedy fingers."@1033
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "? Could you bring me some more of that last dish? It was scrumptious!"@1034
add.s.v
pushi.e -5
pushi.e 7
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "You comply and Chloe's face beams through a smear of sauce and grease. She was having the time of her life! That vast red belly continues to expand and bloat as you bring more food. Chloe’s appetite is truly unleashed and she pays no heed to the inches that are piling onto her belly. Each meal, each plate, each mouthful filling more of the booth. Soon, a sea of red blubber smothers the booth table completely. Not that she noticed, of course. Chloe was too intent on devouring everything you brought her."@1035
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "Her body continues to inflate, belly expanding, chest swelling, hips flaring out with thick, rolling folds of red blubber. Somewhere under the depths of her belly, her skirt creaked and tore, unable to contain the onslaught of weight being poured onto her frame. Chloe’s arms bloat and swell, fat fingers grow thicker and her arms sway and wobble as she pushes food to a mouth slowly being lost between cheeks growing fatter and fatter. The air is filled with the sounds of her endless chewing and groans of pleasure."@1036
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "Ooooh it's all so heavenly~! Oh why dont I just do this every day!? It all just tastes so good!!!"@1037
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "The sounds of groaning wood and creaking metal soon fills the air as Chloe’s frame swells rounder and larger. You come back to the table, carrying a bowl of pudding, just in time to watch as the booth groans and collapses. Chloe suddenly falls backwards, her massive backside slapping into the floor while the table that had been holding her belly up so valiantly finally gives way. You stare in awe as Chloe lay there, a heaving, sloshing mass of red blubber."@1038
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "Woah!? Guess I overdid it a bit?"@1039
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [721]

:[720]
pushi.e 1
pop.v.i self.showchloe_bg
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[721]
pushglb.v global.line
pushi.e 9
cmp.i.v EQ
bf [724]

:[722]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [724]

:[723]
push.l 11
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
add.v.v
push.l 11
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[724]
pushglb.v global.line
pushi.e 11
cmp.i.v EQ
bf [726]

:[725]
pushi.e 1
pop.v.i global.hidebody

:[726]
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [728]

:[727]
pushi.e 1
pop.v.i self.showchloe
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v

:[728]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [730]

:[729]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [731]

:[730]
push.e 0

:[731]
bf [733]

:[732]
pushi.e 1
conv.i.v
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[733]
push.v self.scene
push.s "seenChloe"@436
cmp.s.v EQ
bf [779]

:[734]
pushi.e 0
pop.v.i global.cutmusic
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [743]

:[735]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [747]

:[736]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [748]

:[737]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [752]

:[738]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [756]

:[739]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [760]

:[740]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [764]

:[741]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [768]

:[742]
b [772]

:[743]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You drop by Chloe's office on your daily rounds. As you gently creek the door open you manage to catch a last-second glimpse of the 'dieting' demon shovel something into her mouth and gulp hurrdily."@1040
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "O-Oh is someone there? Come in."@1041
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [745]

:[744]
pushi.e 1
pop.v.i global.hidebody
b [746]

:[745]
pushi.e 0
pop.v.i global.hidebody

:[746]
b [772]

:[747]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You drop by Chloe's office on your daily rounds. As you peek in you see her eagerly polish off a decadant-looking chocolate bar. She seems to be more careless on her dieting lately, if her waistline is any indication..."@1042
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
pop.v.i global.hidebody
b [772]

:[748]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You peek into Chloe's office on your walk and immediatly notice the pile of chocolate wrappers scattered on her desk. And then that gut she didn't have yesterday, now wobbling over her lap, immediatly after..."@1043
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oh! Uh. Come in! Sorry for the mess..."@1044
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [750]

:[749]
pushi.e 1
pop.v.i global.hidebody
b [751]

:[750]
pushi.e 0
pop.v.i global.hidebody

:[751]
b [772]

:[752]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You had to restrain a bit of a gasp when you see the ample figure filling out the office chair that used to hold such a petite frame. It takes Chloe a second to notice you as she's clearly lost in an especially fudgy brownie at the minute. When she finally glances over she somehow turns redder than before."@1045
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oooh...Oh I'm simply embarassing lately I know. I swear I'll get back on top of this diet. Today, even. Somehow..."@1046
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Her declaration seems a bit far-fetched though, as she struggles to tug the fabric of her suit around her. Unaware of the chocolate stains on her cheeks."@1047
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [754]

:[753]
pushi.e 1
pop.v.i global.hidebody
b [755]

:[754]
pushi.e 0
pop.v.i global.hidebody

:[755]
b [772]

:[756]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Your eyes go wide when you stop in to see Chloe. You hardly recgonize the red blob reclined back in her comfortable chair and eating steady handfuls of fattening chips out of a bag propped up on her now shelf-like belly."@1048
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hm? Oh. Come in. *BUORP*"@1049
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She doesn't even slow her snacking down for you. So much for getting back on the diet."@1050
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [758]

:[757]
pushi.e 1
pop.v.i global.hidebody
b [759]

:[758]
pushi.e 0
pop.v.i global.hidebody

:[759]
b [772]

:[760]
push.s "Chloe"@619
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "UMPF!? MMF!? A-A little help!?"@1051
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You were making your way to Chloe's office when you heard the cries of distress. It took a second for your brain to parse the wobbling pile of rolls before you as the once slender Chloe! Goodness gracious!!!"@1052
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Is that you, "@1053
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "??? C-Can you come give me a push!?"@1054
add.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You realize Chloe's billowing figure has outgrown her own office door! You jump to help as she instructed and give her wide rear a good shove. (And try not to think about how soft she's gotten) It takes some doing, but in a few moments the monstress finally *POP*s past the doorframe! She stumbled up to her desk with a groan and rubbed at her sore sides."@1055
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "That's it!!! I'm not fooling around anymore! I'm going back on that diet!!!"@1056
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 3
cmp.i.v LT
bf [762]

:[761]
pushi.e 1
pop.v.i global.hidebody
b [763]

:[762]
pushi.e 0
pop.v.i global.hidebody

:[763]
b [772]

:[764]
push.s "Chloe"@619
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "*BUUAARP!!!* Come in!"@1057
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You had a sneaking suspicion that Chloe's wasn't going to get back on top of her diet, even post-door-disaster. But you still wern't ready for the pile of blubber that awaited you! Is she getting bigger...faster??? Apparently it's been getting in the way of work as she's taken to propping her mouse and keyboard up on her belly-shelf where her fat arms and tubby fingers can actually reach. (Along with a personal buffet of junkfood)"@1058
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oh it's you. You know I really have been trying to get back on that diet. I've gotten myself down to just two burgers an hour!!! *URP!* Sometimes. At least."@1059
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "*sigh*"@1060
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 2
cmp.i.v LT
bf [766]

:[765]
pushi.e 1
pop.v.i global.hidebody
b [767]

:[766]
pushi.e 0
pop.v.i global.hidebody

:[767]
b [772]

:[768]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "The first thing you notice when you drop by Chloe's office is she's had the doors remodeled. New double doors that are as wide as a lane of traffic. The next thing you see is so shocking it nearly knocks you off your feet!!! Is that Chloe!? Is that even a monster under all that lard??? She didn't hear you come in...She's busy stuffing her face greedy fist over greedy fist with indulgent chocolate and fatty foods."@1061
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "I'll get back on it in a month I swaer! *URP~!!* Oof. I just need to get all my cravings out of the way. That's all! *BUUUOORRP!**GOBBLE**GULP* I've dieted once I can do it again!"@1062
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You're sure she still doesn't know you're here. You can only assume she's trying to convince herself with this mantra. You clear your throat to announce yourself...but she doesn't notice you still. She's polishing off an entire tray of chocolate cookies! You try again, louder, and she finally snaps around. Her face flushes a deep, deep red beneath a caked layer of crumbs and chocolate sauce."@1063
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Oh! Um...h-how long have you been standing there??? *BUORP!?*"@1064
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [770]

:[769]
pushi.e 1
pop.v.i global.hidebody
b [771]

:[770]
pushi.e 0
pop.v.i global.hidebody

:[771]
b [772]

:[772]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [774]

:[773]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[774]
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [776]

:[775]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [777]

:[776]
push.e 0

:[777]
bf [779]

:[778]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[779]
push.v self.scene
push.s "chloescene"@474
cmp.s.v EQ
bf [817]

:[780]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re caught off guard when you walk into Chloe’s office. She’s shoveling chocolate hand over fist into her gob, clearly upset at something. She doesn’t notice you for a good few moments, more focused on a deep tray of rich, gooey brownies. She’s made a mess of her lipstick with crumbs and chocolate smears. When she does finally glance up she splutters in shock."@1065
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "H-How long have you been standing there?"@1066
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [782]

:[781]
pushi.e 1
pop.v.i global.hidebody

:[782]
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [794]

:[783]
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [787]

:[784]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [786]

:[785]
push.s "Should you be eating those?"@1067
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Is everything all right?"@1068
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[786]
popenv [785]

:[787]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [794]

:[788]
pushglb.v global.choice
dup.v 0
push.s "Should you be eating those?"@1067
cmp.s.v EQ
bt [791]

:[789]
dup.v 0
push.s "Is everything all right?"@1068
cmp.s.v EQ
bt [792]

:[790]
b [793]

:[791]
push.s "Chloe"@619
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "No. No I shouldn’t."@1069
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "She dumps the tray into the garbage. But you see her eyeing it longingly. "@1070
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "I’m so sorry you had to see that...Thanks for coming by and knocking me back to my senses."@1071
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
call.i madechoice(argc=0)
popz.v
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [793]

:[792]
push.l 3
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
add.v.v
push.l 3
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushglb.v global.choice
pop.v.v self.savespot
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "No. No it is not. I’m sorry I’ve got a lot going on right now and I’m at the end of my rope with this bunch! Do you know how many complaints I get from that bloated tick, Stacy alone??? She comes to work and acts like it’s a buffet! And Vic keeps haunting our equipment and terrorizing the interns!? "@1072
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "She groans in frustration and grabs another fistful of brownie. You see the taunt waistband of her skirt strain a bit from all the emotional eating..."@1073
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.choice
pop.v.v self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [793]

:[793]
popz.v

:[794]
push.v self.savespot
push.s "Is everything all right?"@1068
cmp.s.v EQ
bf [807]

:[795]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [807]

:[796]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [800]

:[797]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [799]

:[798]
push.s "Should you be eating so much?"@1074
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "You can talk to me."@1075
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[799]
popenv [798]

:[800]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [807]

:[801]
pushglb.v global.choice
dup.v 0
push.s "Should you be eating so much?"@1074
cmp.s.v EQ
bt [804]

:[802]
dup.v 0
push.s "You can talk to me."@1075
cmp.s.v EQ
bt [805]

:[803]
b [806]

:[804]
push.s "Chloe"@619
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "No. No I shouldn’t."@1069
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "She dumps the tray into the garbage. But you see her eyeing it longingly. "@1070
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "I’m so sorry you had to see that...Thanks for coming by and knocking me back to my senses."@1071
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [806]

:[805]
pushi.e 1
conv.i.v
push.s "brokediet"@38
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Chloe"@619
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Kathy keeps stealing lunches and knocking things off everyone’s desk. Erika refuses to speak up to anyone and the boss, UNGH the boss doesn’t even care about ANY OF IT!?"@1076
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "You watch her shovel the rest of her brownie tray into her cheeks like a starving animal. Then she moves on to a pint of ice cream she brought in??? Where’d she get that?"@1077
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Ungh, I don’t even care how much I’m eating! I’ve had such a horrible afternoon, I deserve it! "@1078
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "She upturns the ice cream pint into her mouth and polishes it off. Every *GULP* stretching her once perfectly slender waistline forward, inch by inch. Until she licks off the last drops and tosses the container onto a pile of other snack packages."@1079
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Oops...I’m so sorry you had to see that… *BUORP*!?"@1080
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [806]

:[806]
popz.v

:[807]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [809]

:[808]
pushi.e 1
pop.v.i global.hidebody

:[809]
pushglb.v global.line
pushi.e 8
cmp.i.v EQ
bf [812]

:[810]
pushi.e 0
pop.v.i global.hidebody
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [812]

:[811]
push.l 11
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
push.l 11
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
sub.v.v
add.v.v
push.l 11
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[812]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [814]

:[813]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [815]

:[814]
push.e 0

:[815]
bf [817]

:[816]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[817]
push.v self.scene
push.s "finalpearl"@459
cmp.s.v EQ
bf [832]

:[818]
pushi.e 1
conv.i.v
push.l 14
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
pop.v.i global.lunch
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Pearl pushed her way through the double doors, instinctively apologizing to anyone she might have bumped. The hostess was forced to dive for cover as Pearl’s hips, swaying like a buoy in a storm, slammed into her podium and knocked it over. Pearl’s grandiose girth rolled around her like waves on a stormy sea. Thick folds of green scaled belly blubber crashed and heaved as she shuffled inside, giving a shy wave to a waiter that balked at her size."@1081
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Wow, this all looks so nice! Are you sure this is okay"@1082
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "? I’d hate for you to have to pay too much for me. Maybe we could have gone somewhere smaller? I don’t mind, honest."@1083
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You eagerly assure her that it’s alright. It’s your treat! You take a moment to speak with one of the staff. Will that booth hold? They give you a shrug. It should. You decide to chance it and start gathering food from the buffet. Pearl is waiting patiently for you to bring over the first course but you can tell she is beside herself with anticipation. She’s grown massive in the past few days and this buffet was sure to be something special."@1084
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Pearl reaches over her belly, grasping for the plates you bring her. A mountain of onion rings and french fries. Simple, but tasty. Pearl downs the plates in record time, already expecting more. Thankfully, you came prepared. You pass up several plates of pizza towards that blubbery visage. Pearl gratefully takes the next few plates and continues her feast. "@1085
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "It was an impressive display, to say the least. Pearl downed the pizza in record time. Her stomach gurgled heavily, stretching and billowing out over the table she was currently smothering with her vast green belly. She only paused for a moment to look around to see if anyone was watching. Most of the other customers had enough sense to avoid being caught staring. Pearl looked hungry enough to down everyone there. Though she’d never do such a thing."@1086
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Mmm! It’s so yummy! Maybe, maybe you could get me some of that salmon I saw? If it’s not too much trouble, of course."@1087
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Pearl belched. Her stomach churned loudly. Proclaiming to all there was plenty more room within. You return again from the buffet, pushing along a trolley piled high with dishes. Pearl’s worries vanished at the sight of all that food and began to cram the offering into her face. That massive belly continued to groan and expand, spreading over the table in the booth. Folds of rich blubber heaved onto the surface, obscuring it from view. She downed entire fish whole and packed away plate after plate of popcorn shrimp. The leviathan had awoken."@1088
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "You were sure some customers were going to think you’d waddled a whale into the buffet. Fish seemed to be on her mind and her demands grew more forceful. “More of that shrimp! And don’t forget the halibut!” She said, spitting out a few bones from another whole roasted bass. “If it’s not too much trouble.” She added, almost as an afterthought. You dashed off to get more food, leaving her to snack on the mountain of food you’d placed on that ever expanding belly."@1089
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "The awakened hunger within that mass of female fishy flesh appeared endless. She shoveled more and more food into her face. Her chins and cheeks jiggled and bounced as she lost herself to the food within reach of those blubber stuffed fingers. It wasn’t long before the entire booth was smothered in her heaving green bulk. One massive divot in the ocean of her belly blubber was the only indication that a table had even been there. "@1090
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "You were soon bringing the beached beauty plates of cake and pie. She downed desserts in single, massive bites, smearing her cheeks with crust and filling. The booth that Pearl’s bulk was smothering began to groan and crack. Like the timbers in a ship being crushed by a kraken, the table under that massive belly collapses! Pearls stomach to rolls against the far seat of the booth and knocks it apart like a tidal wave against a levy. The seat under her enormous rear flattening completely."@1091
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "Pearl looked around herself at the destruction her whale like appetite had wrought. She couldn’t help but try and cover her fat face with her sticky, blubber swaddled fingers. "@1092
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "A-Ah??? Oh dear! I lost control there! But that was soooooooo *burrrp* good!!! Do you think we can come back tomorrow?"@1093
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [820]

:[819]
pushi.e 1
pop.v.i self.showpearl_bg
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v

:[820]
pushglb.v global.line
pushi.e 8
cmp.i.v EQ
bf [823]

:[821]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [823]

:[822]
push.l 11
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
add.v.v
push.l 11
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[823]
pushglb.v global.line
pushi.e 9
cmp.i.v EQ
bf [825]

:[824]
pushi.e 1
pop.v.i global.hidebody

:[825]
pushglb.v global.line
pushi.e 11
cmp.i.v EQ
bf [827]

:[826]
pushi.e 1
pop.v.i self.showpearl
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v

:[827]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [829]

:[828]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [830]

:[829]
push.e 0

:[830]
bf [832]

:[831]
pushi.e 1
conv.i.v
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[832]
push.v self.scene
push.s "seenPearl"@440
cmp.s.v EQ
bf [857]

:[833]
pushi.e 0
pop.v.i global.cutmusic
push.l 2
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [842]

:[834]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [843]

:[835]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [844]

:[836]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [845]

:[837]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [846]

:[838]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [847]

:[839]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [848]

:[840]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [849]

:[841]
b [850]

:[842]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "During your walk around the office you stop by Pearl's reception desk. When she sees you coming she hurriedly pushes a chip bag out of sight."@1094
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "O-Oh! H-Hi!"@1095
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [850]

:[843]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You pass by the front desk on your walk. Pearl was mid-snack when she saw someone approaching and almost hurried it away. But upon realizing it's just you she sighs in relief and goes right back to grazing."@1096
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Don't tell the boss I'm snacking on the job~ P-Please."@1097
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [850]

:[844]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You take some time to stop by Pearl during your walk. You can't help but immediately notice her prominent belly stretching against her sweater."@1098
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hi "@1099
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "! S-Sorry for all the mess."@1100
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She tries to brush off the crumbs and blushes a little, realizing how fat she's been getting."@1101
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
b [850]

:[845]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You walk up to Pearl's desk and are immediately floored by how much she's changed from when you first met. Her plump figure wobbles in all directions over the sides of her chair. She's forced into a recline to make room for the bulbous belly resting over her lap. But none of this seems to bother her any, as she's still snacking as always."@1102
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "! It's so good to see you today!"@1103
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She smiles sweetly at you with adorable blubbery cheeks. But then she glances down and blushes a little at herself."@1104
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "U-Um...don't tell the boss I've been sneaking so many snacks up here, kay?"@1105
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
b [850]

:[846]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Your eyes go wide when you stop in to see Pearl. You hardly recognize the blob reclined back in her comfortable chair and eating steady handfuls of fattening chips out of a bag propped up on her now shelf-like belly."@1106
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hm? Oh! Is someone there? *BUORP*"@1107
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She's not that discrete for someone who's so worried about being caught secret snacking."@1108
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
b [850]

:[847]
push.s "Pearl"@620
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "O-Oh no!!!"@1109
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You were making your way to Pearl's desk when you heard the cries of distress. You immediately hurry over but stop cold in your tracks and balk at the wobbling cascade of fat rolls before you. Is that really Pearl!? She wasn't that big yesterday!!! You're so floored by her enormity it takes you a second to realize the source of her distress...An empty candy bowl. The one set out for guests."@1110
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "I-I only meant to have a couple! I swear! Oh no..."@1111
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "She worriedly fiddles with the bowl as if somehow the candy were only hiding in some crevice. You sigh, and reassure her there's more candy to refill the bowl. But, this time, to make sure it gets placed out of arms reach..."@1112
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
b [850]

:[848]
push.s "Pearl"@620
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "O-Oh! *gulp* Hi"@1113
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "!"@1114
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "At this point you just expected to find Pearl burying the chair she sits on in an ever thickening ocean of fat rolls. But even still you still weren't ready for the the land whale the receptionist had become! Is she getting bigger...faster??? Apparently your astonishment was written on your face as Pearl blushes and squirms a little in her place."@1115
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "O-Oh. Is it really that noticeable? Ha...haha..."@1116
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
b [850]

:[849]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "As you start your walk through the office you just barely stifle a gasp at the wobbling green blob sitting by the entrance. You can hardly make out the visage of Pearl overflowing her desk! Lost in waves of jiggling fat as she uses her webbed hands like plows pushing piles of snacks into her ready, eager maw. Multiple beeps and tones of various office electronics chirp helplessly, muffled somewhere under the avalanche of fat! You almost feel sorry for them."@1117
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "! It's so good to see you today! *BUARP!?* A-ah...um...d-don't tell the boss I've been eating so much up here. *urp* Okay~? Tee-Hee!"@1118
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You're honestly not sure how to respond to that...You just agree not to, for all that's worth."@1119
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
b [850]

:[850]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [852]

:[851]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[852]
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [854]

:[853]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [855]

:[854]
push.e 0

:[855]
bf [857]

:[856]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[857]
push.v self.scene
push.s "pearlscene"@477
cmp.s.v EQ
bf [903]

:[858]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "On your walk around the office, you decide to check up on the receptionist first."@1120
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Welcome to the office! You’re the new hire right? Can I get your name? "@1121
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "? Lovely! My name’s Pearl~"@1122
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You and Pearl have a quick chat, she seems very friendly. But as you’re about to walk off Pearl nervously shuffles a little in her place, it's clear she wants to say something. So, you ask what's up?"@1123
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "O-oh! Well. We used to have a candybowl up here at the desk a while back. Before the...incident. But I think it's been long enough now! D-do you think we could put one out again? You’d be the one to ask I think"@1124
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "O-oh…"@1125
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "You couldn't help but notice her push something away under her desk. "@1126
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "That's probably for the better anyways...these things don't last long around here."@1127
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [860]

:[859]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[860]
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [875]

:[861]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [865]

:[862]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [864]

:[863]
push.s "Sure"@800
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

:[864]
popenv [863]

:[865]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [875]

:[866]
pushglb.v global.choice
dup.v 0
push.s "Sure"@800
cmp.s.v EQ
bt [869]

:[867]
dup.v 0
push.s "No"@667
cmp.s.v EQ
bt [873]

:[868]
b [874]

:[869]
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
add.v.v
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Pearl"@620
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Oh boy!!! The old bowl is somewhere in the breakroom, and I picked out a few different kinds of candy already. I just couldn't decide!!!"@1128
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "She immediately produces much more than a few bags of candy. She was fully prepared for this. "@1129
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "Oh, but the bowl can only hold one bag. Which kind should we use? Wait! We can mix and match! But which ones? I should taste test! And then we can just eat the rest~ "@1130
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "It's becoming apparent she was mostly just excited to have candy at work. She opened a few of the bags and immediately started popping sweets into her mouth. She offered you as much as you liked and you graciously accepted. But she was clearly enjoying them more than you."@1131
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.l 7
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [871]

:[870]
push.s "Oof...I really should slow down. Anyways could you get the bowl from the breakroom? I can’t leave the front desk unattended. Hmm...But do you mind if I have a bit more of the candy? A few more won’t hurt~"@1132
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
b [872]

:[871]
push.s "Oof...I really should slow down. Anyways could you get the bowl from the breakroom? I can’t leave the front desk unattended. "@1133
pushi.e -5
pushi.e 11
pop.v.s [array]global.text

:[872]
pushi.e 7
pop.v.i global.line
pushi.e 1
conv.i.v
push.s "gotcandybowl"@498
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v
b [874]

:[873]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [874]

:[874]
popz.v

:[875]
pushglb.v global.line
pushi.e 11
cmp.i.v EQ
bf [889]

:[876]
push.l 7
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [878]

:[877]
push.s ""@150
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "She sensibly tucked away the rest of the candy bags. But you had a sneaking suspicion she would be snacking on them throughout the day anyways. You fetch the bowl and she fills it with what’s left of her stash. It’s not much, but it feels kind of nice to already do something useful around the office."@1134
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
b [889]

:[878]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [882]

:[879]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [881]

:[880]
push.s "Sure?"@1135
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Maybe slow down."@1136
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[881]
popenv [880]

:[882]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [889]

:[883]
pushglb.v global.choice
dup.v 0
push.s "Sure?"@1135
cmp.s.v EQ
bt [886]

:[884]
dup.v 0
push.s "Maybe slow down."@1136
cmp.s.v EQ
bt [887]

:[885]
b [888]

:[886]
pushi.e 1
pop.v.i self.confirm
push.s ""@150
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "She squees with delight and pops a few more in her mouth as you walk off. You find her mannerisms adorable, though you are a bit worried about her candy obsession...You find the bowl in the breakroom after some rummaging around and return shortly. You’re immediately taken off guard by what you find."@1137
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "Pearl groans and clutches her complaining gut. Half the enormous candy hoard she brought had disappeared??? How did she do it!?"@1138
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "Whoops. I um...did it again *urp*"@1139
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "She tries to smile sheepishly and you just sigh and set the bowl on the counter. Pearl fills it with what’s left of her stash. You can tell she still hasn’t learned her lesson however, as she hungrily eyes the bowl of goodies. It’s not much, but it feels kind of nice to already do something useful around the office."@1140
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [888]

:[887]
push.s "Pearl"@620
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "Yeah, you’re right. I make myself sick on this stuff too often. "@1141
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "She sensibly tucked away the rest of the candy bags. But you had a sneaking suspicion she would be snacking on them throughout the day anyways. You fetch the bowl and she fills it with what’s left of her stash. It’s not much, but it feels kind of nice to already do something useful around the office."@1134
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [888]

:[888]
popz.v

:[889]
push.v self.confirm
pushi.e 1
cmp.i.v EQ
bf [898]

:[890]
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [892]

:[891]
pushi.e 1
pop.v.i global.hidebody

:[892]
pushglb.v global.line
pushi.e 13
cmp.i.v EQ
bf [898]

:[893]
pushi.e 0
pop.v.i global.hidebody
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [895]

:[894]
push.l 13
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
b [896]

:[895]
push.e 0

:[896]
bf [898]

:[897]
push.l 11
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
push.l 11
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
sub.v.v
add.v.v
push.l 11
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[898]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [900]

:[899]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [901]

:[900]
push.e 0

:[901]
bf [903]

:[902]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[903]
push.v self.scene
push.s "confrontedkathy1"@533
cmp.s.v EQ
bf [947]

:[904]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "When you walk up to Kathy’s desk she’s vigorously grooming her paws. You try not to think about how unsanitary that is and assure yourself she actually washes her hands later. "@1142
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushi.e 0
conv.i.v
push.l 6
conv.l.v
call.i call_actors(argc=2)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [917]

:[905]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [909]

:[906]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [908]

:[907]
push.s "Ask about Jesse’s lunch"@1143
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Drop it"@1144
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[908]
popenv [907]

:[909]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [917]

:[910]
pushglb.v global.choice
dup.v 0
push.s "Ask about Jesse’s lunch"@1143
cmp.s.v EQ
bt [912]

:[911]
b [916]

:[912]
push.s "chosevic1"@530
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [914]

:[913]
pushi.e 1
conv.i.v
push.s "maybelater"@536
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hm? M’wat about it? :3c"@1145
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She blinks at you with wide, adorable eyes. But you can tell it’s an act. You press further."@1146
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "So what if I did~? Maybe it was just an accident~? I don’t think either of them are in the mood to hear it right now anyways. I’m not getting anywhere near the middle of that right me-ow. Pretty sure she’d bite my head off. Maybe later~"@1147
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "She’s right...Tensions are high. Maybe later is a good idea."@1148
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
b [915]

:[914]
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hm? M’wat about it? :3c"@1145
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She blinks at you with wide, adorable eyes. But you can tell it’s an act. You press further."@1146
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "So what if I did~?"@1149
pushi.e -5
pushi.e 3
pop.v.s [array]global.text

:[915]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [916]

:[916]
popz.v

:[917]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [919]

:[918]
push.s "chosevic1"@530
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [920]

:[919]
push.e 0

:[920]
bf [928]

:[921]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [925]

:[922]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [924]

:[923]
push.s "Tell her to apologize to Jesse"@1150
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Drop it"@1144
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[924]
popenv [923]

:[925]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [928]

:[926]
pushglb.v global.choice
push.s "Tell her to apologize to Jesse"@1150
cmp.s.v EQ
bf [928]

:[927]
push.s "Kathy"@623
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "No >:3 Why should I? "@1151
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[928]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [942]

:[929]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [933]

:[930]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [932]

:[931]
push.s "Jesse and Vic are fighting over it"@1152
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "It’s the right thing to do"@1153
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "You’ll tell Chloe"@1154
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[932]
popenv [931]

:[933]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [942]

:[934]
pushglb.v global.choice
dup.v 0
push.s "Jesse and Vic are fighting over it"@1152
cmp.s.v EQ
bt [938]

:[935]
dup.v 0
push.s "It’s the right thing to do"@1153
cmp.s.v EQ
bt [939]

:[936]
dup.v 0
push.s "You’ll tell Chloe"@1154
cmp.s.v EQ
bt [940]

:[937]
b [941]

:[938]
push.s "Kathy"@623
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "So? (Yeah that went as well as you thought it would…)"@1155
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
call.i madechoice(argc=0)
popz.v
b [941]

:[939]
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "She laughs so hard she almost falls out of her chair. Yeah, that went as well as you thought it would..."@1156
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
call.i madechoice(argc=0)
popz.v
b [941]

:[940]
pushi.e 1
conv.i.v
push.s "kathyconfess"@534
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "At that she stiffens up. Clearly you hit the mark."@1157
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Ungh, FINE! It’s not like she needed lunch anyways. Have you SEEN her lately???"@1158
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Kathy huffs off towards Jesse’s desk. That’s one mystery solved!"@1159
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [941]

:[941]
popz.v

:[942]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [944]

:[943]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [945]

:[944]
push.e 0

:[945]
bf [947]

:[946]
call.i madechoice(argc=0)
popz.v
pushi.e 16
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[947]
push.v self.scene
push.s "finalkathy"@462
cmp.s.v EQ
bf [962]

:[948]
pushi.e 1
conv.i.v
push.l 14
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
pop.v.i global.lunch
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "The doors to the little sushi shop weren’t designed to take someone of Kathy’s size. The doors burst open, almost snapping off their hinges, as the fattened feline squeezes herself through the door."@1160
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Just give me a little shove, "@1161
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "!"@1114
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Kathy purred, her tail flicking around above that enormous backside. You put your shoulder into that wall of blubber and help squeeze her into the restaurant. Several tables are knocked aside as her bulk fills up the entrance way. The little sushi shop is the kind Kathy had said she’d wanted to go to for ages. The kind with conveyor belts rolling past with all sorts of different dishes to choose from."@1162
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Oh doesn’t this all look so delicious!"@1163
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Kathy tugs her bulk past several booths towards a larger table closest to the conveyor belts. You give a helpless shrug to one of the waiters staring in awe at the massive feline you’ve brought to presumably eat them out of house and home. She wastes no time in shoving herself into a booth, her stomach rolling over top of it in a sea of soft, black velvety blubber."@1164
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Kathy looks over the passing dishes, raw hunger obvious in her eyes. She grabs up a few of the plates of sushi, popping them into her muzzle one by one. You move up beside the table, checking to see if she needs anything but it’s obvious the belt isn’t moving fast enough. She asks you to go check if maybe the staff could do something about it. A mischievous glint in her eye."@1165
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Not wanting to upset her, you leave her side to go speak with the staff. It takes a moment to flag down a member of the staff and you explain the situation. The waiter lets you know that the conveyor is at a fixed rate and can’t go any faster. At the same time another customer approaches to complain about the lack of any dishes making it to them. It only takes you a moment to figure out what is going on."@1166
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "You rush back to where Kathy sits and find a tall pile of plates sitting on her swollen belly. That vast bulk of feline flab has stretched her jacket to the breaking point. Buttons begin to ping off one by one as she uses her fat but powerful paw to drag the conveyor belt along at a faster pace while she stuff her fat snout with the other. The sounds of grinding gears and machinery fill the restaurant as you watch that belly bloat rounder and rounder."@1167
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Sorry, "@1168
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s ", but I just couldn’t help myself. You wouldn’t want me to waste away would you? Be a dear and hand me some of that shrimp. I seem to be stuck."@1169
add.s.v
pushi.e -5
pushi.e 8
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "You quickly move in to help, pushing plate after plate of shrimp, salmon, butter fish and tuna to her eager fat maw. A trawler’s worth of seafood seems to flow into her muzzle, stretching her belly wider and wider. Her enormous chest heaving atop that swollen belly which dominates her entire form. The table under her massive middle soon buckles and sends her belly crashing to the floor with a building shaking thump."@1170
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "A deep, resonating purr rumbles out from that seafood stuffed middle. Kathy’s fat paws began to knead and press into her sides as she licked her snout clean of rice and soy sauce."@1171
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "Mmm, simply divine. But, don’t you think I could have just a few more pieces?"@1172
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "She’s giving you a look that might have been sympathetic were it not for the shine on the teeth in that fat swaddled muzzle. You quickly move to grab her whatever is left on the conveyor belt. Other customers hold their tongues as you snatch up food before they can grab it. It’s all in the service of that massive belly and a predator that simply must be fed."@1173
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "Finally, the last few pieces of sushi disappear into that floor smothering belly. Kathy leans back against the conveyor belt. Her enormous frame has already enveloped most of the belt, crushing it under her weight. She gives you a contented look from atop her mountainous frame."@1174
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "Mmm, what a delightful idea, "@1175
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s ". I wonder if there are any other places *Burp* like this in town?"@1176
add.s.v
pushi.e -5
pushi.e 14
pop.v.v [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [950]

:[949]
pushi.e 1
pop.v.i self.showkathy_bg
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 6
conv.l.v
call.i call_actors(argc=2)
popz.v

:[950]
pushglb.v global.line
pushi.e 13
cmp.i.v EQ
bf [953]

:[951]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [953]

:[952]
push.l 11
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
add.v.v
push.l 11
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[953]
pushglb.v global.line
pushi.e 14
cmp.i.v EQ
bf [955]

:[954]
pushi.e 1
pop.v.i global.hidebody

:[955]
pushglb.v global.line
pushi.e 14
cmp.i.v EQ
bf [957]

:[956]
pushi.e 1
pop.v.i self.showkathy
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v

:[957]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [959]

:[958]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [960]

:[959]
push.e 0

:[960]
bf [962]

:[961]
pushi.e 1
conv.i.v
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[962]
push.v self.scene
push.s "seenKathy"@443
cmp.s.v EQ
bf [1011]

:[963]
pushi.e 0
pop.v.i global.cutmusic
push.l 2
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [972]

:[964]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [976]

:[965]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [980]

:[966]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [984]

:[967]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [988]

:[968]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [992]

:[969]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [996]

:[970]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [1000]

:[971]
b [1004]

:[972]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You spot Kathy at her desk polishing off something. She doesn't seem to notice the bits of frosting decorating her whiskers."@1177
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oh hello. What could you pawsiblly want, Fishcakes?"@1178
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [974]

:[973]
pushi.e 1
pop.v.i global.hidebody
b [975]

:[974]
pushi.e 0
pop.v.i global.hidebody

:[975]
b [1004]

:[976]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Kathy drums her claws against the cubicle wall as you pass. The feline is looking fluffier than ever, and sporting less lap space too."@1179
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Ugh is it lunchtime yet? It's been furever since I ate something. Urp."@1180
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [978]

:[977]
pushi.e 1
pop.v.i global.hidebody
b [979]

:[978]
pushi.e 0
pop.v.i global.hidebody

:[979]
b [1004]

:[980]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You spot Kathy leaning back in her chair. The seat groans in protest. Her belly wobbles heavily to each side as she swivels in her seat."@1181
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Look pal, if you don't want a cat-tastrophe on your hands, I expect my order here in less than 15 minutes."@1182
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "The fat feline glances up at you before tapping a claw to the headset she was talking into."@1183
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "And don't skimp on the sauce, nyah~"@1184
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [982]

:[981]
pushi.e 1
pop.v.i global.hidebody
b [983]

:[982]
pushi.e 0
pop.v.i global.hidebody

:[983]
b [1004]

:[984]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Kathy stands behind her computer, belly digging into the desk with a heavy squish. Candy wrappers litter her cubicle and the remnants of her chair lie in a pile of parts in the corner of the cubicle. You take it she isn't standing for the sake of her health."@1185
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hm? What’s with the face? Cat got your tongue~? >:3c"@1186
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [986]

:[985]
pushi.e 1
pop.v.i global.hidebody
b [987]

:[986]
pushi.e 0
pop.v.i global.hidebody

:[987]
b [1004]

:[988]
push.s "Sales is rather quiet when you enter. You search the rows for Kathy, but can't spot the heavy feline anywhere. It's then that the vent grates rattle and the cubicle walls wobble. Soft heavy footsteps pad behind you."@1187
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Did you, urf, need me-ow?"@1188
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You turn to see the feline herself filling up the space between the cubicles behind you. Her heavy belly roll across her legs and bobbed gently inches above the carpet. Her eyes locked on to you with a judgemental and possibly hungry stare."@1189
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 2
cmp.i.v LT
bf [990]

:[989]
pushi.e 1
pop.v.i global.hidebody
b [991]

:[990]
pushi.e 0
pop.v.i global.hidebody

:[991]
b [1004]

:[992]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "There’s a heavily rattling of cabinets when you enter sales. You find a certain massive feline stuck, her gut smooshed between one row of file cabinets and her rear end spread against the opposite row. Whatever she had tried to look for was eluding her. Every step she took to bend or move resulted in more cabinets getting smooshed or knocked over, causing a loud ruckus. Spotting you she blushed."@1190
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Don't you dare laugh, or I'll pursonally see to HR about you."@1191
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [994]

:[993]
pushi.e 1
pop.v.i global.hidebody
b [995]

:[994]
pushi.e 0
pop.v.i global.hidebody

:[995]
b [1004]

:[996]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "At this point you’ve been anticipating another ‘growth spurt’ from Kathy. But even still you splutter when you see what’s become of your coworker."@1192
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "The once fit feline was now filling every inch of cubicle space she had and then some. Her furry body wobbled like pudding in its container, rolls and hips bucking against the walls with every shift of movement. Accommodations had been made, with her keyboard and monitor now resting on her belly shelf. Unfortunately she was still finding it difficult to reach, fat paws barely managing to hit the keys."@1193
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [998]

:[997]
pushi.e 1
pop.v.i global.hidebody
b [999]

:[998]
pushi.e 0
pop.v.i global.hidebody

:[999]
b [1004]

:[1000]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "More whale than cat, Kathy was quite a sight. The mound of corporate blubber sat contentedly on what was left of her cubicle, as well as the neighboring desks. Space was being cleared around her as grumbling sales associates now had to incorporate her bulk into the floor plan. Kathy on the other hand seemed unfazed with her now immense form. Rather than occupy herself with her work, she was busying eating snacks she had made one of her coworkers bring her. Spotting you, she purred between bites."@1194
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Mrow, puuuuurfect timing. I've been expecting you. What do you, urp, have for me? Any treats?"@1195
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1002]

:[1001]
pushi.e 1
pop.v.i global.hidebody
b [1003]

:[1002]
pushi.e 0
pop.v.i global.hidebody

:[1003]
b [1004]

:[1004]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1006]

:[1005]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[1006]
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1008]

:[1007]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1009]

:[1008]
push.e 0

:[1009]
bf [1011]

:[1010]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1011]
push.v self.scene
push.s "mysterysolved"@535
cmp.s.v EQ
bf [1017]

:[1012]
push.s "Jesse"@624
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Hey, Kathy came by an’ actually fessed up to somethin’!!! I gotta say I’m impressed. Did’ja threaten Chloe on her? Works every time. I figure I should apologize to Vic for the trouble…"@1196
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "But man, if it ain’t this it’s another thing. I don’ really feel like apologizin’ to her right now. Maybe I’ll do it later. "@1197
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Jesse returns to her work. Obviously busy right now. You suppose that’s the best you could hope for in this situation. At least you found the real culprit in the end. "@1198
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushi.e 0
conv.i.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1014]

:[1013]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1015]

:[1014]
push.e 0

:[1015]
bf [1017]

:[1016]
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
add.v.v
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
add.v.v
push.l 3
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1017]
push.v self.scene
push.s "finaljesse"@463
cmp.s.v EQ
bf [1032]

:[1018]
pushi.e 1
conv.i.v
push.l 14
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
pop.v.i global.lunch
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "The fake saloon doors of the BBQ joint slam open from the force of the belly bouncing against them. Jesse, her stomach bouncing heavily, waddles through the opening."@1199
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Alright "@1200
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "! Y’all been teasin’ me ‘bout goin’ to a real restaurant! Well, here we are! Time to treat ya to a real meal!"@1201
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You look around the place. True to her word, Jesse had brought you to a real barbecue joint. Sawdust covers the floors and sets of antlers (willingly donated, of course) hang on the walls above paintings of cowboys and other suitably cowboyish scenes. Jesse tugs down her shirt, trying to cover the swell of her well fed belly, before marching past a waiter dressed as a sheriff."@1202
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "She barks for everyone to clear the way! Smothering the worker against a booth in a wall of fur covered blubber. You follow along behind the swaying rump of that larger than life canine, mouthing apologies as you go. Jesse makes her way through the tables and booths, heading for what looks like a stage. You ask her what she had in mind. Didn’t she want to just have a meal?"@1203
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Jesse laughed at that, belly and chest heaving as she makes her way up onto the stage. The floorboards underneath her groaned as she shuffles over to a large table and chair above which hangs a sign covered in lights. You look up and see the words ‘The Belly Buster Buffet! Finish in an hour and get your meal free!’ One look at Jesse tells you all you need to know."@1204
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "‘Course, I ain’t gonna do this alone. Rules say I can have a pardner! Someone to help get the from the table to my mouth. You up for it? Or Are ya gonna chicken out?!"@1205
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You can’t help but nod eagerly. Jesse looks ready to show you how a true carnivore feasts. Who’d wanna pass that up? One of the waiters pulls a whistle from their apron and blows on it, starting a timer just as the first platter of food is set in front of Jesse. A mountain of ribs, glistening with sauce and fat. Jesse tears into the pile immediately while you watch ribs stripped to the bone in mere seconds."@1206
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "’Next!’ Jesse shouts, picking a chunk of meat out of her fangs. The plate is quickly replaced by another plate of ribs. She frowns down at the meager meal and gives you a look. You recognize the look on that face. Jesse was a predator, a true carnivore, she needed more than this. Without missing a beat you make your way off the stage and rush to the kitchens, explaining to the staff that Jesse wants the entire meal, at once. The staff look confused but they nod, not wanting to make a werewolf angry."@1207
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Jesse looks up from her second plate, her look of displeasure turning into a grin as she sees you leading a procession of food. She laughs, patting the sides of her belly, instructing you to park it all right there. The previous plates are cleared from the table and replaced with steaks, burgers, ribs, chicken wings, and pulled pork, all of it smothered in a rich sauce. Jesse can barely contain herself as she digs in."@1208
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "A crowd quickly gathers while the werewolf stuffs herself. Plates are cleared in mere seconds and you replace them just as quickly. The rest of the staff doesn’t dare move too close to the immense wall of werewolf blubber that sat at that table but you knew Jesse. You slip plates out from under sauce smeared paws, exchanging empty for full. All the while marvelling as Jesse’s furred bulk swells and stretches."@1209
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "Her enormous stomach swells and presses outwards, rolling past her lap and drooping towards the floor. The buttons on her top fire off one by one, showing the straining bra under her shirt but she paws little mind to how she looks. She was  hungry and she was being fed, what else was there to think about? You rush off the stage and come back with another chair just as her large backside swells out of the chair, ripping her pants down the back and letting more blubber flow free."@1210
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "Those fat paws continue to reach over the heft and bulk of her stomach, forcing whole steaks into her maw, juices dripping down her fat cheeks and chins. She clears plates in a matter of bites, letting them slide off her belly and clatter to the floor. You’re there beside her though, always offering more. Pushing more into that greedy maw and stretching that enormous, rippling bulk rounder and wider. The sound of creaking wood fills the restaurant as Jesse’s frame expands and swells."@1211
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "Furred blubber swells out in all directions as Jesse continues her ravenous feast. The chairs under her massive rear collapse under her bulk but that doesn’t stop her. She merely rolls forward onto her belly, sitting atop that bbq stuffed belly, shoveling food into her muzzle. You find yourself struggling to keep up with her appetite but finally the last few strips of meat and racks or ribs disappear into Jesse’s sloshing, bloated frame."@1212
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "Urrarrrp! That was a damn good feed!!!"@1213
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "You stand back from her massive frame. She’d completely beached herself. The stage was crushed beneath the mass of her enormous frame. The manager comes over to inform you that Jesse has eaten enough for two contestants and in half the time. Jesse just gives you a sauce smeared grin."@1214
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "See? Told ya I’d treat ya to a meal!"@1215
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1020]

:[1019]
pushi.e 1
pop.v.i self.showjesse_bg
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v

:[1020]
pushglb.v global.line
pushi.e 11
cmp.i.v EQ
bf [1023]

:[1021]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [1023]

:[1022]
push.l 11
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
add.v.v
push.l 11
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[1023]
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [1025]

:[1024]
pushi.e 1
pop.v.i global.hidebody

:[1025]
pushglb.v global.line
pushi.e 14
cmp.i.v EQ
bf [1027]

:[1026]
pushi.e 1
pop.v.i self.showjesse
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v

:[1027]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1029]

:[1028]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [1030]

:[1029]
push.e 0

:[1030]
bf [1032]

:[1031]
pushi.e 1
conv.i.v
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1032]
push.v self.scene
push.s "seenJesse"@444
cmp.s.v EQ
bf [1073]

:[1033]
pushi.e 0
pop.v.i global.cutmusic
push.l 2
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [1042]

:[1034]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [1043]

:[1035]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [1044]

:[1036]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [1049]

:[1037]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [1050]

:[1038]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [1055]

:[1039]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [1060]

:[1040]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [1063]

:[1041]
b [1068]

:[1042]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "A loud yawn more akin to a howl echoed through Sales. You could see Jesse at her desk, wiping off a bit of coffee from her lips. The canine tiredly slumped over her keyboard looking through files, her paunch of a gut pressing into the waistband of her pants."@1216
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
b [1068]

:[1043]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Jesse sat back in her chair with her boots propped on her desk. Her belly seemed rather sizeable now and was currently swaying with a bit of wobble as she lounged. Catching sight of you she immediately sits up straight, that poor chair groaning loudly."@1217
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
b [1068]

:[1044]
push.s "Jesse"@624
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "A bit of a suprise aint it? "@1218
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Jesse patted her gut as she walked up. She had noticed your double take when you saw her coming. That belly of hers was sticking out a solid foot now and gave a bounce with each step as her thighs smacked against it. You could have sworn the floor vents were rattling when she stepped too."@1219
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Eyes are up here pal, do ya need something?"@1220
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1046]

:[1045]
pushi.e 1
pop.v.i global.hidebody

:[1046]
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [1048]

:[1047]
pushi.e 0
pop.v.i global.hidebody

:[1048]
b [1068]

:[1049]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Jesse's suit was really straining lately. Split threads, missing buttons. You heard through the company grape vine that the canine was making visits to the tailors nearly every day, but looking at her now it was clear she couldn't keep up with her appetite. She didn't seem too embarrassed when you showed up though, waving her claws at you as you stopped by. After all, your presence means more snacks for the gals around the office didn't it?"@1221
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
b [1068]

:[1050]
push.s "Jesse"@624
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Oof, could ya watch where yer goin pal? "@1222
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You spot Jesse down the row of cubicles, some poor intern laying on the floor surrounded by flittering papers. Jesse stood beyond him, rubbing her wobbling middle. She filled up most of the space, with a belly that hung inches from the floor and hips that could block a fire exit. Were massive werewolves OSHA approved? That intern probably didn't see her or her gut coming at all."@1223
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1052]

:[1051]
pushi.e 1
pop.v.i global.hidebody

:[1052]
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [1054]

:[1053]
pushi.e 0
pop.v.i global.hidebody

:[1054]
b [1068]

:[1055]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Passing through sales, you notice the caution tape criss crossing in front of the service elevator. The doors sport massive dents around the middle and peeking through you can spot the broken flooring of the elevator car. Whatever happened to it you could only guess."@1224
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Shame ‘bout the elevator. Dunno what could have done it."@1225
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You feel something soft spread against your back. You turn only to see Jesse behind you, more hippo than wolf judging by the sheer size of her. She pushed an eclair past her lips and swallowed it whole, licking her teeth. "@1226
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "...what?"@1227
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1057]

:[1056]
pushi.e 1
pop.v.i global.hidebody

:[1057]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [1059]

:[1058]
pushi.e 0
pop.v.i global.hidebody

:[1059]
b [1068]

:[1060]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "It wasn't hard to find Jesse. Not anymore at least. The werewolf was a whopper at this point. You don't know when the last time her feet touched solid ground, but any mobility was behind her now as well as the wreckage of her former cubicle. The whale of a hound perked when she saw you coming, that tail wagging. After all, surely you had some treats on you."@1228
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1062]

:[1061]
pushi.e 1
pop.v.i global.hidebody

:[1062]
b [1068]

:[1063]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "How the werewolf didn't just fall through the floor itself was beyond you. How would you describe Jesse now? Massive? Excessive? Preposterous? She seemed to ripple with every breath, that huge body of hers wobbling against the neighboring cubicles. Could she even work like this? As far as you could tell, this massive mountain of mutt could barely reach past her wobbling jugs, and definitely didn't have the stamina to start trying."@1229
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Sorry, *huff* Little winded. The airlift to work wasn't easy... woof. Got any, urp, snacks?"@1230
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1065]

:[1064]
pushi.e 1
pop.v.i global.hidebody

:[1065]
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [1067]

:[1066]
pushi.e 0
pop.v.i global.hidebody

:[1067]
b [1068]

:[1068]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1070]

:[1069]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1071]

:[1070]
push.e 0

:[1071]
bf [1073]

:[1072]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1073]
push.v self.scene
push.s "deathbymold"@358
cmp.s.v EQ
bf [1107]

:[1074]
push.v self.vmode
pushi.e 0
cmp.i.v EQ
bf [1104]

:[1075]
pushi.e 11
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1079]

:[1076]
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [1078]

:[1077]
push.l 5
pop.v.l self.me

:[1078]
popenv [1077]

:[1079]
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1081]

:[1080]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[1081]
push.s "Victoria"@622
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Oh wow! You failed in every way you possibly could have! Now there’s toxic mold growing into the servers!!! The least you can do is give me a hand… I’ve got a plan to get rid of it. You in?"@1231
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Great~ Follow me."@1232
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You follow the specter through the maze of server towers to the “EMERGENCY EXIT” door in the back. It’s barricaded with a sheet of plywood and painted with a crude “DO NOT ENTER” in red. You’re just wondering if this flimsy plank would ever actually keep someone out when Vic rips it off the wall with one easy motion. She opens the door and waves you inside, the smell is immediately overwhelming... But you follow. As soon as you walk through, she lets the door close behind you two. You hear a *click*."@1233
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "There’s no re-entry to the office from the stairway, except to the main floor. But that’s been heavily sealed to keep the mold in. All the floors have been, actually."@1234
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "The thick air is swirling around you. You try to pull your shirt up over your face as a flimsy attempt to filter the stench out but you’re already feeling light-headed. She must have known the question already on your mind because she continues..."@1235
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "How are we going to get out? Oh, that’s easy, of course. I can just go through the door, like this."@1236
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "With that she floats backwards and through the wall like a ghost, duh."@1237
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "You, however, can just stay in there~"@1238
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "An immediate jolt of terror hits you as she snickers these words. You run to the door and start banging on its slimy surface. The effects of the mold are already eating at your consciousness, however. It sure works quick! You’re sputtering and coughing in the toxic fog, demanding answers."@1239
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "I said we were getting rid of the mold? What? No I said we were getting rid of “it” and “it” was “you”. Because “you” are the problem. The boss was just gonna eat you anyways for fucking this up. Would you rather be eaten alive and die of dino-breath or go out kicking? Kicking against this door, of course. No one’s going to hear you btw, so don’t get hopeful~"@1240
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "You feel the world spinning around you. Despite the fact you were standing in one spot, it feels like the ground slips out from under you and you topple over onto the slimy floor. You know if you try to get up again you’re just going to fall so you lay flat on your back and resign to your gruesome fate. The last coherent thoughts you have through the cloud of mold eating your brain is that at least you don’t have to go to work tomorrow..."@1241
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1094]

:[1082]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1086]

:[1083]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [1085]

:[1084]
push.s "Yes?"@731
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "No?"@732
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[1085]
popenv [1084]

:[1086]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [1094]

:[1087]
pushglb.v global.choice
dup.v 0
push.s "Yes?"@731
cmp.s.v EQ
bt [1090]

:[1088]
dup.v 0
push.s "No?"@732
cmp.s.v EQ
bt [1091]

:[1089]
b [1093]

:[1090]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [1093]

:[1091]
pushi.e 1
pop.v.i self.vmode
call.i madechoice(argc=0)
popz.v
popz.v
exit.i

:[1092]
b [1093]

:[1093]
popz.v

:[1094]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [1096]

:[1095]
pushi.e 1
pop.v.i global.hidebody

:[1096]
pushglb.v global.line
pushi.e 8
cmp.i.v EQ
bf [1099]

:[1097]
pushi.e 5
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1099]

:[1098]
pushi.e 5
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[1099]
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1101]

:[1100]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1102]

:[1101]
push.e 0

:[1102]
bf [1104]

:[1103]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1104]
push.v self.vmode
pushi.e 1
cmp.i.v EQ
bf [1107]

:[1105]
push.s "Wow. You’re incompetent as shit! I can’t wait for the boss to eat you."@1242
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [1107]

:[1106]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1107]
push.v self.scene
push.s "finalvic"@457
cmp.s.v EQ
bf [1122]

:[1108]
pushi.e 1
conv.i.v
push.l 14
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
pop.v.i global.lunch
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re a little nervous about the place Victoria tells you about. Not that you have anything against treating her to a night out, but the place she wants to go seems pretty out of the way. The taxi drops you off out front of an old mansion just on the outskirts of town. Victoria floats through the fence around the mansion, leaving you to shove open the wrought iron gate and run to catch up. She gives you a look over her shoulder as she floats up the steps."@1243
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "“C’mon! Hurry it up!”"@1244
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You try to explain to her the limits of corporeality but she just rolls her eyes, her ample frame floating up the steps."@1245
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Living beings are so lame. But come on, I’ll get the door for you."@1246
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "You run after her, following her ample backside as it floats and bounces up the steps and onto the deck of the house. She floats towards the door just as you mount the steps, rushing to keep up, and slam headlong into the door as she floats through. Victoria’s head pokes through the door, looking down at you rubbing your face, and sticks her tongue out ."@1247
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Oops, sorry bout that."@1248
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You grumble under your breath as you climb to your feet and make your way inside. The mansion was far swankier on the inside than you would have thought. Ghostly figures floated up and down the large staircase that met you in the front foyer, carrying platters to unknown destinations. Victoria looks over the different platters with glee before floating off down a hallway leaving you to play catch up. You rush down the hallway and find yourself standing in the middle of a large banquet hall. A table sits in the middle of the room, laden down with food, and Victoria is at its head."@1249
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "The ghostly gal is already quite hefty from her recent meal changes and looks at the spread before her with glee. A waiter floats up beside her, listening attentively as she makes an order for as much food as the place can handle. You stand near her chair, trying to make yourself useful as an entire turkey is brought in front of her. Without missing a beat, Victoria rips a leg off the bird and stuffs it into her mouth, gulping it down in one ghostly bite. You can only watch in awe as she gets to work."@1250
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "The turkey is downed with ease, swelling out her middle and stretching the material of her black dress and straining the belt around her expanding middle. Victoria gives a nod, satisfied with the flavour of the bird, and lifts the rest of it into her arms, pressing it to her face and stretching her jaws, devouring it in one mighty gulp. As soon as the bird is down, another plate floats towards her. This one, a pile of pork pies, causes Victoria to squeal with glee. She lifts the first, tossing it into the air and gulping it down."@1251
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "You watch as the rest of the pies are downed in the same fashion. Victoria moans in delight at the flavors of the pies, commenting to the waiter as she eats, moving from the pies and on to another nearby dish. All the while her stomach continues to expand and bloat as she gorges on smoked salmon. Her midsection swells, growing larger and rounder, packed with more and more food. The chair under her begins to disappear as her frame expands, enveloping it with her ghostly figure."@1252
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "Ghosts start to flood the room, carrying more dishes and setting them in front of Victoria. She looks absolutely delighted, reaching past her expanding middle to shovel food towards her mouth. She gulps entire dishes down in one giant mouthful, stretching her dress out to an impossible degree. You’re soon pushed aside as the ghosts continue to pile in, taking over the task of feeding their blimping guest. Entire platters of food disappear just as quickly as they arrive. Everything within reach of Victoria’s arms is quickly gobbled up. Her frame blimping rounder and heavier, barely floating above the floor."@1253
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "The room you’re in soon starts to feel smaller and smaller as Victoria begins to float above the table. The effort of having to reach over herself becomes annoying and so she simply raises up, rotating herself forward, mouth facing the table, happily letting the spectral staff shovel more food into her without her having to lift a finger. She slurps up entire pots of soup, spitting out ladles, downs entire racks of lamb and devours bowls of noodles. Her appetite driven mad by the ghostly cuisine. All the while her figure groaned and churned, spreading more and more."@1254
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "It doesn’t seem possible for the feast to continue like this. Surely she must be starting to get full. But ghosts don’t get full. In an effort to try and bring things to a close, you suggest dessert. Victoria turns her bloated visage towards you, cheeks wobbling as she nods with glee. The servants quickly change up the menu and bring offerings of cake and ice cream. Victoria opens her maw wide, gulping down gallons of ice cream in a single mouthful, downing cake in single bites, continuing to fill the room with her bloated frame."@1255
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "You find yourself pushed against the far wall as Victoria starts to fill every last inch of free space in the room. Soon the servants are floating up over the blimped frame of her body and dumping desserts into her mouth while her arms wobble feebly at her sides. The last few morsels of food are dropped into her mouth. Just as you think you’ll soon get smothered by her frame, you feel ghostly arms lifting you up and raising you up towards the top of the blimp that is Victoria. She looks at you, face covered in sauce and crumbs, and gives you a wink. What a feast!"@1256
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1110]

:[1109]
pushi.e 1
pop.v.i self.showvik_bg
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 5
conv.l.v
call.i call_actors(argc=2)
popz.v

:[1110]
pushglb.v global.line
pushi.e 11
cmp.i.v EQ
bf [1113]

:[1111]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [1113]

:[1112]
push.l 11
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
add.v.v
push.l 11
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[1113]
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [1115]

:[1114]
pushi.e 1
pop.v.i global.hidebody

:[1115]
pushglb.v global.line
pushi.e 13
cmp.i.v EQ
bf [1117]

:[1116]
pushi.e 1
pop.v.i self.showvik
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v

:[1117]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1119]

:[1118]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [1120]

:[1119]
push.e 0

:[1120]
bf [1122]

:[1121]
pushi.e 1
conv.i.v
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1122]
push.v self.scene
push.s "seenVictoria"@438
cmp.s.v EQ
bf [1162]

:[1123]
pushi.e 0
pop.v.i global.cutmusic
push.l 2
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [1132]

:[1124]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [1133]

:[1125]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [1137]

:[1126]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [1141]

:[1127]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [1145]

:[1128]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [1149]

:[1129]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [1150]

:[1130]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [1154]

:[1131]
b [1155]

:[1132]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You hear a nasty chuckle from the corner of the room. Victoria is floating there, her dead eyes locked on to yours. Glancing down a bit you notice a slight curve to her stomach, causing the ghost to give a toothy smile."@1257
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "What? You’re into this sort of thing?"@1258
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [1155]

:[1133]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Aside from a few spiders in their cobwebs, you don’t see anyone at Victoria’s desk. Could she be slacking off somewhere? Maybe you should come back lat-gack!"@1259
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You feel an icy sensation in your stomach. Looking down you see a semi transparent belly sticking out from your torso, wobbling and bouncing."@1260
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oops. Did I scaaaaare you? Heehee! You’ve certainly put on a lot of weight!"@1261
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "The sensation suddenly passes as Victoria floats through your stomach and turns around with a grin."@1262
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Don’t worry. Just empty calories."@1263
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 2
cmp.i.v LT
bf [1135]

:[1134]
pushi.e 1
pop.v.i global.hidebody
b [1136]

:[1135]
pushi.e 0
pop.v.i global.hidebody

:[1136]
b [1155]

:[1137]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You catch Victoria looking in a mirror haphazardly hanging from her cubicle wall. What she was looking at you couldn’t guess. Ghosts don’t have reflections. That didn’t stop her from catching sight of you and stifling a smile as she hefted that belly with her hands, wobbling it."@1264
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oooh nooooo. I’ve been putting on so much weight. What WILL the others think? Could you imagine? I mean, it’s not like someone has been feeding a ghost or anything. That would be impractical. Ghosts don’t need food. Or weigh anything for that matter. But maybe…It’s not the ghost’s appetite they’re trying to satisfy."@1265
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1139]

:[1138]
pushi.e 1
pop.v.i global.hidebody
b [1140]

:[1139]
pushi.e 0
pop.v.i global.hidebody

:[1140]
b [1155]

:[1141]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Looking more marshmallow than ghost, Victoria hovered lower to the ground than she usually did. Her physical form was having a hard time remaining incorporeal. Her sides would sometimes pass through objects, and at other times one of her hips would bump items from her desk as she floated."@1266
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Now I know what you’re thinking. Gee Victoria, you’re starting to make even Chloe look skinny! Well I don’t mind. For that matter I don’t think you mind either. In fact, I think all this is the only thing on your mind. Got any more snacks?"@1267
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1143]

:[1142]
pushi.e 1
pop.v.i global.hidebody
b [1144]

:[1143]
pushi.e 0
pop.v.i global.hidebody

:[1144]
b [1155]

:[1145]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "While most ghosts moan and wail, it was a satisfied belch that notified you to Victoria’s presence. The super-sized specter rolled hands across her stomach. She was getting quite massive now. Had she not been a ghost you doubt there’d be room at her desk anymore."@1268
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Boy at the rate you’ve been feeding me, well I might just eat myself to death! Oh wait, I’m already dead. Heh heh!"@1269
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1147]

:[1146]
pushi.e 1
pop.v.i global.hidebody
b [1148]

:[1147]
pushi.e 0
pop.v.i global.hidebody

:[1148]
b [1155]

:[1149]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Could ghosts be grounded? Cause Victoria certainly wasn’t airborne anymore. Her belly sagged low and rubbed the floor, her movements reduced to dragging it along with great effort. She looked tired out from the attempt, no doubt more work than she’s ever attempted in her afterlife."@1270
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Huff, hold on I’m a little winded. Just need a pick me up."@1271
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [1155]

:[1150]
push.s "Victoria"@622
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Get out. Geeeet out."@1272
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Turning your head you see what has become of Victoria. She was looking more swollen than ever if that was even possible. The ghost had become merged with the floor now. Her spectral weight was keeping her planted in her office space, wobbling. Looking close, you could see her chair, floating inside her opaque body along with plenty of snacks, office supplies, and what looked like a skull or two you recognized."@1273
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Get out of the office! Urp! And go get me some delivery."@1274
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1152]

:[1151]
pushi.e 1
pop.v.i global.hidebody
b [1153]

:[1152]
pushi.e 0
pop.v.i global.hidebody

:[1153]
b [1155]

:[1154]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You ran right into it. The phantasmal blob of ectoplasm wobbled and shook as you face planted into its surface. While cold to the touch, it was rather solid. As if the ghost it once was now simply too fat to fit on just the astral plane anymore. No, she was corporeal now. A jiggling mass of spooky dough, a memorial to an afterlife spent gluttonously. Stepping back, you’re able to get a better view. A better view of that belly, those breasts, and of the fat face dwarfed by the rest of her."@1275
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oof, now you’ve done it. There goes my productivity. Well actually it’s about the same. Whatever, I’m hungry. How bout you get me something to eat. Then we can urp, make a case with the boss to get me some roomier digs. Everything’s gotten small lately."@1276
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [1155]

:[1155]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1157]

:[1156]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[1157]
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1159]

:[1158]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1160]

:[1159]
push.e 0

:[1160]
bf [1162]

:[1161]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1162]
push.v self.scene
push.s "finalerika"@460
cmp.s.v EQ
bf [1177]

:[1163]
pushi.e 1
conv.i.v
push.l 14
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
pop.v.i global.lunch
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You climb out of the car behind Erika, standing well clear of that bandage straining rump. She seems uncharacteristically excited at the prospect of dining out. She’s brought you to what looks like a small cafe down a nondescript street in the city. You ready yourself for a stuffy evening of trying to make small talk while she orders a variety of filling, if mundane, meals. You trail along behind Erika, looking around the curve of hefty figure just as the doors to the cafe open, bathing you and the street in a blinding light as pop music fills your ears."@1277
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You stare in disbelief at Erika’s choice. The cafe was one of those maid cafes that you’d heard about. The place is decked out in wall to wall cuteness. Pictures of rainbows, sakura trees, and chibi animals adorn the walls and cover the tables. A waitress in a maids outfit meets you both at the entrance, bowing respectfully before guiding you both to a table. Erika rushes to the table, sliding herself into a chair and grabbing the pink menu from the waitress. She’s already making choices when you sit down."@1278
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You look over the menu as well, noticing there doesn’t appear to be anything on the menu not covered in icing sugar. The waitress soon returns carrying a platter of cupcakes covered in a multicolour hue of icing topped with sprinkles and small marzipan rainbows. Erika lifts one of the cupcakes and inspects it, turning it in her bandaged fingers for a moment. “...Kawaii” She says and stuffs it into her mouth in one massive bite, smearing icing around her mouth. Her manner doesn’t change but you’re sure she wiggled on her chair in excitement."@1279
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "The platter of a dozen cupcakes is demolished in a manner of moments. She tears through each of them, taking a second to admire the care put into the presentation before popping them into her mouth. Erika has never shown this kind of rampant enthusiasm before. With the cupcakes gone she goes back to the menu, calling over the waitress who nods at what Erika was pointing at, leaving you to guess what she wants next. After a few minutes pass the space on the table is taken up with an array of pastel coloured treats."@1280
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Platters of parfait, mountains of frosted cookies, more cupcakes, heart shaped candies dotting the tops of fluffy white slabs of angel food cake, are all brought before Erika. The mummy gives a small nod and the hint of a smile, taking in the repaste in front of her before grabbing a pink frosted cookie and munching it down. A blush glows through the bandages on Erika’s face as the taste hits her and she grabs another, then another. The cookies disappearing into her stomach at record pace. After the first few cookies, her pace increases. Erika can’t  control herself."@1281
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "The cookies vanish, leaving a crumb covered plate, and Erika moves on to the next dish. She hoists an entire slice of cake to her mouth, munching down the fluffy cake and licking on the thick icing. She snaps up the crunchy candy hearts in a flurry of ravenous delight. Her stomach starts to gurgle and churn as she devours more of those achingly sweet treats. She grabs a parfait made of whipped cream and strawberries. Without a second thought, she upends the entire thing to her face, chugging it down in a few gulps, ignoring the proffered spoon in order to get the delicious flavours into her all the faster."@1282
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "There doesn’t seem to be an end to the treats on display. More cookies, more pastries, more icing coated treats are all brought to the table and Erika devours them all. Her stomach continues to bloat and swell, straining her shirt and jacket. The buttons on her top start to ping and fly off, bouncing off of light fixtures in the shape of cute animals. She ignores the slow destruction of her outfit, too focused on the treats in front of her to care. Her silent feasting continues without thought to how she looked. The only thing that mattered were these treats."@1283
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Plates start to pile up on the side of the table faster than the waitress can shift them away. Erika’s pace seems impossible. She eats with an economy of motion you’ve never seen before. Everything is pushed to her lips in fluid moves to get the next thing to her mouth as quickly as possible. Her body seems to struggle to find space for all these sweet treats. The sounds of creaking bandages fills the cafe as Erika continues her feast. Halfway through a platter of pink frosted doughnuts, the wrappings around her middle fail, tearing away to allow her swollen belly to roll forward, pressing into the table."@1284
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "This faux pas is lost on Erika, who simply sighs in relief at the extra room and continues to gorge. Her belly presses harder against the table, sloshing onto the surface, pushing platters and plates aside as she reaches over her chest and gut to consume more of those delicious treats. The air is soon filled with the sounds of tearing wraps as her arms swell and thighs balloon. Shredded bandages fall to the floor, allowing her rippling flesh to jiggle and swell out where it pleases. Every waitress in the cafe seems focused on replacing the plates with more desserts as fast as Erika can clear them."@1285
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "Finally, Erika reaches towards a massive sundae. The monstrous confection is covered in whip cream, cherries, and nuts. She hoists the massive treat on top of her belly, using the large spoon offered to her to shovel the treat into her face. The chair under her creaks as that massive treat finishes the job the rest of the feast couldn’t. Erika lets out a muffled grunt as she falls backwards, her swollen rump slapping into the floor, bringing the sundae down on her face. You lean over the table in concern and find Erika silently licking her fingers, her face coated in sundae. Looks like she enjoyed it."@1286
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1165]

:[1164]
pushi.e 1
pop.v.i self.showerika_bg
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 4
conv.l.v
call.i call_actors(argc=2)
popz.v

:[1165]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [1168]

:[1166]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [1168]

:[1167]
push.l 11
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
add.v.v
push.l 11
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[1168]
pushglb.v global.line
pushi.e 8
cmp.i.v EQ
bf [1170]

:[1169]
pushi.e 1
pop.v.i global.hidebody

:[1170]
pushglb.v global.line
pushi.e 9
cmp.i.v EQ
bf [1172]

:[1171]
pushi.e 1
pop.v.i self.showerika
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v

:[1172]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1174]

:[1173]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [1175]

:[1174]
push.e 0

:[1175]
bf [1177]

:[1176]
pushi.e 1
conv.i.v
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1177]
push.v self.scene
push.s "seenErika"@441
cmp.s.v EQ
bf [1218]

:[1178]
pushi.e 0
pop.v.i global.cutmusic
push.l 2
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [1187]

:[1179]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [1188]

:[1180]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [1189]

:[1181]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [1193]

:[1182]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [1197]

:[1183]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [1201]

:[1184]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [1205]

:[1185]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [1209]

:[1186]
b [1213]

:[1187]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You approach Erika’s desk on your walk around the office. She’s absent-mindedly munching on something while ignoring incoming calls. You can’t help but notice how all that snacking is starting to catch up to her though..."@1287
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
b [1213]

:[1188]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You decide to drop by Erika’s desk. As you peek over you see her eagerly polish off the last of a sleeve of snack cookies. She seems to be really enjoying those, if her waistline is any indication..."@1288
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
b [1213]

:[1189]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You decide to drop by Erika’s desk. Like before you catch her tossing aside an empty package of cookies. But you notice a small pile of snack packages gathering in her small trash bin. She brushes the dust of pink crumbs catching on the top of her belly. Seemingly unbothered by her recent weight gain as she reaches for another package..."@1289
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Mmf...Bigger."@1290
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1191]

:[1190]
pushi.e 1
pop.v.i global.hidebody
b [1192]

:[1191]
pushi.e 0
pop.v.i global.hidebody

:[1192]
b [1213]

:[1193]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "As you round the corner towards Erika’s desk you were a bit unprepared for what you saw. Purple blubber strains and rolls over taunt bandages clearly meant to bind a much skinnier mummy. Her thick thighs wobble over the sides of her office chair as she tries to reach for another cookie."@1291
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oops...M-Maybe one more."@1292
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "But as she brings the sweet up to her lips and crunches down the sheer delight apparent in her glittering eyes tells you she won’t be stopping any time soon..."@1293
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1195]

:[1194]
pushi.e 1
pop.v.i global.hidebody
b [1196]

:[1195]
pushi.e 0
pop.v.i global.hidebody

:[1196]
b [1213]

:[1197]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Your eyes go wide when you stop in to see Erika. You hardly recognize the purple blob reclined back in her comfortable chair and eating steady handfuls of cookies and cakes off a platter balanced atop her belly. The phone is ringing off the wall somewhere behind her..."@1294
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hm? Oh. O-One more.*"@1295
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She humms and slips another sweet into her mouth, and then giggles with delight at its deliciousness! Her belly wobbles vigorously in response. When she finally gulps it down she promptly reaches for another...So much for one more."@1296
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1199]

:[1198]
pushi.e 1
pop.v.i global.hidebody
b [1200]

:[1199]
pushi.e 0
pop.v.i global.hidebody

:[1200]
b [1213]

:[1201]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "*WHOMP!!!*"@1297
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You were just about to round the corner to customer service when you hear a loud crash! You rush towards the noise to find...Erika. Flat back on the ground with a broken office chair beneath her."@1298
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Whoops."@1299
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "She seems perfectly fine, good. But she also doesn’t seem particularly bothered in any way by this predicament…Quickly saving a cookie off the floor before the proverbial 5 seconds are up and popping it right into her mouth. You can probably make out how this happened in the first place... "@1300
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1203]

:[1202]
pushi.e 1
pop.v.i global.hidebody
b [1204]

:[1203]
pushi.e 0
pop.v.i global.hidebody

:[1204]
b [1213]

:[1205]
push.s "Erika"@621
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "*BUUOORRP!? O-Oh my!"@1301
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You had a sneaking suspicion about the trajectory of Erika’s weight gain, but you still weren't ready for the pile of blubber that awaited you! Is she getting bigger...faster??? Apparently it's been getting in the way of work as she's taken to propping her mouse and keyboard up on her belly-shelf where her fat arms and tubby fingers can actually reach. (Along with a personal buffet of sweets)"@1302
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Seems Erika was in the middle of a call for once when that rupterous belch you heard down the hall broke loose. You can hear the customer stuttering in confusion over the mic."@1303
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Hm...Sorry."@1304
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "And with that she hangs up! She just hangs up right there! You’re gobsmacked while she tosses her headset aside to more properly dig into her disappearing pile of fattening treats!"@1305
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1207]

:[1206]
pushi.e 1
pop.v.i global.hidebody
b [1208]

:[1207]
pushi.e 0
pop.v.i global.hidebody

:[1208]
b [1213]

:[1209]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You hear a faint giggling down the hall. Is that Erika? You quietly turn the corner and nearly gasp at what you see! A gigantic purple blob, barely identifiable as Erika (or much less, monster) anymore, giggling excitedly at her own enormity!!! She didn't hear you come in...She's busy stuffing her face greedy fist over greedy fist with indulgent sweets and fatty foods."@1306
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Bigger~!!! I love it! I want to be bigger~!!!"@1307
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You're a bit caught off guard by this side of her you’ve never seen. Course, she has much more ‘side’ than ever before! She happily rubs over as much belly as she can reach with one hand while cleaning another platter of cookies with the other."@1308
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "I-I’m so big!!! Tee-Hee~!!!"@1309
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "You can only stand and watch in awe. At least she’s loving it..."@1310
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 2
cmp.i.v LT
bf [1211]

:[1210]
pushi.e 1
pop.v.i global.hidebody
b [1212]

:[1211]
pushi.e 0
pop.v.i global.hidebody

:[1212]
b [1213]

:[1213]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1215]

:[1214]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1216]

:[1215]
push.e 0

:[1216]
bf [1218]

:[1217]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1218]
push.v self.scene
push.s "makeyoulunch"@359
cmp.s.v EQ
bf [1244]

:[1219]
push.s "Stacy"@625
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "No air, no pizza... I have to say, dear, you’re not doing such a good job as of late. I know we all make mistakes, of course. And nobody’s job is easy, so who am I to judge? But this whole incident has been quite a thorn in my side and I was at least looking forward to a nice, bloody slice of pizza~"@1311
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oh, but perhaps I’m being too harsh dear. I know what will help, something to lift your spirits. Come with me and I’ll make you lunch~ "@1312
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1221]

:[1220]
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v

:[1221]
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [1233]

:[1222]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1226]

:[1223]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [1225]

:[1224]
push.s "Yes?"@731
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "No?"@732
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[1225]
popenv [1224]

:[1226]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [1233]

:[1227]
pushglb.v global.choice
dup.v 0
push.s "Yes?"@731
cmp.s.v EQ
bt [1230]

:[1228]
dup.v 0
push.s "No?"@732
cmp.s.v EQ
bt [1231]

:[1229]
b [1232]

:[1230]
push.s "Stacy"@625
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oh lovely darling!!! Yes, yes follow me~"@1313
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "And you do. She leads you to the back of the floor and up to a door nailed over with plywood and “DO NOT ENTER” crudely painted over in red. You’re somewhat confused as she prys off the wood and opens the door."@1314
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Oh don’t worry about it darling. They just put that up to keep the mold out, but it’s faster to take the stairs and it’s not really that dangerous if you’re not there long. Now c’mon~ "@1315
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "She smiles so sweetly to you and waves you in. You’re compelled to follow and step onto the dark landing leading to the stairs. The toxic stench immediately overwhelms you. It’s been intensified by the hot, stagnant air and you gag. You’re about to question the legitimacy of Stacy’s safety claims when you hear the door *click* behind you. It’s pitch-black in there without the light from the door and you reach for your phone."@1316
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "But just as you have it in your palm, you’re roughly hoisted off your feet and slammed against the wall. The sudden manhandling knocks the phone from your grip and you hear it clatter off somewhere. You’re so taken aback by confusion you can’t even get a word out! Not that it mattered, your breath hangs up in your throat when you feel an icy-cold tongue drag over your neck. "@1317
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Terror like you’ve never felt before grips you, your mind is racing. You immediately realize what’s going on, of course. Her body presses against yours, pinning you to the wall. Somewhere in the swirling confusion clouding your brain you think this is all kind of hot, tbh. Her cold but soft lips kiss the curve of your neck. You feel a brief, sharp pinch and you know you’ve been bitten. You want to kick! To fight! But this is *really* hot though…"@1318
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "You’re not sure if it’s the thrall of the vampire or the hallucinogenic toxic mold, but you feel yourself slipping away. You go limp in her arms and shudder as she moans blissfully into your neck. "@1319
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "Hmm...Ready for lunch~?"@1320
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "It’s far too dark, but somehow you see her wicked grin as she pulls back from you. A single streak of your blood coloring her cheek. She suddenly opens wide, wider than you’d ever thought she could! And in a single, practiced motion she swallows you whole!!!"@1321
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "You’re too weak, dizzy and horny to fight! As you slip down into the darkness of her guts a million questions buzz in your fading consciousness. Do vampires eat people whole??? You don’t remember that from your romance novels. Her familiar, haughty laugh fills the air and you feel her hands press about you."@1322
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "All comfy in there, dear? I bet this is a better ending than being stuck in such a boring job. You wouldn’t have wanted to face the boss after this anyways. I’ll take it from here, darling~"@1323
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [1232]

:[1231]
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oh that one was a bit on the nose, wasn’t it? I guess I’m off my game in this terrible air. I’ll have to workshop it."@1324
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [1232]

:[1232]
popz.v

:[1233]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [1235]

:[1234]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[1235]
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [1239]

:[1236]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [1238]

:[1237]
push.l 0
conv.l.v
push.l 8
conv.l.v
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i global.gotate
pushi.e 1
pop.v.i self.scenefeed

:[1238]
pushi.e 0
pop.v.i global.hidebody

:[1239]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1241]

:[1240]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1242]

:[1241]
push.e 0

:[1242]
bf [1244]

:[1243]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1244]
push.v self.scene
push.s "finalstacy"@456
cmp.s.v EQ
bf [1259]

:[1245]
pushi.e 1
conv.i.v
push.l 14
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
pop.v.i global.lunch
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You didn’t really know what to expect when Stacy suggested you join her for a proper meal. Vampires were hard enough to read without them being hungry. You find the vampire standing out front of a blood red door at the end of a dark alley in one of the dingier parts of town. The vampire gives you an approving grin. It seems she didn’t expect you to show up. With a sway of her ample hips, Stacy turns and heads towards the door. You can’t help but notice the grotesque statues flanking the entrance."@1325
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "The door opens to a flood of light and you watch as Stacy squeezes her ample frame inside. Her hips just barely clearing the door and practically bursting out of her skirt. You manage to peek around her to spot the interior of the restaurant. It was dimly lit with sturdy candelabras and ancient looking chandeliers that were smothered in wax. Stacy smiles at the well dressed waiter who greeted you. The waiter nods to Stacy and gives you a frown. She shakes her head. She wasn’t bringing her own food into the restaurant"@1326
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Keeping close, you follow Stacy to the table, passing other diners dressed in finery and downing goblets of what you hope is red wine. The pair of you are sat at a round table near the back. The waiter pulls out the seat for Stacy before handing her a menu. She gives it a cursory look with the air of a connoisseur before handing it back to the waiter. There’s a brief moment where you entertain the idea of making small talk but it’s clear that Stacy is interested in only one thing. "@1327
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Within minutes, the first course arrives. An enormous steak, extra rare, is set before the vampire. Stacy eyes it with sheer lust, wasting no time in cutting into it and stuffing a thick slice of the meat into her mouth, juices dripping down her chin. She lets out a moan of pure, animalistic pleasure before going in for another bite, leaving you to stare as she rips through the steak like a starving beast. The first steak is gone just in time for the next course, a platter of several more steaks that looked like they barely touched the pan."@1328
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Finally! I’ve been dying to come here for ages! They really know how to treat you right. A place that serves real food!"@1329
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Stacy ripped into the next few steaks without pausing, juices splatter onto the table in a shower of red. Another waiter came to the table, setting out more steaks along with a large glass which she downs in one quick gulp. The waiter turns to leave but finds the bottle they were carrying snatched away as Stacy places it to her lips and chugs it down. Several other guests find themselves ducking the wine bottle Stacy tossed over her shoulder. They look to be about to make a complaint but stop when they see her dig back into her meal. "@1330
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "More food is brought to the table as the feast continues. Stacy downs everything placed in front of her. Rare steaks, ribs that look like they were cut fresh from the cow, blood sausages and blood pudding, it’s all the same to Stacy. The vampire seems to have completely lost control. So much time spent putting up with restaurants that didn’t cater to her had caused her to lose control. You can’t help but count yourself lucky your on the side of the table closer to the door. Stacy let’s out a growl as she starts to crack bones to get at the marrow."@1331
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "The waiters start to move at a feverish pace while Stacy starts to swell. Her stomach bloats heavily outwards, resting on her lap and forcing her to reach around it. Her shirt has long since rode up over her belly, exposing that meat filled mass. The induced exhibitionism doesn’t bother her thought. In fact, it seems to egg her on even more. You notice more waiters surrounding the table, rushing to bring more and more food to sate her rising appetite. Blood soaked plates are dragged away from the table while Stacy roars for more. "@1332
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Suddenly, one of the waiters drops a plate of sausages, sending them tumbling to the floor and causing Stacy to roar in anger. The swollen bellied vampire hoists herself out of her chair, belly drooping low towards the floor, and turns towards the hapless waiter. The waiter lets out a yelp as Stacy wraps her juice soaked hands around the waiters shoulders and hoists them into the air. Everyone watches in horror as Stacy pushes the waiter to her lips, cramming them into her gullet. Despite the sudden terror, you couldn’t help but notice the skill at which she downed the waiter."@1333
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "The first waiter vanished into her swollen belly and seemed to set something off in the vampire. Stacy leapt towards the next waiter, grabbing them by the leg and dragging them back to her, cramming their legs into her mouth and laughing around the protests the waiter screams about not eating the staff. Tables are flipped as other guests rush to get out of the range of those grasping hands as Stacy hauls her bloated belly across the floor,using its mass to smother anyone unlucky enough to get too close before getting gulped down and added to her bulk. "@1334
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "Soon enough, Stacy’s rampage began to slow down. Each victim gulped stretched her stomach wider and rounder. That vast mass of wait staff stuffed blubber churned and gurgled as she heaved and panted in her attempt to sate the voracious hunger awoken inside her. You look out from under the table you took refuge under to see a pair of legs vanishing into Stacy's throat. The enormously swollen vampire lets out a thunderous belch, hands resting on the curve of her enormous belly. She looks from her car crushing, groaning belly, and gives you a vicious smile."@1335
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "Oh that was *BURRRP* wonderful "@1336
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "! Now, how about you get over here and help with some dessert?"@1337
add.s.v
pushi.e -5
pushi.e 11
pop.v.v [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1247]

:[1246]
pushi.e 1
pop.v.i self.showstacy_bg
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v

:[1247]
pushglb.v global.line
pushi.e 9
cmp.i.v EQ
bf [1250]

:[1248]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [1250]

:[1249]
push.l 11
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
add.v.v
push.l 11
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 8
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[1250]
pushglb.v global.line
pushi.e 10
cmp.i.v EQ
bf [1252]

:[1251]
pushi.e 1
pop.v.i global.hidebody

:[1252]
pushglb.v global.line
pushi.e 11
cmp.i.v EQ
bf [1254]

:[1253]
pushi.e 1
pop.v.i self.showstacy
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v

:[1254]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1256]

:[1255]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [1257]

:[1256]
push.e 0

:[1257]
bf [1259]

:[1258]
pushi.e 1
conv.i.v
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1259]
push.v self.scene
push.s "seenStacy"@437
cmp.s.v EQ
bf [1308]

:[1260]
pushi.e 0
pop.v.i global.cutmusic
push.l 2
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [1269]

:[1261]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [1273]

:[1262]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [1277]

:[1263]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [1281]

:[1264]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [1285]

:[1265]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [1289]

:[1266]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [1293]

:[1267]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [1297]

:[1268]
b [1301]

:[1269]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "While wandering the office, out of the corner of your eye you see Stacy… actually answering the phone! Although something about it looks like she rushed into it, right about when you entered the room. Odd. Maybe it’s the red liquid dripping off her lips?"@1338
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oh darling~! A delight like yourself shouldn’t come in unannounced like that, don’t you think, hmm~?"@1339
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1271]

:[1270]
pushi.e 1
pop.v.i global.hidebody
b [1272]

:[1271]
pushi.e 0
pop.v.i global.hidebody

:[1272]
b [1301]

:[1273]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Getting the hang of the layout of the office, you approach Stacy’s desk more directly this time. She’s answering the phone, but this time she’s not fast enough to hide her dropping her drink into the trash bin below. But if her new belt-straining-bulk told you anything, she was probably already done with it..."@1340
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "*Urp*, HmmHmm~, what’s with this hungry stare? It doesn’t suit you! Is it my naturally perfect work figure~?"@1341
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She hangs up the phone, but you have a sneaking suspicion there might have not been anyone on the other end."@1342
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1275]

:[1274]
pushi.e 1
pop.v.i global.hidebody
b [1276]

:[1275]
pushi.e 0
pop.v.i global.hidebody

:[1276]
b [1301]

:[1277]
push.s "???"@1343
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Ugh, *bwoorp*-, I knew I shouldn’t have taken a quick bite before work..."@1344
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You look around the office suddenly. You thought you heard a high pitched, squeaky voice, with a matching small, yet comically round shadow to accompany it. But no matter where your eyes searched you couldn’t find an intruder. Even more shocking, a sudden flash! and a puff of smoke explodes behind you! You jump back when you turn to see the ferocious grin in the fog, but relax when you see a noticeably fat gut peeking out of the spectacle, ruining the effect."@1345
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oh, "@1346
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s ", is that you, darling!? What are you doing standing in the middle of the office all alone~? Ohohoo! You should know better with the prankster staff here, you’re SO innocent~!"@1347
add.s.v
pushi.e -5
pushi.e 2
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You’d comment on the mysterious voice you heard, but considering Stacy’s near lateness AND her now considerably swaying stomach, you figured it’d be rude to stake out her errands like that. Or, at least, you might not like the outcome of confronting her about it..."@1348
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 2
cmp.i.v LT
bf [1279]

:[1278]
pushi.e 1
pop.v.i global.hidebody
b [1280]

:[1279]
pushi.e 0
pop.v.i global.hidebody

:[1280]
b [1301]

:[1281]
push.s "Stacy"@625
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Oh "@1349
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s ", could you be a doll for me and look into my eyes, just for one moment~? Where… ever your eyes are, hmmm~...?"@1350
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Woah. This is new Stacy approached you first and foremost this morning. You feel your throat dry up and your cheeks burn, but you take a glance at her eyes… and… In a sudden haze, it feels like fat fingers are scraping against the inside of your head! What did she do to you!?"@1351
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "OHoho~! Don’t worry, I only need this for today~! Can you believe my only working mirror smashed!? SO inconvenient for makeup!! You don’t mind me hypnotizing just your eyes so I can see through them, do you~? I HAVE to stay perfect for my line of work, after all~!"@1352
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Unbelievably, you do as she requests, no hypnosis required. Staying still and watching her fat face, now with slightly swirly eyes to accompany yours. Her signature grin stayed strong as she applied some finishing touches on her makeup. But amazingly, for one second you felt the grin faltered."@1353
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "She takes a step back, soaking up the now massive body she possessed through your eyes. Her once slimming work clothes had grown tight and snug against her bulging flesh. One hand of hers strokes her huge stomach. The gut is nearing her knees now. You thought you might have heard a sigh behind her smile, but her snapping her fingers and ending your trance only leaves you more confused."@1354
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "You keep coming for more and more of ME like it’s a role reversal. Well I’M the one who’s got GUTS~!! ...Barely any fat though, darling, I’m a professional~!"@1355
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1283]

:[1282]
pushi.e 1
pop.v.i global.hidebody
b [1284]

:[1283]
pushi.e 0
pop.v.i global.hidebody

:[1284]
b [1301]

:[1285]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You enter the customer service offices and blink. You hear a squeaky, high pitched noise, like… oh God. You see the biggest, fattest bat you’ve ever seen trying to flutter itself on teensey little wings. It struggles a little in the air before landing in Stacy’s seat, followed by a flash of light and burst of smoke."@1356
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "O-Ooooh… bRURP! Pardon me~."@1357
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Your eyes go wide watching the enormous vampire poof back into existence. Her chair is barely holding together as she leans back, sending metal creaking in agony. She’s still smiling, but clearly rubbing her distended gut, now so bulbous and round it’s began inching up closer to the floor. You genuinely wonder how her belt is still in one piece from how it clings for dear life."@1358
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "A-ah..."@1359
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "... Had a BIG feeling you’d be ready the moment I got back from that, *urp*, meeting. Goodness, why can’t my lunches be as dependable as you~! All I have to do is sit down and you come running towards m-"@1360
add.s.v
pushi.e -5
pushi.e 3
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "You’re caught off guard by Stacy suddenly freezing. Her smile is as wide as ever, but it oddly twitches up. Before you can say anything, she’s already reaching for a bag of blood chips and digging in. Did she realize something? You’re not sure if it was good or not that she did..."@1361
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 2
cmp.i.v LT
bf [1287]

:[1286]
pushi.e 1
pop.v.i global.hidebody
b [1288]

:[1287]
pushi.e 0
pop.v.i global.hidebody

:[1288]
b [1301]

:[1289]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’ve gotten so used to the ringing of phones in the customer service area, you’re afraid you could contract tinnitus and not even notice. Yet today, the ringing feels oddly silent. Erika is there being herself, but where’s Stacy…?"@1362
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Looking around the room, you do spy one thing out of place: A sign with a comically fat bat on it, with the text FOR ANY DISGRUNTLED CUSTOMERS, PLEASE HELP YOURSELF TO THE NEW ADORABLE PETTING ZOO ANIMAL IN THE STAIRWELL. WILL BITE."@1363
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oh boy."@1364
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Under the cover of the many ringing phones, you almost swear you could hear a muffled shriek in the distance. Before you know it, a familiar looking, smiling bat crosses your path. It’s so bloated and heavy, it’s WADDLING past you, clearly too weighed down to fly. It’s even bigger than the sign made it out to be, it looks like an overinflated water balloon. With a huff, it bursts into a cloud of smoke around Stacy’s desk. The now mountainous vampire, straining all the clothes she has, smiles down at you."@1365
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Oh, *URP*, "@1366
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s ", have you ever realized how many people love fat animals at petting zoos? Especially bats~! They’re simply, *BRURP*, to die for~! You’ll have to come with me one day to try~! Maybe it’ll go easy on you, but I DOUBT it!"@1367
add.s.v
pushi.e -5
pushi.e 4
pop.v.v [array]global.text
pushglb.v global.line
pushi.e 4
cmp.i.v LT
bf [1291]

:[1290]
pushi.e 1
pop.v.i global.hidebody
b [1292]

:[1291]
pushi.e 0
pop.v.i global.hidebody

:[1292]
b [1301]

:[1293]
push.s "Stacy"@625
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "H-hURP! Another SATISFIED customer~!"@1368
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Wait, customer service? Actually servicing customers? The end must be nigh. When you turn the corner, a shuffling husk of a person crosses you. Despite their obvious blood loss, they’re managing a healthy blush. They mumble something about “looking forward to their next complaint” before smacking against the side of the wall, and limping away to the elevator."@1369
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oooh~! My favorite snack, come in, come IN~! Do you like the new look? It’s SO modern professional, isn’t it? Skinny vampires are SIMPLY last millenium, I’ve never looked better~!"@1370
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Snack? Good lord, she’s not even hiding it now! Speaking of which, when you finally catch sight of the vampire you know this: She’s not fitting in a coffin anytime soon."@1371
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Stacy’s head felt tiny on top of the enormous body she sported. Her stomach churned and groaned from her latest meal, no doubt only one of the MANY she had to have had since you last saw her. You could swear she swelled a little more off her meal while you were staring at her! Her sides pressed into both sides of her desk, squishing and spilling over her desk phones in a blanket of fat. Even if you could think of how it’s not like she answered them anyway, there’s no way you could tear your eyes away from her blobbing figure."@1372
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "I couldn’t be more smoking hot, even if I was standing in the sunlight! Am I wrong "@1373
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "~? Mmm, AHH they’re just throwing themselves at me now! I’ve never been so productive, I’m SIMPLY ecstatic~! I need more! So much more!!"@1374
add.s.v
pushi.e -5
pushi.e 5
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You stare at her mild shock. She’s in her own little world, cupping her fat cheeks and wide grin. In fact that smile was never this wide, which is saying something. Thinking back, Stacy’s smile from the start was always a little hollow to you. Right now you’d go as far to call her smile kind of... full for once?"@1375
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "...You want to see it fuller."@1376
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 2
cmp.i.v LT
bf [1295]

:[1294]
pushi.e 1
pop.v.i global.hidebody
b [1296]

:[1295]
pushi.e 0
pop.v.i global.hidebody

:[1296]
b [1301]

:[1297]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You enter customer service to check in on Stacey’s-wait when did we get a waiting room here. A small crowd is sitting in a crudely made room, all holding tags with numbers. They seem to be waiting for the “SEE DROP DEAD BOMBSHELL STACEY SERVICE”. You pulled a ticket from the “WAVE AT ERIKA SERVICE” dispenser. You both waved at each other. That was productive."@1377
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Is that "@1378
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " I hear~? *Huff* Come in, come in! Priority for my number 1 blood bank, they’ll understand, won’t they~? They’d HAVE to be if they’re my darling guests~!"@1379
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "A VERY fat hand peeks through the room’s doors. You sweat seeing the now sausage sized finger lull you in. You can see Stacey’s flab and bulk leaking out from the door, how big must she be now? Her “darling guests” in the room stare daggers at your VIP access to the mass of vampire behind the double doors. You slowly push through to her customer service lair..."@1380
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "...And see a blob far too large to fit through her entrance. Stacey was swollen in every direction, fat bursting in every inch it could sneak into her once thin body. She was never going to see her feet again. Hell, YOU’RE not sure you’ll see them ever again. What could you do, but stand in front of her and gape? Her triple chin wobbles as she politely giggles to your silence."@1381
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "What’s the matter, darling~? You look like you’ve seen a ghost! Did Victoria swipe your food? Ohoho~!"@1382
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "She clearly tries making a movement towards you, but she’s not used to her new, massive bulk. Far too fat for walking, she only manages to wobble her gluttonous form along the ground. Fat squishes and shakes against the floor and whatever in close proximity Stacey finds herself swelling into. Realizing her mistake, she once again lulls you closer with just one finger. She smiles at you and gives a wink. Without hypnosis she’s completely hypnotized you."@1383
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Stacey"@1384
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "It would be SO, *puff, oof*, unfortunate if she did swipe food from MY favorite..."@1385
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "You get closer to her face. You need to partially climb up her body to get closer, one hand squishing into her lardy stomach. Your eyes lock onto her fangy smile. It’s curled in such a way that you know she’s never smiled so genuinely in years. You know what she wants. You know the danger. And yet you don’t know if you should find it scary, or irresistibly hot. This must be what those “darling guests” feel."@1386
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "The danger is immediate, as she grabs you by the wrist and pulls you up effortlessly. Within moments you feel her fangs graze against your neck. It feels like they’re about to go in, before she lets you go and drops to the ground in a heap."@1387
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "I need my favorite food deliverer fully stocked~! Darling, look at me! I’m PRACTICALLY skin and bones~! Ooohoho-h-*HURP*! Keep it coming now~! And NEVER stop!"@1388
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 3
cmp.i.v LT
bf [1299]

:[1298]
pushi.e 1
pop.v.i global.hidebody
b [1300]

:[1299]
pushi.e 0
pop.v.i global.hidebody

:[1300]
b [1301]

:[1301]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1303]

:[1302]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[1303]
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1305]

:[1304]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1306]

:[1305]
push.e 0

:[1306]
bf [1308]

:[1307]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1308]
push.v self.scene
push.s "stacyscene"@475
cmp.s.v EQ
bf [1365]

:[1309]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Stacy is re-applying her makeup in a compact when you happen to pass by. She notices you and immediately perks up. You want to ask how she was using a mirror, but you don’t get a chance. "@1389
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oh darling~!!! It’s so nice to see you today! How have you been liking it here so far? Good I hope~!"@1390
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "As per usual, she's all bright smiles and teeth. But for some reason today she seems ESPECIALLY forward."@1391
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "I must say dear I’ve just had so much to do lately. My schedule’s a mess! I didn’t get the chance to get a proper lunch in! I was wondering if I could grab a bite with you~? If you catch my drift. "@1392
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1311]

:[1310]
pushi.e 1
pop.v.i global.hidebody

:[1311]
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [1313]

:[1312]
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v

:[1313]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [1329]

:[1314]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1318]

:[1315]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [1317]

:[1316]
push.s "Sure?"@1135
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "N-No..."@1393
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[1317]
popenv [1316]

:[1318]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [1329]

:[1319]
pushglb.v global.choice
dup.v 0
push.s "N-No..."@1393
cmp.s.v EQ
bt [1322]

:[1320]
dup.v 0
push.s "Sure?"@1135
cmp.s.v EQ
bt [1323]

:[1321]
b [1328]

:[1322]
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Not really my best material was it? I don’t blame you..."@1394
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "N-No..."@1393
pop.v.s self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [1328]

:[1323]
push.l 3
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
add.v.v
push.l 3
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Stacy"@625
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "WONDERFUL darling!!! Come with me~"@1395
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "And you do. She leads you to the back of the floor and up to a door nailed over with plywood and “DO NOT ENTER” crudely painted over in red. You’re somewhat confused as she prys off the wood and opens the door."@1314
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Oh don’t worry about it. They just put that up to keep the mold out, but it’s faster to take the stairs and it’s not really that dangerous if you’re not in there long. Now c’mon~ "@1396
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "She smiles so sweetly to you and waves you in. You’re compelled to follow and step onto the dark landing leading to the stairs. The toxic stench immediately overwhelms you. You’re about to question the legitimacy of Stacy’s safety claims when you hear the door *click* behind you. It’s pitch-black in there without the light from the door and you reach for your phone for a flashlight."@1397
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "But just as you have it in your palm, you’re roughly hoisted off your feet and slammed against the wall. You’re so taken aback by confusion you can’t even get a word out! Not that it mattered, your breath hangs up in your throat when you feel an icy-cold tongue drag over your neck. "@1398
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "I can tell your tense, are you tense dear? I said I wanted a bite~ And just one bite too, I promise~!"@1399
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "Terror like you’ve never felt before grips you, your mind is racing. You immediately realize what’s going on, of course. Her body presses against yours, pinning you to the wall. Somewhere in the swirling confusion clouding your brain you think this is all kind of hot, tbh. Her cold but soft lips kiss the curve of your neck. You feel a brief, sharp pinch and you know you’ve been bitten. You want to kick! To fight! But this is *really* hot though..."@1400
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "You’re not sure if it’s the thrall of the vampire or the hallucinogenic toxic mold, but you feel yourself slipping away. You go limp in her arms and shudder as she moans blissfully into your neck. You start to lose sense of time, but after what feels like not too long she releases her bite. It’s far too dark, but somehow you see her wicked grin as she pulls back from you. A single streak of your blood coloring her cheek."@1401
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.l 7
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [1325]

:[1324]
push.s "Stacy"@625
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "See was that so bad~? Sorry, you have no idea how much I NEEDED that. You’re absolutely delicious! Didn’t you know~?"@1402
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "You both emerge from the stairwell, Stacy giggling drunkenly to herself. You come stumbling after from low blood sugar..."@1403
pushi.e -5
pushi.e 13
pop.v.s [array]global.text

:[1325]
push.l 7
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [1327]

:[1326]
push.s "Stacy"@625
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "See was that so bad~? Sorry, you have no idea how much I NEEDED that. You’re absolutely delicious! Didn’t you know? Surely you’d like to spend just a little more time with me, dear~?"@1404
pushi.e -5
pushi.e 12
pop.v.s [array]global.text

:[1327]
push.s "Sure?"@1135
pop.v.s self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [1328]

:[1328]
popz.v

:[1329]
push.v self.savespot
push.s "Sure?"@1135
cmp.s.v EQ
bf [1350]

:[1330]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [1332]

:[1331]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i global.hidebody

:[1332]
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [1334]

:[1333]
pushi.e 0
pop.v.i global.hidebody

:[1334]
push.l 7
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [1338]

:[1335]
pushglb.v global.line
pushi.e 13
cmp.i.v EQ
bf [1337]

:[1336]
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[1337]
b [1350]

:[1338]
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [1350]

:[1339]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1343]

:[1340]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [1342]

:[1341]
push.s "Y-Yes."@1405
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "N-No!"@1406
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[1342]
popenv [1341]

:[1343]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [1350]

:[1344]
pushglb.v global.choice
dup.v 0
push.s "N-No!"@1406
cmp.s.v EQ
bt [1347]

:[1345]
dup.v 0
push.s "Y-Yes."@1405
cmp.s.v EQ
bt [1348]

:[1346]
b [1349]

:[1347]
push.s "Stacy"@625
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "Oh, shame. But I suppose that’s only fair. "@1407
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "You both emerge from the stairwell, Stacy giggling drunkenly to herself. You come stumbling after from low blood sugar..."@1403
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s "N-No!"@1406
pop.v.s self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [1349]

:[1348]
push.s "Stacy"@625
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "Oh DELECTABLE darling~!!!"@1408
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "She lunges at you more immediately than expected. You’re feeling pretty numb by now, you do hope she will stop at a point. But this round does feel like it’s lingering longer than last time...You try to stay coherent but you feel yourself simply slumping against the monster’s shoulders. She doesn’t seem to mind though. Her strength in these situations frightens is unnerving. But god is it hot. Why are you like this???"@1409
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "You both emerge from the stairwell, Stacy giggling drunkenly to herself, she has a bit of difficulty waddling back to her desk with an awkward belly tugging off her figure. You come stumbling after from low blood sugar...You could use a soda or something."@1410
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
push.s "Y-Yes."@1405
pop.v.s self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [1349]

:[1349]
popz.v

:[1350]
push.v self.savespot
push.s "N-No!"@1406
cmp.s.v EQ
bf [1353]

:[1351]
pushglb.v global.line
pushi.e 14
cmp.i.v EQ
bf [1353]

:[1352]
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v

:[1353]
push.v self.savespot
push.s "Y-Yes."@1405
cmp.s.v EQ
bf [1360]

:[1354]
pushglb.v global.line
pushi.e 14
cmp.i.v EQ
bf [1356]

:[1355]
pushi.e 1
pop.v.i global.hidebody

:[1356]
pushglb.v global.line
pushi.e 15
cmp.i.v EQ
bf [1360]

:[1357]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [1359]

:[1358]
push.l 11
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
push.l 11
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
sub.v.v
add.v.v
push.l 11
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 11
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 8
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[1359]
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[1360]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1362]

:[1361]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1363]

:[1362]
push.e 0

:[1363]
bf [1365]

:[1364]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1365]
push.v self.scene
push.s "finalpolly"@461
cmp.s.v EQ
bf [1380]

:[1366]
pushi.e 1
conv.i.v
push.l 14
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
pop.v.i global.lunch
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Polly’s ample backside led the way up the steps and into the restaurant. The Honeypot had been all she could talk about on the drive over. The restaurant catered to bee monsters all throughout the city. You hope you don’t stick out too much from the crowd as you enter behind the swollen queen. Immediately, Polly is approached by a pair of drone bee waiters who shove you aside as they flank the enormous queen. You manage to dodge their stingers as the pair escort Polly towards a booth near the back."@1411
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "The eyes of every other bee monster in the restaurant turns to watch Polly as she’s seated. An extra large bench was slipped under her backside as she was scooted against the table, letting her jacket straining belly settle on her thighs. Immediately Polly tugged her phone out of her bag and began snapping photos. She takes a few selfies of herself and the drones that are circling the table. You try to squeeze past but several of them shoot you a dirty look. They’re probably wondering how you got in. "@1412
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "It’s okay boyzzz. He’s with me."@1413
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "The sudden throng of fans step aside, allowing you to get to the table. Polly was already sampling a large honey smoothie set in front of her. She sighs happily over the flavour, taking deep gulps from her straw before tapping out a review on her phone. Another waiter steps forward, offering her a menu. The plus sized bee smiles warmly, making the drone buzz with delight, and takes the menu. She scans it for a moment, looking at the different choices before tapping at a few at random. She told you she wants to work her way through the menu."@1414
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Polly spends the time waiting for the meal smiling and chatting with the drones that buzz around your table. She’s never had so much attention showered on her all at once before. Then again, it makes sense in a place like this. Polly’s natural queen charm is more than any other bee could possible handle. It’s not long before other drones are rushing off to get her food just as the first few dishes arrive. Polly looks over the strange, honey glazed treats, pressing them into her mouth and buzzing with sheer delight."@1415
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Mph I’ve never had anything so tazzzty~!!!"@1416
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "The buttons on the front of Polly’s jacket are soon straining as the first few ample meals are brought to the table. Honeycomb chunks bursting at the seams are brought to the table for her to nibble and munch while she chats with you. It’s been a long time since she’s been able to try out a place that catered to her own needs and having you along for the journey was just a cherry on top. You can’t help but notice the looks the drones shoot you at the attention Polly gives you and they start to pick up the pace with food. "@1417
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Soon every waiter drone in the restaurant is buzzing around the table. More and more food is brought to the table which Polly happily devours. She snaps pictures of every meal and takes selfies with the staff, praising every morsel as she works. The food is almost an afterthought to the attention she pays to those around her. The food is great but a queen such as her cannot help but bask in the spotlight they place on her.  Polly’s outfit soon begins to stretch and strain at the seams as more food is pushed between her lips. "@1418
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "You watch as drones start feeding her directly from the plates they carry. A line forms near the table and Polly is helpless to resist as plate after plate, meal after meal, is pressed and offered to her expanding frame. Her stomach bloats heavily, stretching out across her lap, straining buttons and sending them snapping off to be caught by drones as souvenirs. Her chest heaves and swells, resting heavily on the expanding ball of honey stuffed blubber that is her belly. Polly seems a little flustered at her expansion but the pure adulation from all sides puts her at ease. "@1419
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "Her ease at her increasing girth seems to be all the invitation the drones need and you watch as she becomes flanked on either side by eager bees hoping to feed their newfound queen. Polly looks from one side to the other, hands resting on her bloating middle, as she’s stuffed and fed. Her mouth constantly chomping down some honey infused treat as the table is pushed away from her expanding belly. The bench underneath her backside begins to groan as her weight soars higher and higher. She manages to pass you her phone, asking you to take down her comments on the food. "@1420
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "You try to keep up with her mumbled words as she struggles to keep up with the onslaught of food. You catch blurry photos of platters being sped towards her mouth and try your best to capture as modest a photo as you can of the blimping bee but she doesn’t seem to mind. Polly appears lost in the pleasure of the food being stuffed into her. Nothing else matters but the next course. Her body stretches and expands rounder, pressing out further to the sides of the bench before it collapses under her. "@1421
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "You expect a thud or a slap but none comes. Instead, you look up to see Polly floating in the air. Her massive frame lifted up by half a dozen drones, their wings beating furiously as they struggle to keep their blimped queen bee aloft. Polly gives you a honey soaked smile, her fat cheeks and plump lips glistening with nectar. You hold up her phone and snap a few tasteful photos of the queen, her belly, and her drones. Her stripe stretched frame floats gently above the restaurant just as the queen gives a nod. It’s time for dessert. "@1422
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [1368]

:[1367]
pushi.e 1
pop.v.i self.showpolly_bg
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 9
conv.l.v
call.i call_actors(argc=2)
popz.v

:[1368]
pushglb.v global.line
pushi.e 9
cmp.i.v EQ
bf [1371]

:[1369]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [1371]

:[1370]
push.l 11
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -5
push.l 2
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
conv.v.i
push.v [array]global.tier
add.v.v
push.l 11
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 9
conv.l.v
call.i check_level(argc=1)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[1371]
pushglb.v global.line
pushi.e 10
cmp.i.v EQ
bf [1373]

:[1372]
pushi.e 1
pop.v.i global.hidebody

:[1373]
pushglb.v global.line
pushi.e 11
cmp.i.v EQ
bf [1375]

:[1374]
pushi.e 1
pop.v.i self.showpolly
pushi.e 0
conv.i.v
call.i blackout(argc=1)
popz.v

:[1375]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1377]

:[1376]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
b [1378]

:[1377]
push.e 0

:[1378]
bf [1380]

:[1379]
pushi.e 1
conv.i.v
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 14
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[1380]
push.v self.scene
push.s "seenPolly"@442
cmp.s.v EQ
bf [end]

:[1381]
pushi.e 0
pop.v.i global.cutmusic
push.l 2
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [1390]

:[1382]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [1391]

:[1383]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [1395]

:[1384]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [1399]

:[1385]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [1403]

:[1386]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [1407]

:[1387]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [1411]

:[1388]
dup.v 0
pushi.e 8
cmp.i.v EQ
bt [1415]

:[1389]
b [1419]

:[1390]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Polly leaned back in her chair, ignoring the creak as she gazed into her compact. The curvy insect was reapplying her lipstick, careful to avoid marking her mandibles. Satisfied, she clicked her compact shut and finally looked to you. You felt your own eyes glance down to her abdomen, her soft stomach protruding over her lap."@1423
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Eyezzz up here creep~ I know I'm a looker, but you're a little low on the totem pole to be buzzzing around my hive. What did you need?"@1424
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [1419]

:[1391]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You catch Polly talking to another employee. The busty bee had certainly let herself go. At Least in terms of size. While her thighs were pushing past thunder territory, she nonetheless had found an outfit to fit. And yet as she shifted her weight from one leg to the other, you could hear the unmistakable creak of straining fabric."@1425
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You zzzimply won't believe the trouble I went through darling. I had to fight a crowd to get a hold of these bootzzz. Ugh, the nerve of zzzuch riffraff! Next shopping trip I'm going to put even more people in the morgue if they get in my way. Oh, excuzzze me hon."@1426
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She turned her head to you with a smirk. "@1427
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Yezzz?"@1428
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1393]

:[1392]
pushi.e 1
pop.v.i global.hidebody
b [1394]

:[1393]
pushi.e 0
pop.v.i global.hidebody

:[1394]
b [1419]

:[1395]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "The water cooler, once a small gathering are for the occasional group of monsters, was now blocked by the bulky sight of one large honey bee. Her hips swayed gently while her large dome of a belly pressed against the dispenser.She was fixated on pouring something into the jug, and you noticed the mess around her. Empty bags of sugar littered the floor around the machine."@1429
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "There. That should do it. Though what a zzzzad little joke that I have to do this myself."@1430
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Glancing behind her wide backside her eyes lit up."@1431
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Oh it izzzz you! Come my little worker bee. I believe this izzzz more to YOUR job description no?"@1432
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Polly took a heavy step to the side, allowing her belly to wobble and bounce in plain view. She clearly didn't need anymore sugar. But then again keeping these girls happy WAS your job description. And it was only after another few bags of sweet sugar poured into the water tank that she finally was willing to chit chat."@1433
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1397]

:[1396]
pushi.e 1
pop.v.i global.hidebody
b [1398]

:[1397]
pushi.e 0
pop.v.i global.hidebody

:[1398]
b [1419]

:[1399]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Polly's cubicle seemed far bigger today. The once cozy little office space had been renovated to fit a bug of her uh... curves. Large honeycomb patterned walls, hexagon filing cabinets that seemed suspiciously full, as well as what looked like an industrial sized fridge talked into its corner. It was a wonder any office worker could need such spacious digs until you feel the floor shake behind you and an intoxicating sweet aroma wafts through the air. You turned to see the queen bee herself, or at least her belly. It took a moment to notice the rest of her behind that behemoth of a gut."@1434
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oh! Do you like my new space? It's just zzzo cute!"@1435
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "She pushed past you, her soft side sliding against your front as she waddled. She opened a filing cabinet to reveal a stockpile of snacks and sweets. She took a bite from a large candy bar and motioned with it."@1436
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Mmph I believe the other girlz are quite jealouz of all this. Who could blame them, I always get what I want."@1437
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1401]

:[1400]
pushi.e 1
pop.v.i global.hidebody
b [1402]

:[1401]
pushi.e 0
pop.v.i global.hidebody

:[1402]
b [1419]

:[1403]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Usually you found yourself capable of dodging the many growing waistlines around this office. You'd sneak past mountains of bellies bursting rows of buttons in your direction, or weave between the slumbering masses that were the employees too fat to leave the break room. Little caution could have prepared you though as you turned the corner into the IT department. Not with all of that blocking the width of the hall. It was big. It was soft."@1438
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You collided right into her. Your torso sank into a yielding soft tummy, shaking those stripes as she buzzed. Your face on the other hand found itself planted between those heavy soft breasts. It took quite a bit of effort and pushing on your part but you did managed to set yourself free. Though now you were looking at the amused expression of one fat insect. Those fat lips spread into a sweet smile as the air felt heavy with a sickly sweet aroma."@1439
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oh it izzzz you. Can't get enough of me now? How zzzzweet. But I take it you're here for more than just pleasantries. Hand over your znacks and I'll consider helping you, little worker bee. Hmm."@1440
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1405]

:[1404]
pushi.e 1
pop.v.i global.hidebody
b [1406]

:[1405]
pushi.e 0
pop.v.i global.hidebody

:[1406]
b [1419]

:[1407]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "The big honey bee sat at her cubicle, or at least filled it. Polly was huge, with measurements that could only read unreasonable on whatever tape measure her poor tailor tried squeezing around her. Her wobbling hips rubbed against the cubicle walls and her belly sat propped up on top of her desk which was bending low under the strain. Between that gut and her chest, there was no way her hands could reach the computer now. That didn't seem to bother Polly though. She was far too busy with other tasks. Like posing and blowing a kiss to her phone camera."@1441
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Hey hive, it izzz your queen Polly. I know you all just love to zzzzee how much I have been growing. What do you think? Beautiful, yes? But it izzz not enough for my zzzweet bees. We can go bigger. Make sure to donate~!!! I'm sure you would hate to zzzeee me starve."@1442
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "As she puckered her lips and winked to the camera, the loud snap of wood was unmistakable. With a crack her desk collapsed under her weight, causing her belly to slam the floor and shake the room. The sudden shock caused her chair to follow suit, sending the blubber bee slamming on to her bottom with a wobble."@1443
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Oopz..."@1444
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1409]

:[1408]
pushi.e 1
pop.v.i global.hidebody
b [1410]

:[1409]
pushi.e 0
pop.v.i global.hidebody

:[1410]
b [1419]

:[1411]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You didn't recognize the people shuffling in and out of IT. While you knew this place had a high turnover, you thought you had done a good job of keeping up with the names. But these people didn't seem like workers at all. They were dressed too casually. Though they certainly seemed tired and blank enough to be victims of office work. You follow behind one as he carries a tray of food from the cafeteria. Round the cubicles and desks he winds his way, until stopping before a whale of bee. Polly."@1445
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "*Urp* Good work my little dronezzz. Keep it up. Your queen demands more! Zzzee to it that you leave nothing behind in the cafeteria. I want my weight to match my follower count, got it? More zzzweets! More!!!"@1446
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Her eyes than locked on to yours."@1447
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Come to join the hive~?"@1448
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 1
cmp.i.v LT
bf [1413]

:[1412]
pushi.e 1
pop.v.i global.hidebody
b [1414]

:[1413]
pushi.e 0
pop.v.i global.hidebody

:[1414]
b [1419]

:[1415]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "IT was unrecognizable now. The once plaster walls were covered in dripping honey, as was much of the floor. Cubicles had been flattened, replaced with lines of drones like you had seen before. Though now the drones were bigger. Their round guts bounced with every sluggish step and honey dripped from their mouths. Everything smelled sticky sweet."@1449
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You followed the drones like before to their destination, arriving to a blob of yellow and black stripes in the remnants of designer clothes. While Polly had been huge, that was nothing compared to the display of gluttony before you now. She was massive. Her legs had disappeared under her cubicle crushing gut which wobbled like gelatin. Her fat face was nestled between the fat of her neck and chins, breasts bobbing and swaying on top of her belly. Her fat arms could only lift slowly, enough to pull her drones close so they could feed her. She pulled on such drone close and kissed them, honey dribbling from the corners of both their mouths before releasing them."@1450
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Good little drone... get me more. Don't stop. You muzt zatisfy your queen. Bury thiz ramshackle building and zoon a city block. Mmmmm how intoxicating. "@1451
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "She licked her plump lips, squeezing her tubby fingers against her fat sides. She looked over her dome of a belly at you. "@1452
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Oh I zee my little worker bee haz returned. I really should thank you. You have been zuch a help. I never knew getting followers could be zo eazy. I'm quite, urp, the zenzation now. Haven't you heard? But I can be bigger. Better. Loved by more. You'd like that yez? What iz it you need dear? Anything for a fan~"@1453
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 2
cmp.i.v LT
bf [1417]

:[1416]
pushi.e 1
pop.v.i global.hidebody
b [1418]

:[1417]
pushi.e 0
pop.v.i global.hidebody

:[1418]
b [1419]

:[1419]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushi.e 10
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [1421]

:[1420]
pushi.e 10
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
popz.v

:[1421]
pushi.e -1
pushglb.v global.line
conv.v.i
push.v [array]self.namearray
pop.v.v global.boxname
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [1423]

:[1422]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [1424]

:[1423]
push.e 0

:[1424]
bf [end]

:[1425]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]