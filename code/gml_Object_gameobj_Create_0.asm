.localvar 0 arguments
.localvar 1 i 273
.localvar 2 a 277
.localvar 3 list_save 279
.localvar 4 grid_save 280

:[0]
call.i randomize(argc=0)
popz.v
pushi.e 0
pop.v.i global.muted
pushi.e 1
pop.v.i global.cutmusic
pushi.e 0
pop.v.i global.missedchloe
pushi.e 0
pop.v.i global.chloecounter
pushi.e 10
pop.v.i global.onetrust
pushi.e 0
pop.v.i global.bossnotif
push.s "firstmeeting"@295
pop.v.s global.bossscene
pushi.e 0
pop.v.i global.hidestats
pushi.e 0
pop.v.i global.hide_inventory
pushi.e 0
pop.v.i global.hide_txtbox
pushi.e 0
pop.v.i global.hidebody
pushi.e 6
pop.v.i global.cakeslices
pushi.e 12
pop.v.i global.dailycandy
pushi.e 6
pop.v.i global.pizzaslices
pushi.e 0
pop.v.i global.dayscene
pushi.e 0
pop.v.i global.gotate
push.v self.id
pop.v.v global.left_body
push.v self.id
pop.v.v global.right_body
pushbltn.v self.room_width
pushi.e 4
conv.i.d
div.d.v
pop.v.v global.left_bodx
pushglb.v global.left_bodx
pushi.e 3
mul.i.v
pop.v.v global.right_bodx
push.s "firstday"@306
pop.v.s global.frontscene
push.s "firstday"@306
pop.v.s global.salesscene
push.s "firstday"@306
pop.v.s global.itscene
push.s "firstday"@306
pop.v.s global.custscene
pushi.e 3000
pushi.e -5
pushi.e 8
pop.v.i [array]global.tier
pushi.e 150
pushi.e -5
pushi.e 7
pop.v.i [array]global.tier
pushi.e 100
pushi.e -5
pushi.e 6
pop.v.i [array]global.tier
pushi.e 80
pushi.e -5
pushi.e 5
pop.v.i [array]global.tier
pushi.e 60
pushi.e -5
pushi.e 4
pop.v.i [array]global.tier
pushi.e 45
pushi.e -5
pushi.e 3
pop.v.i [array]global.tier
pushi.e 30
pushi.e -5
pushi.e 2
pop.v.i [array]global.tier
pushi.e 15
pushi.e -5
pushi.e 1
pop.v.i [array]global.tier
pushi.e 10
pushi.e -5
pushi.e 0
pop.v.i [array]global.tier
pushi.e 114
pushi.e -5
pushi.e 8
pop.v.i [array]global.quantier
pushi.e 90
pushi.e -5
pushi.e 7
pop.v.i [array]global.quantier
pushi.e 66
pushi.e -5
pushi.e 6
pop.v.i [array]global.quantier
pushi.e 54
pushi.e -5
pushi.e 5
pop.v.i [array]global.quantier
pushi.e 42
pushi.e -5
pushi.e 4
pop.v.i [array]global.quantier
pushi.e 30
pushi.e -5
pushi.e 3
pop.v.i [array]global.quantier
pushi.e 24
pushi.e -5
pushi.e 2
pop.v.i [array]global.quantier
pushi.e 18
pushi.e -5
pushi.e 1
pop.v.i [array]global.quantier
pushi.e 12
pushi.e -5
pushi.e 0
pop.v.i [array]global.quantier
pushi.e 1
pushi.e -5
pushi.e 7
pop.v.i [array]global.headspts
pushi.e 3
pushi.e -5
pushi.e 8
pop.v.i [array]global.headspts
pushi.e 1
pushi.e -5
pushi.e 6
pop.v.i [array]global.fullheadspts
pushi.e 2
pushi.e -5
pushi.e 7
pop.v.i [array]global.fullheadspts
pushi.e 5
pop.v.i global.fridgesize
pushi.e 3
pop.v.i global.commentweight
pushi.e 2
pop.v.i global.snackcost
pushi.e 5
pop.v.i global.lunchcost
pushi.e 5
pop.v.i global.icecreamcost
pushi.e 100
pop.v.i global.vendingcost
pushi.e 100
pop.v.i global.equipcost
pushi.e 100
pop.v.i global.cafecost
pushi.e 12
pop.v.i global.donutcost
pushi.e 30
pop.v.i global.monsterpts
pushi.e 100
pop.v.i global.rescuecost
pushi.e 2
conv.i.v
pushi.e 5
conv.i.v
call.i ds_grid_create(argc=2)
pop.v.v global.invent
pushi.e 0
pop.v.i global.giving
pushi.e 0
pop.v.i global.hide_inventory
pushi.e 0
pop.v.i global.invent_choice
pushi.e 6
pop.v.i global.itemmaxx
pushi.e 0
pop.v.i global.goldonly
call.i window_get_height(argc=0)
pop.v.v self.wh
push.d 3.5
pop.v.d global.scrnpct
push.s "Example String "@327
pop.v.s global.text
pushi.e 0
pop.v.i global.line
pushi.e 0
pop.v.i global.choice
push.s ""@150
pop.v.s global.boxname
pushi.e 0
conv.i.v
call.i draw_set_font(argc=1)
popz.v
pushi.e 14
pop.v.i global.home
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.scrnline
pushi.e 0
pop.v.i global.continuing
pushi.e 0
pop.v.i global.lunch
push.l 0
pop.v.l global.guest
pushi.e 0
pop.v.i global.officemode
push.l 52
pushi.e -5
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 55
pushi.e -5
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 54
pushi.e -5
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 53
pushi.e -5
pushi.e 5
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 51
pushi.e -5
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 50
pushi.e -5
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 49
pushi.e -5
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 48
pushi.e -5
pushi.e 4
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 46
pushi.e -5
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 45
pushi.e -5
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 44
pushi.e -5
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 47
pushi.e -5
pushi.e 3
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 43
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 42
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 40
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 41
pushi.e -5
pushi.e 2
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 39
pushi.e -5
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 38
pushi.e -5
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 37
pushi.e -5
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 36
pushi.e -5
pushi.e 1
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 35
pushi.e -5
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 3
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 34
pushi.e -5
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 2
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 33
pushi.e -5
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 1
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
push.l 32
pushi.e -5
pushi.e 0
chkindex.e
push.i 32000
mul.i.i
pushi.e 0
chkindex.e
add.i.i
pop.v.l [array]global.vendarr
pushi.e 1
pushenv [2]

:[1]
call.i ds_map_create(argc=0)
pop.v.v global.events
pushi.e 0
pop.v.i self.testinglunch
pushi.e 0
conv.i.v
push.s "gold"@54
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "boobs"@341
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "legs"@342
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "head"@343
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "OPENINGSCENE"@344
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "lunchtut"@345
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "fridgescene"@346
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "testscene"@347
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "endgame"@348
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "leviintro"@349
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "memories"@350
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "failedboss"@351
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "guiltylist"@352
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "rescueexpo"@353
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "downgradeexpo"@354
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "candownsize"@355
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "FAILBOSS1"@356
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "FAILBOSS2"@357
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "deathbymold"@358
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "makeyoulunch"@359
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "firstmeeting"@295
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "firstday"@306
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "pizzatime"@360
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "airboss1"@362
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "airboss2"@363
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "airboss3"@364
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "airboss4"@365
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "cakescene"@366
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
push.l 82
conv.l.v
push.s "cake"@367
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "icecreamman"@368
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "stayfit"@369
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "canfridge"@370
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "bossfridge"@371
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "whodunnit"@373
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
push.l 0
conv.l.v
push.s "fridgeeater"@374
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "solvefridge"@375
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "sawfridgeclue"@376
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "sawbossclue"@377
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "comradclue"@378
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "comradsuccess"@379
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "accusetime"@380
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
push.d 0.5
conv.d.v
push.s "equipment"@381
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
push.d 0.5
conv.d.v
push.s "morale"@382
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "vendslot1"@383
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "vendslot2"@384
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "vendslot3"@385
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "vendslot4"@386
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "vendslot5"@387
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "vendslot6"@388
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "defaultvend"@389
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "fullcafe"@390
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "fullvend"@391
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "defaultcafe"@392
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "cafeslot1"@393
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "cafeslot2"@394
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "cafeslot3"@395
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "cafeslot4"@396
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "cafeslot5"@397
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "cafeslot6"@398
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "cafeslot7"@399
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "cafeslot8"@400
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "servecafeslot1"@401
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "servecafeslot2"@402
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "servecafeslot3"@403
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "servecafeslot4"@404
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "servecafeslot5"@405
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "servecafeslot6"@406
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "servecafeslot7"@407
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "servecafeslot8"@408
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "almostfullequip"@409
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "fullequip"@410
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "fullmorale"@411
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "luncheon"@412
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dinner"@413
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "bparty"@414
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "hparty"@415
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "trip"@416
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "didluncheon"@417
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "diddinner"@418
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "didbparty"@419
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "didhparty"@420
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "didtrip"@421
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "frontsupplies"@422
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "salessupplies"@423
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "itsupplies"@424
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "custsupplies"@425
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chairpay"@426
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chairpaid"@427
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "copypay"@428
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "copypaid"@429
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dronepay"@430
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dronepaid"@431
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "fridgepay"@432
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "fridgepaid"@433
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "airpay"@434
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "fridgepay"@432
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "fridgepaid"@433
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seenChloe"@436
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seenStacy"@437
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seenVictoria"@438
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seen2-E"@439
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seenPearl"@440
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seenErika"@441
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seenPolly"@442
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seenKathy"@443
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seenJesse"@444
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "seenmyself"@445
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dailyChloe"@446
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dailyStacy"@447
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dailyVictoria"@448
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "daily2-E"@449
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dailyPearl"@450
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dailyErika"@451
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dailyPolly"@452
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dailyKathy"@453
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "dailyJesse"@454
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finalchloe"@455
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finalstacy"@456
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finalvic"@457
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finaltwoee"@458
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finalpearl"@459
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finalerika"@460
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finalpolly"@461
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finalkathy"@462
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finaljesse"@463
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "finalmyself"@464
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Chloeate"@465
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Stacyate"@466
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Victoriaate"@467
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "2-Eate"@468
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Pearlate"@469
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Jesseate"@470
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Erikaate"@471
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Pollyate"@472
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "Kathyate"@473
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chloescene"@474
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "stacyscene"@475
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "vicscene"@476
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "pearlscene"@477
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "jessescene"@478
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "erikascene"@479
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "pollyscene"@480
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "kathyscene"@481
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "youateChloe"@482
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "youateStacy"@483
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "youateVictoria"@484
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "youatePearl"@485
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "youateJesse"@486
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "youateErika"@487
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "youatePolly"@488
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "youateKathy"@489
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "blamedchloe"@490
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "blamedpearl"@491
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "blamedkathy"@492
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "blamedjesse"@493
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "blamedvic"@494
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "blamederika"@495
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "blamedstacy"@496
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "blamedpolly"@497
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "gotcandybowl"@498
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "abusedcandybowl"@499
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "brokediet"@38
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "anyonefit"@500
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "frontvore"@510
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "salesvore"@511
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "itvore"@512
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "custvore"@513
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "pearlkathy1"@514
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chosepearl1"@515
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chosekathy1"@516
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "resolvedpearlkathy1"@517
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "pearlkathy2"@518
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chosepearl2"@519
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chosekathy2"@520
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "resolvedpearlkathy2"@521
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "neutralpearlkathy2"@522
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "pearlkathy3"@523
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chloestacy1"@524
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "listened1"@525
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chloestacy2"@526
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "listened2"@527
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "vicjesse1"@528
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "seenclue"@529
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chosevic1"@530
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "chosejesse1"@531
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "investigate1"@532
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "confrontedkathy1"@533
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "kathyconfess"@534
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "mysterysolved"@535
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "maybelater"@536
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "erikaandpolly"@537
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "erikaandvic"@538
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "erikaandkathy"@539
conv.s.v
pushglb.v global.events
call.i ds_map_add(argc=3)
popz.v

:[2]
popenv [1]
pushi.e 1
pop.v.i self.dpoints
pushi.e 3
pop.v.i self.vpoints
pushi.e 4
pop.v.i self.cpoints
pushi.e 4
pop.v.i self.cdpoints
pushi.e 4
pop.v.i self.cakepoints
pushi.e 2
pop.v.i self.pizzapoints
pushi.e 2
pop.v.i self.giftponits
push.l 8
conv.l.v
push.l 95
conv.l.v
call.i ds_grid_create(argc=2)
pop.v.v global.dishgrid
push.l 32
pop.v.l local.i

:[3]
pushloc.v local.i
push.l 56
cmp.l.v LT
bf [5]

:[4]
pushglb.v global.snackcost
push.l 2
conv.l.v
pushloc.v local.i
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [3]

:[5]
push.l 7
conv.l.v
push.l 4
conv.l.v
push.l 93
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 3
conv.i.v
push.l 3
conv.l.v
push.l 93
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.dpoints
push.l 6
conv.l.v
push.l 93
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 4
conv.l.v
push.l 92
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.giftponits
push.l 6
conv.l.v
push.l 92
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 69
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 44
conv.i.v
push.l 3
conv.l.v
push.l 69
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Chocolate pizza"@547
conv.s.v
push.l 1
conv.l.v
push.l 69
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.pizzapoints
push.l 6
conv.l.v
push.l 69
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 71
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 40
conv.i.v
push.l 3
conv.l.v
push.l 71
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Pineapple bacon pizza"@548
conv.s.v
push.l 1
conv.l.v
push.l 71
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.pizzapoints
push.l 6
conv.l.v
push.l 71
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 72
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 46
conv.i.v
push.l 3
conv.l.v
push.l 72
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Spicy pepper pizza"@549
conv.s.v
push.l 1
conv.l.v
push.l 72
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.pizzapoints
push.l 6
conv.l.v
push.l 72
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 68
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 41
conv.i.v
push.l 3
conv.l.v
push.l 68
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Peppy pepperoni pizza"@550
conv.s.v
push.l 1
conv.l.v
push.l 68
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.pizzapoints
push.l 6
conv.l.v
push.l 68
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 70
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 43
conv.i.v
push.l 3
conv.l.v
push.l 70
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "White cheeze pizza"@551
conv.s.v
push.l 1
conv.l.v
push.l 70
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.pizzapoints
push.l 6
conv.l.v
push.l 70
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 73
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 45
conv.i.v
push.l 3
conv.l.v
push.l 73
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Meat lovers pizza"@552
conv.s.v
push.l 1
conv.l.v
push.l 73
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.pizzapoints
push.l 6
conv.l.v
push.l 73
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 4
conv.l.v
push.l 67
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 42
conv.i.v
push.l 3
conv.l.v
push.l 67
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Cheese pizza"@553
conv.s.v
push.l 1
conv.l.v
push.l 67
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.pizzapoints
push.l 6
conv.l.v
push.l 67
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 85
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 48
conv.i.v
push.l 3
conv.l.v
push.l 85
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Vanilla"@554
conv.s.v
push.l 1
conv.l.v
push.l 85
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 85
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 86
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 49
conv.i.v
push.l 3
conv.l.v
push.l 86
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Chocolate"@555
conv.s.v
push.l 1
conv.l.v
push.l 86
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 86
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 87
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 50
conv.i.v
push.l 3
conv.l.v
push.l 87
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Strawberry"@556
conv.s.v
push.l 1
conv.l.v
push.l 87
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 87
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 88
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 51
conv.i.v
push.l 3
conv.l.v
push.l 88
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Cookie sandwich"@557
conv.s.v
push.l 1
conv.l.v
push.l 88
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 88
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 89
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 52
conv.i.v
push.l 3
conv.l.v
push.l 89
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Neapolitan sandwich"@558
conv.s.v
push.l 1
conv.l.v
push.l 89
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 89
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 90
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 53
conv.i.v
push.l 3
conv.l.v
push.l 90
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Sherbet"@559
conv.s.v
push.l 1
conv.l.v
push.l 90
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 90
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 76
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 5
conv.l.v
push.l 76
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 14
conv.i.v
push.l 3
conv.l.v
push.l 76
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Bloody velvet"@560
conv.s.v
push.l 1
conv.l.v
push.l 76
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 76
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 77
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 5
conv.l.v
push.l 77
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 11
conv.i.v
push.l 3
conv.l.v
push.l 77
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Cheesecake"@561
conv.s.v
push.l 1
conv.l.v
push.l 77
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 77
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 78
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 5
conv.l.v
push.l 78
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 10
conv.i.v
push.l 3
conv.l.v
push.l 78
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Devil's food"@562
conv.s.v
push.l 1
conv.l.v
push.l 78
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 78
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 79
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 5
conv.l.v
push.l 79
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 9
conv.i.v
push.l 3
conv.l.v
push.l 79
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Icecream cake"@563
conv.s.v
push.l 1
conv.l.v
push.l 79
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 79
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 80
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 80
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 15
conv.i.v
push.l 3
conv.l.v
push.l 80
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Strawberry shortcake"@564
conv.s.v
push.l 1
conv.l.v
push.l 80
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 80
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 81
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 5
conv.l.v
push.l 81
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 12
conv.i.v
push.l 3
conv.l.v
push.l 81
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Lemon poppy"@565
conv.s.v
push.l 1
conv.l.v
push.l 81
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 81
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 4
conv.l.v
push.l 82
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 5
conv.l.v
push.l 82
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 13
conv.i.v
push.l 3
conv.l.v
push.l 82
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Yellow cake"@566
conv.s.v
push.l 1
conv.l.v
push.l 82
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cakepoints
push.l 6
conv.l.v
push.l 82
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 3
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 5
conv.l.v
push.l 3
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 3
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "mac"@567
conv.s.v
push.l 1
conv.l.v
push.l 3
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 4
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 4
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 2
conv.i.v
push.l 3
conv.l.v
push.l 4
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 4
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "mac"@567
conv.s.v
push.l 1
conv.l.v
push.l 4
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 5
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 5
conv.l.v
push.l 5
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 3
conv.i.v
push.l 3
conv.l.v
push.l 5
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 5
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "mac"@567
conv.s.v
push.l 1
conv.l.v
push.l 5
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 6
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 5
conv.l.v
push.l 6
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 4
conv.i.v
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 6
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "brownie"@568
conv.s.v
push.l 1
conv.l.v
push.l 6
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 7
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 7
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 5
conv.i.v
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 7
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "parfait"@569
conv.s.v
push.l 1
conv.l.v
push.l 7
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 8
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 5
conv.l.v
push.l 8
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 6
conv.i.v
push.l 3
conv.l.v
push.l 8
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 8
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "tirmasu"@570
conv.s.v
push.l 1
conv.l.v
push.l 8
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 9
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 9
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 7
conv.i.v
push.l 3
conv.l.v
push.l 9
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 9
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "egg"@571
conv.s.v
push.l 1
conv.l.v
push.l 9
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 10
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 5
conv.l.v
push.l 10
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 8
conv.i.v
push.l 3
conv.l.v
push.l 10
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 10
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "egg"@571
conv.s.v
push.l 1
conv.l.v
push.l 10
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 11
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 5
conv.l.v
push.l 11
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 9
conv.i.v
push.l 3
conv.l.v
push.l 11
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 11
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "egg"@571
conv.s.v
push.l 1
conv.l.v
push.l 11
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 12
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 5
conv.l.v
push.l 12
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 10
conv.i.v
push.l 3
conv.l.v
push.l 12
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 12
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "steak"@572
conv.s.v
push.l 1
conv.l.v
push.l 12
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 13
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 13
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 11
conv.i.v
push.l 3
conv.l.v
push.l 13
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 13
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "shrimp"@573
conv.s.v
push.l 1
conv.l.v
push.l 13
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 14
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 5
conv.l.v
push.l 14
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 12
conv.i.v
push.l 3
conv.l.v
push.l 14
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 14
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "ham"@574
conv.s.v
push.l 1
conv.l.v
push.l 14
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 15
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 15
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 13
conv.i.v
push.l 3
conv.l.v
push.l 15
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 15
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "sushi"@575
conv.s.v
push.l 1
conv.l.v
push.l 15
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 16
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 5
conv.l.v
push.l 16
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 14
conv.i.v
push.l 3
conv.l.v
push.l 16
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 16
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "sushi"@575
conv.s.v
push.l 1
conv.l.v
push.l 16
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 17
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 5
conv.l.v
push.l 17
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 15
conv.i.v
push.l 3
conv.l.v
push.l 17
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 17
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "sushi"@575
conv.s.v
push.l 1
conv.l.v
push.l 17
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 18
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 5
conv.l.v
push.l 18
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 16
conv.i.v
push.l 3
conv.l.v
push.l 18
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 18
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "burger"@576
conv.s.v
push.l 1
conv.l.v
push.l 18
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 19
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 19
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 17
conv.i.v
push.l 3
conv.l.v
push.l 19
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 19
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "burger"@576
conv.s.v
push.l 1
conv.l.v
push.l 19
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 20
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 5
conv.l.v
push.l 20
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 18
conv.i.v
push.l 3
conv.l.v
push.l 20
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 20
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "burger"@576
conv.s.v
push.l 1
conv.l.v
push.l 20
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 21
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 5
conv.l.v
push.l 21
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 19
conv.i.v
push.l 3
conv.l.v
push.l 21
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 21
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "pizzaa"@577
conv.s.v
push.l 1
conv.l.v
push.l 21
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 22
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 22
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 20
conv.i.v
push.l 3
conv.l.v
push.l 22
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 22
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "pizzab"@578
conv.s.v
push.l 1
conv.l.v
push.l 22
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 23
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 5
conv.l.v
push.l 23
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 21
conv.i.v
push.l 3
conv.l.v
push.l 23
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 23
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "pizzac"@579
conv.s.v
push.l 1
conv.l.v
push.l 23
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 24
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 5
conv.l.v
push.l 24
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 22
conv.i.v
push.l 3
conv.l.v
push.l 24
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 24
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "gelloa"@580
conv.s.v
push.l 1
conv.l.v
push.l 24
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 25
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 5
conv.l.v
push.l 25
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 23
conv.i.v
push.l 3
conv.l.v
push.l 25
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 25
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "gelloa"@580
conv.s.v
push.l 1
conv.l.v
push.l 25
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 26
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 5
conv.l.v
push.l 26
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 24
conv.i.v
push.l 3
conv.l.v
push.l 26
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cpoints
push.l 6
conv.l.v
push.l 26
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "gelloc"@581
conv.s.v
push.l 1
conv.l.v
push.l 26
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 4
conv.l.v
push.l 27
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 5
conv.l.v
push.l 27
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 25
conv.i.v
push.l 3
conv.l.v
push.l 27
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cdpoints
push.l 6
conv.l.v
push.l 27
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "salad"@582
conv.s.v
push.l 1
conv.l.v
push.l 27
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 4
conv.l.v
push.l 28
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 5
conv.l.v
push.l 28
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 26
conv.i.v
push.l 3
conv.l.v
push.l 28
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cdpoints
push.l 6
conv.l.v
push.l 28
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "salad"@582
conv.s.v
push.l 1
conv.l.v
push.l 28
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 4
conv.l.v
push.l 29
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 5
conv.l.v
push.l 29
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 27
conv.i.v
push.l 3
conv.l.v
push.l 29
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.cdpoints
push.l 6
conv.l.v
push.l 29
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "salad"@582
conv.s.v
push.l 1
conv.l.v
push.l 29
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 4
conv.l.v
push.l 58
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Glazed Donut"@583
conv.s.v
push.l 1
conv.l.v
push.l 58
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 8
conv.i.v
push.l 3
conv.l.v
push.l 58
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.dpoints
push.l 6
conv.l.v
push.l 58
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 59
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Chocolate Donut"@584
conv.s.v
push.l 1
conv.l.v
push.l 59
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 7
conv.i.v
push.l 3
conv.l.v
push.l 59
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.dpoints
push.l 6
conv.l.v
push.l 59
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 60
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Cinnamon Roll"@585
conv.s.v
push.l 1
conv.l.v
push.l 60
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 4
conv.i.v
push.l 3
conv.l.v
push.l 60
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.dpoints
push.l 6
conv.l.v
push.l 60
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 61
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Pink with Sprinkles Donut"@586
conv.s.v
push.l 1
conv.l.v
push.l 61
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.l 3
conv.l.v
push.l 61
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.dpoints
push.l 6
conv.l.v
push.l 61
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 62
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Creme-filled Donut"@587
conv.s.v
push.l 1
conv.l.v
push.l 62
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 6
conv.i.v
push.l 3
conv.l.v
push.l 62
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.dpoints
push.l 6
conv.l.v
push.l 62
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 63
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Jelly-filled Donut"@588
conv.s.v
push.l 1
conv.l.v
push.l 63
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 5
conv.i.v
push.l 3
conv.l.v
push.l 63
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.dpoints
push.l 6
conv.l.v
push.l 63
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 64
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Blue with Sprinkles Donut"@589
conv.s.v
push.l 1
conv.l.v
push.l 64
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 2
conv.i.v
push.l 3
conv.l.v
push.l 64
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.dpoints
push.l 6
conv.l.v
push.l 64
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 32
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "TIGER BLOOD ENER-GEE SODA"@590
conv.s.v
push.l 1
conv.l.v
push.l 32
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 18
conv.i.v
push.l 3
conv.l.v
push.l 32
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 32
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 33
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "FLAMIN' SPICE ENER-GEE SODA"@591
conv.s.v
push.l 1
conv.l.v
push.l 33
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 16
conv.i.v
push.l 3
conv.l.v
push.l 33
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 33
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 34
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "ELECTRO ENER-GEE SODA"@592
conv.s.v
push.l 1
conv.l.v
push.l 34
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 17
conv.i.v
push.l 3
conv.l.v
push.l 34
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 34
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 35
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "SUPER CUTIE ENER-GEE SODA"@593
conv.s.v
push.l 1
conv.l.v
push.l 35
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 19
conv.i.v
push.l 3
conv.l.v
push.l 35
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 35
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 40
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Sinnamon Pumpkin Muffin"@594
conv.s.v
push.l 1
conv.l.v
push.l 40
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 20
conv.i.v
push.l 3
conv.l.v
push.l 40
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 40
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 41
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Cutie Croissant"@595
conv.s.v
push.l 1
conv.l.v
push.l 41
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 21
conv.i.v
push.l 3
conv.l.v
push.l 41
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 41
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 42
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Super Choco-Chunk Cookie"@596
conv.s.v
push.l 1
conv.l.v
push.l 42
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 22
conv.i.v
push.l 3
conv.l.v
push.l 42
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 42
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 43
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Salty Pretzel Bun"@597
conv.s.v
push.l 1
conv.l.v
push.l 43
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 23
conv.i.v
push.l 3
conv.l.v
push.l 43
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 43
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 44
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "SUPER SALTY GAMER CRUNCHEEZ"@598
conv.s.v
push.l 1
conv.l.v
push.l 44
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 32
conv.i.v
push.l 3
conv.l.v
push.l 44
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 44
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 45
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Sparkle Swirl Cruncheez"@599
conv.s.v
push.l 1
conv.l.v
push.l 45
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 33
conv.i.v
push.l 3
conv.l.v
push.l 45
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 45
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 46
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Bloody Mary Cruncheez"@600
conv.s.v
push.l 1
conv.l.v
push.l 46
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 34
conv.i.v
push.l 3
conv.l.v
push.l 46
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 46
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 47
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Chcolate Cruncheez"@601
conv.s.v
push.l 1
conv.l.v
push.l 47
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 35
conv.i.v
push.l 3
conv.l.v
push.l 47
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 47
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 36
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Berries and Cream Cutie Bar"@602
conv.s.v
push.l 1
conv.l.v
push.l 36
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 24
conv.i.v
push.l 3
conv.l.v
push.l 36
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 36
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 37
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Classic Cravings Chocolate Bar"@603
conv.s.v
push.l 1
conv.l.v
push.l 37
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 25
conv.i.v
push.l 3
conv.l.v
push.l 37
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 37
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 38
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Magical Mint Candy Bar"@604
conv.s.v
push.l 1
conv.l.v
push.l 38
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 26
conv.i.v
push.l 3
conv.l.v
push.l 38
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 38
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 39
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Hot Pepper Crunch Bar"@605
conv.s.v
push.l 1
conv.l.v
push.l 39
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 27
conv.i.v
push.l 3
conv.l.v
push.l 39
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 39
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 48
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Chocolate Shake"@606
conv.s.v
push.l 1
conv.l.v
push.l 48
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 31
conv.i.v
push.l 3
conv.l.v
push.l 48
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 48
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 49
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Blood Shake"@607
conv.s.v
push.l 1
conv.l.v
push.l 49
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 29
conv.i.v
push.l 3
conv.l.v
push.l 49
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 49
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 50
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Strawberry Shake"@608
conv.s.v
push.l 1
conv.l.v
push.l 50
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 30
conv.i.v
push.l 3
conv.l.v
push.l 50
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 50
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 51
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Blue Vanilla Shake"@609
conv.s.v
push.l 1
conv.l.v
push.l 51
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 28
conv.i.v
push.l 3
conv.l.v
push.l 51
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 51
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 52
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Magic Unicorn Swirl"@610
conv.s.v
push.l 1
conv.l.v
push.l 52
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 36
conv.i.v
push.l 3
conv.l.v
push.l 52
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 52
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 53
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Sea Salt Caramel"@611
conv.s.v
push.l 1
conv.l.v
push.l 53
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 37
conv.i.v
push.l 3
conv.l.v
push.l 53
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 53
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 54
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Pumpkin Spice"@612
conv.s.v
push.l 1
conv.l.v
push.l 54
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 38
conv.i.v
push.l 3
conv.l.v
push.l 54
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 54
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 55
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "B+ Blood Brew"@613
conv.s.v
push.l 1
conv.l.v
push.l 55
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 39
conv.i.v
push.l 3
conv.l.v
push.l 55
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.v self.vpoints
push.l 6
conv.l.v
push.l 55
conv.l.v
pushglb.v global.dishgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 16
conv.l.v
push.l 11
conv.l.v
call.i ds_grid_create(argc=2)
pop.v.v global.statgrid
call.i ds_list_create(argc=0)
push.l 8
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Nugame"@615
conv.s.v
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 8
conv.l.v
push.l 6
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 30
conv.l.v
push.l 10
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
call.i ds_list_create(argc=0)
pop.v.v global.donutlist
call.i ds_list_create(argc=0)
pop.v.v global.pizzalist
call.i ds_list_create(argc=0)
pop.v.v global.guestlist
push.s "Chloe"@619
conv.s.v
push.l 1
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 5
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 6
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 10
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 1
conv.i.v
push.l 7
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Pearl"@620
conv.s.v
push.l 1
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 4
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 5
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 6
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 17
conv.l.v
push.l 10
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Erika"@621
conv.s.v
push.l 1
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 4
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 5
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 6
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 24
conv.l.v
push.l 10
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
push.l 4
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Victoria"@622
conv.s.v
push.l 1
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 5
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 6
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 21
conv.l.v
push.l 10
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Kathy"@623
conv.s.v
push.l 1
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 4
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 5
conv.l.v
push.l 5
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 6
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 10
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Jesse"@624
conv.s.v
push.l 1
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 4
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 5
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 6
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 18
conv.l.v
push.l 10
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Stacy"@625
conv.s.v
push.l 1
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 4
conv.l.v
push.l 4
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 1
conv.l.v
push.l 5
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 6
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 12
conv.l.v
push.l 10
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
push.l 8
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "Polly"@626
conv.s.v
push.l 1
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 6
conv.l.v
push.l 4
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
conv.l.v
push.l 5
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 7
conv.l.v
push.l 6
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 9
conv.l.v
push.l 10
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 13
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 2
pop.v.l local.i

:[6]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [11]

:[7]
push.l 2
pop.v.l local.a

:[8]
pushloc.v local.a
push.l 10
cmp.l.v LT
bf [10]

:[9]
push.l 1
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
pushloc.v local.a
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring
pushi.e 0
conv.i.v
push.v self.keystring
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
b [8]

:[10]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [6]

:[11]
push.l 2
pop.v.l local.i

:[12]
pushloc.v local.i
push.l 10
cmp.l.v LT
bf [14]

:[13]
pushi.e 0
conv.i.v
push.l 7
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
call.i ds_list_create(argc=0)
push.l 8
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
pushi.e 0
conv.i.v
push.l 14
conv.l.v
pushloc.v local.i
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [12]

:[14]
pushi.e 1
conv.i.v
push.l 14
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s "FAS_BLANK.ini"@630
conv.s.v
call.i ini_open(argc=1)
popz.v
pushglb.v global.events
call.i ds_map_write(argc=1)
pop.v.v local.list_save
pushloc.v local.list_save
push.s "Moxie"@634
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_write_string(argc=3)
popz.v
pushglb.v global.statgrid
call.i ds_grid_write(argc=1)
pop.v.v local.grid_save
pushloc.v local.grid_save
push.s "Swag"@639
conv.s.v
push.s "Magic"@635
conv.s.v
call.i ini_write_string(argc=3)
popz.v
call.i ini_close(argc=0)
popz.v
call.i room_goto_next(argc=0)
popz.v

:[end]