.localvar 0 arguments

:[0]
push.v self.WAIT
pushi.e 0
cmp.i.v EQ
bf [3]

:[1]
call.i io_clear(argc=0)
popz.v
pushi.e -1
pushi.e 0
push.v [array]self.alarm
pushi.e -1
cmp.i.v EQ
bf [3]

:[2]
pushi.e 10
pushi.e -1
pushi.e 0
pop.v.i [array]self.alarm

:[3]
push.v self.scene
push.s "pearlkathy1"@514
cmp.s.v EQ
bf [48]

:[4]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "*CRASH*"@1466
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You walk up to quite a scene. The candy bowl set up at the receptionist desk has toppled to the floor in a multi-color splatter! It looks like a muder scene of candy! Kathy and Pearl look down at the mess in silence until Kathy shatters it with a single:"@1467
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Oops."@1468
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Pearl is gasping like a fish for a few seconds, trying to find words. She’s clearly upset. Kathy, however, looks mildly surprised but indifferent. Her brows are arched and her tail is twitching but she makes no effort to say or do anything. You notice Pearl watching her...almost like she expects her to do something. But when nothing happens, she pipes up."@1469
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "I-I’ll get it!"@1470
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Pearl stands from her chair and Kathy just takes a step out of the way, removing herself from the crime scene…"@1471
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You back out of the situation, it obviously doesn’t involve you and it didn’t look like a big mess anyways. You’re sure Pearl will have it cleaned up in a jiffy."@1472
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [6]

:[5]
push.l 6
conv.l.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v

:[6]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [28]

:[7]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [11]

:[8]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [10]

:[9]
push.s "Help Pearl clean it"@1473
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Make Kathy clean it"@1474
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Offer to clean it yourself"@1475
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.s "Walk away"@1476
pushi.e -1
pushi.e 3
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[10]
popenv [9]

:[11]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [28]

:[12]
pushglb.v global.choice
dup.v 0
push.s "Help Pearl clean it"@1473
cmp.s.v EQ
bt [17]

:[13]
dup.v 0
push.s "Make Kathy clean it"@1474
cmp.s.v EQ
bt [18]

:[14]
dup.v 0
push.s "Offer to clean it yourself"@1475
cmp.s.v EQ
bt [21]

:[15]
dup.v 0
push.s "Walk away"@1476
cmp.s.v EQ
bt [22]

:[16]
b [27]

:[17]
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
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "You immediately bend down to start scooping up candy, it all fell in the same spot so it’s quick work. In fact, most of it’s done before Pearl even gets around to the front! She helps you pick up the pieces that got flung especially far and in no time the bowl is complete again! You noticed Kathy watching, she has a peculiar expression on her face...Like shock? Is she upset? You take a moment to put the bowl back up on the counter and by the time you turn around...she’s gone?"@1477
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "T-Thanks for helping! You didn’t need to do that, I hope I didn’t take up too much of your time!!! You know, she keeps doing that. Accidentally knocking stuff off my counter, I mean. I’m starting to think she’s doing it on purpose though!!! I don’t understand why she’d be so mean to me...Have I done something wrong???"@1478
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "You assure Pearl that she hasn’t, and that does make her feel a little better, but you can tell she’s still bothered by the situation. And you have no idea where Kathy went..."@1479
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
pushi.e 7
pop.v.i global.line
pushi.e 1
conv.i.v
push.s "chosekathy1"@516
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushglb.v global.choice
pop.v.v self.savespot
call.i madechoice(argc=0)
popz.v
b [27]

:[18]
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
sub.v.v
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [20]

:[19]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[20]
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "You interject before Pearl even has a chance to get around the desk. Kathy knocked it over, she should clean it up! Kathy immediately looks puffed at this, Pearl looks relieved. She actually speaks up."@1480
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "U-Um actually. Yeah. I have a lot to do right now, Kathy! I can’t clean up your mess right now...I-If you could help me out here, I’d really appreciate it!"@1481
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "Kathy looks immediately irritated and shocked at Pearl’s statement. But her head swivels between you two and she huffs. "@1482
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "Oh, sure! Like I don’t have anything going on either!? Why’d you put the candy bowl so close to the edge anyways!? I can’t be the only one who’s knocked this thing over by meow!!!"@1483
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "Despite her griping, she scoops up the mess in no time. It all fell in one spot so it was easy to clean. Moments later the bowl is returned whole and on its rightful place on the counter. Soon as that was done, the frustrated feline stomped away (making sure to bump into you as she walked past)."@1484
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "Hey! Watch it! >:3"@1485
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "As soon as she was out of range Pearl sighed in relief. "@1486
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "T-Thanks for speaking up for me, really. She keeps doing that, accidentally knocking stuff off my counter I mean. I’m starting to think she’s doing it on purpose though!!! I don’t understand why she’d be so mean to me...Have I done something wrong???"@1487
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "You assure Pearl that she hasn’t, and that does make her feel a little better, but you can tell she’s still bothered by the situation. And you have no idea where Kathy stormed off to…"@1488
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
pushi.e 7
pop.v.i global.line
pushi.e 1
conv.i.v
push.s "chosepearl1"@515
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushglb.v global.choice
pop.v.v self.savespot
call.i madechoice(argc=0)
popz.v
b [27]

:[21]
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 10
add.i.v
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "You interject before Pearl even has a chance to get around the desk. They’re both busy right now they shouldn’t have to worry about some spilled candy, you can get it. You immediately bend down to start scooping up candy. Pearl sputters and squeaks out:"@1489
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "B-But really it’s fine! Please! Let me help!"@1490
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "You can’t stop her from rushing over. But Kathy seems to have been stuck in her place with a peculiar expression on her face...Like shock? Just taking in the scene and what happened. Eventually she snaps out of it and, without a word, suddenly crouches down and starts gathering the random pieces that got scattered about. Most of it fell in the same spot so it’s quick work. In fact, most of it’s done before Pearl even gets around to the front! Between the three of you the bowl is made complete again in record time! "@1491
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "You take a moment to put the bowl back up on the counter and by the time you turn around...Kathy’s gone?"@1492
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "T-Thanks for helping! You didn’t need to do that, I hope I didn’t take up too much of your time!!! She keeps doing that, accidentally knocking stuff off my counter I mean. I think it’s a cat thing? I know she doesn’t mean it though...but I wish she’d be more careful."@1493
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "You’re a little suspicious of this rash of “accidents”, but you decide not to comment since Pearl seems so pleased about the cleanup job. You’re thankful the bowl was plastic, else that could have been worse…"@1494
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
pushi.e 7
pop.v.i global.line
pushi.e 1
conv.i.v
push.s "resolvedpearlkathy1"@517
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushglb.v global.choice
pop.v.v self.savespot
call.i madechoice(argc=0)
popz.v
b [27]

:[22]
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
sub.v.v
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
sub.v.v
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [24]

:[23]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.l 3
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[24]
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [26]

:[25]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.l 6
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[26]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [27]

:[27]
popz.v

:[28]
push.v self.savespot
dup.v 0
push.s "Help Pearl clean it"@1473
cmp.s.v EQ
bt [32]

:[29]
dup.v 0
push.s "Make Kathy clean it"@1474
cmp.s.v EQ
bt [35]

:[30]
dup.v 0
push.s "Offer to clean it yourself"@1475
cmp.s.v EQ
bt [38]

:[31]
b [43]

:[32]
pushglb.v global.line
pushi.e 8
cmp.i.v EQ
bf [34]

:[33]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v

:[34]
b [43]

:[35]
pushglb.v global.line
pushi.e 13
cmp.i.v EQ
bf [37]

:[36]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v

:[37]
b [43]

:[38]
pushglb.v global.line
pushi.e 10
cmp.i.v EQ
bf [40]

:[39]
pushi.e 1
pop.v.i global.hidebody

:[40]
pushglb.v global.line
pushi.e 11
cmp.i.v EQ
bf [42]

:[41]
pushi.e 0
pop.v.i global.hidebody
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v

:[42]
b [43]

:[43]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [45]

:[44]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [46]

:[45]
push.e 0

:[46]
bf [48]

:[47]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[48]
push.v self.scene
push.s "chloestacy1"@524
cmp.s.v EQ
bf [70]

:[49]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You're rounding the corner when you see Chloe stride purposely up to Stacy. It’s clear she’s frustrated about something."@1495
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You pass them by without incident. It’s none of your business. "@1496
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [61]

:[50]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [54]

:[51]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [53]

:[52]
push.s "Listen in?"@1497
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Leave them be."@1498
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[53]
popenv [52]

:[54]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [61]

:[55]
pushglb.v global.choice
dup.v 0
push.s "Listen in?"@1497
cmp.s.v EQ
bt [58]

:[56]
dup.v 0
push.s "Leave them be."@1498
cmp.s.v EQ
bt [59]

:[57]
b [60]

:[58]
push.s "Chloe"@619
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Stacy."@1499
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Chloe! Oh well hell-o darling~! How ARE you today? "@1500
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Fine. Stacy, we need to talk."@1501
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Oh I’d love to! We haven’t caught up in AGES!!!"@1502
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "I’ve been uncovering a lot of suspicious incidents surrounding your position here in the company. And we need to discuss them."@1503
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "You’re always working so hard around here, that’s what I LOVE about you!!! Much more than all these lazy bums we have to deal with, am I right~? You’re such a go-getter! By the way you look STUNNING! your new diet is working wonders~"@1504
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Somehow a number of complaints and professional violations have slipped past my attention."@1505
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "Oh well, don’t feel too bad about it. Happens to the best of us!"@1506
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "No it doesn’t. The circumstances regarding your promotion are completely out of line. And somehow, you got the boss to approve them over my head. Because if they had crossed my desk there’s no way in hell I would have approved this nonsense. "@1507
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "‘In hell’ Chloe you’re a RIOT you know that~?"@1508
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "Stacy. Are you even listening to me??? I’m going to look deeper into this you know. If I find something that would put the company in jeopardy I’m going to retract your promotion."@1509
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "Sorry doll, that’s a call coming in. No rest for the wicked huh~?"@1510
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "I suppose not. "@1511
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "They walk off. Chloe is as blankly professional as always but somehow you can *feel* a radiance of fury coming off her…"@1512
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
pushi.e 2
pop.v.i global.line
pushi.e 1
conv.i.v
push.s "listened1"@525
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v
b [60]

:[59]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [60]

:[60]
popz.v

:[61]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [63]

:[62]
push.l 8
conv.l.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[63]
pushglb.v global.line
pushi.e 15
cmp.i.v EQ
bf [65]

:[64]
pushi.e 1
pop.v.i global.hidebody

:[65]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [67]

:[66]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [68]

:[67]
push.e 0

:[68]
bf [70]

:[69]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[70]
push.v self.scene
push.s "chloestacy2"@526
cmp.s.v EQ
bf [95]

:[71]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re passing through on your usual patrol, you see Stacy in the distance. But just as you’re starting to get close Chloe marches right up to her. She looks like the means business. They have noticed you yet though..."@1513
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You pass them by without incident. It’s none of your business. "@1496
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [86]

:[72]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [76]

:[73]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [75]

:[74]
push.s "Listen in?"@1497
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Leave them be."@1498
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[75]
popenv [74]

:[76]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [86]

:[77]
pushglb.v global.choice
dup.v 0
push.s "Listen in?"@1497
cmp.s.v EQ
bt [80]

:[78]
dup.v 0
push.s "Leave them be."@1498
cmp.s.v EQ
bt [84]

:[79]
b [85]

:[80]
push.s "Stacy"@625
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Chloe! Always a pleasure~"@1514
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Do you remember what we talked about last time?"@1515
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Oh yes! We were discussing my promotion! Sorry that call caught me off guard, I try not to let work interrupt my social life."@1516
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "I’ve run into something most suspicious and I want to hear what you have to say."@1517
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Ooooh yes!!! I love the gossip~"@1518
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "This is serious. I found out you got your position directly from the last head of marketing, right after his death. "@1519
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Oh, the poor old man. Three weeks from retirement, took us all off guard! I sure do miss him."@1520
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "He was found a dry husk in his office. Drained of all fluids."@1521
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "Oh haven’t you heard? That’s been happening all over the place lately! A real head-scratcher."@1522
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "He wrote that you should receive his position in the event of his untimely death on a will, written in blood, found crumpled in his withered hand…"@1523
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "Always prepared for the future he was. I really admired the man. I do what I can to fill his shoes for this company."@1524
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "I have NEVER heard of someone receiving a position by order of a last will and testament. And that’s nothing to say of the inordinately suspicious circumstances surrounding the document."@1525
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "Goodness you have such a big vocabulary! We don’t need to be so professional around each other. You can talk casual with me, hon~"@1526
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "Do you have ANY comment on the things I’ve been saying to you."@1527
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 16
pop.v.s [array]self.namearray
push.s "brokediet"@38
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [82]

:[81]
push.s "I’ve been meaning to ask, something is different about you...Did you do your hair~?"@1528
pushi.e -5
pushi.e 16
pop.v.s [array]global.text
b [83]

:[82]
push.s "Did I say how well your new diet is coming along~?"@1529
pushi.e -5
pushi.e 16
pop.v.s [array]global.text

:[83]
push.s "Chloe"@619
pushi.e -1
pushi.e 17
pop.v.s [array]self.namearray
push.s "AAAARGH!?"@1530
pushi.e -5
pushi.e 17
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 18
pop.v.s [array]self.namearray
push.s "Was it something I said~?"@1531
pushi.e -5
pushi.e 18
pop.v.s [array]global.text
pushi.e 2
pop.v.i global.line
pushi.e 1
conv.i.v
push.s "listened2"@527
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
call.i madechoice(argc=0)
popz.v
b [85]

:[84]
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v
b [85]

:[85]
popz.v

:[86]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [88]

:[87]
push.l 8
conv.l.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[88]
pushglb.v global.line
pushi.e 18
cmp.i.v EQ
bf [90]

:[89]
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v

:[90]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [92]

:[91]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [93]

:[92]
push.e 0

:[93]
bf [95]

:[94]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[95]
push.v self.scene
push.s "vicjesse1"@528
cmp.s.v EQ
bf [144]

:[96]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "As you descended into the depths of the basement, you didn’t expect to see Jesse there? She stands across from Victoria. Her hackles are bristled and her arms are crossed. Vic sits nonchalantly eating out of a bag of chips. "@1532
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Now I ain’t gonna be mad if ya fess up. "@1533
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "T’what?"@1534
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Now Vic I meant what I said, I ain’t gonna be mad if you would just make this right for once."@1535
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Look, I’m gonna be honest you’re gonna have to specify what it is I’m admitting to. I got a few plates spinning right now. "@1536
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "*sigh* I know you ate my lunch, Vic."@1537
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Your lunch??? I wouldn’t touch that grease-trap you lodged in the fridge if I COULD. No man that one ain’t on me. "@1538
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Vic, I gotta be honest I ain’ really buyin’ it this time…"@1539
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Maybe you just forgot?"@1540
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "No. Cuz I found the bag wadded up in the trash!!!"@1541
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "Look, I’m sorry I didn’t really throw the ball and held it behind my back. I thought it’d be obvious since you can see through me and all that. Okay???"@1542
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "See! That was so MEAN!"@1543
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "This isn’t going anywhere. "@1544
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s ", tell the mutt I didn’t do it."@1545
add.s.v
pushi.e -5
pushi.e 12
pop.v.v [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
pushi.e 1
pop.v.i global.hidebody

:[98]
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [100]

:[99]
push.l 5
conv.l.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[100]
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [122]

:[101]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [105]

:[102]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [104]

:[103]
push.s "Vic didn’t do it"@1546
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Vic did it"@1547
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "You’re going to look into it"@1548
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[104]
popenv [103]

:[105]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [122]

:[106]
pushglb.v global.choice
dup.v 0
push.s "Vic didn’t do it"@1546
cmp.s.v EQ
bt [110]

:[107]
dup.v 0
push.s "Vic did it"@1547
cmp.s.v EQ
bt [113]

:[108]
dup.v 0
push.s "You’re going to look into it"@1548
cmp.s.v EQ
bt [116]

:[109]
b [121]

:[110]
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
sub.v.v
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [112]

:[111]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[112]
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
pushi.e 1
conv.i.v
push.s "chosevic1"@530
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s ""@150
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "You turn to Jesse and try to defend Vic. No one really knows for sure, you can’t throw around accusations like that."@1549
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "Dagnabbit "@1550
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "! She always does this! She’s pullin’ yer tail!!!"@1551
add.s.v
pushi.e -5
pushi.e 14
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "Vic pops a chip into her mouth."@1552
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 16
pop.v.s [array]self.namearray
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s " doesn’t have a tail."@1553
add.s.v
pushi.e -5
pushi.e 16
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 17
pop.v.s [array]self.namearray
push.s "Jesse snarls and pinches her temples in frustration before stomping away. Whoops..."@1554
pushi.e -5
pushi.e 17
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 18
pop.v.s [array]self.namearray
push.s "Wow. Never seen her get so worked up. You know, you really didn’t need to defend me like that. I steal lunches all the time, maybe I did steal hers this time? I dunno, can’t remember."@1555
pushi.e -5
pushi.e 18
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 19
pop.v.s [array]self.namearray
push.s "She chomps on another chip. You just sigh in frustration...That didn’t go over well."@1556
pushi.e -5
pushi.e 19
pop.v.s [array]global.text
b [121]

:[113]
push.l 3
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
sub.v.v
push.l 3
conv.l.v
push.l 5
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
pushi.e 0
cmp.i.v LT
bf [115]

:[114]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[115]
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
pushi.e 1
conv.i.v
push.s "chosejesse1"@531
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s ""@150
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "Knowing how Vic is you take Jesse’s side in this situation. You press Vic for an answer."@1557
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "UUNNGGHHH. What is WITH yall?! Stealin’ a lunch isn’t even funny why would I do it???"@1558
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "Cuz fer some reason you got a real bone to pick with me!"@1559
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 16
pop.v.s [array]self.namearray
push.s "Cuz you GOT bones."@1560
pushi.e -5
pushi.e 16
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 17
pop.v.s [array]self.namearray
push.s "Just go on and say you done it!"@1561
pushi.e -5
pushi.e 17
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 18
pop.v.s [array]self.namearray
push.s "Ungh."@1562
pushi.e -5
pushi.e 18
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 19
pop.v.s [array]self.namearray
push.s "Vic rolls her eyes so hard they go back into her skull. She promptly phases through the wall to escape the situation. Jesse barks after her and tries to make a grab but that obviously doesn’t work. She sighs and turns to you."@1563
pushi.e -5
pushi.e 19
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 20
pop.v.s [array]self.namearray
push.s "She always does this. I’m so sick an’ tired of it!!! But I do appreciate you standin’ up fer me. I really do. "@1564
pushi.e -5
pushi.e 20
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 21
pop.v.s [array]self.namearray
push.s "She sighs off. That could have gone better, you think."@1565
pushi.e -5
pushi.e 21
pop.v.s [array]global.text
b [121]

:[116]
push.l 3
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
sub.v.v
push.l 3
conv.l.v
push.l 5
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
pushi.e 0
cmp.i.v LT
bf [118]

:[117]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.l 5
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[118]
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
sub.v.v
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [120]

:[119]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.l 7
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[120]
pushi.e 1
conv.i.v
push.s "investigate1"@532
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "Victoria"@622
pushi.e -1
pushi.e 13
pop.v.s [array]self.namearray
push.s "Ungh."@1562
pushi.e -5
pushi.e 13
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 14
pop.v.s [array]self.namearray
push.s "Vic rolls her eyes so hard they go back into her skull. She promptly phases through the wall to escape the situation. Jesse barks after her and tries to make a grab but that obviously doesn’t work. She sighs and turns to you."@1563
pushi.e -5
pushi.e 14
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 15
pop.v.s [array]self.namearray
push.s "Now if you say yer gonna look into that I’m holding you to it. I’m serious. I wanna know who did it. Cuz if it’s Vic after all I’m gonna have some words for that woman."@1566
pushi.e -5
pushi.e 15
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 16
pop.v.s [array]self.namearray
push.s "She storms off. Great, nobody’s happy and you have ANOTHER job to do..."@1567
pushi.e -5
pushi.e 16
pop.v.s [array]global.text
b [121]

:[121]
popz.v
pushglb.v global.choice
pop.v.v self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[122]
push.v self.savespot
dup.v 0
push.s "Vic didn’t do it"@1546
cmp.s.v EQ
bt [126]

:[123]
dup.v 0
push.s "Vic did it"@1547
cmp.s.v EQ
bt [129]

:[124]
dup.v 0
push.s "You’re going to look into it"@1548
cmp.s.v EQ
bt [134]

:[125]
b [139]

:[126]
pushglb.v global.line
pushi.e 17
cmp.i.v EQ
bf [128]

:[127]
pushi.e 0
conv.i.v
push.l 5
conv.l.v
call.i call_actors(argc=2)
popz.v

:[128]
b [139]

:[129]
pushglb.v global.line
pushi.e 19
cmp.i.v EQ
bf [131]

:[130]
pushi.e 0
conv.i.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v

:[131]
pushglb.v global.line
pushi.e 21
cmp.i.v EQ
bf [133]

:[132]
pushi.e 1
pop.v.i global.hidebody

:[133]
b [139]

:[134]
pushglb.v global.line
pushi.e 14
cmp.i.v EQ
bf [136]

:[135]
pushi.e 0
conv.i.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v

:[136]
pushglb.v global.line
pushi.e 16
cmp.i.v EQ
bf [138]

:[137]
pushi.e 1
pop.v.i global.hidebody

:[138]
b [139]

:[139]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [141]

:[140]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [142]

:[141]
push.e 0

:[142]
bf [144]

:[143]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[144]
push.v self.scene
push.s "frontvore"@510
cmp.s.v EQ
bf [234]

:[145]
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 2
cmp.l.v EQ
bf [147]

:[146]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You see Chloe lumber heavily up to "@1568
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "’s desk. Clearly struggling with the effort of her new, bloated form. She tries to start up a regular conversation about paperwork and regulations. But you can tell her mind is only on food"@1569
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.namearray
pushi.e -1
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.preyline
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Chloe’s usual flat expression twists some in frustration. Her fattened belly snarls between the two of them. She glances down at it for only a moment...calculating. Her claws thrum over the top of its curve."@1570
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
b [148]

:[147]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You turn the corner just in time to see Pearl lumbering past "@1571
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s ". She’s clearly having a bit of a struggle with her newfound heft. Despite that, she’s rummaging at the bottom of another candy bag and coming back empty. She seems disappointed at this when her broad girth accidentally bumps into "@1572
add.s.v
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
push.s "."@1573
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.namearray
pushi.e -1
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.preyline
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Pearl blushes and stutters for a bit, when her gurgling belly catches her off guard. It’s clearly still hungry for more, but her treats are empty! She takes a cautionary look around, you’re sure she doesn’t see you."@1574
pushi.e -5
pushi.e 2
pop.v.s [array]global.text

:[148]
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [150]

:[149]
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i call_actors(argc=2)
popz.v

:[150]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [179]

:[151]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [155]

:[152]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [154]

:[153]
push.s "Interfere"@1575
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Watch"@1576
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Walk away"@1476
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[154]
popenv [153]

:[155]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [179]

:[156]
pushglb.v global.choice
dup.v 0
push.s "Interfere"@1575
cmp.s.v EQ
bt [160]

:[157]
dup.v 0
push.s "Watch"@1576
cmp.s.v EQ
bt [171]

:[158]
dup.v 0
push.s "Walk away"@1476
cmp.s.v EQ
bt [175]

:[159]
b [178]

:[160]
push.l 3
conv.l.v
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.l 3
conv.l.v
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [162]

:[161]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[162]
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 2
cmp.l.v EQ
bf [167]

:[163]
push.l 2
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [165]

:[164]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation! However, Chloe just glowers down at you. "@1577
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "You know what, I really am kind of hungry..."@1578
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "You barely have time to respond before the gluttony demoness lunges over her gurgling belly to snag you by the collar. You yelp in shock and try to kick but Chloe is terrifyingly strong. Her new insatiable hunger enveloping you in moments! You go toppling over into the depths of Chloe’s scarlet belly mass with a rupturious *BUORP!?*"@1579
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "OOuugh... I really needed that."@1580
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
pushi.e 1
pop.v.i global.gotate
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [166]

:[165]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation! However, Chloe just rolls her eyes and waddles off. "@1581
pushi.e -5
pushi.e 3
pop.v.s [array]global.text

:[166]
b [170]

:[167]
push.l 3
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [169]

:[168]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Pearl was taken aback by your presence. And for some reason seems frustrated at this development."@1582
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Oooh...I don’t have time for this! I need something to eat now!!!"@1583
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Before you can object the massive sea monster already has you ensnared! She drags you up towards her wide maw that easily engulfs you whole! You go tumbling down her slick gullet, grabbing for anything but everything’s far too slick! You land in the dark depths of her belly with a final *GULP*"@1584
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "W-Whoops! D-Don’t worry I’ll spit you out. *BUARP!?* E-Eventually."@1585
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Pearl sounds as sure about herself as you are. Which is to say, not at all. But with that she waddles back on her way. You sway helplessly in the belly of the whale with each of her whomping steps..."@1586
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
pushi.e 1
pop.v.i global.gotate
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [170]

:[169]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation! Pearl was taken aback by your presence. Looks like you interrupted whatever she had planned..."@1587
pushi.e -5
pushi.e 3
pop.v.s [array]global.text

:[170]
b [178]

:[171]
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 2
cmp.l.v EQ
bf [173]

:[172]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "The gluttony demoness lunges over her gurgling belly to snag her prey by the collar. They yelp in shock and try to kick but Chloe easily overtakes them. Her new insatiable hunger enveloping her coworker in moments! They go toppling over into the depths of Chloe’s scarlet belly mass with a rupturious *BUORP!?*"@1588
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "OOuugh...I was getting so hungry. That felt good."@1589
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "With that Chloe waddled unceremoniously away. Giving no regard to the muffled threats and thrashing wobbles of her engorged stomach."@1590
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
b [174]

:[173]
push.s "Pearl"@620
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "A-Ah. S-Sorry for this! I’m just reeeally hungry right now!!!"@1591
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Before they can even object the massive sea monster has already grappled her prey! She drags them up towards her wide maw that easily engulfs them whole! They go tumbling down her slick gullet, grabbing for anything but sliding away easily. They disappear in moments wtih a final *GULP* that suddenly BLOATS the receptionists belly out from her figure."@1592
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "W-Whoops! D-Don’t worry I’ll spit you out. *BUARP!?* E-Eventually."@1585
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Pearl sounds as sure about herself as you are of her. Which is to say, not at all. But with that she waddles back on her way, swaying with her meals kicks and squirms."@1593
pushi.e -5
pushi.e 6
pop.v.s [array]global.text

:[174]
push.l 1
conv.l.v
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
push.s "WHO GOT ATE"@1596
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.v self.keystring1
call.i show_debug_message(argc=1)
popz.v
push.v self.keystring2
call.i show_debug_message(argc=1)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [178]

:[175]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You decide to mind your own business and walk on by..."@1597
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [177]

:[176]
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[177]
push.l 1
conv.l.v
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [178]

:[178]
popz.v
pushglb.v global.choice
pop.v.v self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[179]
push.v self.savespot
dup.v 0
push.s "Interfere"@1575
cmp.s.v EQ
bt [183]

:[180]
dup.v 0
push.s "Watch"@1576
cmp.s.v EQ
bt [204]

:[181]
dup.v 0
push.s "Walk away"@1476
cmp.s.v EQ
bt [223]

:[182]
b [226]

:[183]
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 2
cmp.l.v EQ
bf [193]

:[184]
push.l 2
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [192]

:[185]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [187]

:[186]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i global.hidebody

:[187]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [191]

:[188]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [190]

:[189]
push.l 0
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[190]
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[191]
b [192]

:[192]
b [203]

:[193]
push.l 3
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [203]

:[194]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [196]

:[195]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i global.hidebody

:[196]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [200]

:[197]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [199]

:[198]
push.l 0
conv.l.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[199]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[200]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [202]

:[201]
pushi.e 1
pop.v.i global.hidebody

:[202]
b [203]

:[203]
b [226]

:[204]
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 2
cmp.l.v EQ
bf [214]

:[205]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [207]

:[206]
pushi.e 1
pop.v.i global.hidebody

:[207]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [211]

:[208]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [210]

:[209]
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[210]
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[211]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [213]

:[212]
pushi.e 1
pop.v.i global.hidebody

:[213]
b [222]

:[214]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [216]

:[215]
pushi.e 1
pop.v.i global.hidebody

:[216]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [220]

:[217]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [219]

:[218]
push.s "frontprey"@503
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "frontpred"@502
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[219]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[220]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [222]

:[221]
pushi.e 1
pop.v.i global.hidebody

:[222]
b [226]

:[223]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [225]

:[224]
pushi.e 1
pop.v.i global.hidebody

:[225]
b [226]

:[226]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [228]

:[227]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [229]

:[228]
push.e 0

:[229]
bf [234]

:[230]
pushglb.v global.gotate
pushi.e 1
cmp.i.v EQ
bf [232]

:[231]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
b [233]

:[232]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v

:[233]
call.i instance_destroy(argc=0)
popz.v

:[234]
push.v self.scene
push.s "salesvore"@511
cmp.s.v EQ
bf [333]

:[235]
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 7
cmp.l.v EQ
bf [237]

:[236]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Around the corner you catch a glimpse of Jesse and "@1598
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " having a conversation. You can’t quite make it out but you can tell it isn’t going well. Jesse rubs her temples with one hand and her bloated belly with another. You can hear it growling from here."@1599
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You see Jesse take a quick glance around her surroundings...calculating. She clearly doesn’t see you yet."@1600
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
pushi.e 1
pop.v.i self.choiceline
b [238]

:[237]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Kathy and "@1602
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " are having a conversation in the distance as you approach. But getting a little closer you very quickly get the impression it’s not quite friendly chatter."@1603
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.namearray
pushi.e -1
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.preyline
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Kathy huffs a little at this. Her furry belly grumbles displeased and for a moment, you can see the glint of an idea in Kathy’s eye..."@1604
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushi.e 2
pop.v.i self.choiceline

:[238]
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [240]

:[239]
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i call_actors(argc=2)
popz.v

:[240]
pushglb.v global.line
push.v self.choiceline
cmp.v.v EQ
bf [272]

:[241]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [245]

:[242]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [244]

:[243]
push.s "Interfere"@1575
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Watch"@1576
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Walk away"@1476
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[244]
popenv [243]

:[245]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [272]

:[246]
pushglb.v global.choice
dup.v 0
push.s "Interfere"@1575
cmp.s.v EQ
bt [250]

:[247]
dup.v 0
push.s "Watch"@1576
cmp.s.v EQ
bt [261]

:[248]
dup.v 0
push.s "Walk away"@1476
cmp.s.v EQ
bt [265]

:[249]
b [271]

:[250]
push.l 3
conv.l.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.l 3
conv.l.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [252]

:[251]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[252]
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 7
cmp.l.v EQ
bf [257]

:[253]
push.l 7
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [255]

:[254]
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Jesse blinks shocked for a few seconds. Clearly caught off guard by your presence."@1605
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Ya know what, I suppose you’ll do just as well~"@1606
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "In an instant she switches her expression and grins devilishly. Her wolfish, drooling teeth sending a shiver down your spine. Before you can realize what’s happening she POUNCES!!!"@1607
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "The bulky lupine easily overpowers you. Tipping you up into her waiting maw with practiced ease. Her carnivorous jaw easily gulping you down. You form goes rolling into the pit of the wolfwomans furred gut, sending it bounding forward!"@1608
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "That outta do it~ Maybe now yer gonna learn somethin’."@1609
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Jesse chuckled amused to herself. Patting the shelf of her rolling belly condescendingly. "@1610
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
pushi.e 1
pop.v.i global.gotate
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [256]

:[255]
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation! Jesse blinks shocked for a few seconds. Clearly caught off guard by your presence."@1611
pushi.e -5
pushi.e 2
pop.v.s [array]global.text

:[256]
b [260]

:[257]
push.l 6
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [259]

:[258]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation! However, Kathy just smirks down at you. "@1612
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "You know, I’m getting kind of fed up with you. So the least you can do is feed me~!!!"@1613
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "You don’t have time to dodge before a whirl of dark fur slams into you! You’re pinned under the massive feline as she considers how best to devour you whole!!! You struggle helplessly in her grasp as she brings you up to her teeth head first! ! Her carnivorous maw easily gulping you down. Tipping you down the slope of her throat by the heels. You curl tightly into the dark void of the big cat’s belly..."@1614
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You’re just lucky I didn’t think of this earlier~ I’ll just eat my problems away!!!"@1615
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Kathy snickers devilishly, pleased with her catch. You sigh alone in the darkness as her purrs rumble loudly around you. "@1616
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
pushi.e 1
pop.v.i global.gotate
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [260]

:[259]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation! However, Kathy just rolls her eyes and waddles off. "@1617
pushi.e -5
pushi.e 3
pop.v.s [array]global.text

:[260]
b [271]

:[261]
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 7
cmp.l.v EQ
bf [263]

:[262]
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Sure that she won't be caught, Jesse whips her attention back around to her heckler and grins devilishly. Her wolfish, drooling teeth sending a shiver down your spine. Before the other can realize what’s happening she POUNCES!!!"@1618
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "The bulky lupine easily ensnares her prey. Tipping them up into her waiting maw with practiced ease. Her carnivorous jaw easily gulping down the squirming meal. XXX’s form goes rolling down the wolfwomans thick neck and bounces heavily into her gut, sending it bounding forward!"@1619
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "That outta do it~ Maybe now yer gonna learn somethin’."@1609
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Jesse chuckled amused to herself. Patting the shelf of her howling and rolling belly condescendingly. "@1620
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
b [264]

:[263]
push.s "Kathy"@623
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You know, I’m getting kind of fed up with you. So the least you can do is feed me~!!!"@1613
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "You barely roll out of the way before a bolt of black fur lunges past you! Both monsters crash to the ground in a fit of snarls and teeth!!! Fur flies and camera phones are engaged!"@1621
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "The fight doesn’t last long though as the big cat easily overtakes her smaller coworker. You watch in abject horror as Kathy easily devours her whole!!! Her carnivorous maw easily gulping down the squirming meal. Tipping XXX down the slope of her throat by the heels. Her form rolling down the black cats thick neck and bouncing heavily into her gut, sending it bounding forward!"@1622
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You’re just lucky I didn’t think of this earlier~ I’ll just eat my problems away!!!"@1615
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Kathy snickers devilishly and watches bemusedly as her bloated gut snarls and rolls beneath her."@1623
pushi.e -5
pushi.e 7
pop.v.s [array]global.text

:[264]
push.l 1
conv.l.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [271]

:[265]
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 7
cmp.l.v EQ
bf [267]

:[266]
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You decide to mind your own business and walk on by..."@1597
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
b [268]

:[267]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You decide to mind your own business and walk on by..."@1597
pushi.e -5
pushi.e 3
pop.v.s [array]global.text

:[268]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [270]

:[269]
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[270]
push.l 1
conv.l.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [271]

:[271]
popz.v
pushglb.v global.choice
pop.v.v self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[272]
push.v self.savespot
dup.v 0
push.s "Interfere"@1575
cmp.s.v EQ
bt [276]

:[273]
dup.v 0
push.s "Watch"@1576
cmp.s.v EQ
bt [299]

:[274]
dup.v 0
push.s "Walk away"@1476
cmp.s.v EQ
bt [318]

:[275]
b [325]

:[276]
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 7
cmp.l.v EQ
bf [288]

:[277]
push.l 7
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [287]

:[278]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [280]

:[279]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i global.hidebody

:[280]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [284]

:[281]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [283]

:[282]
push.l 0
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[283]
pushi.e 0
conv.i.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[284]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [286]

:[285]
pushi.e 1
pop.v.i global.hidebody

:[286]
b [287]

:[287]
b [298]

:[288]
push.l 6
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [298]

:[289]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [291]

:[290]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i global.hidebody

:[291]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [295]

:[292]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [294]

:[293]
push.l 0
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[294]
pushi.e 0
conv.i.v
push.l 6
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[295]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [297]

:[296]
pushi.e 1
pop.v.i global.hidebody

:[297]
b [298]

:[298]
b [325]

:[299]
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 7
cmp.l.v EQ
bf [309]

:[300]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [302]

:[301]
pushi.e 1
pop.v.i global.hidebody

:[302]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [306]

:[303]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [305]

:[304]
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[305]
pushi.e 0
conv.i.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[306]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [308]

:[307]
pushi.e 1
pop.v.i global.hidebody

:[308]
b [317]

:[309]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [311]

:[310]
pushi.e 1
pop.v.i global.hidebody

:[311]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [315]

:[312]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [314]

:[313]
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[314]
pushi.e 0
conv.i.v
push.l 6
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[315]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [317]

:[316]
pushi.e 1
pop.v.i global.hidebody

:[317]
push.l 1
conv.l.v
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "salesprey"@505
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [325]

:[318]
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 7
cmp.l.v EQ
bf [322]

:[319]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [321]

:[320]
pushi.e 1
pop.v.i global.hidebody

:[321]
b [324]

:[322]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [324]

:[323]
pushi.e 1
pop.v.i global.hidebody

:[324]
b [325]

:[325]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [327]

:[326]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [328]

:[327]
push.e 0

:[328]
bf [333]

:[329]
pushglb.v global.gotate
pushi.e 1
cmp.i.v EQ
bf [331]

:[330]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
b [332]

:[331]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v

:[332]
call.i instance_destroy(argc=0)
popz.v

:[333]
push.v self.scene
push.s "itvore"@512
cmp.s.v EQ
bf [430]

:[334]
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 5
cmp.l.v EQ
bf [336]

:[335]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You turn the corner on your usual rounds. A Victoria that more closely resembles the Stay Puft Marshmallow Man is tipping the last crumbs of yet another chip back into her open gob as she floats along. Once inhaled clean she tosses the wadded remains carelessly away, and you can tell she’s still hungry..."@1624
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "A little ways away you see "@1625
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " working the copier. Vic seems to have noticed them too and thinks a little to herself, before cracking into a twisted grin and sneakily sliding over to them..."@1626
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
pushi.e 1
pop.v.i self.choiceline
b [337]

:[336]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re making your way around the office when you see Polly stride up to "@1627
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "'s desk. They seem surprised to see her there. You can barely make out their conversation…"@1628
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 1
pop.v.v [array]self.namearray
pushi.e -1
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.preyline
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Polly chuckles, amused, at that. You can see her licking her mandibles though...she looks dangerously hungry. "@1629
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
pushi.e 2
pop.v.i self.choiceline

:[337]
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [339]

:[338]
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i call_actors(argc=2)
popz.v

:[339]
pushglb.v global.line
push.v self.choiceline
cmp.v.v EQ
bf [371]

:[340]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [344]

:[341]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [343]

:[342]
push.s "Interfere"@1575
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Watch"@1576
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Walk away"@1476
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[343]
popenv [342]

:[344]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [371]

:[345]
pushglb.v global.choice
dup.v 0
push.s "Interfere"@1575
cmp.s.v EQ
bt [349]

:[346]
dup.v 0
push.s "Watch"@1576
cmp.s.v EQ
bt [360]

:[347]
dup.v 0
push.s "Walk away"@1476
cmp.s.v EQ
bt [364]

:[348]
b [370]

:[349]
push.l 3
conv.l.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.l 3
conv.l.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [351]

:[350]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[351]
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 5
cmp.l.v EQ
bf [356]

:[352]
push.l 5
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [354]

:[353]
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You step up and try to spark some light conversation, anything to disrupt the scene. But before you can make a peep Victoria switches her attention to you. Easily figuring out your plan...and what to do to stop you~"@1630
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You’re caught off guard by how QUICKLY Victoria springs at you! Her supernatural maw stretching easily around you to slurp you up whole! You try to kick and push but Vic downs you just like so many salty bags of chips. That ghostly gut SPRINGS forward with the weight of a whole body crashing on top of a whole day’s worth of junk food gorging. "@1631
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Wow. You aren’t as salty as I expected. *BUORP!!!*"@1632
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushi.e 1
pop.v.i global.gotate
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [355]

:[354]
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You step up and try to spark some light conversation, anything to disrupt the scene. XXX at the copier turns to see you. Victoria groans in frustration and dips through the floor…"@1633
pushi.e -5
pushi.e 2
pop.v.s [array]global.text

:[355]
b [359]

:[356]
push.l 9
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [358]

:[357]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation! But Polly doesn’t seem interested at all. Instead, she seems to be measuring you over with her eyes..."@1634
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Hmm...I zzzupose you’ll do~"@1635
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "You see how the situation has turned and immediately try to step away. But she’s surprisingly swift. In an instant she has you locked in her grasp and on your way up to her open jaw! She easily engulfs you whole. Her body stretching and rolling to swallow down its prey. You land heavily in the pit of her belly, stretching it out round to accommodate. Her striped sweater creaks at the seams. "@1636
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Oh now don’t bee like that~ You look WONDERFUL on me!"@1637
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Polly giggles and smacks her lips at the delectable meal. Within moments you get a buzz on your phone, it’s a notice about a selfie she’s put up showing off her belly full of you. *Sigh* at least it looks nice. Should you like this???"@1638
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
pushi.e 1
pop.v.i global.gotate
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [359]

:[358]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation! But Polly doesn’t seem interested at all."@1639
pushi.e -5
pushi.e 3
pop.v.s [array]global.text

:[359]
b [370]

:[360]
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 5
cmp.l.v EQ
bf [362]

:[361]
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Victoria giggles devilishly and floats up behind her unawares victim. "@1640
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "They notice the chill in the air behind them just a moment too late. You’re caught off guard by how QUICKLY Victoria engulfs her prey! Her supernatural maw stretching easily around her coworker and slurping her up whole! XXX screeches complaint and tries to kick and push but Vic downs her just like so many salty bags of chips. That ghostly gut SPRINGS forward with the weight of a whole body crashing on top of a whole day’s worth of junk food gorging. "@1641
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Wow. You aren’t as salty as I expected. *BUORP!!!*"@1632
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "A shoe goes clattering to the floor, dripping with ectoplasmic ooze..."@1642
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
b [363]

:[362]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You can guess the queen bee’s audience came to the same conclusion you did as they immediately try to step away. But she’s surprisingly swift. In an instant she has her prey locked in her grasp and on its way up to her open jaw~"@1643
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "She easily engulfs them whole. Her body stretching and rolling to swallow down its prey. The coworker lands heavily in the pit of her belly, stretching it out round to accommodate. Her striped sweater creaks at the seams."@1644
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Oh now don’t bee like that~ You look WONDERFUL on me!"@1637
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Polly giggles and smacks her lips at the delectable meal. Snapping a quick selfie of her rolling belly to her adoring audience before waddling back on her way. The notice about the post buzzes on your phone moments later. Should you like this?"@1645
pushi.e -5
pushi.e 6
pop.v.s [array]global.text

:[363]
push.l 1
conv.l.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [370]

:[364]
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 5
cmp.l.v EQ
bf [366]

:[365]
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You decide to mind your own business and walk on by..."@1597
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
b [367]

:[366]
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You decide to mind your own business and walk on by..."@1597
pushi.e -5
pushi.e 3
pop.v.s [array]global.text

:[367]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [369]

:[368]
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[369]
push.l 1
conv.l.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [370]

:[370]
popz.v
pushglb.v global.choice
pop.v.v self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[371]
push.v self.savespot
dup.v 0
push.s "Interfere"@1575
cmp.s.v EQ
bt [375]

:[372]
dup.v 0
push.s "Watch"@1576
cmp.s.v EQ
bt [396]

:[373]
dup.v 0
push.s "Walk away"@1476
cmp.s.v EQ
bt [415]

:[374]
b [422]

:[375]
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 5
cmp.l.v EQ
bf [385]

:[376]
push.l 5
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [384]

:[377]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [379]

:[378]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i global.hidebody

:[379]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [383]

:[380]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [382]

:[381]
push.l 0
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[382]
pushi.e 0
conv.i.v
push.l 5
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[383]
b [384]

:[384]
b [395]

:[385]
push.l 9
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [395]

:[386]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [388]

:[387]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i global.hidebody

:[388]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [392]

:[389]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [391]

:[390]
push.l 0
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[391]
pushi.e 0
conv.i.v
push.l 9
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[392]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [394]

:[393]
pushi.e 1
pop.v.i global.hidebody

:[394]
b [395]

:[395]
b [422]

:[396]
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 5
cmp.l.v EQ
bf [406]

:[397]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [399]

:[398]
pushi.e 1
pop.v.i global.hidebody

:[399]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [403]

:[400]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [402]

:[401]
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[402]
pushi.e 0
conv.i.v
push.l 5
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[403]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [405]

:[404]
pushi.e 1
pop.v.i global.hidebody

:[405]
b [414]

:[406]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [408]

:[407]
pushi.e 1
pop.v.i global.hidebody

:[408]
pushglb.v global.line
pushi.e 5
cmp.i.v EQ
bf [412]

:[409]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [411]

:[410]
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[411]
pushi.e 0
conv.i.v
push.l 9
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[412]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [414]

:[413]
pushi.e 1
pop.v.i global.hidebody

:[414]
push.l 1
conv.l.v
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "itprey"@507
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 0
conv.i.v
push.s "allgood"@372
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [422]

:[415]
push.s "itpred"@506
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 5
cmp.l.v EQ
bf [419]

:[416]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [418]

:[417]
pushi.e 1
pop.v.i global.hidebody

:[418]
b [421]

:[419]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [421]

:[420]
pushi.e 1
pop.v.i global.hidebody

:[421]
b [422]

:[422]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [424]

:[423]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [425]

:[424]
push.e 0

:[425]
bf [430]

:[426]
pushglb.v global.gotate
pushi.e 1
cmp.i.v EQ
bf [428]

:[427]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
b [429]

:[428]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v

:[429]
call.i instance_destroy(argc=0)
popz.v

:[430]
push.v self.scene
push.s "custvore"@513
cmp.s.v EQ
bf [531]

:[431]
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 8
cmp.l.v EQ
bf [433]

:[432]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Wandering around, you catch Stacy striding over to meet "@1646
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s ". Her gait is surprisingly unhindered by her new weight…"@1647
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Oh dear you’re just who I’ve been looking for~"@1648
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e -1
pushi.e 2
pop.v.v [array]self.namearray
pushi.e -1
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.i
push.v [array]self.preyline
pushi.e -5
pushi.e 2
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Stacy chuckles amused to herself and clearly licks her tongue over her drooling teeth."@1649
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Oh I’m so glad you’ve noticed! It’s a lot of work keeping up a figure like this one you know. Would you care to join me for lunch~? "@1650
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "You feel like you know where this is going…"@1651
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
pushi.e 5
pop.v.i self.choiceline
b [434]

:[433]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "While wandering the office you catch Erika waddling up to "@1652
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " in the distance. Her much more corpulent figure wobbling over the sides of her office attire, you can hear her stomach growling from here. However "@1653
add.s.v
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
push.s " seems to have barely noticed her, somehow. You can tell Erika’s approaching with some kind of intent...though you don’t know what."@1654
add.s.v
pushi.e -5
pushi.e 0
pop.v.v [array]global.text
pushi.e 0
pop.v.i self.choiceline

:[434]
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 0
cmp.i.v EQ
bf [436]

:[435]
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i call_actors(argc=2)
popz.v

:[436]
pushglb.v global.line
push.v self.choiceline
cmp.v.v EQ
bf [468]

:[437]
pushi.e 0
conv.i.v
call.i instance_exists(argc=1)
conv.v.b
not.b
bf [441]

:[438]
pushi.e 0
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [440]

:[439]
push.s "Interfere"@1575
pushi.e -1
pushi.e 0
pop.v.s [array]self.choices
push.s "Watch"@1576
pushi.e -1
pushi.e 1
pop.v.s [array]self.choices
push.s "Walk away"@1476
pushi.e -1
pushi.e 2
pop.v.s [array]self.choices
push.v self.choices
call.i array_length_1d(argc=1)
pop.v.v self.choicelength

:[440]
popenv [439]

:[441]
call.i check_confirm(argc=0)
pushi.e 1
cmp.i.v EQ
bf [468]

:[442]
pushglb.v global.choice
dup.v 0
push.s "Interfere"@1575
cmp.s.v EQ
bt [446]

:[443]
dup.v 0
push.s "Watch"@1576
cmp.s.v EQ
bt [457]

:[444]
dup.v 0
push.s "Walk away"@1476
cmp.s.v EQ
bt [461]

:[445]
b [467]

:[446]
push.l 3
conv.l.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.onetrust
pushi.e 2
conv.i.d
div.d.v
sub.v.v
push.l 3
conv.l.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v
push.l 3
conv.l.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v LT
bf [448]

:[447]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_set(argc=4)
popz.v

:[448]
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 8
cmp.l.v EQ
bf [453]

:[449]
push.l 8
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [451]

:[450]
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation!"@1655
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Oh there you are, darling!!! I had wondered where you wandered off to~"@1656
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Your co-worker ducked off as soon as Stacy’s attention turned to you. So much for gratitude."@1657
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "You know, I was actually looking for YOU! Now I don’t have to settle~"@1658
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 10
pop.v.s [array]self.namearray
push.s "You don’t get time to react. You’re caught off guard when Stacy lunges teeth-first towards you!!! Unlike usual vampire fashion, she ops to swallow her meal whole! Easily gulping you down to the dark depths of her gullet. You disappear in moments and you’re sure no one else saw the scene. She’s alarmingly good at this. From inside the pit of her innards you hear her haughty chuckle…"@1659
pushi.e -5
pushi.e 10
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 11
pop.v.s [array]self.namearray
push.s "Oh my dear you have NO IDEA how much I needed that~"@1660
pushi.e -5
pushi.e 11
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 12
pop.v.s [array]self.namearray
push.s "She giggles a little to herself and gives you a reassuring pat (that does not feel reassuring at all) before waddling off on her way."@1661
pushi.e -5
pushi.e 12
pop.v.s [array]global.text
pushi.e 1
pop.v.i global.gotate
b [452]

:[451]
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You step up between the girls and try to strike up a new, distracting conversation!"@1655
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Oh there you are, darling!!! I had wondered where you wandered off to~"@1656
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Your co-worker ducked off as soon as Stacy’s attention turned to you. So much for gratitude. You get caught up in a long-winded conversation with the vampire..."@1662
pushi.e -5
pushi.e 8
pop.v.s [array]global.text

:[452]
b [456]

:[453]
push.l 4
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [455]

:[454]
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You step up and try to spark some light conversation, anything to disrupt the scene. Erika looks shocked to see you. Then, contemplative...uh oh."@1663
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "It happened too fast to really comprehend how it happened. But in mere moments she has you snatched up and halfway down her gullet!!! Your heels flail in the air as the mummy moans in pleasure. Easily engulfing her squirming prey and swallowing you down into the pit of her gullet. Her fattened belly SPRINGS forward with the size of its new meal. "@1664
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "*BUORP~!*"@1665
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Erika giggles and rubs over her squirming gut before awkwardly waddling back to her desk. You sigh defeated. You really should have seen this ending coming."@1666
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
pushi.e 1
pop.v.i global.gotate
b [456]

:[455]
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You step up and try to spark some light conversation, anything to disrupt the scene. "@1667
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s " at the copier turns to notice you. Erika seems to sigh in disappointment and waddles away...You wonder what that was about."@1668
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text

:[456]
b [467]

:[457]
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 8
cmp.l.v EQ
bf [459]

:[458]
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s " mostly seems confused by this choice of wording. They’re caught off guard when Stacy lunges teeth-first towards them!!! Unlike usual vampire fashion, she ops to swallow her meal whole! Easily gulping them down to the dark depths of her gullet. They disappear in moments and you’re sure no one else saw the scene. She’s alarmingly good at this."@1669
add.s.v
pushi.e -5
pushi.e 6
pop.v.v [array]global.text
push.s ""@150
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Stacy's gut distends forward suddenly with the weight of it’s meal. Bouncing just inches off the ground. She whips out her compact and touches up her smeared lipstick. Can she see herself in that??? Before you can think much further on that she suddenly flashes a wink your way. You’re frozen in shock while she waddles away snickering back to her desk. "@1670
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
b [460]

:[459]
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Erika’s back is to you when the scene begins, so you’re not even sure how it happened. But in mere moments she’s snatched up her coworker and has her halfway down her gullet!!! Kicking heels flail in the air as the mummy moans in pleasure. Easily engulfing her squirming prey and swallowing them down into the pit of her gullet. Her fattened belly SPRINGS forward with the size of its new meal. "@1671
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "erika"@1672
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "*BUORP~!*"@1665
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Erika giggles and rubs over her squirming gut before awkwardly waddling back to her desk. Belly leading the way."@1673
pushi.e -5
pushi.e 3
pop.v.s [array]global.text

:[460]
push.l 1
conv.l.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [467]

:[461]
push.s "salespred"@504
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 8
cmp.l.v EQ
bf [463]

:[462]
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You decide to mind your own business and walk on by..."@1597
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
b [464]

:[463]
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You decide to mind your own business and walk on by..."@1597
pushi.e -5
pushi.e 1
pop.v.s [array]global.text

:[464]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [466]

:[465]
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[466]
push.l 1
conv.l.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [467]

:[467]
popz.v
pushglb.v global.choice
pop.v.v self.savespot
push.v global.line
push.e 1
add.i.v
pop.v.v global.line
call.i madechoice(argc=0)
popz.v

:[468]
push.v self.savespot
dup.v 0
push.s "Interfere"@1575
cmp.s.v EQ
bt [472]

:[469]
dup.v 0
push.s "Watch"@1576
cmp.s.v EQ
bt [499]

:[470]
dup.v 0
push.s "Walk away"@1476
cmp.s.v EQ
bt [516]

:[471]
b [523]

:[472]
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 8
cmp.l.v EQ
bf [488]

:[473]
push.l 8
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [485]

:[474]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [476]

:[475]
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v

:[476]
pushglb.v global.line
pushi.e 10
cmp.i.v EQ
bf [478]

:[477]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i global.hidebody

:[478]
pushglb.v global.line
pushi.e 11
cmp.i.v EQ
bf [482]

:[479]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [481]

:[480]
push.l 0
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[481]
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[482]
pushglb.v global.line
pushi.e 12
cmp.i.v EQ
bf [484]

:[483]
pushi.e 1
pop.v.i global.hidebody

:[484]
b [487]

:[485]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [487]

:[486]
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v

:[487]
b [498]

:[488]
push.l 4
conv.l.v
call.i trustlvl(argc=1)
push.v self.likelevel
cmp.v.v LTE
bf [498]

:[489]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [491]

:[490]
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v
pushi.e 1
pop.v.i global.hidebody

:[491]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [495]

:[492]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [494]

:[493]
push.l 0
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[494]
pushi.e 0
conv.i.v
push.l 4
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[495]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [497]

:[496]
pushi.e 1
pop.v.i global.hidebody

:[497]
b [498]

:[498]
b [523]

:[499]
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 8
cmp.l.v EQ
bf [507]

:[500]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [502]

:[501]
pushi.e 1
pop.v.i global.hidebody

:[502]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [506]

:[503]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [505]

:[504]
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[505]
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[506]
b [515]

:[507]
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [509]

:[508]
pushi.e 1
pop.v.i global.hidebody

:[509]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [513]

:[510]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [512]

:[511]
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[512]
pushi.e 0
conv.i.v
push.l 4
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[513]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [515]

:[514]
pushi.e 1
pop.v.i global.hidebody

:[515]
push.l 1
conv.l.v
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.v
pop.v.v self.keystring1
push.l 1
conv.l.v
push.s "custprey"@509
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "ate"@628
add.s.v
pop.v.v self.keystring2
pushi.e 1
conv.i.v
push.v self.keystring1
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.v self.keystring2
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
pushi.e 1
conv.i.v
push.s "anyoneate"@501
conv.s.v
pushglb.v global.events
call.i ds_map_set(argc=3)
popz.v
b [523]

:[516]
push.s "custpred"@508
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
push.l 8
cmp.l.v EQ
bf [520]

:[517]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [519]

:[518]
pushi.e 1
pop.v.i global.hidebody

:[519]
b [522]

:[520]
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [522]

:[521]
pushi.e 1
pop.v.i global.hidebody

:[522]
b [523]

:[523]
popz.v
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [525]

:[524]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [526]

:[525]
push.e 0

:[526]
bf [531]

:[527]
pushglb.v global.gotate
pushi.e 1
cmp.i.v EQ
bf [529]

:[528]
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
b [530]

:[529]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v

:[530]
call.i instance_destroy(argc=0)
popz.v

:[531]
push.v self.scene
push.s "erikaandpolly"@537
cmp.s.v EQ
bf [537]

:[532]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re making your way around the office when you see Polly and Erika chatting in the distance."@1674
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "And would you BEE-LIEVE, can you even GUEZZZ what happenzzz next!?"@1675
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "..."@930
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "He actually tried to say it wazzzn’t him!!! That wazzzn’t him!? And of course zzzhe went off after that because guezzz who had ALL the receipts?"@1676
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "..."@930
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Like they wern’t going to talk about it and get to the bottom of thizzz!? I really have no idea what he wazzz trying to accomplish with all that. Becauzzze he CERTAINLY wazzzn’t trying to get off scott free else he would have come up with a BETTER fuckin’ ezzzcuse~!!! And I-"@1677
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Polly."@1678
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "O-Oh!? Y-You talked!"@1679
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Shut up."@1680
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "E-EH!?"@1681
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
push.l 9
conv.l.v
push.l 4
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
bf [534]

:[533]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [535]

:[534]
push.e 0

:[535]
bf [537]

:[536]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[537]
push.v self.scene
push.s "erikaandvic"@538
cmp.s.v EQ
bf [543]

:[538]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re making your way around the office when you see Victoria and Erika chatting in the distance. Vic is lounging in a chair absentmindedly eating a bag of crucheez. "@1682
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "*BUARP!?* Yeah. And then like...I asked him if the damn thing was plugged in and he got fuckin’ TILTED at that. But like man, I gotta try everything and what you’re saying makes no damn sense."@1683
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "..."@930
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "I know right? He was big mad. Went off about how stupid I was, then hung up. I hope he steps on a tack or some shit. *crunch*"@1684
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "..."@930
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "*munch munch* Reminds me of this other dude. Fuckin’ MOUSE wasn’t plugged in. After like a solid hour of arguing over the issue. *cronch munch* Mnf...Like, I’m fuckin’ DEAD and I can figure this shit out. What’s ya’lls excuse???"@1685
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Vic."@1686
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Oh SHIT you can talk???"@1687
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "Don’t talk with your mouth full. It’s gross."@1688
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
push.s "Victoria"@622
pushi.e -1
pushi.e 9
pop.v.s [array]self.namearray
push.s "W-"@1689
pushi.e -5
pushi.e 9
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
push.l 5
conv.l.v
push.l 4
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
bf [540]

:[539]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [541]

:[540]
push.e 0

:[541]
bf [543]

:[542]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[543]
push.v self.scene
push.s "erikaandkathy"@539
cmp.s.v EQ
bf [549]

:[544]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re making your way around the office when you see Erika and Kathy chatting in the distance."@1690
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You know, do you EVER say anything? I don’t think I’ve ever seen you put two words together. If you don’t speak up mew-ore people are just gonna walk all over you."@1691
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "..."@930
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Still nothing to say to that? Cat’s got your tongue for real then~? >:3c Doesn’t anything get a rise out of you???"@1692
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "Kathy."@1693
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "OOoooh! Wow she said something! M’yes~? :3"@1694
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "Fuck off."@1695
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "W-WHA!?"@1696
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
push.l 6
conv.l.v
push.l 4
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
bf [546]

:[545]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [547]

:[546]
push.e 0

:[547]
bf [549]

:[548]
pushi.e 0
conv.i.v
pushi.e 0
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[549]
push.v self.scene
push.s "blamedchloe"@490
cmp.s.v EQ
bf [563]

:[550]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Just as you’re walking past the front offices, you find a very cross-looking Chloe stomping your way."@1697
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You. Do you have any idea the trouble you’ve put me through!? I already have enough going on and then I had to sit through an hours worth of passive-aggressive talking to from the boss for something I DIDN’T DO. I was even starting to think you were going to make it around here. But I’ve just decided: You’re not. "@1698
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You barely have time to respond before the gluttony demoness lunges over her gurgling belly to snag you by the collar. You yelp in shock and try to kick but Chloe is terrifyingly strong. Her new insatiable hunger enveloping you in moments! You go toppling over into the depths of Chloe’s scarlet belly mass with a rupturious *BUORP!?*"@1579
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Chloe"@619
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "OOuugh... I really needed that."@1580
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [552]

:[551]
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v

:[552]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [554]

:[553]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[554]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [558]

:[555]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [557]

:[556]
push.l 0
conv.l.v
push.l 2
conv.l.v
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[557]
pushi.e 0
conv.i.v
push.l 2
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[558]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [560]

:[559]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [561]

:[560]
push.e 0

:[561]
bf [563]

:[562]
pushi.e 1
pop.v.i global.gotate
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[563]
push.v self.scene
push.s "blamedpearl"@491
cmp.s.v EQ
bf [577]

:[564]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Just as you’re walking past the front offices, you find a very upset Pearl stomping your way."@1699
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You!!! I can’t believe you!!! I got in so much trouble because you said I ate the fridge and I DIDN’T! What did I ever do to you!? I got in so much trouble, do you have any idea!? I was really hoping we could be friends! And now, I don’t want to see you ever again!!!"@1700
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Before you can object the massive sea monster already has you ensnared! She drags you up towards her wide maw that easily engulfs you whole! You go tumbling down her slick gullet, grabbing for anything but everything’s far too slick! You land in the dark depths of her belly with a final *GULP*"@1584
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Pearl"@620
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "There~ Now think about what you’ve done."@1701
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [566]

:[565]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v

:[566]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [568]

:[567]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[568]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [572]

:[569]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [571]

:[570]
push.l 0
conv.l.v
push.l 3
conv.l.v
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[571]
pushi.e 0
conv.i.v
push.l 3
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[572]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [574]

:[573]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [575]

:[574]
push.e 0

:[575]
bf [577]

:[576]
pushi.e 1
pop.v.i global.gotate
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[577]
push.v self.scene
push.s "blamedkathy"@492
cmp.s.v EQ
bf [591]

:[578]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Just as you’re passing by the sales department, a very frizzled-looking Kathy storms up to you."@1702
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "YOU!!! Do you have ANY idea the trouble you got me in!? I didn’t even do it this time, I swear!!! And I still got a talking to! From the boss AND Chloe!? I’m REAL fed up with you right now, so the least you can do is FEED ME~!!!"@1703
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You don’t have time to dodge before a whirl of dark fur slams into you! You’re pinned under the massive feline as she considers how best to devour you whole!!! You struggle helplessly in her grasp as she brings you up to her teeth head first! ! Her carnivorous maw easily gulping you down. Tipping you down the slope of her throat by the heels. You curl tightly into the dark void of the big cat’s belly..."@1614
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Kathy"@623
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "You’re just lucky I didn’t think of this earlier~ I’ll just eat my problems away!!!"@1615
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [580]

:[579]
pushi.e 0
conv.i.v
push.l 6
conv.l.v
call.i call_actors(argc=2)
popz.v

:[580]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [582]

:[581]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[582]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [586]

:[583]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [585]

:[584]
push.l 0
conv.l.v
push.l 6
conv.l.v
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[585]
pushi.e 0
conv.i.v
push.l 6
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[586]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [588]

:[587]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [589]

:[588]
push.e 0

:[589]
bf [591]

:[590]
pushi.e 1
pop.v.i global.gotate
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[591]
push.v self.scene
push.s "blamedjesse"@493
cmp.s.v EQ
bf [605]

:[592]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "Just as you’re passing by the sales department, a very frizzled-looking Jesse storms up to you."@1704
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "I can’t believe you right now I really can’t. Why’d you go and accuse ME of the fridge anyways!? Now nobody believes I didn’ do it, an’ I DIDN’T I swear! If I’d done it, I would’a fessed up!!! I don’ know what I did to get on your bad side, but you sure’s shit got on mine! And yer gonna learn that ain’t a good place to be!!!"@1705
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "In an instant she switches her expression and grins devilishly. Her wolfish, drooling teeth sending a shiver down your spine. Before you can realize what’s happening she POUNCES!!!"@1607
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "The bulky lupine easily overpowers you. Tipping you up into her waiting maw with practiced ease. Her carnivorous jaw easily gulping you down. You form goes rolling into the pit of the wolfwomans furred gut, sending it bounding forward!"@1608
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Jesse"@624
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "That outta do it~ Maybe now yer gonna learn somethin’."@1609
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [594]

:[593]
pushi.e 0
conv.i.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v

:[594]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [596]

:[595]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[596]
pushglb.v global.line
pushi.e 4
cmp.i.v EQ
bf [600]

:[597]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [599]

:[598]
push.l 0
conv.l.v
push.l 7
conv.l.v
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[599]
pushi.e 0
conv.i.v
push.l 7
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[600]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [602]

:[601]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [603]

:[602]
push.e 0

:[603]
bf [605]

:[604]
pushi.e 1
pop.v.i global.gotate
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[605]
push.v self.scene
push.s "blamedvic"@494
cmp.s.v EQ
bf [617]

:[606]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re making your usual rounds through the IT department. Funny, you haven’t seen Victoria at all today? But just as the thought occurs to you...An icy chill runs down your spine."@1706
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "You’re caught off guard by how QUICKLY Victoria springs at you! Her supernatural maw stretching easily around you to slurp you up whole! You try to kick and push but Vic downs you just like so many salty bags of chips. That ghostly gut SPRINGS forward with the weight of a whole body crashing on top of a whole day’s worth of junk food gorging. "@1631
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "Wow. You aren’t as salty as I expected. *BUORP!!!* That’s for gettin’ me in trouble with the boss about the fridge stuff. Should’a kept your fat mouth shut~ *burp*"@1707
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [608]

:[607]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[608]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [612]

:[609]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [611]

:[610]
push.l 0
conv.l.v
push.l 5
conv.l.v
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[611]
pushi.e 0
conv.i.v
push.l 5
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[612]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [614]

:[613]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [615]

:[614]
push.e 0

:[615]
bf [617]

:[616]
pushi.e 1
pop.v.i global.gotate
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[617]
push.v self.scene
push.s "blamederika"@495
cmp.s.v EQ
bf [631]

:[618]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re turning the corner towards customer service when you bump belly-first into Erika! She seems just as surprised to see you as you are to see her. But in an instant, her expression changes to something more calculating…"@1708
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "Why...Did you blame me for the fridge?"@1709
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "It happened too fast to really comprehend how it happened. But in mere moments she has you snatched up and halfway down her gullet!!! Your heels flail in the air as the mummy moans in pleasure. Easily engulfing her squirming prey and swallowing you down into the pit of her gullet. Her fattened belly SPRINGS forward with the size of its new meal. "@1664
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Erika"@621
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "*BUORP~!*"@1665
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [620]

:[619]
pushi.e 0
conv.i.v
push.l 4
conv.l.v
call.i call_actors(argc=2)
popz.v

:[620]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [622]

:[621]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[622]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [626]

:[623]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [625]

:[624]
push.l 0
conv.l.v
push.l 4
conv.l.v
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[625]
pushi.e 0
conv.i.v
push.l 4
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[626]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [628]

:[627]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [629]

:[628]
push.e 0

:[629]
bf [631]

:[630]
pushi.e 1
pop.v.i global.gotate
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[631]
push.v self.scene
push.s "blamedstacy"@496
cmp.s.v EQ
bf [645]

:[632]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You were only passing through customer service when you hear a suspiciously cheery call from behind you."@1710
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.s "~!!! Oh, you have no idea how long I’ve been looking for you today! You’re always on patrol aren’t you~? I’ve been trying to find you see, I’ve been meaning to apologize!"@1711
add.s.v
pushi.e -5
pushi.e 1
pop.v.v [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "I don’t know WHAT it was I did that did you wrong but all I want is to make things right! Tie up loose ends. Do you know what I’m talking about? It’s the fridge, dear. Now why’d you blame me for a silly little thing like that~?"@1712
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "The vampire had begun to stalk dangerously close. You try to back away, but you only hit the wall. "@1713
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 4
pop.v.s [array]self.namearray
push.s "I’m honestly kind of dissappointed I had to waste my time today righting this wrong. Can you believe the WORDS the boss man had for me? Oh, he’s usually such a pushover, but today he seemed very serious! What was it you said to him? I really want to know~"@1714
pushi.e -5
pushi.e 4
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 5
pop.v.s [array]self.namearray
push.s "Hm...Not talking? What’s the matter with you? Why, you’re pale as a ghost! Something the matter? Oh, don’t take this TOO personally now, I’d have loved to be friends. But I take my job very seriously and professionalism comes first. It’s just business~"@1715
pushi.e -5
pushi.e 5
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 6
pop.v.s [array]self.namearray
push.s "You don’t get time to react. You’re caught off guard when Stacy lunges teeth-first towards you!!! Unlike usual vampire fashion, she ops to swallow her meal whole! Easily gulping you down to the dark depths of her gullet. You disappear in moments and you’re sure no one else saw the scene. She’s alarmingly good at this. From inside the pit of her innards you hear her haughty chuckle…"@1659
pushi.e -5
pushi.e 6
pop.v.s [array]global.text
push.s "Stacy"@625
pushi.e -1
pushi.e 7
pop.v.s [array]self.namearray
push.s "Oh my dear you have NO IDEA how much I needed that~"@1660
pushi.e -5
pushi.e 7
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 8
pop.v.s [array]self.namearray
push.s "She giggles a little to herself and gives you a reassuring pat (that does not feel reassuring at all) before waddling off on her way."@1661
pushi.e -5
pushi.e 8
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [634]

:[633]
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v

:[634]
pushglb.v global.line
pushi.e 6
cmp.i.v EQ
bf [636]

:[635]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[636]
pushglb.v global.line
pushi.e 7
cmp.i.v EQ
bf [640]

:[637]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [639]

:[638]
push.l 0
conv.l.v
push.l 8
conv.l.v
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[639]
pushi.e 0
conv.i.v
push.l 8
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[640]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [642]

:[641]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [643]

:[642]
push.e 0

:[643]
bf [645]

:[644]
pushi.e 1
pop.v.i global.gotate
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[645]
push.v self.scene
push.s "blamedpolly"@497
cmp.s.v EQ
bf [end]

:[646]
push.s ""@150
pushi.e -1
pushi.e 0
pop.v.s [array]self.namearray
push.s "You’re passing through IT when a furious Polly storms up to you."@1716
pushi.e -5
pushi.e 0
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 1
pop.v.s [array]self.namearray
push.s "YOU!!! You have NO IDEA what you’ve DONE!!! I’ve been zzztuck in the bozzz’ office for like, HOURZZZ getting interrogated about the zzztupid fridge thing which wazzz NOT MY FAULT!!! And wouldn’t you know it? I did zzzome digging and found it wazzz YOU who acuzzzed me!? ME!? Well, if I had to get chewed out then I think you do too! And zzzwallowed too~!!!"@1717
pushi.e -5
pushi.e 1
pop.v.s [array]global.text
push.s ""@150
pushi.e -1
pushi.e 2
pop.v.s [array]self.namearray
push.s "You see how the situation has turned and  immediately try to step away. But she’s surprisingly swift. In an instant she has you locked in her grasp and on your way up to her open jaw! She easily engulfs you whole. Her body stretching and rolling to swallow down its prey. You land heavily in the pit of her belly, stretching it out round to accommodate. Her striped sweater creaks at the seams. "@1718
pushi.e -5
pushi.e 2
pop.v.s [array]global.text
push.s "Polly"@626
pushi.e -1
pushi.e 3
pop.v.s [array]self.namearray
push.s "Oh now don’t bee like that~ You look WONDERFUL on me!"@1637
pushi.e -5
pushi.e 3
pop.v.s [array]global.text
call.i do_namebox(argc=0)
popz.v
pushglb.v global.line
pushi.e 1
cmp.i.v EQ
bf [648]

:[647]
pushi.e 0
conv.i.v
push.l 9
conv.l.v
call.i call_actors(argc=2)
popz.v

:[648]
pushglb.v global.line
pushi.e 2
cmp.i.v EQ
bf [650]

:[649]
pushi.e 1
pop.v.i global.hidebody
pushi.e 1
conv.i.v
call.i blackout(argc=1)
popz.v

:[650]
pushglb.v global.line
pushi.e 3
cmp.i.v EQ
bf [654]

:[651]
push.v self.scenefeed
pushi.e 0
cmp.i.v EQ
bf [653]

:[652]
push.l 0
conv.l.v
push.l 9
conv.l.v
call.i vore(argc=2)
popz.v
pushi.e 1
pop.v.i self.scenefeed

:[653]
pushi.e 0
conv.i.v
push.l 9
conv.l.v
call.i call_actors(argc=2)
popz.v
pushi.e 0
pop.v.i global.hidebody

:[654]
pushglb.v global.text
call.i array_length_1d(argc=1)
pop.v.v self.scenelen
pushglb.v global.line
push.v self.scenelen
pushi.e 1
sub.i.v
cmp.v.v EQ
bf [656]

:[655]
pushi.e 32
conv.i.v
call.i keyboard_check_pressed(argc=1)
conv.v.b
b [657]

:[656]
push.e 0

:[657]
bf [end]

:[658]
pushi.e 1
pop.v.i global.gotate
pushi.e 10
conv.i.v
pushi.e 1
conv.i.v
call.i fade(argc=2)
popz.v
call.i instance_destroy(argc=0)
popz.v

:[end]