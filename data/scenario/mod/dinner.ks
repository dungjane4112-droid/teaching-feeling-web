;;========script_by_ichibikun============
*lunch
[eval exp="f.din_a2=0"]
[cm][black][eval exp="f.lunch_night='yet'"]
[eval exp="f.lunch_menux='non'"]
[eval exp="f.lunch_menu='non'"]
#
Trời cũng đã tối rồi, chúng tôi sẽ cùng làm bữa tối.[p_]
[bg time="1" method="crossfade" storage="bg/db-a-f.jpg" ]
[chara_mod  name="window"  time="1"  storage="o/win/food-win.png" ]
[chara_show name="window" time="1" wait="true" left="806" top="33" zindex=185 ]
[jump target="*menu1"]

*menu1
[cm]
Nên làm món gì đây?
[button  target="*menu1"  graphic="number/1-.png"  x="985" y="75" ]
[button  target="*menu2"  graphic="number/2.png"  x="1035" y="75" ]
[button  target="*menu3"  graphic="number/3.png"  x="1085" y="75" ]
[button  target="*out"  graphic="lunch/out.png"  x="1145" y="75" ]
[button  target="*carbonara"  graphic="lunch/carbonara.png"  x="832" y="155" ]
[button  target="*pancake"  graphic="lunch/pancake.png"  x="832" y="225" ]
[button  target="*gratin"  graphic="lunch/gratin.png"  x="832" y="295" ]
[button  target="*rollcabbage"  graphic="lunch/rollcabbage.png"  x="832" y="365" ]
[button  target="*sand"  graphic="lunch/sand.png"  x="832" y="435" ]
[button  target="*meetsauce"  graphic="lunch/meetsauce.png"  x="832" y="505" ]
[s ]

*menu2
[cm]
Nên làm món gì đây?
[button  target="*menu1"  graphic="number/1.png"  x="985" y="75" ]
[button  target="*menu2"  graphic="number/2-.png"  x="1035" y="75" ]
[button  target="*menu3"  graphic="number/3.png"  x="1085" y="75" ]
[button  target="*out"  graphic="lunch/out.png"  x="1145" y="75" ]
[button  target="*french"  graphic="lunch/french.png"  x="832" y="155" ]
[button  target="*cake"  graphic="lunch/cake.png"  x="832" y="225" ]
[button  target="*ch-cake"  graphic="lunch/ch-cake.png"  x="832" y="295" ]
[button  target="*pudding"  graphic="lunch/pudding.png"  x="832" y="365" ]
[s]

*menu3
[cm]
Nên làm món gì đây?
[button  target="*menu1"  graphic="number/1.png"  x="985" y="75" ]
[button  target="*menu2"  graphic="number/2.png"  x="1035" y="75" ]
[button  target="*menu3"  graphic="number/3-.png"  x="1085" y="75" ]
[button  target="*out"  graphic="lunch/out.png"  x="1145" y="75" ]
[button  target="*steak"  graphic="lunch/steak.png"  x="832" y="155" ]
[button  target="*hamburg"  graphic="lunch/hamburg.png"  x="832" y="225" ]
;[button  target="*ch-cake"  graphic="lunch/ch-cake.png"  x="832" y="295" ]
;[button  target="*pudding"  graphic="lunch/pudding.png"  x="832" y="365" ]
[s]


*carbonara
[cm]
[if exp="f.rice<=0 || f.veget<=0 || f.foods<=0 || f.egg<=0"]
[jump target="*not"][endif]
#Nguyên liệu
(1) Mỳ sợi, (1) Rau, (1) Thịt bò, (1) Trứng.[p_]
#
[eval exp="f.rice=f.rice-1"]
[eval exp="f.foods=f.foods-1"]
[eval exp="f.veget=f.veget-1"]
[eval exp="f.egg=f.egg-1"]

[eval exp="f.lunch_menu='carb'"]
[jump target="*lunch_begin"]

*pancake
[cm]
[if exp="f.rice<=1 || f.crem<=0 || f.egg<=0"]
[jump target="*not"][endif]
#Nguyên liệu
(2) Bột mỳ, (1) Kem tươi, (1) Trứng.[p_]
#
[eval exp="f.rice=f.rice-2"]
[eval exp="f.crem=f.crem-1"]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.lunch_menu='panc'"]
[jump target="*lunch_begin"]

*gratin
[cm]
[if exp="f.rice<=1 || f.crem<=0 || f.egg<=0"]
[jump target="*not"][endif]
#Nguyên liệu
(2) Bột mỳ, (1) Kem tươi, (1) Trứng.[p_]
#
[eval exp="f.rice=f.rice-2"]
[eval exp="f.crem=f.crem-1"]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.lunch_menu='grat'"]
[jump target="*lunch_begin"]

*rollcabbage
[cm]
[if exp="f.rice<=0 || f.crem<=0 || f.foods<=0 || f.veget<=0"]
[jump target="*not"][endif]
#Nguyên liệu
(2) Bột mỳ, (1) Kem tươi, (1) Thịt, (1) Bắp cải.[p_]
#
[eval exp="f.rice=f.rice-1"]
[eval exp="f.crem=f.crem-1"]
[eval exp="f.foods=f.foods-1"]
[eval exp="f.veget=f.veget-1"]
[eval exp="f.lunch_menu='roll'"]
[jump target="*lunch_begin"]

*sand
[cm]
[if exp="f.rice<=0 || f.egg<=0 || f.foods<=0 || f.veget<=0"]
[jump target="*not"][endif]
#Nguyên liệu
(2) Bột mỳ, (1) Trứng, (1) Thịt, (1) Bắp cải.[p_]
#
[eval exp="f.rice=f.rice-1"]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.foods=f.foods-1"]
[eval exp="f.veget=f.veget-1"]
[eval exp="f.lunch_menu='sand'"]
[jump target="*lunch_begin"]

*meetsauce
[cm]
[if exp="f.rice<=0 || f.egg<=0 || f.foods<=0 || f.veget<=0"]
[jump target="*not"][endif]
#Nguyên liệu
(2) Mỳ sợi, (1) Trứng, (1) Thịt, (1) Rau.[p_]
#
[eval exp="f.rice=f.rice-1"]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.foods=f.foods-1"]
[eval exp="f.veget=f.veget-1"]
[eval exp="f.lunch_menu='meet'"]
[jump target="*lunch_begin"]

*french
[cm]
[if exp="f.rice<=2 || f.crem<=2"]
[jump target="*not"][endif]
#Nguyên liệu
(2) Bột mỳ, (2) Kem tươi.[p_]
#
[eval exp="f.rice=f.rice-2"]
[eval exp="f.crem=f.crem-2"]
[eval exp="f.lunch_menu='fren'"]
[jump target="*lunch_begin"]

*cake
[cm]
[if exp="f.rice<=0 || f.crem<=1 || f.egg<=0"]
[jump target="*not"][endif]
#Nguyên liệu
(1) Bột mỳ, (2) Kem tươi, (1) Trứng.[p_]
#
[eval exp="f.rice=f.rice-1"]
[eval exp="f.crem=f.crem-2"]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.lunch_menu='cake'"]
[jump target="*lunch_begin"]

*ch-cake
[cm]
[if exp="f.rice<=0 || f.crem<=1 || f.egg<=0"]
[jump target="*not"][endif]
#Nguyên liệu
(1) Bột mỳ, (2) Kem tươi, (1) Trứng.[p_]
#
[eval exp="f.rice=f.rice-1"]
[eval exp="f.crem=f.crem-2"]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.lunch_menu='chcake'"]
[jump target="*lunch_begin"]

*pudding
[cm]
[if exp="f.egg<=1 || f.crem<=1"]
[jump target="*not"][endif]
#Nguyên liệu
(2) Trứng, (2) Kem tươi.[p_]
#
[eval exp="f.egg=f.egg-2"]
[eval exp="f.crem=f.crem-2"]
[eval exp="f.lunch_menu='pudd'"]
[jump target="*lunch_begin"]


*steak
[cm]
[if exp="f.egg<=1 || f.crem<=1"]
[jump target="*not"][endif]
#Nguyên liệu
(2) thịt bò, (2) rau.[p_]
#
[eval exp="f.foods=f.foods-2"]
[eval exp="f.veget=f.veget-2"]
[eval exp="f.lunch_menu='steak'"]
[jump target="*lunch_begin"]


*hamburg
[cm]
[if exp="f.egg<=1 || f.crem<=1"]
[jump target="*not"][endif]
#Nguyên liệu
(2) thịt bò, (2) rau.[p_]
#
[eval exp="f.foods=f.foods-2"]
[eval exp="f.veget=f.veget-2"]
[eval exp="f.lunch_menu='hamburg'"]
[jump target="*lunch_begin"]


*not
[cm]
Hiện chỉ còn :([emb exp="f.foods"]) thực phẩm, ([emb exp="f.rice"]) lương thực, ([emb exp="f.veget"]) rau, ([emb exp="f.egg"]) trứng, ([emb exp="f.crem"]) kem tươi.[p_]
Không đủ nguyên liệu để làm món này.[p_]
[jump target="*menu1"]

*out
[cm]
Thôi, đổi ý rồi.[p_]
[black][return_bace]




*lunch_begin
[chara_mod  name="window"  time="1"  storage="00.png" ]
chúng tôi bắt đầu làm món "
[if exp="f.lunch_menu=='carb'"]Mỳ ý
[elsif exp="f.lunch_menu=='panc'"]Bánh kếp
[elsif exp="f.lunch_menu=='grat'"]Gratin
[elsif exp="f.lunch_menu=='roll'"]Bắp cải cuộn thịt
[elsif exp="f.lunch_menu=='sand'"]Sandwich
[elsif exp="f.lunch_menu=='meet'"]Mỳ pansta sốt thịt
[elsif exp="f.lunch_menu=='fren'"]Bánh mỳ nướng kiểu Pháp
[elsif exp="f.lunch_menu=='cake'"]Bánh kem
[elsif exp="f.lunch_menu=='chcake'"]Bánh kem sô-cô-la
[elsif exp="f.lunch_menu=='pudd'"]Bánh pudding
[elsif exp="f.lunch_menu=='steak'"]Bít tết
[elsif exp="f.lunch_menu=='hamburg'"]Bít tết Salisbury
[endif]"[p_]
[cm][black][set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][f/s_nt]
[bg  time="1"  method="crossfade"  storage="bg/db-a.jpg" ]
[jump target="*lunch_next"]

*lunch_next
[cm][set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][f/sp_nt]
....[p_]

Sau một lúc, bữa tối đã hoàn thành[p_]
[eval exp="f.r='a'"]
[show_dinner]
[if exp="f.lunch_menu=='carb'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-carbonara.png"  ]
[elsif exp="f.lunch_menu=='panc'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-pancake.png"  ]
[elsif exp="f.lunch_menu=='grat'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-gratin.png"  ]
[elsif exp="f.lunch_menu=='roll'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-rollcabbage.png"  ]
[elsif exp="f.lunch_menu=='sand'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-sand.png"  ]
[elsif exp="f.lunch_menu=='meet'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-meetsource.png"  ]
[elsif exp="f.lunch_menu=='fren'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-french.png"  ]
[elsif exp="f.lunch_menu=='cake'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-cake.png"  ]
[elsif exp="f.lunch_menu=='chcake'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-ch-cake.png"  ]
[elsif exp="f.lunch_menu=='pudd'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-pding.png"  ]
[elsif exp="f.lunch_menu=='steak'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-steak.png"  ]
[elsif exp="f.lunch_menu=='hamburg'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-hamburg.png"  ]
[endif]
[jump target="*lunch_random1"]

*lunch_random1
[random_5]
#Sylvie
[if exp="f.r==1"]
[f/s]Thật tuyệt, chúng ta đã hoàn thành nó[p_]
[f/scl]Và tuyệt hơn nữa khi cùng ăn tối với [name]!~♥[p_]
[elsif exp="f.r==2"]
[f/s]Ah~ Tuyệt quá! Chúng ta đã hoàn thành nó[l_] ngay tại nhà.[p_]
[f/sp]Chúng ta sẽ cùng thưởng thức chứ nhé! [name]!~♥[p_]
[elsif exp="f.r==3"]
[f/s]Thật là một bữa tối hấp dẫn.[p_]
[f/scl]Chúng ta có thể thưởng thức ngay tại nhà mà không cần ra nhà hàng.[p_]
[f/s]Em rất hồi hộp, không biết vị của nó thế nào nữa.[lr_][f/ss] Chúng ta cùng thưởng thức nhé! [name] ♥♥♥[p_]
[elsif exp="f.r==4"]
Umm!~ Không biết hương vị của nó sẽ thế nào nhỉ![p_]
[f/ss]Chắc sẽ hấp dẫn hơn ngoài hàng vì chúng ta cùng làm mà![sm_21]♥♥♥[p_]
[else]
[f/ss]Trông thật hấp dẫn!~[p_]
[f/s]Chúng ta cùng thưởng thức nhé!~♥ [name] ♥~[sm_20][p_]
[endif]
[f/s]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up][endif]
[if exp="f.dress==9004 || f.dress==9005"][eval exp="f.talk='non'"][else][eval exp="f.talk=0"][endif]
[if exp="f.lunch_menu=='carb' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-carbonara_.png"  ]
[elsif exp="f.lunch_menu=='panc' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-pancake_.png"  ]
[elsif exp="f.lunch_menu=='grat' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-gratin_.png"  ]
[elsif exp="f.lunch_menu=='roll' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-rollcabbage_.png"  ]
[elsif exp="f.lunch_menu=='sand' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-sand_.png"  ]
[elsif exp="f.lunch_menu=='meet' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-meetsource_.png"  ]
[elsif exp="f.lunch_menu=='fren' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-french_.png"  ]
[elsif exp="f.lunch_menu=='cake' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-cake_.png"  ]
[elsif exp="f.lunch_menu=='chcake' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-ch-cake_.png"  ]
[elsif exp="f.lunch_menu=='pudd' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-pding_.png"  ]
[elsif exp="f.lunch_menu=='steak' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-steak_.png"  ]
[elsif exp="f.lunch_menu=='hamburg' && f.talk==0"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-hamburg_.png"  ]
[endif]

Em bắt đầu ăn đây![p_]
[m/mgmg_sp][um_09]Umummm~...[p]
[random_3]
[if exp="f.r==1"]
[f/scl]Thật tuyệt![lr_]
[f/s]Cảm giác được ăn tại nhà mình cũng rất thoải mái nữa.[p_]
[f/sp]và cùng với [name] ♥♥♥[p_]
[elsif exp="f.r==2"]
[f/sp_nt]Ngon tuyệt![lr_]
[f/ss]Chắc do có thể ăn tại nhà một cách thoải mái nên làm hương vị của nó tốt hơn chăng.[p_]
[else]
[f/ss]Ngon lắm ạ![lr_]
[f/sp]Chắc là vì cùng làm với [name] nên nó mới tuyệt đến thế!~~♥♥♥[p_]
[endif][m/mgmg_sp]
...[p_][f/sp_nt]
[dinner_sleeve_down][if exp="f.lunch_menu=='carb'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-carbonara.png"  ]
[elsif exp="f.lunch_menu=='panc'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-pancake.png"  ]
[elsif exp="f.lunch_menu=='grat'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-gratin.png"  ]
[elsif exp="f.lunch_menu=='roll'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-rollcabbage.png"  ]
[elsif exp="f.lunch_menu=='sand'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-sand.png"  ]
[elsif exp="f.lunch_menu=='meet'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-meetsource.png"  ]
[elsif exp="f.lunch_menu=='fren'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-french.png"  ]
[elsif exp="f.lunch_menu=='cake'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-cake.png"  ]
[elsif exp="f.lunch_menu=='chcake'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-ch-cake.png"  ]
[elsif exp="f.lunch_menu=='pudd'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/f-pding.png"  ]
[elsif exp="f.lunch_menu=='steak'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-steak.png"  ]
[elsif exp="f.lunch_menu=='hamburg'"]
[chara_mod  name="hand_L"  time="300"  storage="o/food/d-hamburg.png"  ]
[endif]

[random_2]
[if exp="f.r==1"]
[f/s][name] cứ nghỉ ngơi trước đi nhé![lr_]
[f/scl]Em sẽ thu dọn ngay đây[p_]
[else]
[f/ss]Vậy em sẽ thu dọn nhé![lr_]
[f/s]Anh cứ nghỉ một lúc đi.[p_][endif]
[if exp="f.dress>=1000 && f.dress<=1030 && f.lust>=25"]
[eval exp="f.wet='on'" ]
[elsif exp="f.dress>=21 && f.dress<=30 && f.lust>=25"]
[eval exp="f.wet='on'" ]
[elsif exp="f.dress>=41 && f.dress<=50 && f.lust>=25"]
[eval exp="f.wet='on'" ]
[else][eval exp="f.wet=0" ][endif]
[if exp="f.wet=='on' && f.sex_bath=='non'"]
[eval exp="f.wet=0" ]
[black]
;[chara_00]
[bg  time="1"  method="crossfade"  storage="bg/db-a.jpg" ]
[chara_mod name="other" time="0" storage="o/food/chair.png" ]
[chara_mod name="hand_R" time="0" storage="o/food/tbl_a.png" ]
[chara_show name="other" time="0" wait="false" left="0.1" zindex=100 ]
[chara_show name="hand_R" time="0" wait="false" left="0.1" zindex=175 ]
[hide_black]
...[p_]
[if exp="f.gift>=1"][else]
[jump target="*end"]
[endif]
[_](Tôi sẽ khá rảnh vào buổi tối. Có lẽ nên làm gì đó cùng Sylvie chứ nhỉ.
[button storage="mod/H/dinner_H.ks" target="*begin" graphic="ch/bed.png" x="0" y="200" ]
[button target="*end" graphic="ch/ignore.png" x="0" y="350" ][s]
[endif]
[chara_mod  name="hand_L"  time="300"  storage="00.png"  ]
[if exp="f.lunch_menux=='syl'"]
[jump storage="mod/H/H-event.ks" target="*begin"][endif]
[jump target="*end"]

*end
[cm]
[eval exp="f.lunch_menux='non'"]
[random_3]
[if exp="f.r==1"]
[eval exp="f.love=f.love+2"]
[eval exp="f.hp=f.hp+5"]
[elsif exp="f.r==2"]
[eval exp="f.love=f.love+5"]
[eval exp="f.hp=f.hp+8"]
[else]
[eval exp="f.love=f.love+7"]
[eval exp="f.hp=f.hp+12"]
[endif]
[eval exp="f.lunch_check=1"]
[black][chara_00][eval exp="f.last_act=''"][return_bace]
[s]


*end_H
[eval exp="f.lunch_menux='non'"]
[random_3]
[if exp="f.r==1"]
[eval exp="f.love=f.love+2"]
[eval exp="f.hp=f.hp+5"]
[elsif exp="f.r==2"]
[eval exp="f.love=f.love+5"]
[eval exp="f.hp=f.hp+8"]
[else]
[eval exp="f.love=f.love+7"]
[eval exp="f.hp=f.hp+12"]
[endif]
[eval exp="f.lunch_check=1"]
[black]
[return_bace]
[s]

;;---------------------check
*check_lunch
[random_5]
[if exp="f.r==1"]
[eval exp="f.foods=f.foods-1"]
[eval exp="f.rice=f.rice-1"]
[eval exp="f.vegets=f.veget-1"]
[elsif exp="f.r==2"]
[eval exp="f.crem=f.crem-1"]
[eval exp="f.rice=f.rice-1"]
[eval exp="f.vegets=f.veget-1"]
[elsif exp="f.r==3"]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.rice=f.rice-1"]
[eval exp="f.vegets=f.veget-1"]
[elsif exp="f.r==4"]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.crem=f.crem-1"]
[eval exp="f.vegets=f.veget-1"]
[elsif exp="f.r==4"]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.foods=f.foods-1"]
[eval exp="f.vegets=f.veget-1"]
[else]
[eval exp="f.egg=f.egg-1"]
[eval exp="f.foods=f.foods-1"]
[eval exp="f.crem=f.crem-1"]
[endif]
[if exp="f.foods>=0"]
[else][eval exp="f.foods=0"][endif]
[if exp="f.veget>=0"][else][eval exp="f.veget=0"][endif]
[if exp="f.egg>=0"][else][eval exp="f.egg=0"][endif]
[if exp="f.crem>=0"][else][eval exp="f.crem=0"][endif]
[return]

*check_bad
[eval exp="f.not_food=0"]
[if exp="f.foods==0"]
[eval exp="f.not_food=f.not_food+1"][endif]
[if exp="f.rice==0"]
[eval exp="f.not_food=f.not_food+1"][endif]
[if exp="f.veget==0"]
[eval exp="f.not_food=f.not_food+1"][endif]
[if exp="f.egg==0"]
[eval exp="f.not_food=f.not_food+1"][endif]
[if exp="f.crem==0"]
[eval exp="f.not_food=f.not_food+1"][endif]
[random_4]
[if exp="f.not_food==5 && f.r==1"]
[eval exp="f.hp=f.hp-50"]
[elsif exp="f.not_food==5 && f.talk>=2"]
[eval exp="f.hp=f.hp-50"][eval exp="f.bad_could=2"]
[endif]

[if exp="f.not_food==4 && f.r==1"]
[eval exp="f.hp=f.hp-40"]
[elsif exp="f.not_food==4 && f.talk>=2"]
[eval exp="f.hp=f.hp-40"][eval exp="f.bad_could=2"][endif]

[if exp="f.not_food==3 && f.r==1"]
[eval exp="f.hp=f.hp-20"]
[elsif exp="f.not_food==4 && f.talk>=2"]
[eval exp='f.hp=f.hp-20"][eval exp="f.bad_could=2"][endif]
[return]






