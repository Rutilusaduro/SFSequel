.localvar 0 arguments
.localvar 1 i 652
.localvar 2 a 653
.localvar 3 v 654

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
push.l 9
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
push.s "seenPolly"@442
pop.v.s self.myseen
push.s "dailyPolly"@452
pop.v.s self.chatkey
push.s "finalpolly"@461
pop.v.s self.datekey
push.s "Alwayzzz nice to see you~"@2345
pushi.e -1
pushi.e 8
pop.v.s [array]self.intro
push.s "Making the roundzzz again~?"@2346
pushi.e -1
pushi.e 7
pop.v.s [array]self.intro
push.s "Making the roundzzz again~?"@2346
pushi.e -1
pushi.e 6
pop.v.s [array]self.intro
push.s "What bringzzz you down here~?"@2347
pushi.e -1
pushi.e 5
pop.v.s [array]self.intro
push.s "What bringzzz you down here~?"@2347
pushi.e -1
pushi.e 4
pop.v.s [array]self.intro
push.s "Oh? Can I help you?"@2292
pushi.e -1
pushi.e 3
pop.v.s [array]self.intro
push.s "Oh? Can I help you?"@2292
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
push.s " "@1947
pushi.e -1
pushi.e 8
pop.v.s [array]self.weightline
push.s " Oof...These heelzzz are impozzzible to walk in. Mind running to the vending for me~? "@2348
pushi.e -1
pushi.e 7
pop.v.s [array]self.weightline
push.s " Oof...These heelzzz are impozzzible to walk in. Mind running to the vending for me~? "@2348
pushi.e -1
pushi.e 6
pop.v.s [array]self.weightline
push.s " *BUORP!* Oh my goodnezzz! Pardon me."@2349
pushi.e -1
pushi.e 5
pop.v.s [array]self.weightline
push.s " *BUORP!* Oh my goodnezzz! Pardon me."@2349
pushi.e -1
pushi.e 4
pop.v.s [array]self.weightline
push.s " I swaer they don't make these sweaterzzz like they uzzed to."@2350
pushi.e -1
pushi.e 3
pop.v.s [array]self.weightline
push.s " I swaer they don't make these sweaterzzz like they uzzed to."@2350
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
push.s "ZZZomething for me?"@2351
pop.v.s self.introgift
push.s "Oh! T-Thankzzz! Most monsters don't always understand my tastezzz..."@2352
pop.v.s self.likegift
push.s "Hmmm...Thankzzz. (I don't think she liked it...)"@2353
pop.v.s self.badgift
push.s "Oh I've already had thizzz today."@2354
pop.v.s self.likedhadit
push.s "I don't like this any better the zzzecond time..."@2355
pop.v.s self.badhadit
push.s "I've already had so much today!!! Oh, but one more couldn't hurt~"@2356
pop.v.s self.fulllike
push.s "Ung...I really don't want this right now."@2305
pop.v.s self.fullbad
push.s "I-I really shouldn't have any more of thezzze..."@2357
pop.v.s self.fullhadit
push.s "Urk!? I really can't even zzztand looking at that right now..."@2358
pop.v.s self.fullbadhadit
push.s "Hm? Oh. No offenzzze, but I have certain standardzzz with who I spend time with."@2359
pop.v.s self.rejecttxt
push.s "Hm? Oh? I zzzuppose I have time."@2360
pop.v.s self.accepttxt
push.s "Actually...if you're offering~ I saw this brand-new local joint just opening up down the street. I need to get in there and pozzzt a review!!! Can we go?"@2361
pop.v.s self.speciallunch
push.s "Sorry. I'm kind of buzzzy now."@2362
pop.v.s self.nomorechat
push.s "I figure you dezzzerve something for a job well done~"@2363
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
push.s "Oh...I guess I have zzzome time. But I don't like to chat long."@2364
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
push.s "Oh...I have zzzome time. I don't mind if it's with you."@2365
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
push.s "You know, getting to talk to you is probably the bezzzt part of my day~"@2366
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
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [16]

:[15]
push.s "I'd ssay you've really made it BIG around here haven't you? Hoo-hoo~ Juzzzt a little humor."@2367
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [20]

:[16]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 5
cmp.i.v GTE
bf [18]

:[17]
push.s "You know, I could help you shop for zzzomething a little more flatering to your new...lifezzztyle~"@2368
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
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 3
cmp.i.v GTE
bf [20]

:[19]
push.s "I'd say, are you getting more comfortable around the office~?"@2369
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[20]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [30]

:[21]
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
bt [25]

:[22]
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
bt [25]

:[23]
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
bt [25]

:[24]
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
b [26]

:[25]
push.e 1

:[26]
bf [28]

:[27]
push.s "You even got my favorite kind too! You’re such a zzzweetheart~<3"@2370
pop.v.s self.cakecomment
b [29]

:[28]
push.s ""@150
pop.v.s self.cakecomment

:[29]
push.s "Happy birthday! Whenever it is. Izzz there still cake left in the breakroom? I can’t wait to nab a slice~ "@2371
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

:[30]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [33]

:[31]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [33]

:[32]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v LT
b [34]

:[33]
push.e 0

:[34]
bf [36]

:[35]
push.s "Ungh, the air is zzztifling in here!!! When is someone going to come fix this, hmm? It’s absolutely zzzweltering! I’m burning up!!! Take off the fur? Abzzzolutely not."@2372
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [53]

:[36]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [53]

:[37]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [48]

:[38]
push.l 71
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [40]

:[39]
push.l 72
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [41]

:[40]
push.e 1

:[41]
bf [43]

:[42]
push.s "You even got my favorite kind too. You’re such a zzzweetheart~<3"@2373
pop.v.s self.pizzacomment
b [44]

:[43]
push.s ""@150
pop.v.s self.pizzacomment

:[44]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [46]

:[45]
push.s "I must confess I am most imprezzzed!!! I don’t think we’ve had anyone even half as competent as you in a while! Now then, can I talk you into bringing me a slice from the break room? Or maybe a dozzzen~? "@2374
push.v self.pizzacomment
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
b [47]

:[46]
push.s "Oh thank heaven you fixed the air~ But I know how the boss izzz going to feel about you not bringing in the pizzza. Good luck in there. Nice knowing you."@2375
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[47]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[48]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [53]

:[49]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [51]

:[50]
push.s "I’ve never realizzzed how disgusting pizzza smells until I’ve had it just stewing amongst the stagnant office smellzzz. I think I’ve lost my appetite..."@2376
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [52]

:[51]
push.s "You really blew it. I wouldn’t show myself to the bozzz if you knew what was good for you~"@2377
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[52]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[53]
pushi.e 0
pop.v.i local.a
push.s "Erikaate"@471
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [55]

:[54]
push.s "People have a hard time getting a read on Erika but I got her figured out~ I love her zzztyle so we got to talking. It’s that easy! She’s all about that cute japanese aesthetic stuff and everything pink. I took her to some cafes that I knew she’d dig and we had a blazzzt~ She loooovezzz cinnamon zzzpice too! That’s my hot tip for you."@2378
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[55]
push.s "Victoriaate"@467
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
push.s "Vic’s a bit of a hard-sell. ZZZhe’s kind of a cunt. I don’t care if she hears it, she knows. She’s doing it on purpose and you know what? I rezzzpect that. Can’t imagine being dead and still working this shitty job. I don’t know if we’re friendzzz per zzze but we both know how to do our job and stay outta each other’s way. So we get along great. If you want to get on her good side she LOVEZZZ salty chipzzz. Just bring her some of thozzze."@2379
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[57]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [59]

:[58]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 12
cmp.i.v LT
b [60]

:[59]
push.e 0

:[60]
bf [62]

:[61]
push.s "So we’re having a pizzza party after all then? I’m certainly not going to complain about a free lunch. I love my pizzza with a real kick to it though~ The zzzpicier the better! "@2380
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[62]
push.s "Victoriaate"@467
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [64]

:[63]
push.s "God it's zzzo boring down here now. Why the fuck did you let Vic get eaten, huh? She wazzz one of the few thingzzz I tolerated at this job"@2381
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[64]
push.s "I gotta say, it'zzz kind of nice to have someone lizzzten to me drone on and on. Ha~"@2382
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
bf [66]

:[65]
pushi.e 1
pop.v.i self.upped
b [67]

:[66]
pushi.e 0
pop.v.i self.upped

:[67]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [96]

:[68]
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [78]

:[69]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [78]

:[70]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [82]

:[71]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [82]

:[72]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [86]

:[73]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [86]

:[74]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [90]

:[75]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [90]

:[76]
b [94]

:[77]
b [95]

:[78]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [80]

:[79]
push.s "“By the way, fitting in rookie? Learn to take advice and listen to your betterzzz, and you’re gonna do just fine here."@2383
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [81]

:[80]
push.s "Oof. Yes? So are you just going to zzztand there and zzzonk out? Yeah, that’s what I thought."@2384
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[81]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [95]

:[82]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [84]

:[83]
push.s "*urp* Ugh, grozzz. Hey, you, come over here - help me over to that couch. Go on and take a zzzeat next to me, there’s room. Yes, there IZZZ."@2385
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [85]

:[84]
push.s "Wow, I’ve been getting… well. Hard to ignore. Harder, anyways. I kinda like it… You can zzztop zzztaring now."@2386
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[85]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [95]

:[86]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [88]

:[87]
push.s "Urgh. I know, I’m imprezzzive. You can pick your jaw up off the floor now! SOMEONE hazzz to do all the work around here, and it isn’t going to be me."@2387
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [89]

:[88]
push.s "People in the office have been jumping out of my way lately… good. Everybody works better when they know who they’re dealing with."@2388
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[89]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [95]

:[90]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [92]

:[91]
push.s "*BUORP* Alright, I’m getting used to that. Ha, the little guy over there just jumped. They’re zzzo cute when they’re - *urp* - nervouzzz."@2389
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [93]

:[92]
push.s "God, I love thizzzLook at me! You can’t NOT look at me. Aren’t you all zzzolucky, having me to ogle 24/7? I should get a mirror installed in my office..."@2390
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[93]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [95]

:[94]
push.s "*URP* HA! Of course I’m the biggezzzt around here. You think just ANYONE could look like thizzz? I’m the best, and don’t forget it!"@2391
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [95]

:[95]
popz.v

:[96]
push.l 2
pop.v.l local.v

:[97]
pushloc.v local.v
push.l 10
cmp.l.v LT
bf [102]

:[98]
pushloc.v local.v
push.v self.me
cmp.v.v NEQ
bf [101]

:[99]
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
bf [101]

:[100]
push.s "You know they zzzay you can't just eat your problems. But I dizzzagree~"@2392
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [102]

:[101]
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [97]

:[102]
pushglb.v global.lunch
pushi.e 1
cmp.i.v EQ
bf [108]

:[103]
push.s "cafeslot3"@395
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
push.s "servecafeslot3"@403
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [106]

:[105]
push.e 0

:[106]
bf [108]

:[107]
push.s "Now did you put pancakes back in the cafe juzzzt for me~ You shouldn't have. No, really. I just got thizzz skirt!"@2393
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[108]
push.v self.chatarray
call.i array_length_1d(argc=1)
pop.v.v self.chatlen

:[end]