;;
*wood
[cm]
[eval exp="f.dress_save=0"]
[eval exp="f.syl_down=='non'"]
[stop_bgm][_][set_black][f/s_nt]
[bg_outside][set_weather][show_stand][bgm_AT]
[act_win_stand][eval exp="f.out=1"]
[eval exp="f.act_al=0"]
[if exp="f.wood==0" ][eval exp="f.wood=1" ]
	[_]（Rừng này có rất nhiều thực vật, dược thảo và các quả có thể ăn được）[p_]
	（Nếu chúng ta không đi vào Sâu chúng ta không phải lo lắng về việc gặp bất kỳ động vật hoang dã nào.[lr_]
	（Hãy cùng hãy đi khám phá một chút với Sylvie）[p_]
	[syl][f/s]vậy ra có một nơi như thế này à？[lr_]
	[f/re]Vậy, xin phép cho em đi cùng anh[p_]
[elsif exp="f.thoi_tiet==1"]
[syl][f/s]Một cuộc đi bộ trong rừng dưới cơn mưa？[lr_]
	[f/ss]Vâng, tuy có hơi lạnh một chút nhưng nó thật lãng mạn ạ[p_]
[elsif exp="f.thoi_tiet==3"]
[syl][f/s]Một cuộc đi bộ trong rừng dưới trời tuyết？[lr_]
	[f/ss]Vâng, tuy có hơi lạnh một chút nhưng đi với anh em luôn thấy ấm áp[p_]
[else]
	[syl][f/s]Một cuộc đi bộ trong rừng？[lr_]
	[f/ss]Vâng, Hãy để em được đi cùng anh[p_]
[endif]
[jump target="*choice"]

*choice
[_][act_win_stand]
[eval exp="f.act_al=f.act_al+1"]
[if exp="f.act_al>=2"]
[timer][eval exp="f.act_al=0"][endif]
[eval exp="f.love=f.love+1" ][eval exp="f.daily_wood=f.daily_wood+1" ]
[if exp="f.act>=5"][free_layermode time="100" wait="false" ][endif]
[bg_outside]
[if exp="f.act==6" ]
（Mặt trời đã dần buông xuống…。[p_][jump target="*go_home" ][endif]

[mod_win st="o/win/out_win_s.png" ][set_time][set_weather]
[button target="*re" graphic="s_menu/walk_again.png" x="845" y="160" ]
[if exp="f.book==1" ][button target="*find" graphic="s_menu/find.png" x="845" y="230" ][endif]
[if exp="f.last_act!='wood'" ][button target="*walk_H" graphic="s_menu/get_rest.png" x="845" y="300" ][endif]
[button target="*go_home" graphic="s_menu/go_home.png" x="845" y="370" ]
[s]

*re
[cm]
[mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]

;[random_10][if exp="f.r<=1" ][jump target="*walk_H" ][endif]
[if exp="f.book=='non'" ][random_33][jump target="*walk" ]
[else][random_54][jump target="*walk" ][endif]


*go_home
[cm][eval exp="f.act_al=0"][mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ][stop_bgm]
[_]（Hãy xem đây như một ngày đi dạo rồi về nhau。[p_]
[f/s][syl]Vâng! Chúng ta sẽ cùng về nhà ạ。[p_]
[bgm_SG][return_bace]

*find
[cm][mod_win st="00.png" ]
[chara_mod name="other" time="1" storage="00.png" ][random_7]
[if exp="f.r>=1 && f.r<=3" ][jump target="*walk_flower" ]
[elsif exp="f.r>=4 && f.r<=6" ][jump target="*walk_flower_b" ]
[else][jump target="*re" ][endif]

*walk

[syl][if exp="f.r==1" ][jump target="*walk1" ][elsif exp="f.r==2" ][jump target="*walk2" ]
[elsif exp="f.r==3" ][jump target="*walk3" ][elsif exp="f.r==4" ][jump target="*walk4" ]
[elsif exp="f.r==5" ][jump target="*walk5" ][elsif exp="f.r==6" ][jump target="*walk6" ]
[elsif exp="f.r==7" ][jump target="*walk7" ][elsif exp="f.r==8" ][jump target="*walk8" ]
[elsif exp="f.r==9" ][jump target="*walk9" ][elsif exp="f.r==10" ][jump target="*walk10" ]
[elsif exp="f.r==11" ][jump target="*walk11" ][elsif exp="f.r==12" ][jump target="*walk12" ]
[elsif exp="f.r==13" ][jump target="*walk13" ][elsif exp="f.r==14" ][jump target="*walk14" ]
[elsif exp="f.r==15" ][jump target="*walk15" ][elsif exp="f.r==16" ][jump target="*walk16" ]
[elsif exp="f.r==17" ][jump target="*walk17" ][elsif exp="f.r==18" ][jump target="*walk18" ]
[elsif exp="f.r==19" ][jump target="*walk19" ][elsif exp="f.r==20" ][jump target="*walk20" ]
[elsif exp="f.r==21" ][jump target="*walk21" ][elsif exp="f.r==22" ][jump target="*walk22" ]
[elsif exp="f.r==23" ][jump target="*walk23" ][elsif exp="f.r==24" ][jump target="*walk24" ]
[elsif exp="f.r==25" ][jump target="*walk25" ][elsif exp="f.r==26" ][jump target="*walk26" ]
[elsif exp="f.r==27" ][jump target="*walk27" ][elsif exp="f.r==28" ][jump target="*walk28" ]
[elsif exp="f.r==29" ][jump target="*walk29" ][elsif exp="f.r==30" ][jump target="*walk30" ]
[elsif exp="f.r==31" ][jump target="*walk31" ][elsif exp="f.r==32" ][jump target="*walk32" ]
[elsif exp="f.r==33" ][jump target="*walk33" ]
;[elsif exp="f.r==34" ][jump target="*walk_H" ]
[elsif exp="f.r>=36 && f.r<=54 && f.sin_t>=50"][jump target="*walk_down"]
[elsif exp="f.r==34" ][jump target="*walk_flower_b" ][else][jump target="*walk_flower" ]



[endif]

;;トーク
*walk1
[f/s]Ah, ở đằng kia.Một con chim nhỏ[lr_]
[f/re]Thật đẹp, nó có màu xanh…[p_]
[jump target="*choice" ]
*walk2
[f/s]Ah, một con bướm đang bay[lr_]
[f/re]Tuyệt làm sao…[p_]
[jump target="*choice" ]
*walk3
[f/s][name]、Có một con sóc ở đằng kia.[lr_]
[f/re]Thật dễ thương[p_]
[f/c]ah, nó chạy mất rồi…[p_]
[jump target="*choice" ]
*walk4
[f/c]ah, một con sâu…[lr_]
[f/re]Nhìn việc nó di chuyển làm em cảm thấy ớn lạnh[p_]
[jump target="*choice" ]
*walk5
[f/c]ah, con sên[lr_]
[f/re]Nghĩ lại thì, khu vực này khá ẩm ướt hơn những khu vực khác[p_]
[f/re]… Chúng ta nên đến những nơi khác？[p_]
[jump target="*choice" ]
*walk6
[f/s]Tiếng chim hót, thật tuyệt vời[lr_]
[f/scl]Em có thể nghe chúng hót từ nhiều nơi khác nhau…[p_]
[jump target="*choice" ]
*walk7
[f/s]Một dòng nước chảy dọc qua khu rừng[p_]
[_]（Có một khúc sông nhỏ ta có thể nhảy qua)[p_]
[syl][f/scl]Dòng nước thật trong veo, âm thanh nghe thật dễ chịu[p_]
[jump target="*choice" ]
*walk8
[f/]Ah? …[p_]
[_]（Tôi bắt gặp sylvie đang bị sảy chân）[p_]
[syl][f/c]Xin lỗi… Có vẻ như em bị vấp vào thứ gì đó[lr_]
[f/sp]Cảm ơn anh rất nhiều [p_]
[jump target="*choice" ]
*walk9
[f/]Một cây nấm với màu sắc rực rỡ[lr_]
[f/c]Những cây nấm như thế thường có độc, đúng không ?[p_]
[jump target="*choice" ]
*walk10
[f/]Một cây nấm bự ![lr_]
[f/s]Nếu cây này ăn được nó sẽ làm dạ dày no nê[p_]
[jump target="*choice" ]
*walk11
[f/]Ah !Em nghĩ Em đã nhìn thấy điều này trong một cuốn sách nào đó trên kệ[lr_]
[name] Cái này có hữu ích không ?[p_]
[_]（Đây… đơn thuần chỉ là cỏ hoang）[p_]
[syl][f/c]Ra là vậy … Em chỉ nghĩ rằng, em muốn hữu ích cho anh nên …[p_]
[jump target="*choice" ]
*walk12
[f/]Em nghĩ rằng, Em đã nhìn thấy điều này trong một cuốn sách trên kệ[lr_]
[f/re][name]，Cái này có hữu ích không？[p_]
[_]（Đây là… Một cây có thể sử dụng cho thành phần của thuốc）[p_]
[syl][f/s]Thật chứ？[lr_]
[f/ssp]Liệu em có ích với [name] không ?[p_]
[jump target="*choice" ]
*walk13
[f/nt][_]（Trời bắt đầu đổ mưa）[p_]
[f/]Ah, Mưa！[lr_]
[f/re]Chỉ là một cơn mưa nắng nó sẽ ngừng sớm nhưng…[lr_]
[f/s]Chúng ta hãy đi đến góc cây nào đó để tránh việc bị ướt [p_]
[jump target="*choice" ]
*walk14
[f/s]Hôm nay, mặt trời thật chói，Nhưng đứng dưới bóng râm cảm thấy thật thoài mái và dễ chịu[p_]
[jump target="*choice" ]
*walk15
[f/s]Có một bóng râm nhỏ ở đây nếu ngồi đây anh có thể thấy bầu trời tuyệt đẹp.[lr_]
[f/re]Sẽ rất tốt nếu chúng ta nghỉ ngơi ở đây một chút?[p_]
[jump target="*choice" ]
*walk16
[f/s]Gió thật sự rất mát.[lr_]Gió ở đây rất khác so với thị trấn[p_]
[f/re]Gió ở đây rất khác so với thị trấn[p_]
[jump target="*choice" ]
*walk17
[f/sp]Trong rừng không náo nhiệt như trong thị trấn, vì thế em cảm thấy như chỉ có em và [name] ở đây [p_]
[jump target="*choice" ]
*walk18
[f/s]Làn gió dưng lại và xung quanh trở nên im lặng.[lr_]
[f/sp]Như thể chỉ còn mình em và[name]trên thế giới này…[p_]
[jump target="*choice" ]
*walk19
[f/]…Em nghĩ vừa có cái gì đó lướt qua[lr_]
[f/re]Có phải là một loài động vật nào đó ???[p_]
[jump target="*choice" ]
*walk20
[f/s]Ah, một bông hoa đẹp.[lr_]
[f/re]Nó có mùi độc đáo, và em chưa từng nhìn thấy nó trong thị trấn.[p_]
[jump target="*choice" ]
*walk21
[f/s]Không có người, không có các công trình xây dựng，[lr_]
[f/re]Đi bộ và nói chuyện ở đây hoàn toàn khác với thành phố[p_]
[jump target="*choice" ]
*walk22
[f/]Đây có phải là một cái cây lớn?[lr_]
[f/re]Phải mất một thời gian khá lâu nó mới to được như vậy.[p_]
[jump target="*choice" ]
*walk23
[f/]Có một cái cây đổ ở đây[lr_]
[f/re]Nhìn không giống như bị ai đó chặt đổ.[p_]
[_]（Có vẻ nó bị rơi được một thời gian[lr_]
[f/re]Em tự hỏi có phải nó bị sét đánh hoặc một thứ gì đó)[p_]
[jump target="*choice" ]
*walk24
[f/scl]EM chưa bao giờ tưởng tượng rằng có thể được đi bộ một cách nhàn nhã[r]
[f/re]Hoặc ngắm một khung cảnh tuyệt đẹp[p_]
[jump target="*choice" ]
*walk25
[f/s]Thật vui khi được đi bộ[lr_]
[f/sclp]Sẽ rất đáng sợ nếu em chỉ đi một mình[r]
[f/re]Nhưng với[name]em cảm thấy rất hạnh phúc[p_]
[jump target="*choice" ]
*walk26
[f/]Các cây to che khuất ánh mặt trời，khu vực trở nên tối đi.[lr_]
[f/clc]Em lo lắng liệu sẽ có chuyện gì xảy ra?[p_]
[jump target="*choice" ]
*walk27
[f/p][name]，uh… Liệu em có thể giữ lấy tay anh？[p_]
[jump target="*choice" ]
*walk28
[f/c]Có khá nhiều cây ở đây vì thế rất khó để tìm đường ra[lr_]
[f/re]Em phải cẩn thận để không bị lạc …[p_]
[jump target="*choice" ]
*walk29
[f/s]Một nơi đẹp đẽ với khu rừng tươi tốt.[lr_]
[f/c]Nhưng không có ánh sáng, tất cả đều sẽ tối đi khi mặt trời lặn đúng chứ ?[lr_] 
[f/clc]Nếu đúng như thế, nó hẳn rất đáng sợ…[p_]
[jump target="*choice" ]
*walk30
[f/]Thị trấn em lớn lên trong cũng có một khu rừng gần đó.[lr_]
[f/cl]Tuy nhiên, có một con chó hoang ở đó vì thế em không thể đến gần đó.[p_]
[f/re]Đó là tại sao em chưa từng đến nơi như thế này trước đây.[p_]
[jump target="*choice" ]
*walk31
[f/]Trước kia, em từng tưởng tượng rừng đáng sợ[lr_]
[f/cl]Có lẽ không đáng sợ như thế.[p_]
[f/re]Có lẽ em chỉ sợ những thứ mà em không biết[lr_]
[f/sp]Tuy nhiên, giờ được đi cùng với [name], em thấy rất vui khi đc khám phá những điều mới.[p_]
[jump target="*choice" ]
*walk32
[f/s]Thật là đẹp, quả dâu đỏ như vậy.[lr_]
[f/]Liệu nó có độc ?[lr_]
[f/c]Mặc dù nó trông rất ngon …[p_]
[jump target="*choice" ]
*walk33
[f/c]Có rất nhiều bọ bay quanh đó.[p_]
[_]（Có thể là một cái xác động vật gần đó, hãy đến đó xem thử)[p_]
[jump target="*choice" ]

*walk_down
[if exp="f.dress>=21 && f.dress<=29 && f.lust>=10 || f.dress>=41 && f.dress<=49 && f.lust>=20" ]
[jump storage="H/wood_f.ks" target="*walk_down"]
[else]
[random_35]
[jump target="*walk"]
[endif]


*walk_flower
[_]（Tôi thấy một bông hoa hồng.）[p_]
[syl][f/]Thật là 1 bông hoa đẹp.[p_]
[if exp="f.book==1" ][random_5][eval exp="f.flower=f.flower+f.r" ]
[_]（Đây là một nguyên liệu tôi thấy trong cuốn sách trước đây.[lr_]
Hãy lấy nó.）[p_]
[jump target="*choice" ]
[else]
[_]（Tôi đã nghe cái này có thể sử dụng cho một số loại thuốc, nhưng tôi tự hỏi nó là cái gì.[lr_]
Đó không phải là một cái gì đó mà tôi có thể sử dụng cho công việc vì vậy tôi sẽ quên nó đi…）[p_]
[jump target="*choice" ][endif]

*walk_flower_b
[_]（Tôi tìm thấy một bông hoa màu xanh.）[p_]
[syl][f/s]Thật là 1 bông hoa đẹp.[p_]
[_]（Đây là một loại thảo dược có tác dụng thư giãn.[lr_]
Bạn có thể làm trà với nó và thậm chí sử dụng nó để làm thuốc. Mình sẽ lấy nó.)[p_]
[random_5][eval exp="f.flower_b=f.flower_b+f.r" ]
[jump target="*choice" ]
*walk_H
[jump target="*w_H"]
[cm][eval exp="f.last_act='wood'" ]
[f/s]Một khu vực rộng rãi, chúng ta có thể nghỉ ngơi một chút tại đây。[p_]
[_]（Có một khoảng trống nhỏ ở phía trước. Một nơi lý tưởng để ngồi nghỉ một lát。[p]
[syl][f/re]Chúng ta dừng lại nghỉ chút nhé,[name]。[p_]
[f/scl_nt]
[_]（Sylvie và tôi cùng ngồi trên bãi cỏ một cách thoải mái và nhìn ngắm xung quanh。[p_]
（Sylvie ôm lấy cánh tay tôi bằng đôi tay của cô ấy…。[p_]

[if exp="f.vgf>=1"][else][cm]
#System
[jump target="*choice" ][endif]

[if exp="f.dress>=21 && f.dress<=29 && f.lust>=10 || f.dress>=41 && f.dress<=49 && f.lust>=20" ]
[button target="*hand" graphic="ch/wood-hand.png" x="0" y="200" ]
[button target="*H_wood" graphic="ch/wood-kiss.png" x="0" y="350" ][s]
[else][eval exp="f.love=f.love+2" ]
…[p_]
（Sylvie và tôi cùng hít thở không khí trong lành…。[p_]
[jump target="*choice" ][endif]



*hand
[cm][syl][f/ssp_nt][um_10]…Um。[p_]
[f/re]Chỉ cần có [name] bên cạnh, em luôn thấy thoải mái ngay cả khi ở ngoài trời…。[p_]
[set_black][set_stand][f/s_nt]
[bg_outside][set_weather][show_stand]
[jump target="*choice" ]

*H_wood
[if exp="f.thoi_tiet>=1"][eval exp="f.hp=f.hp-20"][hp_return][endif]
[cm][black]
[set_nade][f/sp_nt][bg time="400" method="crossfade" storage="bg/outside_nade.jpg" ][set_weather]
[layermode graphic="effect/H/wood_sit.png" time="0" mode="overlay" wait="false" ]
[show_nade_nonbg]
[_]（Tôi ôm chặt lấy Sylvie trong khi đang hôn em ấy。[p_]
[syl][k_01][f/clp_nt]Um…。[p_]
[stop_bgm]

[if exp="f.mood=='calm' && f.lust>=200 && f.m_wood>=2" ]
	（Tôi khẽ đưa lưỡi vào trong miệng nàng。[p_]
（Sylvie cũng khẽ nghiêng đầu, nhắm mắt lại và thưởng thức nụ hôn sâu và dài của tôi。[p_]
	[f/p][k_02]Unm…[name_h]…。[p_][stopse]
	[f/re][sex_name]…Anh muốn làm ở đây luôn ạ？[p_]
	[f/sclp]Vâmg、vậy thì…。[p_]
[elsif exp="f.mood=='calm'" ]
	[f/p]…[name]？[p_][stopse]
	[f/re]Anh muốn… luôn ở đây？[p_]
	[f/sclp]Nó thật xấu hổ、Nhưng nếu đó là vì [name] muốn thì…。[p_]

[elsif exp="f.lust>=600 && f.m_wood>=2 || f.mood=='lust' && f.m_wood>=2" ]
	（Khi tôi hôn Sylvie , lưỡi của em ấy quấn lấy miệng của tôi。[p_]
	（Sylvie cũng khẽ nghiêng đầu, nhắm mắt lại và thưởng thức nụ hôn sâu và dài cuat tôi。[p_]
	[syl][u_02][f/cq]Fuaa!…[name_h]。[p_]
	[f/re]E-Em、không thể đứng vững được nữa…。[p_]
	[chinchin_de_1][sex_name] hãy làm đi ạ…。[r]
	[f/re]Em muốn nó、ngay bây giờ…。[p_]
[elsif exp="f.lust>=200 && f.m_wood>=1 || f.mood=='lust' && f.m_wood>=1" ]
	[k_02]（Khi tôi xâm nhập vào miệng của Sylvie , lưỡi của em ấy quấn lấy miệng của tôi。[p_]
	[f/sp]Unm…[name_h]…。[p_][stopse]
	[f/re][sex_name]… muốn làm ư？[p_]
	[f/sp]Vâng、em sẽ…。[p_]
[else]
	[f/p][na_1]…[name]？[p_]
	[f/re]Anh muốn、…luôn ở đây ạ？[p_]
	[f/clp]nó hơi ngại, nhưng nếu anh muốn,[name]…。[p_]
	[eval exp="f.act_al=0"]
[endif][bgm_MT]
[eval exp="f.dress_hcg='non'"]
[if exp="f.gift>=100"][else]
[jump target="*choice" ][endif]
[button storage="H/wood_f.ks" target="*select_c" graphic="ch/wood-front.png" x="0" y="200" ]
[button storage="H/wood_b.ks" target="*select_c" graphic="ch/wood-back.png" x="0" y="350" ][s]

*w_H
[cm][syl][f/s]Một khu vực rộng rãi, chúng ta có thể nghỉ ngơi một chút tại đây。[p_]
[_]（Có một khoảng trống nhỏ ở phía trước. Một nơi lý tưởng để ngồi nghỉ một lát。[p]
[set_black][chara_00]
[set_dinner][chara_mod name="other" time="0" storage="00.png" ]
[call target="*show_dinner*][f/s_nt]
[bg time="400" method="crossfade" storage="bg/outside_sit.jpg" ]
[layermode graphic="effect/H/wood_sit.png" time="0" mode="overlay" wait="false" ]
[hide_black][eval exp="f.last_act='wood'" ]
[syl][f/re]Chúng ta dừng lại nghỉ chút nhé,[name]。[p_]
[f/scl_nt]
[_]（Sylvie và tôi cùng ngồi trên bãi cỏ một cách thoải mái và nhìn ngắm xung quanh。[p_]
（Sylvie ôm lấy cánh tay tôi bằng đôi tay của cô ấy…。[p_]

[if exp="f.vgf>=1"][else][cm][show_gif][p]
[set_black][set_stand][f/s_nt]
[bg_outside][set_weather][show_stand]
[jump target="*choice" ][endif]

[if exp="f.act<=4"][else]
[set_black][set_stand][f/s_nt]
[bg_outside][set_weather][show_stand]
[jump target="*choice" ][endif]

[if exp="f.dress>=21 && f.dress<=29 && f.lust>=10 || f.dress>=41 && f.dress<=49 && f.lust>=20" ]
[button target="*hand" graphic="ch/wood-hand.png" x="0" y="200" ]
[button target="*H_wood" graphic="ch/wood-kiss.png" x="0" y="350" ][s]
[else][eval exp="f.love=f.love+2" ]
…[p_]
（Sylvie và tôi cùng hít thở không khí trong lành…。[p_]
[set_black][set_stand][f/s_nt]
[bg_outside][set_weather][show_stand]
[jump target="*choice" ][endif]

*H_wood_down
[if exp="f.thoi_tiet>=1"][eval exp="f.hp=f.hp-20"][hp_return][endif]
[cm][black]
[set_nade][f/sp_nt][bg time="400" method="crossfade" storage="bg/outside_nade.jpg" ][set_weather]
[layermode graphic="effect/H/wood_sit.png" time="0" mode="overlay" wait="false" ]
[show_nade_nonbg]
[_]（Tôi ôm chặt lấy Sylvie trong khi đang hôn em ấy。[p_]
[syl][k_01][f/clp_nt]Um…。[p_]
[stop_bgm]

[if exp="f.mood=='calm' && f.lust>=200 && f.m_wood>=2" ]
	（Tôi khẽ đưa lưỡi vào trong miệng nàng。[p_]
（Sylvie cũng khẽ nghiêng đầu, nhắm mắt lại và thưởng thức nụ hôn sâu và dài cuat tôi。[p_]
	[f/sp][k_02]Unm…[name_h]…。[p_][stopse]
	[f/re][sex_name]…Anh muốn làm ở đây luôn ạ？[p_]
	[f/sp]Vâmg、vậy thì…。[p_]
[elsif exp="f.mood=='calm'" ]
	[f/sp]…[name]？[p_][stopse]
	[f/re]Anh muốn… luôn ở đây？[p_]
	[f/clp]Nó thật xấu hổ、Nhưng nếu đó là vì [name] muốn thì…。[p_]

[elsif exp="f.lust>=600 && f.m_wood>=2 || f.mood=='lust' && f.m_wood>=2" ]
	（Khi tôi hôn Sylvie , lưỡi của em ấy quấn lấy miệng của tôi。[p_]
	（Sylvie cũng khẽ nghiêng đầu, nhắm mắt lại và thưởng thức nụ hôn sâu và dài cuat tôi。[p_]
	[syl][u_02][f/cq]Fuaa!…[name_h]。[p_]
	[f/re]E-Em、không thể đứng vững được nữa…。[p_]
	[hora_1][sex_name] hãy làm đi ạ…。[r]
	[f/re]Em muốn nó、ngay bây giờ…。[p_]
[elsif exp="f.lust>=200 && f.m_wood>=1 || f.mood=='lust' && f.m_wood>=1" ]
	[k_02]（Khi tôi xâm nhập vào miệng của Sylvie , lưỡi của em ấy quấn lấy miệng của tôi。[p_]
	[f/sp]Unm…[name_h]…。[p_][stopse]
	[f/re][sex_name]… muốn làm ư？[p_]
	[f/sp]Vâng、em sẽ…。[p_]
[else]
	[f/p][na_1]…[name]？[p_]
	[f/re]Anh muốn、…luôn ở đây ạ？[p_]
	[f/sclp]nó hơi ngại, nhưng nếu anh muốn,[name]…。[p_]
	[eval exp="f.act_al=0"]
[endif][bgm_MT]
[eval exp="f.dress_hcg='non'"]
[if exp="f.pngt>=100"][else]
[set_black][set_stand][f/s_nt]
[bg_outside][set_weather][show_stand]
[jump target="*choice" ][endif]
[jump storage="H/wood_f.ks" target="*select_c"]

*show_dinner
[if exp="f.r=='a'" ][bg time="1" method="crossfade" storage="bg/db-a.jpg" ][chara_mod name="hand_R" time="0" storage="o/food/tbl_a.png" ]
[elsif exp="f.r=='b'" ][bg time="1" method="crossfade" storage="bg/db-b.jpg" ][chara_mod name="hand_R" time="0" storage="o/food/tbl_b.png" ]
[elsif exp="f.r=='c'" ][bg time="1" method="crossfade" storage="bg/db-c.jpg" ][chara_mod name="hand_R" time="0" storage="o/food/tbl_c.png" ][endif]

[chara_show name="other" time="0" height="900" width="1350" wait="false" left="0.1" zindex=4 ]

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
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=130 ]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]


[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=165 ][endif]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=170 ]

[chara_show name="hand_R" time="0" wait="false" left="0.1" zindex=175 ]
[chara_show name="hand_L" time="0" wait="false" left="0.1" zindex=180 ]
[return]