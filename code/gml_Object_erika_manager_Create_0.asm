.localvar 0 arguments
.localvar 1 i 664
.localvar 2 a 665
.localvar 3 v 666

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
pushi.e 0
pop.v.i self.specialscene
pushi.e 3
pop.v.i self.tolerance
pushi.e 8
pop.v.i self.date
push.l 4
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
popz.v
push.l 1
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pop.v.v global.boxname
push.s "seenErika"@441
pop.v.s self.myseen
push.s "dailyErika"@451
pop.v.s self.chatkey
push.s "finalerika"@460
pop.v.s self.datekey
push.s "T-Thank you for coming to see me so much..."@2448
pushi.e -1
pushi.e 8
pop.v.s [array]self.intro
push.s "I-It's nice to see you again..."@2449
pushi.e -1
pushi.e 7
pop.v.s [array]self.intro
push.s "I-It's nice to see you again..."@2449
pushi.e -1
pushi.e 6
pop.v.s [array]self.intro
push.s "Good day..."@2450
pushi.e -1
pushi.e 5
pop.v.s [array]self.intro
push.s "Good day..."@2450
pushi.e -1
pushi.e 4
pop.v.s [array]self.intro
push.s "...H-Hi."@2451
pushi.e -1
pushi.e 3
pop.v.s [array]self.intro
push.s "...H-Hi."@2451
pushi.e -1
pushi.e 2
pop.v.s [array]self.intro
push.s "..."@930
pushi.e -1
pushi.e 1
pop.v.s [array]self.intro
push.s "..."@930
pushi.e -1
pushi.e 0
pop.v.s [array]self.intro
push.s "*pant* *pant* I-I'm so round!!! A-And C-Cute now~!!!"@2452
pushi.e -1
pushi.e 8
pop.v.s [array]self.weightline
push.s "*pant* *wheeze* I-I'm getting so...b-big!!!"@2453
pushi.e -1
pushi.e 7
pop.v.s [array]self.weightline
push.s "*pant* *wheeze* I-I'm getting so...b-big!!!"@2453
pushi.e -1
pushi.e 6
pop.v.s [array]self.weightline
push.s "U-Um...I know I'm kind of...different now."@2454
pushi.e -1
pushi.e 5
pop.v.s [array]self.weightline
push.s "U-Um...I know I'm kind of...different now."@2454
pushi.e -1
pushi.e 4
pop.v.s [array]self.weightline
push.s "///"@2455
pushi.e -1
pushi.e 3
pop.v.s [array]self.weightline
push.s "..."@930
pushi.e -1
pushi.e 2
pop.v.s [array]self.weightline
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.weightline
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.weightline
push.s "..?"@2456
pop.v.s self.introgift
push.s "!!! T-Thank you..."@2457
pop.v.s self.likegift
push.s "... (I don't think she liked that...)"@2458
pop.v.s self.badgift
push.s "...Another one?"@2459
pop.v.s self.likedhadit
push.s "...I don't really like this."@2460
pop.v.s self.badhadit
push.s "M-More!?"@2461
pop.v.s self.fulllike
push.s "N-No more..."@2462
pop.v.s self.fullbad
push.s "S-So much today..."@2463
pop.v.s self.fullhadit
push.s "...Stop."@2464
pop.v.s self.fullbadhadit
push.s "... (I think that's a no.)"@2465
pop.v.s self.rejecttxt
push.s "...S-Sure."@2466
pop.v.s self.accepttxt
push.s "U-Um...Wanna go somewhere c-cute?"@2467
pop.v.s self.speciallunch
push.s "..."@930
pop.v.s self.nomorechat
push.s "U-Um...I got you something."@2468
pop.v.s self.givinggift
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
pushi.e 0
cmp.i.v EQ
bt [11]

:[3]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [11]

:[4]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [11]

:[5]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [11]

:[6]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [11]

:[7]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [12]

:[8]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [12]

:[9]
b [13]

:[10]
b [14]

:[11]
push.s "..."@930
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[12]
push.s "O-Oh! U-Um..."@2469
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[13]
push.s "I-It's so nice to talk to you~"@2470
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [14]

:[14]
popz.v
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [24]

:[15]
push.l 4
conv.l.v
push.s "cake"@367
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [19]

:[16]
push.l 4
conv.l.v
push.s "cake"@367
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [19]

:[17]
push.l 5
conv.l.v
push.s "cake"@367
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 4
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
bt [19]

:[18]
push.l 5
conv.l.v
push.s "cake"@367
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.dishgrid
call.i ds_grid_get(argc=3)
push.l 5
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v EQ
b [20]

:[19]
push.e 1

:[20]
bf [22]

:[21]
push.s "O-Oh...you got my favorite cake. I-Is it your favorite too?"@2471
pop.v.s self.cakecomment
b [23]

:[22]
push.s ""@150
pop.v.s self.cakecomment

:[23]
push.s "...Happy birthday. "@2472
push.v self.cakecomment
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [53]

:[24]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [27]

:[25]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [27]

:[26]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v LT
b [28]

:[27]
push.e 0

:[28]
bf [30]

:[29]
push.s "...T-The air. Um..."@2473
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [53]

:[30]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [48]

:[31]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [42]

:[32]
push.l 68
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [34]

:[33]
push.l 72
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
push.s "O-Oh...you got my favorite..."@2474
pop.v.s self.pizzacomment
b [38]

:[37]
push.s ""@150
pop.v.s self.pizzacomment

:[38]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [40]

:[39]
push.s "..."@930
push.v self.pizzacomment
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
b [41]

:[40]
push.s "...Goodbye."@2475
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[41]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[42]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [47]

:[43]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [45]

:[44]
push.s "...The air..."@2476
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [46]

:[45]
push.s "...Goodbye."@2475
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[46]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[47]
b [53]

:[48]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [50]

:[49]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 12
cmp.i.v LT
b [51]

:[50]
push.e 0

:[51]
bf [53]

:[52]
push.s "...I-I like pepperoni pizza..."@2477
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[53]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [55]

:[54]
push.s "Y-You're so b-big!!!"@2478
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [57]

:[55]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 5
cmp.i.v GTE
bf [57]

:[56]
push.s "U-Um...Y-You're very cute."@2479
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[57]
push.l 13
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
pushi.e 1
pop.v.i self.upped
b [60]

:[59]
pushi.e 0
pop.v.i self.upped

:[60]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [86]

:[61]
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [71]

:[62]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [71]

:[63]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [72]

:[64]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [72]

:[65]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [76]

:[66]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [76]

:[67]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [80]

:[68]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [80]

:[69]
b [84]

:[70]
b [85]

:[71]
push.s "..."@930
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [85]

:[72]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "*urp* ah..."@2480
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [75]

:[74]
push.s "..."@930
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[75]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [85]

:[76]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [78]

:[77]
push.s "Oof...I-I’m kind of full"@2481
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [79]

:[78]
push.s "A-Am I...getting bigger?"@2482
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[79]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [85]

:[80]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "*BUORP!* I-I’m g-getting bigger..."@2483
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [83]

:[82]
push.s "I-I’m so round lately...It’s so soft..."@2484
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[83]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [85]

:[84]
push.s "I-I’m so big! S-So round! It’s so nice and soft...I’m s-so cute!!! A-Ah... "@2485
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [85]

:[85]
popz.v

:[86]
push.l 2
pop.v.l local.v

:[87]
pushloc.v local.v
push.l 10
cmp.l.v LT
bf [92]

:[88]
pushloc.v local.v
push.v self.me
cmp.v.v NEQ
bf [91]

:[89]
push.l 1
conv.l.v
push.v self.me
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
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.s "*BUarp* A-Ah...excuse me. They don't always settle right..."@2486
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [92]

:[91]
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [87]

:[92]
pushglb.v global.lunch
pushi.e 1
cmp.i.v EQ
bf [98]

:[93]
push.s "cafeslot8"@400
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "servecafeslot8"@408
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [96]

:[95]
push.e 0

:[96]
bf [98]

:[97]
push.s "T-They have the Heart Gell-o again! I couldn't help myself..."@2487
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[98]
push.v self.chatarray
call.i array_length_1d(argc=1)
pop.v.v self.chatlen

:[end]