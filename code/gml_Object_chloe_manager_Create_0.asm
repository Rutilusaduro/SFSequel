.localvar 0 arguments
.localvar 1 i 645
.localvar 2 a 646
.localvar 3 v 649

:[0]
pushi.e 0
pop.v.i self.roommode
pushi.e 0
pop.v.i self.vmode
push.s "listened1"@525
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [3]

:[1]
push.l 2
conv.l.v
call.i trustlvl(argc=1)
pushi.e 2
cmp.i.v GTE
bf [3]

:[2]
pushglb.v global.missedchloe
pushi.e 0
cmp.i.v EQ
b [4]

:[3]
push.e 0

:[4]
bf [6]

:[5]
push.s "chloescene"@474
pop.v.s self.specialscene
b [7]

:[6]
pushi.e 0
pop.v.i self.specialscene

:[7]
pushi.e 3
pop.v.i self.tolerance
pushi.e 8
pop.v.i self.date
push.l 2
pop.v.l self.me
pushi.e 11
conv.i.v
push.v self.y
push.v self.x
call.i instance_create(argc=3)
conv.v.i
pushenv [9]

:[8]
push.v other.me
pop.v.v self.me

:[9]
popenv [8]
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
push.s "seenChloe"@436
pop.v.s self.myseen
push.s "dailyChloe"@446
pop.v.s self.chatkey
push.s "finalchloe"@455
pop.v.s self.datekey
push.s "Always a pleasure to see you~"@2290
pushi.e -1
pushi.e 8
pop.v.s [array]self.intro
push.s "Always a pleasure to see you~"@2290
pushi.e -1
pushi.e 7
pop.v.s [array]self.intro
push.s "Did you need something?"@2291
pushi.e -1
pushi.e 6
pop.v.s [array]self.intro
push.s "Did you need something?"@2291
pushi.e -1
pushi.e 5
pop.v.s [array]self.intro
push.s "Oh? Can I help you?"@2292
pushi.e -1
pushi.e 4
pop.v.s [array]self.intro
push.s "Oh? Can I help you?"@2292
pushi.e -1
pushi.e 3
pop.v.s [array]self.intro
push.s "Hm? What do you want?"@2293
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
push.s " I-I know what I must look like. But I'll be back up on my diet soon! Soon as I finish these brownies that is~"@2294
pushi.e -1
pushi.e 8
pop.v.s [array]self.weightline
push.s " *huff...puff...* Could you possibly get me a snack from the vending? It's such a chore to get around the office lately..."@2295
pushi.e -1
pushi.e 7
pop.v.s [array]self.weightline
push.s " *huff...puff...* Could you possibly get me a snack from the vending? It's such a chore to get around the office lately..."@2295
pushi.e -1
pushi.e 6
pop.v.s [array]self.weightline
push.s " *BUARP!?* W-Whoops..."@2296
pushi.e -1
pushi.e 5
pop.v.s [array]self.weightline
push.s " *BUARP!?* W-Whoops..."@2296
pushi.e -1
pushi.e 4
pop.v.s [array]self.weightline
push.s " *urp* I-I know I've been letting my diet slide just a tad recently. It's okay to have a cheat day every now and again."@2297
pushi.e -1
pushi.e 3
pop.v.s [array]self.weightline
push.s " *urp*"@2298
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
push.s "You're giving me a gift?"@2299
pop.v.s self.introgift
push.s "Oh! For me? Really?"@2300
pop.v.s self.likegift
push.s "Ah...Thanks. (I don't think she liked it...)"@2301
pop.v.s self.badgift
push.s "Didn't you give me one of these earlier?"@2302
pop.v.s self.likedhadit
push.s "I don't like this any better the second time..."@2303
pop.v.s self.badhadit
push.s "O-Oof! I really shouldn't eat so much in a day. But I do love these..."@2304
pop.v.s self.fulllike
push.s "Ung...I really don't want this right now."@2305
pop.v.s self.fullbad
push.s "I-I really shouldn't have any more of these..."@2306
pop.v.s self.fullhadit
push.s "Urk!? I really can't stand even looking at that right now..."@2307
pop.v.s self.fullbadhadit
push.s "Hm? Oh. No offense, but no."@2308
pop.v.s self.rejecttxt
push.s "Hm? Oh? I suppose I have time."@2309
pop.v.s self.accepttxt
push.s "Actually...if you're offering. I know this great place in town! It's not exactly good for my diet so I've not gone in a while. But I feel like today wouldn't be a bad cheat day~ If you're interested, of course."@2310
pop.v.s self.speciallunch
push.s "I don't really have any more time to talk today."@2311
pop.v.s self.nomorechat
push.s "I figure you deserve something for a job well done."@2312
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
bt [18]

:[10]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [18]

:[11]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [18]

:[12]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [18]

:[13]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [18]

:[14]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [19]

:[15]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [19]

:[16]
b [20]

:[17]
b [21]

:[18]
push.s "Oh...I guess I have some time. But I don't like to chat long."@2313
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [21]

:[19]
push.s "Oh...I have some time. I don't mind if it's with you."@2314
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [21]

:[20]
push.s "You know, getting to talk to you is probably the best part of my day."@2315
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [21]

:[21]
popz.v
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 5
cmp.i.v EQ
bf [31]

:[22]
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
bt [26]

:[23]
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
bt [26]

:[24]
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
bt [26]

:[25]
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
b [27]

:[26]
push.e 1

:[27]
bf [29]

:[28]
push.s "I couldn’t help but steal a slice. It’s so horrible for my diet I’m so weak to chocolate..."@2316
pop.v.s self.cakecomment
b [30]

:[29]
push.s ""@150
pop.v.s self.cakecomment

:[30]
push.s "Well? Was the cake satisfactory? Sorry if I’m not properly congratulatory for a birthday. Never had one. "@2318
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
b [54]

:[31]
push.s "airscene"@361
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [34]

:[32]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [34]

:[33]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v LT
b [35]

:[34]
push.e 0

:[35]
bf [37]

:[36]
push.s "I don’t mind the heat, but I’ve been swamped with so many complaints about the damn air I’m going to scream! You. Fix this. I know the boss is more focused on his stupid party but if you know what’s good for you, you’ll figure the air out first. He can’t fire you if you get him at least one damn pizza."@2319
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [54]

:[37]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 10
cmp.i.v EQ
bf [54]

:[38]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [49]

:[39]
push.l 69
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
bt [41]

:[40]
push.l 70
conv.l.v
pushglb.v global.pizzalist
call.i ds_list_find_index(argc=2)
pushi.e -1
cmp.i.v NEQ
b [42]

:[41]
push.e 1

:[42]
bf [44]

:[43]
push.s "I see you got one of my favorites. Oh it’s so horribly fattening...but I’ll let myself have a slice. Just this once!"@2320
pop.v.s self.pizzacomment
b [45]

:[44]
push.s ""@150
pop.v.s self.pizzacomment

:[45]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [47]

:[46]
push.s "Huh, you actually did it all. A pizza party in reasonable conditions. Can’t say I’m not impressed. Maybe you are a keeper after all."@2322
push.v self.pizzacomment
add.v.s
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.v [array]self.chatarray
b [48]

:[47]
push.s "How. The actual. Hell. Did you mess this up. Yes, you fixed the air of course, I appreciate that and so does the staff. But now I’m going to be hearing it from the boss for weeks!!! You do realize you’re going to be fired over this, right?"@2323
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[48]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[49]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [54]

:[50]
pushglb.v global.pizzalist
call.i ds_list_empty(argc=1)
conv.v.b
not.b
bf [52]

:[51]
push.s "Well the air is still miserable...But at least the boss gets his pizza. I don’t really blame you for trying to placate the kaiju that employs you, but if I get one more email? I’m making some family calls."@2324
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [53]

:[52]
push.s "How. The actual. Hell. Did you get *nothing* accomplished??? You do realize you’re going to be fired over this, right?"@2325
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
pushi.e 0
pop.v.i local.a
push.s "Stacyate"@466
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [56]

:[55]
push.s "Stacy’s blood lust (‘liquid diet’ she calls it) is making my job a nightmare. I don’t know how she keeps going around getting away with it on our human clients. Lord knows how they’ve survived this long. I’d appreciate if you could find some other blood source for her to sink her teeth into. Didn’t ‘Ener-gee Soda’ recently make a blood flavor? I don’t want to think about how they’re doing it…"@2326
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[56]
push.s "Kathyate"@473
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
bf [58]

:[57]
push.s "Pearlate"@469
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 0
cmp.i.v EQ
b [59]

:[58]
push.e 0

:[59]
bf [61]

:[60]
push.s "Kathy and Pearl seem to look up to me, so I do my best for them. But I wish I had more time to spend with them, but I’m too busy. I know they both love cutesy pink stuff, to be honest I don’t get it. It’s a bit too immature for my tastes. But I’d still like to get them something sometime…"@2327
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[61]
push.s "airpaid"@435
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [63]

:[62]
push.s "day"@340
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 12
cmp.i.v LT
b [64]

:[63]
push.e 0

:[64]
bf [66]

:[65]
push.s "Wow, you fixed the air? I’m impressed, that’s no small bill. But don’t mess up this party now. I’m sure everyone will tell you what they want if you ask. Me? I used to love their chocolate dessert pizza~ But no way in hell can I have that now. I’m on my diet!"@2328
pushi.e -1
pushloc.v local.a
conv.v.i
pop.v.s [array]self.hintline
push.v local.a
push.e 1
add.i.v
pop.v.v local.a

:[66]
push.s "By the way, have you seen a spraybottle labeled 'constructive criticism' around anywhere? Kathy must have hidden it again..."@2329
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
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 8
cmp.i.v GTE
bf [70]

:[67]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v GTE
bf [69]

:[68]
push.s "You’ve...been making quite an impression around here you know."@2330
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[69]
b [77]

:[70]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 5
cmp.i.v GTE
bf [74]

:[71]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v GTE
bf [73]

:[72]
push.s "How long has it been since we hired you again? Only that long??? Why? No reason..."@2331
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[73]
b [77]

:[74]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 3
cmp.i.v GTE
bf [77]

:[75]
push.l 2
conv.l.v
push.l 0
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
push.l 2
conv.l.v
push.l 2
conv.l.v
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
cmp.v.v GTE
bf [77]

:[76]
push.s "Hm...how to put this without being rude? I have some dieting tips for you if you’d like?"@2332
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[77]
push.l 13
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 1
cmp.i.v EQ
bf [79]

:[78]
pushi.e 1
pop.v.i self.upped
b [80]

:[79]
pushi.e 0
pop.v.i self.upped

:[80]
push.l 7
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
pushi.e 0
cmp.i.v EQ
bf [109]

:[81]
push.s "adding weight comment"@2333
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.l 2
conv.l.v
push.v self.me
pushglb.v global.statgrid
call.i ds_grid_get(argc=3)
dup.v 0
pushi.e 0
cmp.i.v EQ
bt [91]

:[82]
dup.v 0
pushi.e 1
cmp.i.v EQ
bt [91]

:[83]
dup.v 0
pushi.e 2
cmp.i.v EQ
bt [95]

:[84]
dup.v 0
pushi.e 3
cmp.i.v EQ
bt [95]

:[85]
dup.v 0
pushi.e 4
cmp.i.v EQ
bt [99]

:[86]
dup.v 0
pushi.e 5
cmp.i.v EQ
bt [99]

:[87]
dup.v 0
pushi.e 6
cmp.i.v EQ
bt [103]

:[88]
dup.v 0
pushi.e 7
cmp.i.v EQ
bt [103]

:[89]
b [107]

:[90]
b [108]

:[91]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [93]

:[92]
push.s "I've been working on a strict diet lately you know. Some days you got to let yourself go a little bit though, right? Don’t think this means I’m giving up."@2334
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [94]

:[93]
push.s "I've been working on a strict diet lately you know. I'm determined to stick to it, I used to miss a whole lot of foods starting off. But I don't as much anymore. You start to get over it."@2256
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[94]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [108]

:[95]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [97]

:[96]
push.s "Ungh...I’ve been really off track on my diet lately. Today’s the last day I let myself pig out like this. Seriously."@2335
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [98]

:[97]
push.s "Ungh, I let my diet slip for just one second and look what happens. I’m going to have to be more serious than ever."@2336
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[98]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [108]

:[99]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [101]

:[100]
push.s "Ungh. I’ve totally fallen of my diet, it’s so embarrassing!!! And now I’ve gone and pigged out again all day! Lord, I wonder what the others think..."@2337
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [102]

:[101]
push.s "Ungh. I’ve totally fallen of my diet, it’s so embarrassing!!! I can barely fit my skirts! Lord, I wonder what the others think..."@2338
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[102]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [108]

:[103]
push.v self.upped
pushi.e 1
cmp.i.v EQ
bf [105]

:[104]
push.s "I can’t believe how huge I’ve let myself get! I’m supposed to be dieting!!! Feels like all I do now is just eat. *urp!?* I can’t keep stuffing myself silly like this every day!"@2339
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
b [106]

:[105]
push.s "I can’t believe how huge I’ve let myself get! I’m supposed to be dieting!!! Shows how well that’s going. I swear I’m getting a grip on my eating...soon. "@2340
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray

:[106]
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [108]

:[107]
push.s "*BUARP!?* Oh this is so embarrassing, I’m a total blimp! I can’t believe how fast I fell off my diet!? I’m just a massive blob now...So, really there’s no harm in eating as much chocolate as I can stand anymore! I mean, it doesn’t get any worse than this, right? Hmm~ It’s actually kind of nice. Freeing, even? Maybe I like being fat after all~? "@2341
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [108]

:[108]
popz.v

:[109]
push.l 2
pop.v.l local.v

:[110]
pushloc.v local.v
push.l 10
cmp.l.v LT
bf [115]

:[111]
pushloc.v local.v
push.v self.me
cmp.v.v NEQ
bf [114]

:[112]
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
call.i show_debug_message(argc=1)
popz.v
push.v self.keystring
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [114]

:[113]
push.s "Ungh...I can't keep eating my problems like this. Look at me!? *BUORP* Not to mention the paperwork it accrues."@2342
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i
b [115]

:[114]
push.v local.v
push.e 1
add.i.v
pop.v.v local.v
b [110]

:[115]
pushglb.v global.lunch
pushi.e 1
cmp.i.v EQ
bf [121]

:[116]
push.s "cafeslot2"@394
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
bf [118]

:[117]
push.s "servecafeslot2"@402
conv.s.v
pushglb.v global.events
call.i ds_map_find_value(argc=2)
pushi.e 1
cmp.i.v EQ
b [119]

:[118]
push.e 0

:[119]
bf [121]

:[120]
push.s "*BUORP!?* I cannot believe they put those fudgy brownies back in the cafe! It's so horrible for my figure, I can't resist!"@2343
pushi.e -1
pushloc.v local.i
conv.v.i
pop.v.s [array]self.chatarray
push.v local.i
push.e 1
add.i.v
pop.v.v local.i

:[121]
push.v self.chatarray
call.i array_length_1d(argc=1)
pop.v.v self.chatlen
push.s "inital chat length"@2344
conv.s.v
call.i show_debug_message(argc=1)
popz.v
push.v self.chatlen
call.i show_debug_message(argc=1)
popz.v

:[end]