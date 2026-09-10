;;
*wine
[cm][black][set_dinner]
[if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00.png" ][endif]
[f/s_nt][eval exp="f.drunk=0" ][eval exp="f.wine_act=0" ][eval exp="f.situation='drink'" ][eval exp="f.hp=f.hp-1"][hp_return]
;[chara_mod  name="window"  time="1"  storage="o/win/food-win.png" ]
[chara_mod  name="window"  time="1"  storage="00.png" ]
[eval exp="f.wet=0"]
[bg  time="1"  method="crossfade"  storage="bg/db-a.jpg" ]
[_][if exp="f.wine_c==0" ][jump target="*wine_f"]
[else][jump target="*wine_af"][endif]

*wine_f
[cm]
（Tôi sẽ thưởng thức ly rượu cùng Sylvie)[p_]
[eval exp="f.r='a'"][call target="*show_dinner"]
[chara_show name="window" time="1" wait="true" left="806" top="33" zindex=185 ]
[chara_mod  name="hand_L"  time="300"  storage="o/food/ly_0.png"  ]

[syl][f/p][eh_01]Uống rượu…？[lr_]
[f/sp]Em không cảm thấy khó chịu gì với nó đâu ạ[p_]

[syl][f/][eh_01]Rượu…？[lr_]
[f/s]Sẽ không sao nếu em cùng uống với anh chứ？[p_]

[chara_mod  name="hand_L"  time="300"  storage="o/food/ly_1.png"  ]
[_]Tôi rót một chút rượu pha loãng với nước vào cốc của Sylvie)。[p_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up]
[chara_mod  name="hand_L"  time="10"  storage="o/food/ly_2.png"  ][l_][endif]
[syl][f/sp][um_09]Un...、Vị của nó hơi ngọt。[lr_]
[f/sp]Hương vị thật tuyệt。[p_]


[f/]…Thật kì lạ, rượu lại có mùi trái cây.[lr_]
[f/re]Em không nghĩ lại có loại đồ uống như vậy。[p_]

[f/sp]Vậy,Em bắt đầu uống đây。[lr_]
[f/ssp]Etou... Cạn ly nào。[p_]
[chara_mod  name="hand_L"  time="400"  storage="o/food/ly_3.png"  ]
[m/mgmg_s][um_09]Unkk…。[wait time="1500"][f/sp_nt][p]
[f/sp]Nó ngọt như nước trái cây nhưng lại có vị hơi xốc.[lr_]
[chara_mod  name="hand_L"  time="100"  storage="o/food/ly_0.png"  ]
[dinner_sleeve_down]
[f/ssp]Nó cũng dễ uống。[p_][eval exp="f.wine_c=1"][eval exp="f.wine_act=1" ]
[jump target="*wine_next"]
*wine_af
[cm]
[eval exp="f.r='a'"][call target="*show_dinner"]
[chara_show name="window" time="1" wait="true" left="806" top="33" zindex=185 ]
[chara_mod  name="hand_L"  time="300"  storage="o/food/ly_0.png"  ]
（Tôi sẽ thưởng thức loại rượu này cùng Sylvie)。[p_]
[syl][f/s]Em cũng uống nữa ư?[lr_]
Vâng! Itadakimasu。[p_]
[chara_mod  name="hand_L"  time="400"  storage="o/food/ly_1.png"  ]
[_]（Tôi đổ một ít rượu pha loãng vào ly của Sylvie。[p_]
[jump target="*wine_next"]

*wine_next
[eval exp="f.wine_left=f.wine_left-1" ][eval exp="f.drunk=f.drunk+1" ]

*choice
[cm][chara_mod name="h" time="0" storage="00.png" ]
[if exp="f.wine_act==0" ][eval exp="f.wine_act=1" ]
[syl][f/ss]Vậy thì... cùng cạn ly nào!。[p_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up]
[chara_mod  name="hand_L"  time="50"  storage="o/food/ly_2.png"  ][endif]
[m/mgmg_s][um_09]Unkk…[wait time="1500"][f/sp_nt][lr]
[if exp="f.dress==9004 || f.dress==9005"][else][chara_mod  name="hand_L"  time="300"  storage="o/food/ly_3.png"  ][endif]
[f/ssp]Ngon quá。[p_]
[chara_mod  name="hand_L"  time="300"  storage="o/food/ly_0.png"  ][l]
[dinner_sleeve_down]
[endif]
[_][if exp="f.wine_act>=11" ]（Cũng đã muộn rồi)。[p_][jump target="*stop" ][endif]
[mood_calc_wine][set_time_w]

[if exp="f.drunk<=3 && f.vgf>=1" ]
;[clickable_touch_scar][clickable_touch_hair]
[clickable width="193" height="96" x="348" y="48" storage="talk/touch.ks" target="*hair" ]
[clickable width="121" height="200" x="218" y="96" storage="talk/touch.ks" target="*hair" ]

[clickable width="48" height="106" x="448" y="195" storage="talk/touch.ks" target="*scar" ]
[clickable width="26" height="17" x="448" y="339" storage="talk/touch.ks" target="*scar" ]
;[clickable width="49" height="18" x="519" y="356" storage="talk/touch.ks" target="*scar" ]
[else]
[clickable width="193" height="96" x="348" y="48" storage="act_with/wine_touch.ks" target="*head" ]
[clickable width="121" height="200" x="218" y="96" storage="act_with/wine_touch.ks" target="*head" ]

[clickable width="65" height="27" x="496" y="325" storage="act_with/wine_touch.ks" target="*mouth" ]

[clickable width="104" height="100" x="324" y="415" storage="act_with/wine_touch.ks" target="*shoulder" ]
[clickable width="46" height="46" x="621" y="335" storage="act_with/wine_touch.ks" target="*shoulder" ]

[clickable width="91" height="91" x="485" y="452" storage="act_with/wine_touch.ks" target="*bust_hl" ]
[clickable width="91" height="91" x="596" y="404" storage="act_with/wine_touch.ks" target="*bust_hr" ]

[clickable width="216" height="100" x="690" y="802" storage="act_with/wine_touch.ks" target="*hands" ]

;[clickable width="48" height="106" x="448" y="195" storage="talk/wine_touch.ks" target="*scar" ]
;[clickable width="26" height="17" x="448" y="339" storage="talk/wine_touch.ks" target="*scar" ]
[endif]

[chara_mod  name="window"  time="1"  storage="o/win/food-win.png" ]
[button target="*talk" graphic="s_menu/talk.png" x="832" y="180" ]
[button target="*re" graphic="s_menu/add_alc.png" x="832" y="250" ]
;[button storage="act_with/test.ks" target="*test" graphic="s_menu/finish.png" x="832" y="320" ]
[button target="*stop" graphic="s_menu/finish.png" x="832" y="320" ]
;[if exp="f.mood=='lust' && f.dress>=60 && f.dress<=69" ][button storage="H/kimono.ks" target="*b" graphic="s_menu/bed_x.png" x="750" y="480" ][endif]

[cancelskip][s]

*choice_
[cm][eval exp="f.wine_act=f.wine_act+1" ][eval exp="f.love=f.love+1" ][jump target="*choice" ]

*re
[cm][chara_mod  name="window"  time="1"  storage=00.png" ]
[chara_mod  name="other"  time="1"  storage="00.png" ]
[chara_mod  name="ef"  time="1"  storage="00.png" ]
[_][if exp="f.wine_left==0" ][eval exp="f.wine_act=f.wine_act-1" ]（Ồ, chai rượu đã hoàn toàn trống rỗng)。[p_][jump target="*choice_" ][endif]
[if exp="f.drunk>=4" ][eval exp="f.wine_act=f.wine_act-1" ]（Tôi không nghĩ là nên để cô ấy uống nữa[p_][jump target="*choice_" ][endif]

[syl][if exp="f.drunk>=3" ][f/sp][else][f/s][endif]
Sẽ ổn nếu em uống thêm ly nữa chứ？[lr_]
[if exp="f.drunk>=3" ][f/ssp][else][f/ss][endif]
Cảm ơn anh。Vậy em bắt đầu đây。[p_]
[_]（Tôi đổ thêm rượu vào ly của Sylvie。[p_]
[chara_mod  name="hand_L"  time="400"  storage="o/food/ly_1.png"  ][l]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up][chara_mod  name="hand_L"  time="40"  storage="o/food/ly_2.png"  ][l][endif]
[if exp="f.dress==9004 || f.dress==9005"][else]
[chara_mod  name="hand_L"  time="400"  storage="o/food/ly_3.png"  ][endif]
[if exp="f.drunk>=3" ][f/sclp_nt][else][m/mgmg_s][endif][um_09]unk…[wait time="500"][f/sp_nt]。[lr]
[chara_mod  name="hand_L"  time="100"  storage="o/food/ly_0.png"  ][dinner_sleeve_down]
[eval exp="f.drunk=f.drunk+1" ][eval exp="f.wine_left=f.wine_left-1" ]
[if exp="f.drunk>=3" ][f/ssp][else][f/ss][endif]Unn、Nó rất ngon。[p_]
[jump target="*choice" ]

;;トークリード
*talk
[cm][if exp="f.drunk>=3 && f.mood>='lust'" ][random_31][jump target="*wine_lead_b" ]
[elsif exp="f.drunk>=3" ][random_22][jump target="*wine_lead_b" ]
[elsif exp="f.wine_c>=2" ][random_20][jump target="*wine_lead_a" ]
[else][random_18][jump target="*wine_lead_a" ][endif]

*wine_lead_a
[cm][syl][if exp="f.r==1" ][jump target="*wine_a1" ][elsif exp="f.r==2" ][jump target="*wine_a2" ]
[elsif exp="f.r==3" ][jump target="*wine_a3" ][elsif exp="f.r==4" ][jump target="*wine_a4" ]
[elsif exp="f.r==5" ][jump target="*wine_a5" ][elsif exp="f.r==6" ][jump target="*wine_a6" ]
[elsif exp="f.r==7" ][jump target="*wine_a7" ][elsif exp="f.r==8" ][jump target="*wine_a8" ]
[elsif exp="f.r==9" ][jump target="*wine_a9" ][elsif exp="f.r==10" ][jump target="*wine_a10" ]
[elsif exp="f.r==11" ][jump target="*wine_a11" ][elsif exp="f.r==12" ][jump target="*wine_a12" ]
[elsif exp="f.r==13" ][jump target="*wine_a13" ][elsif exp="f.r==14" ][jump target="*wine_a14" ]
[elsif exp="f.r==15" ][jump target="*wine_a15" ][elsif exp="f.r==16" ][jump target="*wine_a16" ]
[elsif exp="f.r==17" ][jump target="*wine_a17" ][elsif exp="f.r==18" ][jump target="*wine_a18" ]
[elsif exp="f.r==19" ][jump target="*wine_a19" ][elsif exp="f.r==20" ][jump target="*wine_a20" ][endif]

*wine_lead_b
[cm][syl][if exp="f.r==1" ][jump target="*wine_b1" ][elsif exp="f.r==2" ][jump target="*wine_b2" ]
[elsif exp="f.r==3" ][jump target="*wine_b3" ][elsif exp="f.r==4" ][jump target="*wine_b4" ]
[elsif exp="f.r==5" ][jump target="*wine_b5" ][elsif exp="f.r==6" ][jump target="*wine_b6" ]
[elsif exp="f.r==7" ][jump target="*wine_b7" ][elsif exp="f.r==8" ][jump target="*wine_b8" ]
[elsif exp="f.r==9" ][jump target="*wine_b9" ][elsif exp="f.r==10" ][jump target="*wine_b10" ]
[elsif exp="f.r==11" ][jump target="*wine_b11" ][elsif exp="f.r==12" ][jump target="*wine_b12" ]
[elsif exp="f.r==13" ][jump target="*wine_b13" ][elsif exp="f.r==14" ][jump target="*wine_b14" ]
[elsif exp="f.r==15" ][jump target="*wine_b15" ][elsif exp="f.r==16" ][jump target="*wine_b16" ]
[elsif exp="f.r==17" ][jump target="*wine_b17" ][elsif exp="f.r==18" ][jump target="*wine_b18" ]
[elsif exp="f.r==19" ][jump target="*wine_b19" ][elsif exp="f.r==20" ][jump target="*wine_b20" ]
[elsif exp="f.r==21" ][jump target="*wine_b21" ][elsif exp="f.r==22" ][jump target="*wine_b22" ]
[elsif exp="f.r==23" ][jump target="*wine_c1" ][elsif exp="f.r==24" ][jump target="*wine_c2" ]
[elsif exp="f.r==25" ][jump target="*wine_c3" ][elsif exp="f.r==26" ][jump target="*wine_c4" ]
[elsif exp="f.r==27" ][jump target="*wine_c5" ][elsif exp="f.r==28" ][jump target="*wine_c6" ]
[elsif exp="f.r==29" ][jump target="*wine_c7" ][elsif exp="f.r==30" ][jump target="*wine_c8" ]
[elsif exp="f.r==31" ][jump target="*wine_c9" ][elsif exp="f.r==32" ][jump target="*wine_c10" ][endif]

;;トーク
*wine_a1
[f/]Em nghĩ có rất nhiều loại rượu khác nữa。[lr_]
[f/s]Nó ngọt như nước trái cây vậy, không khó uống như em tưởng。[p_]
[jump target="*choice_" ]
*wine_a2
[f/]Em đã từng uống một ngụm rượu vang đỏ trước kia nhưng[lr_]
[f/clc]Nó đắng và hương vị cũng không ngon như thế này.[p_]
[f/s]Nhưng nó cũng không quá tệ[r]
[f/re]Em đã nghĩ rằng mình chỉ được thưởng thức nó lần nữa khi đã trưởng thành。[p_]
[jump target="*choice_" ]
*wine_a3
[f/ss]Uống rượu thế này em có cảm giác mình đã là người lớn。[p_]
#ichibikun
(Vậy những lúc "đó" thým vẫn chưa thấy mình "người lớn" sao =.=)[p_] 
#Sylvie
???[p_]
#
[jump target="*choice_" ]
*wine_a4
[f/scl]Cơ thể em cảm thấy nóng hơn một chút[p_]
[jump target="*choice_" ]
*wine_a5
[f/scl]Mặc dù nó đã được làm lạnh nhưng vẫn cảo thấy ấm trong họng khi uống。[lr_]
[f/s]Thật kì lạ。[p_]
[jump target="*choice_" ]
*wine_a6
[f/s]Không biết [name] thích những loại rượu nào。[lr_]
[f/ss]Em cũng muốn thưởng thức nó với [name] vào một ngày nào đó....。[p_]
[jump target="*choice_" ]
*wine_a7
[f/ssp_nt]...Fu fuu!♥[p_]
[jump target="*choice_" ]
*wine_a8
[f/ss]Giống những người lớn đang thưởng thức rượu cùng nhau vậy。[p_]
[jump target="*choice_" ]
*wine_a9
[f/cl]uhk…[lr_]
[f/ssp]Nó thực sự rất ngon.♥[p_]
[jump target="*choice_" ]
*wine_a10
[f/s]Rượu vang thường uống cùng với vài món ăn nhẹ、[lr_]
[f/re]Giống như với pho mát oliu chẳng hạn.[p_]
[f/]có thể cùng với những món ăn nhẹ khác、[r]
[f/s]Em đoán nó hợp với loại rượu này。[p_]
[jump target="*choice_" ]
*wine_a11
[f/]Em chưa từng ăn đồ ăn nhẹ với rượu trước đây、[lr_]
[f/cl]nó không giống như khi uống trà。[p_]
[f/]Chắc do khẩu vị của em có vấn đề？[p_]
[jump target="*choice_" ]
*wine_a12
[f/clp]Em thấy...hơi buồn ngủ。[lr_]
[f/p]…Chắc do tác dụng của rượu？[p_]
[jump target="*choice_" ]
*wine_a13
[f/ss]Cảm ơn vì ly rượu này,[name]。[p_]
[f/ss][jump target="*choice_" ]
*wine_a14
[f/cl]mùi từ chai rượu khiến em thấy chóng mặt một chút。[lr_]
[f/s]dù được pha loãng nhưng nó vẫn còn rất nặng, Rượu này chắc mạnh lắm。[p_]
[jump target="*choice_" ]
*wine_a15
[f/cl]Uống rượu có thể giảm bớt nỗi buồn phải không nhỉ。[lr_]
[f/s]Em không cho là như vậy。[p_]
[jump target="*choice_" ]
*wine_a16
[f/s]em không nghĩ có loại rượu ngọt như vậy。[lr_]
[f/scl]Chắc còn nhiều loại rượu lạ em chưa biết。[p_]
[jump target="*choice_" ]
*wine_a17
[f/]Độ nặng các loại rượu khác nhau、[r]
Vậy loại rượu này bao nhiêu độ?[lr_]
[f/s]Em uống được thì chắc không nặng lắm。[p_]
[jump target="*choice_" ]
*wine_a18
[f/s]mọi người thường đựng rượu trong chai thủy tinh nhỉ?。[lr_]
[f/re]Hình dạng và kích thước của chúng khác nhau。[p_]
[f/re]Sẽ thật lãng phí nếu bỏ nó đi, ngay cả khi đã hết rượu。[p_]
[jump target="*choice_" ]

*wine_a19
[f/s]Em nghĩ em không uống được nhiều、[r]
Nhưng thường thì em không thấy nhức đầu vào sáng hôm sau。[p_]
[f/re]Có những người có thể uống rượu liền trong 2 ngày。[p_]
[jump target="*choice_" ]
*wine_a20
[f/cl]Lúc đầu em cũng hơi lo lắng vì đây là rượu chứ không phải nước trái cây、[lr_]
[f/s]Nhưng giờ thì đã quen rồi。[p_]
[jump target="*choice_" ]



*wine_b1
[f/sp][name]？[lr_]
[f/ssp]…không sao đâu ạ♥[p_]
[jump target="*choice_" ]
*wine_b2
[f/ssp]Rượu cũng ngon chứ…[name]♥[p_]
[jump target="*choice_" ]
*wine_b3
[f/ssp][name]〜♥[lr_]
[f/shp]…[name]♥[p_]
[jump target="*choice_" ]
*wine_b4
[f/ssp][daisuki_1]Daisuki desuyo、[name]♥[lr_]
[f/re]Em yêu anh, yêu anh rất nhiều, nhiều đến mức không nói hết được？[p_]
[jump target="*choice_" ]
*wine_b5
[f/sp]Em có thể ngồi gần anh hơn không？[lr_]
[f/ssp]Vậy em sẽ ngồi thật gần bên anh ♥[p_]
[_]（Cô ấy cọ xát cơ thể vào người tôi như một con mèo…。[p_]
[jump target="*choice_" ]
*wine_b6
[f/sclp]Em rất hạnh phúc, thực sự rất hạnh phúc ♥[lr_]
[f/sp]Ý em là vì [name] đang ở bên cạnh em ♥[p_]
[jump target="*choice_" ]
*wine_b7
[f/clp]Hikc~…[lr_]
[f/ssp]fufu、em không uống nổi nữa♥[p_]
[jump target="*choice_" ]
*wine_b8
[f/p][name]？anh có muốn làm gì đó không？[p_]
[f/sp]Em có thể làm mọi thứ？[lr_]
[f/ssp]Mọi yêu cầu của anh ♥[p_]
[jump target="*choice_" ]
*wine_b9
[f/clp]chỗ này có vẻ hơi nóng…、[lr_]
[f/sp]anh có thấy thế không？[p_]
[jump target="*choice_" ]
*wine_b10
[f/sp][name], anh có muốn uống thêm không？[lr_]
[f/ssp]Ah、em sẽ rót thêm cho anh ♥[p_]
[jump target="*choice_" ]
*wine_b11
[f/ssp][name]…Xoa đầu em đi ♥[lr_]
[f/sp]Ah、Hãy ôm em trước…Rồi xoa đầu em ♥[p_]
[jump target="*choice_" ]
*wine_b12
[f/ssp]Em cũng muốn thành bác sỹ giống [name] sau này。[p_]
[f/cp]…a rế、 khoan đã。[lr_]
[f/ssp]Em sẽ trở thành y tá để giúp [name] chứ nhỉ ♥[p_]
[jump target="*choice_" ]
*wine_b13
[f/ssp][name]…♥[p_]
[_]（Sylvie bỗng nhiên ôm lấy tôi。[p_]
[jump target="*choice_" ]
*wine_b14
[f/ssp][name]〜♥[p_]
[_]（Cô ấy có vẻ rất hạnh phúc[p_]
[jump target="*choice_" ]
*wine_b15
[f/clp][name]…♥[p_]
[_]（Cô ấy dùng cả chân để ôm tôi và chà mặt vào ngực tôi[p_]
[syl][f/shcp][name]Nữa đi...Ôm em nhiều nữa đi[p_]
[jump target="*choice_" ]
*wine_b16
[f/ssp]Anh sẽ không đi đâu nữa nhé？[lr_]
[f/re]em sẽ không buông anh ra đâu…♥[p_]
[jump target="*choice_" ]
*wine_b17
[f/sclp]Em cảm thấy hơi buồn ngủ…♥[p_]
[jump target="*choice_" ]
*wine_b18
[f/ssp]Cơ thể và trái tim em đều thấy rất ấm áp…♥[p_]
[jump target="*choice_" ]
*wine_b19
[f/sclp]Em thấy hơi chóng mặt…。[lr_]
[f/re]powa...powa...。[p_]
[jump target="*choice_" ]
*wine_b20
[f/sclp][name]…♥[p_]
[_]（Cô ấy áp má vào ngực tôi。[p_]
su~…。[l_][sm_05]
[f/ssp]Ehehe、 mùi của [name] ♥[p_]
[jump target="*choice_" ]
*wine_b21
[f/ssp]Hãy ôm em đi ♥[p_]
[f/re]Cơ thể em đã ấm lên rồi。[lr_]
[jump target="*choice_" ]
*wine_b22
[f/sp]Cơ thể em đã ấm lên rồi。[lr_]
[f/re]em sẽ làm cho [name] ấm lên[lr_]
[f/ssp]Eh!♥[p_][sm_07]
[_]（Hơi ấm từ cơ thể Sylvie cũng bắt đầu lan vào cơ thể tôi。[p_]
[jump target="*choice_" ]


*wine_c1
[f/ssp][name]、hãy hôn em đi。[p_]
[f/sclp_nt]…Um, un！[p_]
[_]（Cô ấy nhắm mắt lại và chờ đợi tôi.) [p_]
[jump target="*choice_" ]
*wine_c2
[f/cp][name], khi c-chúng ta đến shop quần áo, anh luônnn luôn nhìn cô bán hàng…[lr_]
[f/clp]Không fải vì cô ấy là nhân viên hay gì…[p_]
[f/cp]E-Emm có nên nói vậy?[p_]
[f/re]Em sẽ fát triển nó lớnnn... lớn như dzậy, anh cứ chờ xem![lr_]
[f/hcp]Vì vậậyyy, ch-chỉ nhìn em thôi, nhé.[p_]
[jump target="*choice_" ]
*wine_c3
[f/clp]…[name]♥[p_]
[_]（Sylvie bất ngờ ôm và hôn tôi thật sâu.）[p_]
[syl]…Nn..., Mn.[p_]
Haah…Mn, Nnn…[p_]
[jump target="*choice_" ]
*wine_c4
[f/ssp]Mnn…♥[p_]
[_]（Sylvie di chuyển cánh tay và ôm từ phía sau cổ tôi.）[p_]
[syl][f/shp]*liếm*..Haah…vị của [name]…♥[p_]
[jump target="*choice_" ]
*wine_c5
[f/sp]Rượu có ngon không？[lr_]
[f/shp]Rượu của em rất ngon, thấy hem.♥[p_]
[_]（Uống một ít rượu vào miệng, Sylvie ngả người và đặt lên môi tôi một nụ hôn.）[p_]
[syl][f/clp_nt]Nn…mm…♥[p_]
[_]（Nuốt hết rượu từ miệng của Sylvie, lưỡi chúng tôi quấn lấy nhau.）[p_]
[syl]Mn…nn……Pwah![lr_]
[f/shp]Ngon không?[p_]
[lr_]…[name]？[lr_]
[f/ssp]Giờ tới lượt anhh, [name].♥[p_]
[jump target="*choice_" ]
*wine_c6
[f/shp][name]？[r]
Anh có thể yêu em nhiều hơn. ♥[p_]
[_]（Nói xong Sylvie cọ sát cơ thể vào người tôi.）[p_]
[jump target="*choice_" ]
*wine_c7
[f/hcp]Cả cơ thể em rất nóng, [name]…[p_]
[_]（Vẫn bám vào tôi, cô ấy nhìn chằm chằm vào mắt tôi. ）[p_]
[jump target="*choice_" ]
*wine_c8
[f/hcp][name]…♥[name]…♥♥[p_]
[_]（Từ bên trong vòng tay của tôi, giọng nói yếu ớt phát ra.）[p_]
[jump target="*choice_" ]
*wine_c9
[f/hcp][name]…Chạm vào người em…[p_]
[f/re]Và để em... chạm anh...[p_]
[jump target="*choice_" ]


*stop
[cm]
（Hôm nay tới đây thôi。[p_]
[if exp="f.last_wine=='drunk1' && f.mood=='lust' && f.sexless_c>=3"]
[eval exp="f.last_wine='drunk2'"][endif]
[syl][if exp="f.drunk>=3" ]
[f/p]Chúng ta kết thúc rồi ạ?[lr_]
[f/ssp]V-âng。Em sẽ dọn dẹp。[p_]
[f/p]Ah-to ah-to~…。[p_]
[f/clp]Un、Chắc do em đứng lên hơi vội vàng。[lr_]
[f/sp]Không sao ạ。[p_]
[eval exp="f.act='wine'" ][eval exp="f.sexless=f.sexless+1" ][eval exp="f.wine_c=f.wine_c+1" ]
[day_reset][stop_bgm][black][chara_00]
[_]（...Được một lúc, Sylvie lăn ra ngủ.。[p_]
（Tôi mang cô ấy vào giường rồi cũng chuẩn bị đi ngủ。[p_]
…。[p_][return_bace]

[else]
[f/]Un、Xong rồi sao？[lr_]
[f/ss]Vâng、cảm ơn về mấy ly rượu。[p_]
[f/s]Em sẽ dọn dẹp。[p_]
[_][black][chara_00]…。[p_]
[set_sit][f/s][set_time][show_sit]
[eval exp="f.wine_act='done'" ][eval exp="f.wine_c=f.wine_c+1" ]
[jump storage="talk/step6.ks" target="*night" ][endif]


''========================================================================================================================


;;show_dinner
*show_dinner
[if exp="f.r=='a'" ][bg time="1" method="crossfade" storage="bg/db-a.jpg" ][chara_mod name="hand_R" time="0" storage="o/food/tbl_a.png" ]
[elsif exp="f.r=='b'" ][bg time="1" method="crossfade" storage="bg/db-b.jpg" ][chara_mod name="hand_R" time="0" storage="o/food/tbl_b.png" ]
[elsif exp="f.r=='c'" ][bg time="1" method="crossfade" storage="bg/db-c.jpg" ][chara_mod name="hand_R" time="0" storage="o/food/tbl_c.png" ][endif]

[chara_mod name="h" time="0" storage="00.png" ]
[chara_show name="h" time="1" wait="false" left=" 0.1" zindex=190 ]

[chara_mod name="other" time="0" storage="00.png" ]
[chara_show name="other" height="38" width="355" time="0" wait="false" top="22" left="978" zindex=40 ]
[chara_mod name="ef" time="0" storage="00.png" ]
[chara_show name="ef" time="0" wait="false" left=" 0.1" zindex="280" ]

[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]

[chara_show name="arm_b" time="0" wait="false" left="0.1" zindex=10 ]
[if exp="f.gloves>=1" ][chara_show name="gloves_b" time="0" wait="false" left="0.1" zindex=15 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve_b" time="0" wait="false" left="0.1" zindex=20 ][endif]

[chara_show name="body" time="0" wait="false" left="0.1" zindex=30 ]
[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="0.1" zindex=60 ][endif]
;[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="0.1" zindex=70 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="0.1" zindex=80 ][endif]
[chara_show name="arm" time="0" wait="false" left="0.1" zindex=90 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="0.1" zindex=100 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="0.1" zindex=110 ][endif]

[if exp="f.neck>=11 && f.neck<=20" ]
[chara_show name="neck" time="0" wait="false" left="0.1" zindex=85 ]
[elsif exp="f.neck>=1" ]
[chara_show name="neck" time="0" wait="false" left="0.1" zindex=120 ][endif]

[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="0.1" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=140 ]
[chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=155 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=165 ][endif]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=170 ]

[chara_show name="hand_R" time="0" wait="false" left="0.1" zindex=175 ]
[chara_show name="hand_L" time="0" wait="false" left="0.1" zindex=180 ]
[hide_black][return]










