.localvar 0 arguments
.localvar 1 i 536
.localvar 2 feelings 539

:[0]
push.v self.roommode
pushi.e 0
cmp.i.v EQ
bf [58]

:[1]
pushi.e 1
conv.i.v
pushi.e 6
conv.i.v
push.l 0
conv.l.v
call.i __background_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.dmode
push.s "fridgescene"@346
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [3]

:[2]
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 0
cmp.l.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.s "The breakroom. Sunlight trickles in through the glass ceiling. Someone finally closed the roof window. Unfortunately, without the ventilation the smell has returned."@1972
pop.v.s global.text
b [11]

:[6]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [8]

:[7]
push.s "The breakroom. Sunlight trickles in through the glass ceiling. Even though the air has been fixed no one has closed the window on the roof. It’s probably driving up the cost of the AC but some natural airflow has sucked out the odd smell that always lingered around the breakroom...It’s probably fine to just let it sit like that. "@1973
pop.v.s global.text
b [11]

:[8]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [10]

:[9]
push.s "The breakroom is near sweltering with the lack of air and glass ceiling letting the afternoon sun pour in and bake the linoleum flooring. Thankfully, the ceiling window can be propped open and someone has done so, allowing the heat to escape. Little good it does though..."@1974
pop.v.s global.text
b [11]

:[10]
push.s "The breakroom. Sunlight trickles in through the glass ceiling. It’s warmth makes you aware of the stark contrast between it, and the sterilized fluorescent lighting everywhere else in the office. Somehow this pleasant moment has only made everything else feel more bleak..."@1975
pop.v.s global.text

:[11]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [35]

:[12]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [34]

:[13]
pushi.e 0
pop.v.i local.i
push.s "Vending Machines"@1976
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "Donut box"@1977
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [15]

:[14]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
b [16]

:[15]
push.e 0

:[16]
bf [18]

:[17]
push.s "Pick up pizza"@1978
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[18]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [20]

:[19]
pushglb.v global.cakeslices
pushi.e 0
cmp.i.v GT
b [21]

:[20]
push.e 0

:[21]
bf [23]

:[22]
push.s "Pick up cake"@1979
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[23]
pushglb.v global.lunch
pushi.e 0
cmp.i.v EQ
bf [25]

:[24]
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.lunchcost
cmp.v.v GTE
b [26]

:[25]
push.e 0

:[26]
bf [28]

:[27]
push.s "Go to lunch"@1980
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[28]
push.s "Trashcan"@1981
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.s "fridgescene"@346
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [30]

:[29]
push.s "sawfridgeclue"@376
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.s "Investigate fridge"@1982
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[33]
push.s "Go back"@1842
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

:[34]
popenv [13]

:[35]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [37]

:[36]
pushi.e 16
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [58]

:[37]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [58]

:[38]
pushglb.v global.choice
dup.v 0
push.s "Go back"@1842
cmp.s.v EQ
bt [48]

:[39]
dup.v 0
push.s "Vending Machines"@1976
cmp.s.v EQ
bt [49]

:[40]
dup.v 0
push.s "Trashcan"@1981
cmp.s.v EQ
bt [50]

:[41]
dup.v 0
push.s "Go to lunch"@1980
cmp.s.v EQ
bt [51]

:[42]
dup.v 0
push.s "Talk to Henriette"@1983
cmp.s.v EQ
bt [52]

:[43]
dup.v 0
push.s "Donut box"@1977
cmp.s.v EQ
bt [53]

:[44]
dup.v 0
push.s "Pick up pizza"@1978
cmp.s.v EQ
bt [54]

:[45]
dup.v 0
push.s "Pick up cake"@1979
cmp.s.v EQ
bt [55]

:[46]
dup.v 0
push.s "Investigate fridge"@1982
cmp.s.v EQ
bt [56]

:[47]
b [57]

:[48]
pushi.e 16
conv.i.v
pushi.e 2
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [57]

:[49]
pushi.e 6
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i madechoice(argc=0)
popz.v
b [57]

:[50]
pushi.e 2
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [57]

:[51]
pushi.e 1
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [57]

:[52]
pushi.e 3
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [57]

:[53]
pushi.e 4
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [57]

:[54]
pushi.e 5
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [57]

:[55]
pushi.e 6
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [57]

:[56]
pushi.e 7
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [57]

:[57]
popz.v

:[58]
push.v self.roommode
pushi.e 1
cmp.i.v EQ
bf [77]

:[59]
push.s "Should I go to lunch by myself? Or sit with someone?"@1984
pop.v.s global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [69]

:[60]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [68]

:[61]
push.l 1
conv.l.v
pushi.e 0
conv.i.v
pushglb.v global.guestlist
call.i ds_list_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring1
push.l 1
conv.l.v
pushi.e 1
conv.i.v
pushglb.v global.guestlist
call.i ds_list_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
push.l 1
conv.l.v
pushi.e 2
conv.i.v
pushglb.v global.guestlist
call.i ds_list_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring3
pushi.e 0
pop.v.i local.i
push.s "Go to lunch alone"@1986
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
push.v self.keystring1
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
push.s "Eat lunch with "@1987
push.l 1
conv.l.v
pushi.e 0
conv.i.v
pushglb.v global.guestlist
call.i ds_list_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "?"@1875
add.s.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.choices
pushi.e 0
conv.i.v
pushglb.v global.guestlist
call.i ds_list_find_value(argc=2)
pushi.e -2
pushloc.v local.i
conv.v.i
pop.v.v [array]self.needarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[63]
push.v self.keystring2
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [65]

:[64]
push.s "Eat lunch with "@1987
push.l 1
conv.l.v
pushi.e 1
conv.i.v
pushglb.v global.guestlist
call.i ds_list_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "?"@1875
add.s.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.choices
pushi.e 1
conv.i.v
pushglb.v global.guestlist
call.i ds_list_find_value(argc=2)
pushi.e -2
pushloc.v local.i
conv.v.i
pop.v.v [array]self.needarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[65]
push.v self.keystring3
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [67]

:[66]
push.s "Eat lunch with "@1987
push.l 1
conv.l.v
pushi.e 2
conv.i.v
pushglb.v global.guestlist
call.i ds_list_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "?"@1875
add.s.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.choices
pushi.e 2
conv.i.v
pushglb.v global.guestlist
call.i ds_list_find_value(argc=2)
pushi.e -2
pushloc.v local.i
conv.v.i
pop.v.v [array]self.needarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[67]
push.s "Nevermind"@1846
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[68]
popenv [61]

:[69]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [77]

:[71]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [77]

:[72]
pushglb.v global.choice
push.s "Nevermind"@1846
cmp.s.v EQ
bf [74]

:[73]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [77]

:[74]
pushglb.v global.choice
push.s "Go to lunch alone"@1986
cmp.s.v EQ
bf [76]

:[75]
push.l 0
conv.l.v
call.i goto_lunch(argc=1)
popz.v
b [77]

:[76]
pushi.e -1
push.v csel
conv.v.i
push.v [array]self.needarray
call.i goto_lunch(argc=1)
popz.v

:[77]
push.v self.roommode
pushi.e 2
cmp.i.v EQ
bf [97]

:[78]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v NEQ
bf [90]

:[79]
push.s ""@150
pop.v.s self.mysterytxt
push.s "vicjesse1"@528
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.s "confrontedkathy1"@533
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [82]

:[81]
push.e 0

:[82]
bf [84]

:[83]
push.s " You peer into the garbage, sure enough Jesse’s brown paper bag sits wadded at the bottom. But something interesting catches your eye. A greasy pawprint left behind on the garbage lid..."@1990
pop.v.s self.mysterytxt
pushi.e 1
conv.i.v
push.s "seenclue"@529
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[84]
push.s "Here's the trashcan, I can throw out anything I'm carrying. Better be careful though, once I toss something I can't get it back."@1991
push.v self.mysterytxt
add.v.s
pop.v.v global.text
pushi.e 1
pop.v.i global.giving
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [86]

:[85]
pushi.e 0
pop.v.i global.giving
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [89]

:[86]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [89]

:[87]
pushi.e 0
conv.i.v
pushglb.v global.invent_choice
pushglb.v global.invent
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v NEQ
bf [89]

:[88]
push.l 10
conv.l.v
pushi.e 0
conv.i.v
pushglb.v global.invent_choice
pushglb.v global.invent
call.i ds_grid_get(argc=3)
call.i give_gift(argc=2)
pop.v.v local.feelings

:[89]
b [97]

:[90]
pushi.e 0
pop.v.i global.giving
push.s ""@150
pop.v.s self.mysterytxt
push.s "vicjesse1"@528
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.s "confrontedkathy1"@533
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
push.s " You peer into the garbage, sure enough Jesse’s brown paper bag sits wadded at the bottom. But something interesting catches your eye. A greasy pawprint left behind on the garbage lid..."@1990
pop.v.s self.mysterytxt
pushi.e 1
conv.i.v
push.s "seenclue"@529
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v

:[95]
push.s "Here's the trashcan, I can throw out anything I'm carrying. Looks like I don't have anything right now though. "@1993
push.v self.mysterytxt
add.v.s
pop.v.v global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[97]
push.v self.roommode
pushi.e 4
cmp.i.v EQ
bf [117]

:[98]
pushglb.v global.donutlist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [115]

:[99]
push.s "Looks like there's still some donuts left. Should I pick up any?"@1994
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Whoops...can't pick that up right now."@1995
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [106]

:[100]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [105]

:[101]
pushglb.v global.donutlist
call.i ds_list_size(argc=1)
pop.v.v self.listlen
pushi.e 0
pop.v.i local.i

:[102]
pushloc.v local.i
push.v self.listlen
cmp.v.v LT
bf [104]

:[103]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.donutlist
call.i ds_list_find_value(argc=2)
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [102]

:[104]
push.s "Finished"@777
pushi.e -1
push.v self.listlen
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[105]
popenv [101]

:[106]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [108]

:[107]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [114]

:[108]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [114]

:[109]
pushglb.v global.choice
push.s "Finished"@777
cmp.s.v EQ
bf [111]

:[110]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [114]

:[111]
push.v csel
pushglb.v global.donutlist
call.i ds_list_find_value(argc=2)
pop.v.v self.purchase
push.v self.purchase
call.i buy(argc=1)
pop.v.v self.buying
push.v self.buying
pushi.e 1
cmp.i.v EQ
bf [113]

:[112]
pushi.e 0
pop.v.i global.line
b [114]

:[113]
pushi.e 1
pop.v.i global.line

:[114]
b [117]

:[115]
push.s "No donuts today..."@1996
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [117]

:[116]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[117]
push.v self.roommode
pushi.e 5
cmp.i.v EQ
bf [137]

:[118]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [135]

:[119]
push.s "Looks like there's still some pizza left. Should I pick up any?"@1997
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Whoops...can't pick that up right now."@1995
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [126]

:[120]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [125]

:[121]
pushglb.v global.pizzalist
call.i ds_list_size(argc=1)
pop.v.v self.listlen
pushi.e 0
pop.v.i local.i

:[122]
pushloc.v local.i
push.v self.listlen
cmp.v.v LT
bf [124]

:[123]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.pizzalist
call.i ds_list_find_value(argc=2)
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.choices
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [122]

:[124]
push.s "Finished"@777
pushi.e -1
push.v self.listlen
conv.v.i
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[125]
popenv [121]

:[126]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [128]

:[127]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [134]

:[128]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [134]

:[129]
pushglb.v global.choice
push.s "Finished"@777
cmp.s.v EQ
bf [131]

:[130]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [134]

:[131]
push.v csel
pushglb.v global.pizzalist
call.i ds_list_find_value(argc=2)
pop.v.v self.purchase
push.v self.purchase
call.i buy(argc=1)
pop.v.v self.buying
push.v self.buying
pushi.e 1
cmp.i.v EQ
bf [133]

:[132]
pushi.e 0
pop.v.i global.line
b [134]

:[133]
pushi.e 1
pop.v.i global.line

:[134]
b [137]

:[135]
push.s "I didn't get any pizza..."@1998
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [137]

:[136]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[137]
push.v self.roommode
pushi.e 6
cmp.i.v EQ
bf [156]

:[138]
pushglb.v global.cakeslices
pushi.e 0
cmp.i.v GT
bf [152]

:[139]
push.s "Looks like there's still some cake left. Should I pick up any?"@1999
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Oh whoops...I'm carrying too many other things to pick that up."@2000
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [143]

:[140]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [142]

:[141]
push.s "Grab a slice"@2001
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Not right now"@2002
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[142]
popenv [141]

:[143]
call.i check_back(argc=0)
pushi.e 1
cmp.i.v EQ
bf [145]

:[144]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [151]

:[145]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [151]

:[146]
pushglb.v global.choice
push.s "Not right now"@2002
cmp.s.v EQ
bf [148]

:[147]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v
b [151]

:[148]
push.s "cake"@367
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pop.v.v self.purchase
push.v self.purchase
call.i buy(argc=1)
pop.v.v self.buying
push.v global.cakeslices
push.e 1
sub.i.v
pop.v.v global.cakeslices
push.v self.buying
pushi.e 1
cmp.i.v EQ
bf [150]

:[149]
pushi.e 0
pop.v.i global.line
b [151]

:[150]
pushi.e 1
pop.v.i global.line

:[151]
b [156]

:[152]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
bf [154]

:[153]
pushi.e 0
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[154]
push.s "That's the last slice. There's no more cake to pick up."@2003
pop.v.s global.text
pushi.e 1
conv.i.v
call.i keyboard_check_pressed(argc=1)
pushi.e 1
cmp.i.v EQ
bf [156]

:[155]
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[156]
push.v self.roommode
pushi.e 7
cmp.i.v EQ
bf [end]

:[157]
pushi.e 1
conv.i.v
push.s "sawfridgeclue"@376
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
dup.v 0
push.l 0
cmp.l.v EQ
bt [167]

:[158]
dup.v 0
push.l 8
cmp.l.v EQ
bt [221]

:[159]
dup.v 0
push.l 2
cmp.l.v EQ
bt [221]

:[160]
dup.v 0
push.l 9
cmp.l.v EQ
bt [222]

:[161]
dup.v 0
push.l 5
cmp.l.v EQ
bt [222]

:[162]
dup.v 0
push.l 7
cmp.l.v EQ
bt [223]

:[163]
dup.v 0
push.l 6
cmp.l.v EQ
bt [223]

:[164]
dup.v 0
push.l 3
cmp.l.v EQ
bt [224]

:[165]
dup.v 0
push.l 4
cmp.l.v EQ
bt [224]

:[166]
b [225]

:[167]
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [213]

:[168]
pushi.e 1
conv.i.v
push.s "comradclue"@378
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You take a cursory glance around the breakroom for clues…"@2004
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Nothing in particular stands out. As you’re investigating the scene, you notice Chloe coming in the breakroom behind you."@2005
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [170]

:[169]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[170]
push.s "Chloe"@619
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oh, you wouldn’t happen to be here looking into the fridge thing, are you? I got some of my own suspicions…"@2006
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [172]

:[171]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 6
conv.l.v
call.i call_actors(argc=2)
popz.v

:[172]
push.s "Kathy"@623
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "OwO what’s everyone mew-ing in here~? "@2007
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [174]

:[173]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 7
conv.l.v
push.l 6
conv.l.v
call.i call_actors(argc=2)
popz.v

:[174]
push.s "Jesse"@624
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Probably the same thing you are: Tryin’ to figure out who ate the fridge for real."@2008
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [176]

:[175]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 8
conv.l.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v

:[176]
push.s "Pearl"@620
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "O-Oh! I didn’t expect everyone to be here! "@2009
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Oh are we having a party!? Did you forget to invite me~?"@2010
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [178]

:[177]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[178]
push.s "Chloe"@619
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "No. No we are not and I did not."@2011
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 8
cmp.i.v EQ
bf [180]

:[179]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 5
conv.l.v
push.l 9
conv.l.v
call.i call_actors(argc=2)
popz.v

:[180]
push.s "Polly"@626
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "What’zzz all the buzz~?"@2012
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "*crunch crunch* Hey what’s everyone doing? Did someone die?"@2013
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 10
cmp.i.v EQ
bf [182]

:[181]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
call.i call_actors(argc=2)
popz.v

:[182]
push.s "Erika"@621
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "..."@930
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "OH geezus you scared the SHIT out of me when did you show up???"@2014
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [184]

:[183]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 8
conv.l.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[184]
push.s "Chloe"@619
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "I didn’t really expect everyone to be in here like this...but since we’re all gathered let’s get something out of the way: Does anyone want to confess to eating the fridge?"@2015
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "Don’t look at me."@2016
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 14
cmp.i.v EQ
bf [186]

:[185]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 6
conv.l.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v

:[186]
push.s "Pearl"@620
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "I-I mean...I don’t know? What if I did!?"@2017
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "Nyeah, what if she DID~!?"@2018
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 16
cmp.i.v EQ
bf [188]

:[187]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 4
conv.l.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[188]
push.s "Chloe"@619
pushi.e -1
pushi.e 16
pop.v.s [array]self.namearray
push.s "No, Pearl. No you didn’t. But I think I know who did."@2019
pushi.e -5
pushi.e 16
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 17
cmp.i.v EQ
bf [190]

:[189]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 9
conv.l.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v

:[190]
push.s "Stacy"@625
pushi.e -1
pushi.e 17
pop.v.s [array]self.namearray
push.s "Oh~!!! A scandal!!!"@2020
pushi.e -5
pushi.e 17
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 18
pop.v.s [array]self.namearray
push.s "Tell uzzz~!"@2021
pushi.e -5
pushi.e 18
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 19
cmp.i.v EQ
bf [192]

:[191]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[192]
push.s "Chloe"@619
pushi.e -1
pushi.e 19
pop.v.s [array]self.namearray
push.s "I think the boss did."@2022
pushi.e -5
pushi.e 19
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 20
cmp.i.v EQ
bf [194]

:[193]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 7
conv.l.v
push.l 6
conv.l.v
call.i call_actors(argc=2)
popz.v

:[194]
push.s "Kathy"@623
pushi.e -1
pushi.e 20
pop.v.s [array]self.namearray
push.s ">:3c *gasp*"@2023
pushi.e -5
pushi.e 20
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 21
cmp.i.v EQ
bf [196]

:[195]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[196]
push.s "Chloe"@619
pushi.e -1
pushi.e 21
pop.v.s [array]self.namearray
push.s "It’s not the first time he’s done this kind of shit. And, he’s the one who opens and closes the window up there. It’s too much paperwork to authorize anyone else to do it, it’s a huge safety liability. But the latch is only eye level for him. "@2024
pushi.e -5
pushi.e 21
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 22
cmp.i.v EQ
bf [198]

:[197]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 5
conv.l.v
call.i call_actors(argc=2)
popz.v

:[198]
push.s "Victoria"@622
pushi.e -1
pushi.e 22
pop.v.s [array]self.namearray
push.s "Oh, I go up there all the time to drop shit on the boss and see if he notices. "@2025
pushi.e -5
pushi.e 22
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 23
cmp.i.v EQ
bf [200]

:[199]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[200]
push.s "Chloe"@619
pushi.e -1
pushi.e 23
pop.v.s [array]self.namearray
push.s "I didn’t hear that. Anyways, the window has been open since the air incident, I’ve been meaning to remind him to close it."@2026
pushi.e -5
pushi.e 23
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 24
cmp.i.v EQ
bf [202]

:[201]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 9
conv.l.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v

:[202]
push.s "Jesse"@624
pushi.e -1
pushi.e 24
pop.v.s [array]self.namearray
push.s "Oh yeah I noticed that, but I kinda liked the breeze."@2027
pushi.e -5
pushi.e 24
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 25
pop.v.s [array]self.namearray
push.s "ZZZame. I liked the natural lighting in here too. "@2028
pushi.e -5
pushi.e 25
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 26
cmp.i.v EQ
bf [204]

:[203]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[204]
push.s "Chloe"@619
pushi.e -1
pushi.e 26
pop.v.s [array]self.namearray
push.s "But, after the fridge went missing it was closed again. He probably forgot it was left open and closed it after himself."@2029
pushi.e -5
pushi.e 26
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 27
cmp.i.v EQ
bf [206]

:[205]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 8
conv.l.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[206]
push.s "Pearl"@620
pushi.e -1
pushi.e 27
pop.v.s [array]self.namearray
push.s "Wow! You’re so smart, Chloe!"@2030
pushi.e -5
pushi.e 27
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 28
pop.v.s [array]self.namearray
push.s "Indeed! I know we kept you around for a reason, darling. Hmm-hmm~"@2031
pushi.e -5
pushi.e 28
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 29
cmp.i.v EQ
bf [208]

:[207]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
push.l 2
conv.l.v
push.l 9
conv.l.v
call.i call_actors(argc=2)
popz.v

:[208]
push.s "Polly"@626
pushi.e -1
pushi.e 29
pop.v.s [array]self.namearray
push.s "Okay but like, now what? We just walk up to the bozzz and tell him we know he ate the fridge? Good way to get fired~"@2032
pushi.e -5
pushi.e 29
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 30
pop.v.s [array]self.namearray
push.s "Yeah, there’s not really a clear course of action from here. I know how the boss is. PLAYER. He asked you to look into this fridge situation for him right? Probably hoping you’ll give him a good enough excuse to blame someone else. To be honest? I’d love to catch him in the act for once, but you’d be risking a lot more than just your job."@2033
pushi.e -5
pushi.e 30
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 31
cmp.i.v EQ
bf [210]

:[209]
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[210]
push.s "Chloe"@619
pushi.e -1
pushi.e 31
pop.v.s [array]self.namearray
push.s "It’s risky, but I won’t put you in a tight spot. You can blame me for the fridge situation, I can take the fall I don't care. He can’t do anything to me anyways and he knows it. "@2034
pushi.e -5
pushi.e 31
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 32
pop.v.s [array]self.namearray
push.s "Report back to him when he asks and do whatever you think is right. Just try not to get someone in trouble who doesn’t deserve it. "@2035
pushi.e -5
pushi.e 32
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 33
cmp.i.v EQ
bf [212]

:[211]
pushi.e 1
pop.v.i global.hidebody
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[212]
push.s ""@150
pushi.e -1
pushi.e 33
pop.v.s [array]self.namearray
push.s "With that Chloe herds everyone out of the breakroom. Leaving you thinking in the middle of the breakroom’s sunny spotlight…"@2036
pushi.e -5
pushi.e 33
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
b [220]

:[213]
push.s "Chloeate"@465
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [219]

:[214]
pushi.e 1
conv.i.v
push.s "sawbossclue"@377
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [216]

:[215]
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[216]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You take a cursory glance around the breakroom for clues..."@2037
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "As you’re investigating the scene, you notice Chloe coming in the breakroom behind you."@2038
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oh, you wouldn’t happen to be here looking into the fridge thing, are you? I got some of my own suspicions. You know, the ceiling window was open before, right? Since the air incident. The boss is the one who usually opens and closes it..."@2039
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Now, I would think twice about actually DOING anything with this information. And I’m certainly not suggesting anything. "@2040
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "But I figure you should know. Just try not to get someone in trouble who doesn’t deserve it…"@2041
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [218]

:[217]
pushi.e 1
pop.v.i global.hidebody
pushi.e 11
conv.i.v
call.i instance_destroy(argc=1)
popz.v

:[218]
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "With that she leaves..."@2042
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
b [220]

:[219]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You take a cursory glance around the breakroom for clues..."@2037
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Nothing in particular stands out. But it does occur to you that the window was open before the incident. And now it’s closed...But you’re not even sure if that has anything to do with this."@2043
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "There’s probably not enough evidence to really figure this one out. Why is this your job anyways?"@2044
pushi.e -5
pushi.e 2
pop.v.s [array]global.text

:[220]
b [225]

:[221]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You take a cursory glance around the breakroom for clues..."@2037
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Nothing in particular stands out, at first. But upon closer inspection over the counter you see a chubby handprint in the dust. You try not to think about how long it’s been since the counters have had a proper wash. This is the only clue you find, and it’s really not much. But maybe it’s enough to placate the boss."@2045
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [225]

:[222]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You take a cursory glance around the breakroom for clues..."@2037
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Nothing in particular stands out, at first. But upon closer inspection over the counter you see a lone USB. You recognize it as the ones used by tech, was it left by the culprit? This is the only clue you find, and it’s really not much. But maybe it’s enough to placate the boss."@2046
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [225]

:[223]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You take a cursory glance around the breakroom for clues..."@2037
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Nothing in particular stands out, at first. But upon closer inspection over the counter you see a chubby pawprint in the dust. You try not to think about how long it’s been since the counters have had a proper wash. This is the only clue you find, and it’s really not much. But maybe it’s enough to placate the boss."@2047
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [225]

:[224]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You take a cursory glance around the breakroom for clues..."@2037
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Nothing in particular stands out, at first. But upon closer inspection over the counter you see a sticky handprint. Whoever left it must eat a lot of sweets, was it the culprit? This is the only clue you find, and it’s really not much. But maybe it’s enough to placate the boss."@2048
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
b [225]

:[225]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [227]

:[226]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [228]

:[227]
push.e 0

:[228]
bf [end]

:[229]
pushi.e 1
conv.i.v
push.s "sawfridgeclue"@376
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
pop.v.i self.roommode
call.i madechoice(argc=0)
popz.v

:[end]