.localvar 0 arguments
.localvar 1 i 684
.localvar 2 a 685
.localvar 3 v 686

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
push.s "seenclue"@529
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "confrontedkathy1"@533
pop.v.s self.specialscene
b [3]

:[2]
pushi.e 0
pop.v.i self.specialscene

:[3]
pushi.e 2
pop.v.i self.tolerance
pushi.e 7
pop.v.i self.date
push.l 6
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
push.s "seenKathy"@443
pop.v.s self.myseen
push.s "dailyKathy"@453
pop.v.s self.chatkey
push.s "finalkathy"@462
pop.v.s self.datekey
push.s "Mrow...You really like coming around to see me, don'cha~? >;3c"@2645
pushi.e -1
pushi.e 8
pop.v.s [array]self.intro
push.s "Purr-fect timing~ I just finished my break and I needed another!"@2646
pushi.e -1
pushi.e 7
pop.v.s [array]self.intro
push.s "Purr-fect timing~ I just finished my break and I needed another!"@2646
pushi.e -1
pushi.e 6
pop.v.s [array]self.intro
push.s "Come by to see me? Good. I don't wanna work either! >:3"@2647
pushi.e -1
pushi.e 5
pop.v.s [array]self.intro
push.s "Come by to see me? Good. I don't wanna work either! >:3"@2647
pushi.e -1
pushi.e 4
pop.v.s [array]self.intro
push.s "Shouldn't you be working~?"@2648
pushi.e -1
pushi.e 3
pop.v.s [array]self.intro
push.s "Shouldn't you be working~?"@2648
pushi.e -1
pushi.e 2
pop.v.s [array]self.intro
push.s "What's up? >:3c"@2649
pushi.e -1
pushi.e 1
pop.v.s [array]self.intro
push.s "What's up? >:3c"@2649
pushi.e -1
pushi.e 0
pop.v.s [array]self.intro
push.s "*BUARP!?* Hey since you're here how about getting me that treat bag I dropped? It's too far to reach..."@2650
pushi.e -1
pushi.e 8
pop.v.s [array]self.weightline
push.s "*pant**pant* Actually, snack-guy, I'm glad you're here! I'm starving!!!"@2651
pushi.e -1
pushi.e 7
pop.v.s [array]self.weightline
push.s "*pant**pant* Actually, snack-guy, I'm glad you're here! I'm starving!!!"@2651
pushi.e -1
pushi.e 6
pop.v.s [array]self.weightline
push.s "I think purr-haps I might have gotten a liiiitle fat..."@2652
pushi.e -1
pushi.e 5
pop.v.s [array]self.weightline
push.s "I think purr-haps I might have gotten a liiiitle chubby..."@2653
pushi.e -1
pushi.e 4
pop.v.s [array]self.weightline
push.s "What? I've just gotten fluffier lately."@2654
pushi.e -1
pushi.e 3
pop.v.s [array]self.weightline
push.s "What? I've just gotten fluffier lately."@2654
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
push.s "Got something for me-ow~?"@2655
pop.v.s self.introgift
push.s "Oh wow it's purr-fect~!!!"@2656
pop.v.s self.likegift
push.s "I don't like this."@2657
pop.v.s self.badgift
push.s "You already gave me one of these~!"@2658
pop.v.s self.likedhadit
push.s "I still don't like this."@2659
pop.v.s self.badhadit
push.s "*Urp!* Gimme!"@2660
pop.v.s self.fulllike
push.s "*Urp!?* This isn't really what I wanted..."@2661
pop.v.s self.fullbad
push.s "H-How much me-ore you got!?"@2662
pop.v.s self.fullhadit
push.s "I'm gonna barf if I gotta eat that."@2663
pop.v.s self.fullbadhadit
push.s "Sorry. But I only really like to eat lunch with monsters I know a little better."@2664
pop.v.s self.rejecttxt
push.s "Luch? Course I'd love to~!"@2665
pop.v.s self.accepttxt
push.s "Actually, if you're offering~ I'm tired of the cafeteria. Let's go somewhere else~!!!"@2666
pop.v.s self.speciallunch
push.s "I'm done talking wtih 'mew' today. >:3"@2667
pop.v.s self.nomorechat
push.s "I got you a present. Even though I'm super hungry. So be grateful~ >:3c"@2668
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
push.s "M'wat? Do I look like I got time to kill?"@2669
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
push.s "I guess I can find time for 'mew'~ >;3"@2670
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
push.s "You always know when to swing by and give me an excuse to stop working~ >:3c"@2671
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
bf [19]

:[18]
push.s "What!? *BUArp* What's that look for hmmm???"@2672
pop.v.s self.hyptext
b [20]

:[19]
push.s ""@150
pop.v.s self.hyptext

:[20]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [22]

:[21]
push.s "What happened to the new guy!? Who's this blob!? Did'ja EAT them??? >:3c "@2673
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
b [26]

:[22]
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
push.s "Holy shit. You get fatter every day I see you. How many chins does a monster need??? "@2674
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
b [26]

:[24]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [26]

:[25]
push.s "Wow. You've already gotten fat haven't you~? "@2675
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

:[26]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [36]

:[27]
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
bt [31]

:[28]
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
bt [31]

:[29]
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
bt [31]

:[30]
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
b [32]

:[31]
push.e 1

:[32]
bf [34]

:[33]
push.s "I heard you got my favorite! Better get yourself a slice because the rest is *mine*~!!!"@2676
pop.v.s self.cakecomment
b [35]

:[34]
push.s ""@150
pop.v.s self.cakecomment

:[35]
push.s "Happy birthday!!! What kind of cake did’ja get~? Something good I hope. Bring me a slice for testing~ >:3c. "@2677
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

:[36]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [39]

:[37]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [39]

:[38]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 12
cmp.i.v LT
b [40]

:[39]
push.e 0

:[40]
bf [42]

:[41]
push.s "*pant pant* Oh yeah, hey...fix the damn air."@2678
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [59]

:[42]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [59]

:[43]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [54]

:[44]
push.l 69
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [46]

:[45]
push.l 70
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [47]

:[46]
push.e 1

:[47]
bf [49]

:[48]
push.s "Oh you did? Purrfect~!!! Bring me some."@2679
pop.v.s self.pizzacomment
b [50]

:[49]
push.s ""@150
pop.v.s self.pizzacomment

:[50]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [52]

:[51]
push.s "I can’t believe you did it!!! No really, I didn’t expect you could. But I’m glad you did~ I hope you got the kind I asked for! Else you’re gonna regret it! >:3c "@2680
push.v self.pizzacomment
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
b [53]

:[52]
push.s "Where the heck is our pizza!? I hope the boss eats you~ >:3c"@2681
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[53]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[54]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [59]

:[55]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [57]

:[56]
push.s "*Pant Pant* GREAT. Now it’s gonna stink of pizza in this gross air we’ve had for a WEEK!!! You’re going to make me HATE pizza! You monster!!!."@2682
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [58]

:[57]
push.s "*Pant Pant* I don’t understand how you could fuck up your job this bad??? I hope the boss eats you~ >:3c"@2683
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[58]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[59]
pushi.e 0
pop.v.i local.a
push.s "Jesseate"@470
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [61]

:[60]
push.s "Vicate"@2684
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [62]

:[61]
push.e 0

:[62]
bf [64]

:[63]
push.s "Jesse and Vic are always at each other’s throats. I don’t really like either of them, I mean, I don’t really like anyone here. But I reeeally don’t like Jesse. I dunno, maybe it’s just cuz she’s a dog? She’s just way too peppy too early in the morning for me. And she likes all that cinnamon spice stuff and salty crunchy chips I hate it! They stink!"@2685
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[64]
push.s "Chloeate"@465
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [69]

:[65]
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushglb.v global.commentweight
cmp.v.v LT
bf [67]

:[66]
push.s "Chloe can be kind of a bitch, but I like that about her~ She’s probably the only purr-son here I like. But she’s been kind of a bummer since she started her ‘diet’. But I know how she is, it won’t last~ She’ll get one wiff of chocolate and then there’ll be no stopping her! I’ve been planning on sneaking her some snacks later >:3c"@2686
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
b [68]

:[67]
push.s "Have you *seen* Chloe lately~? What’d I say? She’s an unstoppable eating machine!!! Better stay out of her way if you don’t want to get eaten up too >:3c"@2687
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline

:[68]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[69]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [71]

:[70]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v LT
b [72]

:[71]
push.e 0

:[72]
bf [74]

:[73]
push.s "You did it!!! Good. I was just gonna stay home if I had to spend one more day breathing the same gross air. Meow then~ I want pepperoni! And that chocolate dessert pizza they have! Don’t dissa-paw-nt me~ ;3"@2688
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[74]
push.s "Pearlate"@469
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [79]

:[75]
push.s "KathyatePearl"@2689
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [77]

:[76]
push.s "*BUARP!* No I don't feel like giving Pearl back. >:3c She can stay in there for all I care!"@2690
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
b [78]

:[77]
push.s "By the way? Has anyone seen Pearl?"@2691
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline

:[78]
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[79]
push.s "resolvedpearlkathy2"@521
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.s "By the way, you don't need to be such a pushover all the time. Sticking your nose into other people's business...But, I guess I appreciate what you've done lately. Me and Pearl aren't fighting as much."@2692
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[81]
push.s "Sometimes, I like to cause problems on purr-pose~ >:3c"@2693
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
bf [83]

:[82]
pushi.e 1
pop.v.i self.upped
b [84]

:[83]
pushi.e 0
pop.v.i self.upped

:[84]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [113]

:[85]
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [95]

:[86]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [95]

:[87]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [99]

:[88]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [99]

:[89]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [103]

:[90]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [103]

:[91]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [107]

:[92]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [107]

:[93]
b [111]

:[94]
b [112]

:[95]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
push.s "I can’t wait to get out of here and grab some food, I’m starving! I haven’t eaten since YESTERDAY. *urp*"@2694
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [98]

:[97]
push.s "Man, nobody knows how to have any fun around here! Nobody but me, anyways. What Chloe doesn’t know won’t hurt her~"@2695
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[98]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [112]

:[99]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.s "*urp* Oof, I just got back from the break room. Keeping things lively sure is hard work! Everyone is so lucky to have me."@2696
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [102]

:[101]
push.s "I found a GREAT way to make a little bit of harmless trouble - clearing out the break room! You should SEE their faces when they walk in and there isn’t anything left. HILARIOUS!"@2697
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[102]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [112]

:[103]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
push.s "I don’t know WHO is in charge of stocking the fridges around here, but they need to shape up! Every day I leave the office STARVING."@2698
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [106]

:[105]
push.s "I don’t know WHO is in charge of stocking the fridges around here, but they need to shape up! Mmf… Look at me, I’m WASTING AWAY!"@2699
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[106]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [112]

:[107]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [109]

:[108]
push.s "You know what I just found out?! One of the interns has been HOARDING FOOD while I slave away at my desk! Don’t bother looking for any missing snacks, I took care of it. *BOARP*"@2700
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [110]

:[109]
push.s "Urgh… do you think I could get one of the interns to grab me some snacks? It’s been getting hard to grab them on my own. I really think I’d be more productive if I got to eat more~ "@2701
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[110]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [112]

:[111]
push.s "Hm. You know, I was a bit worried about not being able to grab my own food, buuUUUURP! ‘Scuse me. But the office has been pretty good at taking care of that for me! Still, there’s always room for another dinner... "@2702
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [112]

:[112]
popz.v

:[113]
push.l 2
pop.v.l local.v

:[114]
pushloc.v local.v
push.l 10
cmp.l.v LT
bf [119]

:[115]
pushloc.v local.v
push.v self.me
cmp.v.v NEQ
bf [118]

:[116]
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
bf [118]

:[117]
push.s "*BUUUUARP* Ungh. Why does anything alive have to squirm so much. It's not even that big a deal!? I'm the one who has to get fat about it anyways."@2703
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [119]

:[118]
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [114]

:[119]
pushglb.v global.lunch
pushi.e 1
cmp.i.v EQ
bf [125]

:[120]
push.s "cafeslot1"@393
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [122]

:[121]
push.s "servecafeslot1"@401
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [123]

:[122]
push.e 0

:[123]
bf [125]

:[124]
push.s "Did'ja hear? They put shrimp and lobster back on the cafe men-mew~!!! Now I can eat all I want!!!"@2704
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[125]
push.v self.chatarray
call.i array_length_1d(argc=1)
pop.v.v self.chatlen

:[end]