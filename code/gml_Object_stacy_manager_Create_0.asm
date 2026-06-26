.localvar 0 arguments
.localvar 1 i 669
.localvar 2 a 670
.localvar 3 v 671

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
push.l 8
conv.l.v
call.i trustlvl(argc=1)
pushi.e 3
cmp.i.v GTE
bf [2]

:[1]
push.s "stacyscene"@475
pop.v.s self.specialscene
b [8]

:[2]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [4]

:[3]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
pushi.e 1
cmp.i.v EQ
b [5]

:[4]
push.e 0

:[5]
bf [7]

:[6]
push.s "makeyoulunch"@359
pop.v.s self.specialscene
b [8]

:[7]
pushi.e 0
pop.v.i self.specialscene

:[8]
pushi.e 2
pop.v.i self.tolerance
pushi.e 7
pop.v.i self.date
push.l 8
pop.v.l self.me
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [10]

:[9]
push.v other.me
pop.v.v self.me

:[10]
popenv [9]
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
push.s "seenStacy"@437
pop.v.s self.myseen
push.s "dailyStacy"@447
pop.v.s self.chatkey
push.s "finalstacy"@456
pop.v.s self.datekey
push.s "Always a pleasure to have you around~ I just LOVE getting to hang wtih you!"@2488
pushi.e -1
pushi.e 8
pop.v.s [array]self.intro
push.s "I was wondering where my FAVORITE co-worker had gotten to~ Come on in! Don't be shy~"@2489
pushi.e -1
pushi.e 7
pop.v.s [array]self.intro
push.s "I was wondering where my FAVORITE co-worker had gotten to~ Come on in! Don't be shy~"@2489
pushi.e -1
pushi.e 6
pop.v.s [array]self.intro
push.s "It's always SUCH a pleasure! Did you need something~?"@2490
pushi.e -1
pushi.e 5
pop.v.s [array]self.intro
push.s "It's always SUCH a pleasure! Did you need something~?"@2490
pushi.e -1
pushi.e 4
pop.v.s [array]self.intro
push.s "Well, how are YOU today~?"@2491
pushi.e -1
pushi.e 3
pop.v.s [array]self.intro
push.s "Well, how are YOU today~?"@2491
pushi.e -1
pushi.e 2
pop.v.s [array]self.intro
push.s "Welcome~!"@2492
pushi.e -1
pushi.e 1
pop.v.s [array]self.intro
push.s "Welcome~!"@2492
pushi.e -1
pushi.e 0
pop.v.s [array]self.intro
push.s "*pant pant* I know I've really let myself go lately huh? But bigger is better~!!!"@2493
pushi.e -1
pushi.e 8
pop.v.s [array]self.weightline
push.s "Hard to take your eyes off me lately, isnt it? Good! Always nice to have a captive audience~"@2494
pushi.e -1
pushi.e 7
pop.v.s [array]self.weightline
push.s "Hard to take your eyes off me lately, isnt it? Good! Always nice to have a captive audience~"@2494
pushi.e -1
pushi.e 6
pop.v.s [array]self.weightline
push.s "Woof! Getting kind of hard to catch a meal lately...What do I mean by that? Oh nothing, darling~"@2495
pushi.e -1
pushi.e 5
pop.v.s [array]self.weightline
push.s "Woof! Getting kind of hard to catch a meal lately...What do I mean by that? Oh nothing, darling~"@2495
pushi.e -1
pushi.e 4
pop.v.s [array]self.weightline
push.s "*Urp*!? Oh my!!! Pardon me~"@2496
pushi.e -1
pushi.e 3
pop.v.s [array]self.weightline
push.s "*Urp*!? Oh my!!! Pardon me~"@2496
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
push.s "You've got something for me?"@2497
pop.v.s self.introgift
push.s "Oh! For me? Really???"@2498
pop.v.s self.likegift
push.s "Oooh. How...lovely~ (I don't think she liked it...)"@2499
pop.v.s self.badgift
push.s "Didn't you give me one of these earlier~?"@2500
pop.v.s self.likedhadit
push.s "I don't like this any better the second time..."@2303
pop.v.s self.badhadit
push.s "You sure know how to treat a gal~ *urp!?* Prehaps a bit too much..."@2501
pop.v.s self.fulllike
push.s "Oof..Sorry. I don't think I could stomach this right now."@2502
pop.v.s self.fullbad
push.s "I appreciate the generosity you know, but I gotta fit into these pants tomorrow!!!"@2503
pop.v.s self.fullhadit
push.s "Ungh, enough! I can't even look at that!!!"@2504
pop.v.s self.fullbadhadit
push.s "Oh I'm SO sorry darling. I understand you just can't get enough of me, but I don't have the time!"@2505
pop.v.s self.rejecttxt
push.s "Lunch? Of course! I ALWAYS have time for a bite with you, hmm-hmm~"@2506
pop.v.s self.accepttxt
push.s "Actually, darling, I know this steller spot for lunch! It's an absolute SCREAM~!!! How about we fly by there instead today~?"@2507
pop.v.s self.speciallunch
push.s "I don't really have any more time to talk today."@2311
pop.v.s self.nomorechat
push.s "You CAN'T do a good job on an empty stomach!!! Eat up for me~"@2508
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
bt [19]

:[11]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [19]

:[12]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [19]

:[13]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [19]

:[14]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [19]

:[15]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [20]

:[16]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [20]

:[17]
b [21]

:[18]
b [22]

:[19]
push.s "I don't have much time right now dear, but I can spare a few words~"@2509
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [22]

:[20]
push.s "Oh I'll always make time for you, darling~"@2510
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [22]

:[21]
push.s "Oh I just LOVE these talks we have~ Sometimes you just need a break!"@2511
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [22]

:[22]
popz.v
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [24]

:[23]
push.s "Oh DARLING you've gotten so large lately!!! Oh no no it's a compliment! Makes you stand out in the crowd~"@2512
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [28]

:[24]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 5
cmp.i.v GTE
bf [26]

:[25]
push.s "I don't just drink blood you know. I do enjoy a meal every now and again. Especially a nice, thick, fat slice of meat~ Know what I mean? No? Good~"@2513
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [28]

:[26]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 3
cmp.i.v GTE
bf [28]

:[27]
push.s "Did you cut your hair? Something about you is a little diffrent today. I just can't put my finger on it~"@2514
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[28]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [38]

:[29]
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
bt [33]

:[30]
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
bt [33]

:[31]
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
bt [33]

:[32]
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
b [34]

:[33]
push.e 1

:[34]
bf [36]

:[35]
push.s "Did you pick out the cake? Oh I *love* that kind!!! We have so much in common, don't we~?"@2515
pop.v.s self.cakecomment
b [37]

:[36]
push.s ""@150
pop.v.s self.cakecomment

:[37]
push.s "Happy birthday! How old are you this year? Me? I lost count a long, long time ago~ "@2516
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
b [59]

:[38]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [41]

:[39]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [41]

:[40]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v LT
b [42]

:[41]
push.e 0

:[42]
bf [44]

:[43]
push.s "I don’t really feel anything anymore, or need to breath, so it’s not like the air bothers me. But, I’ve got some clients coming in the next few days and if these miserable conditions aren’t cleaned up by then you’re going to regret it~"@2517
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [59]

:[44]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [59]

:[45]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [56]

:[46]
push.l 73
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [48]

:[47]
push.l 69
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [49]

:[48]
push.e 1

:[49]
bf [51]

:[50]
push.s "*Gasp* And you got my favorite kind too!!! You’re a real treat, aren’t you~?"@2518
pop.v.s self.pizzacomment
b [52]

:[51]
push.s ""@150
pop.v.s self.pizzacomment

:[52]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [54]

:[53]
push.s "The air is fixed, and the pizza is right on time! My goodness you really are a trooper!!! I got to say it’s such a relief having someone else at least half decent around the workplace~ "@2519
push.v self.pizzacomment
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
b [55]

:[54]
push.s "No air, no pizza...I have to say, dear, you’re not doing such a good job as of late. I know we all make mistakes, of course. And nobody’s job is easy, so who am I to judge? You did a fantastic job on the air of course~ I’m certainly not complaining about that. But the boss had his heart set on pizza! And I don’t think you’re going to like what happens when you disappoint him~"@2520
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[55]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[56]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [59]

:[57]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [59]

:[58]
push.s "Ungh, of all things to add to the wretched air... Pizza? Do you know how REVOLTING pizza smells right now??? It’s a good thing I don’t need to breathe it in."@2521
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[59]
pushi.e 0
pop.v.i local.a
push.s "Erikaate"@471
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
push.s "I pride myself on reading people. It’s what I do~! When I met Erika she was kind of a challenge, I love a challenge~ She’s a woman of few words. Very few words. Almost none. It took some doing, but I finally found a topic she won’t shut up about! Would you believe how into cutesy pink things she is~? And she *loves* strawberry flavor. Says it’s an 'Aesthetic', whatever that means. I’m not quite so hip to these new internet trends, dear."@2522
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[61]
push.s "Pollyate"@472
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [63]

:[62]
push.s "I gotta say I’ve been talking to Polly lately and she’s an absolute treat! Getting to talk to her is the best part of my day! She’s a real busy bee around the office she’s got ALL the gossip if you can get her talking~ But I will admit her flavor pallet is bizarre. She told me once she loves ‘magic’ taste. Do you have any idea what that means???"@2523
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[63]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [65]

:[64]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 12
cmp.i.v LT
b [66]

:[65]
push.e 0

:[66]
bf [68]

:[67]
push.s "Fantastic, darling~!!! Oh aren’t you such a go-getter I knew we could count on you! Now be a doll and don’t forget the meat lovers pizza, and tell them to keep it rare for me? Kay? You’re such a trooper~"@2524
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[68]
push.s "Chloeate"@465
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [71]

:[69]
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.commentweight
cmp.v.v GTE
bf [71]

:[70]
push.s "Have you SEEN Chloe lately? I've never seen her fail a diet THAT fast. (Or that far~)"@2525
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[71]
push.s "How's my hair by the way? I've got a client coming for lunch. He's very sweet~"@2526
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
bf [73]

:[72]
pushi.e 1
pop.v.i self.upped
b [74]

:[73]
pushi.e 0
pop.v.i self.upped

:[74]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [103]

:[75]
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [85]

:[76]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [85]

:[77]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [89]

:[78]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [89]

:[79]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [93]

:[80]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [93]

:[81]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [97]

:[82]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [97]

:[83]
b [101]

:[84]
b [102]

:[85]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [87]

:[86]
push.s "One of the benefits of working in our office is that we have an EXCELLENT food supply. Try the cinnamon raisin bagels, they’re HEAVENLY! So to speak."@2527
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [88]

:[87]
push.s "If it hasn’t been said yet, welcome to our family! Trust me, you’re gonna love it here - I know I do! Remind me later I’ll give you the grand tour~"@2528
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[88]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [102]

:[89]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [91]

:[90]
push.s "*Urp* pardon me, my GOODNESS! I’m not feeling very camera-ready today. I could probably manage to sneak in a quick break before our next client meeting..."@2529
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [92]

:[91]
push.s "Oh dear, seems I’m having a bit of a wardrobe malfunction. You know what they say about the camera adding… what was it, 50 pounds? HA! Hm."@2530
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[92]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [102]

:[93]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [95]

:[94]
push.s "Urgh, I’m going to have to cancel my afternoon appointment. Maybe all of them... I am a PROFESSIONAL and I REFUSE to meet with anyone unless I can be my ABSOLUTE BEST for them!"@2531
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [96]

:[95]
push.s "Sorry for how disheveled I am today, dear, I’ve had less time to take care of my look lately. And it takes a LOT of work to look like THIS!"@2532
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[96]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [102]

:[97]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [99]

:[98]
push.s "*BUORP* Oh, hell. I should really be doing this on my own time… but with how much success I’ve been - urgh - having lately, maybe I can bill this as a work expense?"@2533
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [100]

:[99]
push.s "Oh to hell with fussing about my appearance. I look DAMN good! And besides, we’ve been selling like CRAZY lately - our clients just can’t get enough of me!"@2534
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[100]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [102]

:[101]
push.s "Hi, hon! *BUORP* Oh, ‘scuse me. Well, what do you think? Winning smile now, dear - they’re bringing the meeting to ME! Not like I can fit in the boardroom these days. Still, isn’t everyone just so thoughtful?"@2535
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [102]

:[102]
popz.v

:[103]
push.l 2
pop.v.l local.v

:[104]
pushloc.v local.v
push.l 10
cmp.l.v LT
bf [109]

:[105]
pushloc.v local.v
push.v self.me
cmp.v.v NEQ
bf [108]

:[106]
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
bf [108]

:[107]
push.s "Oh my, I know what this must look like being a vampire and all, but I promise we're not always like this. And besides, I like you~"@2536
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [109]

:[108]
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [104]

:[109]
pushglb.v global.lunch
pushi.e 1
cmp.i.v EQ
bf [115]

:[110]
push.s "cafeslot4"@396
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [112]

:[111]
push.s "servecafeslot4"@404
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [113]

:[112]
push.e 0

:[113]
bf [115]

:[114]
push.s "Were you the one who put that WONDERFUL steak back on the menu~? Oh I knew they picked you for a reason!"@2537
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[115]
push.v self.chatarray
call.i array_length_1d(argc=1)
pop.v.v self.chatlen

:[end]