.localvar 0 arguments
.localvar 1 i 657
.localvar 2 a 658
.localvar 3 v 661

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [2]

:[1]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
pushi.e 1
cmp.i.v EQ
b [3]

:[2]
push.e 0

:[3]
bf [5]

:[4]
push.s "deathbymold"@358
pop.v.s self.specialscene
b [6]

:[5]
pushi.e 0
pop.v.i self.specialscene

:[6]
pushi.e 2
pop.v.i self.tolerance
pushi.e 7
pop.v.i self.date
push.l 5
pop.v.l self.me
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [8]

:[7]
push.v other.me
pop.v.v self.me

:[8]
popenv [7]
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
push.s "seenVictoria"@438
pop.v.s self.myseen
push.s "dailyVictoria"@448
pop.v.s self.chatkey
push.s "finalvic"@457
pop.v.s self.datekey
push.s "Oh! It's you again. You know, it's a good thing I'm not sick and tired of you yet~"@2394
pushi.e -1
pushi.e 8
pop.v.s [array]self.intro
push.s "You sure do like to hang around here a lot~ What, do you like me or somethin'?"@2395
pushi.e -1
pushi.e 7
pop.v.s [array]self.intro
push.s "You sure do like to hang around here a lot~ What, do you like me or somethin'?"@2395
pushi.e -1
pushi.e 6
pop.v.s [array]self.intro
push.s "Need somethin'?"@2396
pushi.e -1
pushi.e 5
pop.v.s [array]self.intro
push.s "Need somethin'?"@2396
pushi.e -1
pushi.e 4
pop.v.s [array]self.intro
push.s "Yeah? What's up?"@2397
pushi.e -1
pushi.e 3
pop.v.s [array]self.intro
push.s "Yeah? What's up?"@2397
pushi.e -1
pushi.e 2
pop.v.s [array]self.intro
push.s "Hm? What do you want?"@2293
pushi.e -1
pushi.e 1
pop.v.s [array]self.intro
push.s "Hm? What do you want?"@2293
pushi.e -1
pushi.e 0
pop.v.s [array]self.intro
push.s " *Buarp* Now, do you have some grub for me or what?"@2398
pushi.e -1
pushi.e 8
pop.v.s [array]self.weightline
push.s " *urp* Say, got any food on you?"@2399
pushi.e -1
pushi.e 7
pop.v.s [array]self.weightline
push.s " *urp* Say, got any food on you?"@2399
pushi.e -1
pushi.e 6
pop.v.s [array]self.weightline
push.s " Yeah, I know I've gotten fat. But what's it gonna do? Kill me? HA~! I'll get as fat as I want."@2400
pushi.e -1
pushi.e 5
pop.v.s [array]self.weightline
push.s " Yeah, I know I've gotten fat. But what's it gonna do? Kill me? HA~! I'll get as fat as I want."@2400
pushi.e -1
pushi.e 4
pop.v.s [array]self.weightline
push.s " *crunch munch* Want some chips? Get'em yourself~"@2401
pushi.e -1
pushi.e 3
pop.v.s [array]self.weightline
push.s " *crunch munch* Want some chips? Get'em yourself~"@2401
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
push.s "Got something for me?"@2402
pop.v.s self.introgift
push.s "Oh wow! You don't dissappoint~"@2403
pop.v.s self.likegift
push.s "Hm...Yeah, not really a fan of this."@2404
pop.v.s self.badgift
push.s "Didn't you give me one of these earlier?"@2302
pop.v.s self.likedhadit
push.s "I don't like this any better the second time..."@2303
pop.v.s self.badhadit
push.s "Ooogh...I've had so much today already. No that doesn't mean I don't want it! Gimme!!!"@2405
pop.v.s self.fulllike
push.s "Ung...I think I'm really at my limit."@2406
pop.v.s self.fullbad
push.s "Ooogh...I've had so much today already. But hey if you're givin' them out I could stomach just one more..."@2407
pop.v.s self.fullhadit
push.s "Urk!? Get that out of my sight!!!"@2408
pop.v.s self.fullbadhadit
push.s "With you? Lol."@2409
pop.v.s self.rejecttxt
push.s "With you? Sure~ But don't make a big deal outta it."@2410
pop.v.s self.accepttxt
push.s "Actually, I'm tired of this joint. I know a better place out of town. Wanna swing by with me~?"@2411
pop.v.s self.speciallunch
push.s "Haven't you wasted enough of my time~?"@2412
pop.v.s self.nomorechat
push.s "Got you something. Don't say I never do nothing for you now~"@2413
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
bt [17]

:[9]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [17]

:[10]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [17]

:[11]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [17]

:[12]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [17]

:[13]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [18]

:[14]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [18]

:[15]
b [19]

:[16]
b [20]

:[17]
push.s "Oh what, you think I got nothing better to do?"@2414
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [20]

:[18]
push.s "Yeah sure. I wasn't working anyways~"@2415
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [20]

:[19]
push.s "Oh good you're here~ Now I can stop pretending to work."@2416
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [20]

:[20]
popz.v
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v LTE
bf [22]

:[21]
push.s "What are you eyeing ME like that for tubbo? *BUArp*"@2417
pop.v.s self.hyptext
b [23]

:[22]
push.s ""@150
pop.v.s self.hyptext

:[23]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [25]

:[24]
push.s "Also, holy SHIT you're a goddamned blimp!? Do they pay ya by the pound??? "@2419
push.v self.hyptext
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [29]

:[25]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [27]

:[26]
push.s "Oh geez I thought there was a freight train going by. What the hell happened to you? "@2420
push.v self.hyptext
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [29]

:[27]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [29]

:[28]
push.s "Getting kind of fat already, aren't ya~? "@2421
push.v self.hyptext
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[29]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [39]

:[30]
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
bt [34]

:[31]
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
bt [34]

:[32]
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
bt [34]

:[33]
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
b [35]

:[34]
push.e 1

:[35]
bf [37]

:[36]
push.s "Hey you got the same cake I liked! Good. "@2422
pop.v.s self.cakecomment
b [38]

:[37]
push.s ""@150
pop.v.s self.cakecomment

:[38]
push.s "Happy birthday! Another year closer to death~ What? It’s not so bad. "@2423
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
b [60]

:[39]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [42]

:[40]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [42]

:[41]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v LT
b [43]

:[42]
push.e 0

:[43]
bf [45]

:[44]
push.s "Do you have ANY idea what the heat like this does to the servers!? If ya don’t want to end up “accidentally” locked in the forbidden stairway with the last guy, I suggest you figure this out!!!"@2424
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [60]

:[45]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [60]

:[46]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [57]

:[47]
push.l 73
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [49]

:[48]
push.l 70
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [50]

:[49]
push.e 1

:[50]
bf [52]

:[51]
push.s "And you got the right one too. The one I like I mean. You really are a keeper."@2425
pop.v.s self.pizzacomment
b [53]

:[52]
push.s ""@150
pop.v.s self.pizzacomment

:[53]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [55]

:[54]
push.s "You really did it! Called up the right pizza joint and everything! Maybe I won’t lock you in the forbidden stairway after all~ "@2426
push.v self.pizzacomment
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
b [56]

:[55]
push.s "You really blew it dude, you’re totally boned. I appreciate you fixing the air, saves me a lot of headaches, but the boss sure does love his pizza. See you on the other side~"@2427
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[56]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[57]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [60]

:[58]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [60]

:[59]
push.s "Hm...At least you were smart enough to hook us up with some pizza. Even though you’re like, totally dropping the ball on the air thing. It’s fine, it’s not like the toxic mold is creeping into our incredibly expensive server room and endangering everyone’s jobs..."@2428
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[60]
pushi.e 0
pop.v.i local.a
push.s "Stacyate"@466
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [62]

:[61]
push.s "Yeah I know people think I’m a dick around here. But I don’t care. You just get over a lot of stuff when you’re dead. And I’m just totally over them~ At least I don’t fake it like Stacy. God I hate her, I can’t stand fake people. Just come out the gate and admit you want to suck people’s blood! Geez. They can only run screaming for so long. I know she’s faster than them."@2429
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[62]
push.s "Pollyate"@472
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [64]

:[63]
push.s "Polly’s kind of a basic bitch. What? I don’t care if she hears she knows it. She loves that stupid cinnamon spice stuff they put up every year and she’s always on her phone taking “selfies” and all that. But if there’s anyone here in the office I have to be locked up in the basement with I guess she’s not the worst option. She knows how to be cool."@2430
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[64]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [66]

:[65]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 12
cmp.i.v LT
b [67]

:[66]
push.e 0

:[67]
bf [69]

:[68]
push.s "Holy shit you actually did it! What? That was a compliment! Of course I never expected you to make it, who would? Anyways, now it’s time to talk pizza~ I better see one of those white cheese pizzas on the menu! Loved those! "@2431
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[69]
push.s "Jesseate"@470
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
push.s "I got to say, I almost kind of miss a 'howdy' every now and again since Jesse got ate."@2432
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[71]
push.l 2
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.commentweight
cmp.v.v GTE
bf [75]

:[72]
push.l 2
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.l 9
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v GTE
bf [74]

:[73]
push.s "What are you looking at me like that for???"@2433
pop.v.s self.hipoline

:[74]
push.s ""@150
pop.v.s self.hipoline
push.s "Man. Polly's been really letting herself go, huh? *snicker*"@2435
push.v self.hipoline
add.v.s
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[75]
push.s "Hey did you know? I heard this place was haunted~"@2436
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a
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
bf [77]

:[76]
pushi.e 1
pop.v.i self.upped
b [78]

:[77]
pushi.e 0
pop.v.i self.upped

:[78]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [107]

:[79]
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [89]

:[80]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [89]

:[81]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [93]

:[82]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [93]

:[83]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [97]

:[84]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [97]

:[85]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [101]

:[86]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [101]

:[87]
b [105]

:[88]
b [106]

:[89]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.s "Kinda overdid it today. There’s a lot of stuff I can’t do, like as a ghost or whatever. It’s nice that I still get to eat."@2437
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [92]

:[91]
push.s "These guys are pretty lucky I’m around. I get a pat on the back for turning a computer off and on again."@2438
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[92]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [106]

:[93]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "I get some weird looks when I eat like this, but like, being dead and all, I get looks either way, so."@2439
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [96]

:[95]
push.s "Hmm… I saw a body like this once. It was awesome. Pretty sure I won’t explode if you poke me with a stick though."@2440
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[96]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [106]

:[97]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
push.s "Ugh, I’m way too full to do anything right now. I’m gonna go float around next to the 2-month-old birthday balloon in the break room. Man, those metal fucks last forever."@2441
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [100]

:[99]
push.s "I’ve been getting kinda big… probably some karmic retribution for weighing two legs less than everyone else. Heh."@2442
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[100]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [106]

:[101]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [103]

:[102]
push.s "*URP* Woah, fuck, didn’t know I could do that. How does that work? Like, with physics and stuff?...meh, whatever."@2443
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [104]

:[103]
push.s "Hey, did you hear? I don’t have to do anything today. They’re letting me off the hook, since I can’t reach my keyboard. Sweet, right?"@2444
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[104]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [106]

:[105]
push.s "*BUORP* Woah, nice. Some ghost hunting dweeb’s van probably just exploded."@2445
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [106]

:[106]
popz.v

:[107]
push.l 2
pop.v.l local.v

:[108]
pushloc.v local.v
push.l 10
cmp.l.v LT
bf [113]

:[109]
pushloc.v local.v
push.v self.me
cmp.v.v NEQ
bf [112]

:[110]
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
bf [112]

:[111]
push.s "*BUUUUARP* Whoops. Takes a little while to digest polyseter."@2446
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [113]

:[112]
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [108]

:[113]
pushglb.v global.lunch
pushi.e 1
cmp.i.v EQ
bf [119]

:[114]
push.s "cafeslot7"@399
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [116]

:[115]
push.s "servecafeslot7"@407
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [117]

:[116]
push.e 0

:[117]
bf [119]

:[118]
push.s "Kudos for putting fries back in the cafe by the way~ We may actually keep you around after all."@2447
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[119]
push.v self.chatarray
call.i array_length_1d(argc=1)
pop.v.v self.chatlen

:[end]