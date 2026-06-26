.localvar 0 arguments
.localvar 1 i 674
.localvar 2 a 675
.localvar 3 v 676

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
push.s "pearlscene"@477
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [2]

:[1]
push.s "pearlscene"@477
pop.v.s self.specialscene
b [3]

:[2]
pushi.e 0
pop.v.i self.specialscene

:[3]
pushi.e 1
pop.v.i self.tolerance
pushi.e 6
pop.v.i self.date
push.l 3
pop.v.l self.me
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [5]

:[4]
push.v other.me
pop.v.v self.me

:[5]
popenv [4]
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
push.s "seenPearl"@440
pop.v.s self.myseen
push.s "dailyPearl"@450
pop.v.s self.chatkey
push.s "finalpearl"@459
pop.v.s self.datekey
push.s "It's so good to see you! I always love you stopping by to see me~!"@2538
pushi.e -1
pushi.e 8
pop.v.s [array]self.intro
push.s "I appreciate you coming to see me so much!"@2539
pushi.e -1
pushi.e 7
pop.v.s [array]self.intro
push.s "I appreciate you coming to see me so much!"@2539
pushi.e -1
pushi.e 6
pop.v.s [array]self.intro
push.s "It's so good to see you today!"@2540
pushi.e -1
pushi.e 5
pop.v.s [array]self.intro
push.s "It's so good to see you today!"@2540
pushi.e -1
pushi.e 4
pop.v.s [array]self.intro
push.s "Oh it's you! Welcome!"@2541
pushi.e -1
pushi.e 3
pop.v.s [array]self.intro
push.s "Oh it's you! Welcome!"@2541
pushi.e -1
pushi.e 2
pop.v.s [array]self.intro
push.s "Welcome!"@2542
pushi.e -1
pushi.e 1
pop.v.s [array]self.intro
push.s "W-Welcome!"@2543
pushi.e -1
pushi.e 0
pop.v.s [array]self.intro
push.s "*pant* *wheeze* The boss says I really make a BIG first impression on our guests...Do you know what he could mean by that?"@2544
pushi.e -1
pushi.e 8
pop.v.s [array]self.weightline
push.s "*munch munch* I hope you don't mind me eating. I gotta snack while no one's looking~ tee-hee!"@2545
pushi.e -1
pushi.e 7
pop.v.s [array]self.weightline
push.s "*munch munch* I hope you don't mind me eating. I gotta snack while no one's looking~ tee-hee!"@2545
pushi.e -1
pushi.e 6
pop.v.s [array]self.weightline
push.s "*pant pant* Has it always been so hard to reach the keyboard?"@2546
pushi.e -1
pushi.e 5
pop.v.s [array]self.weightline
push.s "*pant pant* Has it always been so hard to reach the keyboard?"@2546
pushi.e -1
pushi.e 4
pop.v.s [array]self.weightline
push.s "*urp*!? O-Oh my!!! I'm sorry!"@2547
pushi.e -1
pushi.e 3
pop.v.s [array]self.weightline
push.s "*urp*!? O-Oh my!!! I'm sorry!"@2547
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
push.s "Oh? Do you have something?"@2548
pop.v.s self.introgift
push.s "Oh my goodness can I really have this!? Thank you!!!"@2549
pop.v.s self.likegift
push.s "Y-You shouldn't have~ (She's being sweet, but I don't think she liked it...)"@2550
pop.v.s self.badgift
push.s "You already gave me one today! You must really know what I like~"@2551
pop.v.s self.likedhadit
push.s "Um...I'm sorry but I don't think I like this any better the second time..."@2552
pop.v.s self.badhadit
push.s "Oh, "@1346
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "! You're always so sweet to me~"@2553
add.s.v
pop.v.v self.fulllike
push.s "Oof..Sorry. I-I don't think I could eat this right now."@2554
pop.v.s self.fullbad
push.s "M-More???"@2555
pop.v.s self.fullhadit
push.s "N-No more...Please."@2556
pop.v.s self.fullbadhadit
push.s "W-With me? I-I'm sorry I only really like to eat lunch with people I know better..."@2557
pop.v.s self.rejecttxt
push.s "With me!? Sure! I'd love to~!"@2558
pop.v.s self.accepttxt
push.s "A-Actually...if you're offering. I know this great place in town! It's kind of pricy so I don't always go. But sometimes you have to treat yourself! If you're interested, of course."@2559
pop.v.s self.speciallunch
push.s "S-Sorry, I need to get back to work!"@2560
pop.v.s self.nomorechat
push.s "You're always working so hard. So I got you something for once!"@2561
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
bt [14]

:[6]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [14]

:[7]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [14]

:[8]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [14]

:[9]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [14]

:[10]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [15]

:[11]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [15]

:[12]
b [16]

:[13]
b [17]

:[14]
push.s "Oh! I can't talk long though, I need to work!"@2562
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [17]

:[15]
push.s "I always love these talks we have~"@2563
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [17]

:[16]
push.s "You know, getting to talk to you is probably the best part of my day~!"@2564
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [17]

:[17]
popz.v
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [27]

:[18]
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
bt [22]

:[19]
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
bt [22]

:[20]
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
bt [22]

:[21]
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
b [23]

:[22]
push.e 1

:[23]
bf [25]

:[24]
push.s "Did you pick out the cake? It’s my favorite too!!! That’s so cool!"@2565
pop.v.s self.cakecomment
b [26]

:[25]
push.s ""@150
pop.v.s self.cakecomment

:[26]
push.s "Happy birthday!!! I know it’s not really your birthday, but it’s never too early to celebrate~! I’m glad you came to work here with us. I think you’re doing a wonderful job! "@2566
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
b [50]

:[27]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [30]

:[28]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [30]

:[29]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v LT
b [31]

:[30]
push.e 0

:[31]
bf [33]

:[32]
push.s "A-Ah...You’re the one who’s going to fix the air right? I don’t mean to rush...B-But I don’t do so well in this kind of environment…"@2567
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [50]

:[33]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [50]

:[34]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [45]

:[35]
push.l 68
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [37]

:[36]
push.l 71
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [38]

:[37]
push.e 1

:[38]
bf [40]

:[39]
push.s "And you even got my favorite kind!!! You’re so wonderful PLAYER~"@2568
pop.v.s self.pizzacomment
b [41]

:[40]
push.s ""@150
pop.v.s self.pizzacomment

:[41]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [43]

:[42]
push.s "I’m so glad we got to get pizza after all!!! This week has sort of been kind of rough for me...But you always manage to make things better~ "@2569
push.v self.pizzacomment
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
b [44]

:[43]
push.s "I’m sorry you couldn’t get any pizza...But you did fix the air! That’s no small feat! And I really super-duper appreciate it. You’ve been working so hard, I hope the boss will understand..."@2570
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[44]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[45]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [50]

:[46]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [48]

:[47]
push.s "*Pant* *Wheeze* I umm...Appreciate the party of course! B-But I really n-need the air…"@2571
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [49]

:[48]
push.s "*Pant* *Wheeze* I’m sorry you couldn’t get the air fixed! I-It’s okay...I know your job is hard..."@2572
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[49]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[50]
pushi.e 0
pop.v.i local.a
push.s "Chloeate"@465
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [55]

:[51]
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.commentweight
cmp.v.v LT
bf [53]

:[52]
push.s "Chloe may seem kind of cold, but she’s actually really nice. I was a real fish out of water when I started working here and she helped show me the ropes! I’ve always looked up to her, she really dedicates herself to whatever she puts her mind to! I wanna be like that. But lately...she’s been sort of miserable over her diet. I sort of wish she would just let herself enjoy what she wants. She used to love chocolate all the time…"@2573
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
b [54]

:[53]
push.s "Hee-Hee~ Chloe’s really been enjoying herself lately. Was that your doing, "@2574
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "? I can tell she’s a lot happier now! I just hope she’s not worrying about her body too much over this. I think she looks fine anyways!"@2575
add.s.v
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.hintline

:[54]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[55]
push.s "Chloeate"@465
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [57]

:[56]
push.s "Kathyate"@473
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
conv.v.b
b [58]

:[57]
push.e 0

:[58]
bf [60]

:[59]
push.s "Both me and Kathy really look up to Chloe, I like to think we’re all friends~ But lately I feel Kathy may not really like me...But maybe I’m just being anxious. Still, I want her to know we’re friends! I was going to get her some of those chocolates she likes~ Nobody loves chocolate as much as Kathy and Chloe!"@2576
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[60]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [62]

:[61]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 12
cmp.i.v LT
b [63]

:[62]
push.e 0

:[63]
bf [65]

:[64]
push.s "You did it "@2577
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "!!! I knew you’d come through for us! You’ve been doing such a good job they’ll be sure to keep you I bet! I hope they do, it’s nice having you around~ What kind of pizza do you like? I’m not too picky, but I do love pineapple pizza! But not everyone else feels the same..."@2578
add.s.v
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.v [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[65]
pushi.e 10
conv.i.v
pushi.e 0
conv.i.v
call.i irandom_range(argc=2)
pop.v.v self.rand
push.v self.rand
pushi.e 10
cmp.i.v EQ
bf [67]

:[66]
push.s "Do you want to go to Applebee's?"@2579
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[67]
push.s "Kathyate"@473
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [72]

:[68]
push.s "PearlateKathy"@2580
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [70]

:[69]
push.s "*BUARP!* I feel a little bad about Kathy...But I'm not spitting her out until she says she's sorry!!!"@2581
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
b [71]

:[70]
push.s "By the way, has anyone seen Kathy?"@2582
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline

:[71]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[72]
push.s "resolvedpearlkathy2"@521
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [74]

:[73]
push.s "I'm sorry you had to get so wrapped up in the drama between me and Kathy...I promise I'm not usually like that! But, I do really appreciate your help~"@2583
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[74]
push.s "How are you settling in by the way? I hope you aren't overwhelmed!"@2584
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
bf [76]

:[75]
pushi.e 1
pop.v.i self.upped
b [77]

:[76]
pushi.e 0
pop.v.i self.upped

:[77]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [102]

:[78]
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [88]

:[79]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [88]

:[80]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [88]

:[81]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [88]

:[82]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [92]

:[83]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [92]

:[84]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [96]

:[85]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [96]

:[86]
b [100]

:[87]
b [101]

:[88]
push.v self.upped
pushi.e 0
cmp.i.v EQ
bf [90]

:[89]
push.s "Everyone works so hard up here. I feel a little guilty, I don’t think I do enough...But I do my best!."@2585
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [91]

:[90]
push.s "*urp* W-Whoops, I kind of overate today..."@2586
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[91]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [101]

:[92]
push.v self.upped
pushi.e 0
cmp.i.v EQ
bf [94]

:[93]
push.s "I-I must confess I’ve been kind of overeating a lot lately. It’s kind of embarrassing. Everyone’s working so hard while I spend so much time stuffing my face...Is it terribly noticeable? "@2587
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [95]

:[94]
push.s "*urp* W-Whoops, I kind of overate today...Is it terribly noticeable?"@2588
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[95]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [101]

:[96]
push.v self.upped
pushi.e 0
cmp.i.v EQ
bf [98]

:[97]
push.s "I-I realize I’ve gotten kind of fat lately...I think the others may have been noticing. I’m not really worried about my body image or anything like that though! I actually kind of like it~ I’m so soft and blubbery~!!! But I feel like I’ve gotten lazy is all."@2589
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [99]

:[98]
push.s "*BUORP*! W-Whoops I ate too much again...It’s just way too easy to snack at your desk. I think the others may have been noticing. I’m not really worried about my body image or anything like that though! I actually kind of like it~ I’m so soft and blubbery~!!! But I feel like I’ve gotten lazy is all. "@2590
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[99]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [101]

:[100]
push.s "**Urp*!? H-Have our desks always been so small by the way? They have? Really??? I-I must have gotten bigger than I realized...D-Do you think you could find the budget to get me a bigger one~? If it’s not too much trouble! "@2591
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [101]

:[101]
popz.v

:[102]
push.l 2
pop.v.l local.v

:[103]
pushloc.v local.v
push.l 10
cmp.l.v LT
bf [108]

:[104]
pushloc.v local.v
push.v self.me
cmp.v.v NEQ
bf [107]

:[105]
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
bf [107]

:[106]
push.s "OOoggh...My stomach isn't too happy with me. I-I don't usually e-eat other monsters..."@2592
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [108]

:[107]
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [103]

:[108]
pushglb.v global.lunch
pushi.e 1
cmp.i.v EQ
bf [114]

:[109]
push.s "cafeslot5"@397
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [111]

:[110]
push.s "servecafeslot5"@405
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [112]

:[111]
push.e 0

:[112]
bf [114]

:[113]
push.s "Were you the one who put ramen back on the menu? Thank you sooo so much!!! It was my favorite thing!!! Though...I tend to overeat a little."@2593
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[114]
push.v self.chatarray
call.i array_length_1d(argc=1)
pop.v.v self.chatlen

:[end]