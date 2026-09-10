;;外出夜選択肢
*out_night
[cm]
[if exp="f.lust>=100" ]
[button storage="act_alone/out_alone.ks" target="*alone" graphic="ch/alone.png" x="0" y="300" ][endif]
[button target="*with_dinner" graphic="ch/dinner.png" x="0" y="180" ]
[button target="*remind" graphic="ch/remind.png" x="0" y="420" ][s]

;;外出人数選択肢
*out
[cm][if exp="f.out==0" ]
[button target="*together" graphic="ch/together.png" x="0" y="180" ][endif]
[button storage="act_alone/out_alone.ks" target="*alone" graphic="ch/alone.png" x="0" y="300" ]
[button target="*remind" graphic="ch/remind.png" x="0" y="420" ][s]

;;ディナー
*with_dinner
[cm]
[if exp="f.dress==0 || f.dress==5 || f.dress==6 || f.dress>=1001 && f.dress<=3000" ]
[syl][f/sclcp][name] à! mặc kiểu này em không thể ra ngoài được đâu[p_][eval exp="f.system_act=1" ][return_menu][endif]
[if exp="f.lunch_night=='yet'"]
[syl][f/s]Chúng ta đã cùng ăn tối rồi nên em không thấy đói.[p]
[jump target="*out_night"][endif]
[if exp="f.zince<=149999"]
[_]Chỉ còn [money] đồng. Không còn đủ tiền để đi ăn nữa...[p_][eval exp="f.system_act=1" ][return_menu][endif]

[set_stand][bg_door][f/nt][show_stand]
[f/re][syl]Hôm nay anh muốn ăn tối bên ngoài？[p_]
[f/s]Vâng, em hiểu rồi, thật sự rất tuyệt ạ!。[p_]
[jump storage="act_with/dinner.ks" target="*dinner" ]

;;一緒に外出
*together
[cm]
[if exp="f.s_studi=='yet' && f.thu<=5 && f.act<=2"]
[syl][f/ss][na_1]Hôm nay không được đâu [name].[r]
Em sắp phải đi học rồi nên không đi được đâu ạ.[p_][f/s_nt][end_talk][endif]

[if exp="f.dress==0 || f.dress==5 || f.dress==6 || f.dress>=1001 && f.dress<=3000" ]
[Syl][name][f/sclcp] à! mặc kiểu này em không thể ra ngoài được đâu...[sm_09][p_][eval exp="f.system_act=1" ][return_menu][endif]
[if exp="f.hat==11 || f.hat>=41 && f.hat<=57 || f.hat==501"][eval exp="f.hat_check='yet'"]
[else]
[eval exp="f.hat_check='non'"]
[endif]
[if exp="f.thoi_tiet>=1 && f.hat_check=='non'"]
#
(Thời tiết hôm nay không tốt, nên đội một chiếc mũ cho Sylvie-chan)[p]
[jump target="*hat_up"]
[else][jump target="*out_continue"]
[endif]

*out_continue
[cm]
[set_stand][bg_door]
[syl]
[if exp="f.syl_game1=='out'"]
[f/sp][show_stand]Là cuộc hẹn mà [name] đã hứa nhỉ?[lr_]
[f/ss]Đi đâu cũng được ạ, chỉ cần có [name] bên cạnh em[p_]
[elsif exp="f.intro_flag=='alone'" ][eval exp="f.intro_flag=0" ]
	[f/nt][show_stand]…。[lr_]
	[f/re]Em cũng muốn, được không ạ？[p_]
	[f/cl_nt]…。[lr_]
	[f/]Em hiểu rồi ạ。[lr_]
	[f/re]Dù không thể vác nặng được nhưng em vẫn sẽ đi cùng anh…。[p_]
[elsif exp="f.step==3" ][f/][show_stand]
	Em có thể cùng đi với anh chứ？[p_]
[elsif exp="f.step==4" ][f/][show_stand]
	Anh đi ra ngoài sao ạ。[lr_]
	[f/re]Hãy cho phép em đi cùng。[p_]
[elsif exp="f.step==5" ][f/s][show_stand]
	Anh lại đi ra ngoài。[lr_]
	[f/re]…Em háo hức lắm。[p_]
[elsif exp="f.step==6" ][f/ss][show_stand]
	Vâng，chúng ta hãy cùng nhau đi。[lr_]
	[f/ss]Đi cùng [name]，bất cứ đâu em cũng thấy hạnh phúc。[p_]
[elsif exp="f.love>500" ]
	[f/ssp][show_stand]
	Vâng，hãy đưa em đi cùng[lr_]bất kể anh đi đâu，cũng đừng rời xa em…。[p_]
[endif]

;;外出先選択肢
[_]Đi đâu bây giờ?[l]
[if exp="f.step>=6" ]
[button storage="act_with/wood.ks" target="*wood" graphic="ch/wood.png" x="0" y="300" ][endif]
[button target="*town" graphic="ch/town.png" x="0" y="180" ]
[button target="*remind_" graphic="ch/remind.png" x="0" y="420" ][s]

*remind
[cm]（Thôi, ở nhà[p_][eval exp="f.system_act=1" ][return_menu]
*remind_
[cm]（Thôi, ở nhà[p_][eval exp="f.system_act=1" ][return_bace]

;;街へ
*town
[cm][stop_bgm][set_black]
[if exp="f.step<=4" ][f/nt][elsif exp="f.step==5" ][f/s_nt][elsif exp="f.step==6" ][f/s_nt][elsif exp="f.love>1000 && f.step>=6" ][f/sp_nt][endif]
[bg_town][bgm_OB][set_weather][show_stand]
Đi đến thị trấn。[l_]
[if exp="f.step<=5" ][jump storage="intro/town.ks" target="*choise_intro" ][endif]

;;街中選択肢
*choise
[if exp="f.act<=2" ][eval exp="f.lunch_yet=1" ][endif]
[act_win_stand][mod_win st="o/win/out_win.png" ][set_time]

[if exp="f.act<=4" ]
[button storage="act_with/shop.ks" target="*shop" graphic="s_menu/shop.png" x="845" y="400" ][endif]
[if exp="f.act==3 || f.act==4" ]
[button storage="act_with/cafe.ks" target="*cafe_" graphic="s_menu/cafe.png" x="845" y="320" ][endif]
[button storage="act_with/market.ks" target="*market" graphic="s_menu/market.png" x="845" y="240" ]
[button storage="act_with/hiroba.ks" target="*hiroba" graphic="s_menu/stay_hiroba.png" x="845" y="160" ]
[button target="*back_home" graphic="s_menu/go_home.png" x="845" y="480" ][s]

*back_home
[if exp="f.s_studi=='yet' && f.thu<=5 && f.act<=3"]
[cm][_](Tôi sẽ về nhà...[p]
[jump storage="mod/home_alone.ks" target="*home"][endif]
[cm][_]（Hôm nay mình đã mua những thứ cần thiết cho cuộc sống…。[p_]
[stop_bgm][jump target="*after_town" ]

;;帰宅時
*after_town
[_][chara_stop][stop_bgm][black]…[p][timer][eval exp="f.out=1" ]
[bgm_SG][return_bace]

;;---------------------------đội mũ-----------------------------------------------------------------
*hat_up
[cm]
[button  target="*yes_hat"  graphic="s_ch/yes_hat.png"  x="650"  y="180" ]
[button  target="*no_hat"  graphic="s_ch/no_hat.png"  x="650"  y="300" ]
[s ]
*yes_hat
[cm]
[return_menu]
*no_hat
[cm]
[eval exp="f.hp=f.hp-12"][hp_return]
[jump target="*out_continue"]