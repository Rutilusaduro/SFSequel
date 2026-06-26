.localvar 0 arguments
.localvar 1 i 679
.localvar 2 a 680
.localvar 3 v 681

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
push.s "kathyconfess"@534
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [2]

:[1]
push.s "mysterysolved"@535
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
push.l 7
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
push.s "seenJesse"@444
pop.v.s self.myseen
push.s "dailyJesse"@454
pop.v.s self.chatkey
push.s "finaljesse"@463
pop.v.s self.datekey
push.s "It really means a lot that you always find time to come by an' see me~"@2594
pushi.e -1
pushi.e 8
pop.v.s [array]self.intro
push.s "Hey pal! Always a pleasure to have you around~"@2595
pushi.e -1
pushi.e 7
pop.v.s [array]self.intro
push.s "Hey pal! Always a pleasure to have you around~"@2595
pushi.e -1
pushi.e 6
pop.v.s [array]self.intro
push.s "Come on in pal! Waste a lil' time with me~"@2596
pushi.e -1
pushi.e 5
pop.v.s [array]self.intro
push.s "Come on in pal! Waste a lil' time with me~"@2596
pushi.e -1
pushi.e 4
pop.v.s [array]self.intro
push.s "Always good to see ya~! Hardly working~?"@2597
pushi.e -1
pushi.e 3
pop.v.s [array]self.intro
push.s "Always good to see ya~! Hardly working~?"@2597
pushi.e -1
pushi.e 2
pop.v.s [array]self.intro
push.s "Howdy!"@2598
pushi.e -1
pushi.e 1
pop.v.s [array]self.intro
push.s "Howdy!"@2598
pushi.e -1
pushi.e 0
pop.v.s [array]self.intro
push.s "*pant* *pant* You know I really appreciate how much effort you put into your job for us~ But I bet that's obvious huh?"@2599
pushi.e -1
pushi.e 8
pop.v.s [array]self.weightline
push.s "*Buarp* Might wanna watch where you're standin'. This belt's likely to pop any moment now!"@2600
pushi.e -1
pushi.e 7
pop.v.s [array]self.weightline
push.s "*Buarp* Might wanna watch where you're standin'. This belt's likely to pop any moment now!"@2600
pushi.e -1
pushi.e 6
pop.v.s [array]self.weightline
push.s "Woof! I can't deny I don't gotta lot of willpower 'round work lately."@2601
pushi.e -1
pushi.e 5
pop.v.s [array]self.weightline
push.s "Woof! I can't deny I don't gotta lot of willpower 'round work lately."@2601
pushi.e -1
pushi.e 4
pop.v.s [array]self.weightline
push.s "You're the one in charge of snacks right? Keep up the good work~"@2602
pushi.e -1
pushi.e 3
pop.v.s [array]self.weightline
push.s "You're the one in charge of snacks right? You really got your work cut out for you, bud~"@2603
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
push.s "Got somethin' for me?"@2604
pop.v.s self.introgift
push.s "Oh my goodness can I really have this!? Thank you!!!"@2549
pop.v.s self.likegift
push.s "Eh, well...It's the thought that counts~ (She's being sweet, but I don't think she liked it...)"@2605
pop.v.s self.badgift
push.s "Ain't this what you got me before~?"@2606
pop.v.s self.likedhadit
push.s "Um...I'm sorry but I don't think I like this any better the second time..."@2552
pop.v.s self.badhadit
push.s "What? You tryin to fatten me up or somethin'~? I ain't complainin'!"@2607
pop.v.s self.fulllike
push.s "Oof..Sorry. I-I don't think I could eat this right now."@2554
pop.v.s self.fullbad
push.s "*BUUARP!?* More!? When do ya think I've had enough!?"@2608
pop.v.s self.fullhadit
push.s "*BUUARP!?* U-Ungh...I'm real sorry I'm gonna need you to get that outta my face."@2609
pop.v.s self.fullbadhadit
push.s "Sorry, but I only really like to eat lunch with folks I know a lil' better..."@2610
pop.v.s self.rejecttxt
push.s "Luch!? Course I'd love to~!"@2611
pop.v.s self.accepttxt
push.s "Actually, if yer interested~ I know a GREAT joint in town we could go to instead! Wanna check it out~?"@2612
pop.v.s self.speciallunch
push.s "Sorry pal. I gotta do some actaul work now~"@2613
pop.v.s self.nomorechat
push.s "Got you something fer once. Don't say I never do nothin' for you now~"@2614
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
push.s "I got some time for ya. But not much!"@2615
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
push.s "Yeah I got some time to kill~"@2616
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
push.s "I'm surprised you still come around so often just for me to talk yer ear off~"@2617
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
pushi.e 8
cmp.i.v GTE
bf [19]

:[18]
push.s "Heavens to Betsy, "@2618
push.l 1
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
add.v.s
push.s "!? Were'd all this extra you come from so suddenly!?"@2619
add.s.v
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [23]

:[19]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 5
cmp.i.v GTE
bf [21]

:[20]
push.s "Goodness! You do more eatin' or working 'round here? I'd say watch the snacks if ya wanna be wearin that same shirt tomorrow~"@2620
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [23]

:[21]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 3
cmp.i.v GTE
bf [23]

:[22]
push.s "Gettin' a bit chubby at your new desk job, aren't ya~? Sneaks up on ya real quick if you don't watch it."@2621
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[23]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [33]

:[24]
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
bt [28]

:[25]
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
bt [28]

:[26]
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
bt [28]

:[27]
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
b [29]

:[28]
push.e 1

:[29]
bf [31]

:[30]
push.s "Heard you got my favorite kind, too! You’re gonna have to race me to the breakroom~"@2622
pop.v.s self.cakecomment
b [32]

:[31]
push.s ""@150
pop.v.s self.cakecomment

:[32]
push.s "HAPPY BIRTHDAY!!! Doesn’t need to be your actual birthday yet for some cake! Better get your slices while you can! Cuz I’m about to go snag me some~ "@2623
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
b [56]

:[33]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [36]

:[34]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [36]

:[35]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v LT
b [37]

:[36]
push.e 0

:[37]
bf [39]

:[38]
push.s "*pant pant* Ya know what it’s like wearin’ a fur coat in this kind of air? It ain’t fun. You need to fix this real quick!!!"@2624
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [56]

:[39]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [56]

:[40]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [51]

:[41]
push.l 69
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [43]

:[42]
push.l 70
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [44]

:[43]
push.e 1

:[44]
bf [46]

:[45]
push.s "Hot dog! You got my favorite too!!! Just keep knocking it out of the park, bud~"@2625
pop.v.s self.pizzacomment
b [47]

:[46]
push.s ""@150
pop.v.s self.pizzacomment

:[47]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [49]

:[48]
push.s "Woo-ee~!!! Gotta say after a week like this can’t WAIT for some good, hot, greasy pizza! I wanna thank ya for pulling this all off I know it couldn’ta been easy~"@2626
push.v self.pizzacomment
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
b [50]

:[49]
push.s "Woof...Don’t know how to tell you you really boned this one dude. I know you tried yer best and got the air fixed for us but the boss sure does love his pizza..."@2627
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[50]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[51]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [56]

:[52]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [54]

:[53]
push.s "*Pant* *Wheeze* Dude...I ain’t gonna lie I don’t think I can really get into a pizza party right now with the air like this."@2628
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [55]

:[54]
push.s "*Pant Pant* Woof, don’t know how to tell you you really blew it. I know you maybe tried but c’mon...Surely you could have done better than this?"@2629
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
pushi.e 0
pop.v.i local.a
push.s "Victoriaate"@467
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.s "Now I try my best to be hospitable to everyone ‘round here. Professional, ya know? But man I just don’t *get* Vic??? She’s just too cynical for my tastes. But I learned we both love the same kind of salty chips though. At least there’s some kind of common ground there..."@2630
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[58]
push.s "Pearlate"@469
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [60]

:[59]
push.s "Pearl’s a real sweetheart~ But I worry ‘bout her. She stresses so much that she ain’t pullin’ her weight, but she works harder than the rest of us put together! But she won’t believe it if you try to tell her. I do what I can to be nice to her tho, I learned she loves ‘magic’ flavor? What the heck does that even mean??? But if I find it I’ll be sure to give her some for her troubles~"@2631
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
push.s "Ya did it, pal!!! I knew ya would come through for us~ Now I can actually look forward to some pizza! I love that spicy pepper pizza they got, think you could hook us up with some of that~? "@2632
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[65]
push.s "I don' mean to be rude but I gotta ask: Why's yer head like that?"@2633
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
bf [67]

:[66]
pushi.e 1
pop.v.i self.upped
b [68]

:[67]
pushi.e 0
pop.v.i self.upped

:[68]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [97]

:[69]
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [79]

:[70]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [79]

:[71]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [83]

:[72]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [83]

:[73]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [87]

:[74]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [87]

:[75]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [91]

:[76]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [91]

:[77]
b [95]

:[78]
b [96]

:[79]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [81]

:[80]
push.s "*urp* Oh yeah, I’m feeling alright, bless your little heart. Just had a bit too much to eat. I hear folks say there’s ‘too much of a good thing’, but I ain’t found it yet!"@2634
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [82]

:[81]
push.s "Keepin’ yer head above the water yet, rookie? This here office is real active, so make sure ya don’t get lost in the ruckus, hear?"@2635
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[82]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [96]

:[83]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [85]

:[84]
push.s "*urp* Pardon, sugar plum. I’ll admit I’ve never been one for restraint, and i’ve been samplin’ the local delicacies with gusto."@2636
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [86]

:[85]
push.s "Whoops! Almost knocked ya over there. Ya gotta watch where you’re goin’, or a big girl’s liable to knock ya flat on your back!"@2637
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[86]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [96]

:[87]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [89]

:[88]
push.s "Oof, I might have overindulged a tad. Now, my heart will always be back home in Mama’s little kitchen, but DANG, y’all make some good food round these parts!"@2638
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [90]

:[89]
push.s "Y’know, I was tryin’ to get dressed this morning when I realised I’ve gotten a whole heap of a lot bigger than my year’s high school quarterback. You know what they say, more to love!"@2639
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[90]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [96]

:[91]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [93]

:[92]
push.s "Look at me, I’m gettin’ fat as a tick! *URP* Good thing these suits are easy to size up, I ain’t much of one for pickin’ out a wardrobe from scratch."@2640
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [94]

:[93]
push.s "Now I’ve been told I couldn’t find my ass if I had both hands in my back pockets, but somehow I’ve been finding my ass just about everywhere else!"@2641
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[94]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [96]

:[95]
push.s "*BUORP* Coo-ee, I’m wider than a barn by now! Who woulda guessed it. Good thing the ladies love a big hunk ‘o fluff such as myself."@2642
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [96]

:[96]
popz.v

:[97]
push.l 2
pop.v.l local.v

:[98]
pushloc.v local.v
push.l 10
cmp.l.v LT
bf [103]

:[99]
pushloc.v local.v
push.v self.me
cmp.v.v NEQ
bf [102]

:[100]
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
bf [102]

:[101]
push.s "*BUUARP* It's been a while since I've had a meal like that. Makes me miss it~"@2643
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [103]

:[102]
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [98]

:[103]
pushglb.v global.lunch
pushi.e 1
cmp.i.v EQ
bf [109]

:[104]
push.s "cafeslot6"@398
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [106]

:[105]
push.s "servecafeslot6"@406
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [107]

:[106]
push.e 0

:[107]
bf [109]

:[108]
push.s "Did you bring burgers back to the menu newbie? Are ya tryin' to fatten me up or what~?"@2644
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[109]
push.v self.chatarray
call.i array_length_1d(argc=1)
pop.v.v self.chatlen

:[end]