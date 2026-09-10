;;見送り
*alone
[cm][set_stand][bg_door][eval exp="f.last_act='out_alone'" ]
[_]（Tôi để Sylvie ở lại trông nhà và bắt đầu ra ngoài mua vài thứ.[p_]
[syl][f/nt][show_stand]
[if exp="f.act>=5" ][f/]Cũng khá muộn rồi, anh vẫn muốn ra ngoài sao？[p_]
[else][f/]Anh sẽ đi một mình ạ？[p_][endif]

[if exp="f.love<=500" ][jump target="*a" ]
[elsif exp="f.love<=1000" ][jump target="*b" ]
[elsif exp="f.love<=1500" ][jump target="*b_c" ]
[elsif exp="f.love<=2000" ][jump target="*c_d" ]
[else][jump target="*d_e" ][endif]

*b_c
[if exp="f.lust<=500" ][jump target="*b" ][else][jump target="*c" ][endif]
*c_d
[if exp="f.lust<=1000" ][jump target="*b_c" ][else][jump target="*d" ][endif]
*d_e
[if exp="f.lust<=1500" ][jump target="*c_d" ][else][jump target="*e" ][endif]

*a
[f/s]Vâng! Anh đi đường cẩn thận。[p_]
[jump target="*outside" ]
*b
[f/s]Vâng! Anh đi đường cẩn thận。[lr_]
[f/ss]Em sẽ trông nhà cẩn thận。[p_]
[jump target="*outside" ]
*c
[f/s]Vâng! Anh đi đường cẩn thận。[lr_]
[f/scl]…Em sẽ đợi anh ở nhà。[p_]
[jump target="*outside" ]
*d
[f/s]Vâng! Anh đi đường cẩn thận。[lr_]
[f/cl]Anh hãy sớm trở về nhé。[p_]
[jump target="*outside" ]
*e
[f/c]Vâng! Anh đi đường cẩn thận。[p_]
[f/clc]Em sẽ ở nhà ạ…。[p_]

;;出先
*outside
[stop_bgm][black]
[_]…。[p_]
[if exp="f.code_ss=='ful' && f.step>=6"][else][c_ch][endif]
[if exp="f.act==0 && f.book==1" ][jump storage="act_alone/ferrum.ks" target="*ferrum" ][endif]

*not_call
[bg_town][set_weather][act_win_stand]

[if exp="f.pngt>=1"][else]
Tôi đã mua đủ những thứ mình cần. Có lẽ nên về thôi.[p]
[jump target="*back_home"]
[endif]

[if exp="f.act>=5" ]
[set_time]
Tôi đã mua đủ những gì mình cần。[lr_]
Có nên rẽ vào đâu đó một chút không nhỉ？[l_]
[button storage="act_alone/shop_night.ks" target="*shop" graphic="ch/shop.png" x="0" y="260" ]
[button target="*back_home_n" graphic="ch/back.png" x="0" y="410" ]
[elsif exp="f.act<=4 && f.zince<=119999"]
[mod_win st="o/win/out_win.png" ][set_time]
Tôi đã mua đủ những gì mình cần。[lr_]
Tiền cũng không còn đủ để làm việc gì nữa. Nên đi về thôi.[p_]
[eval exp="f.ch_check='true'"]
[jump target="*back_home"]
[elsif exp="f.tiet_khi>=0 && f.love>=500"][bgm_OB]
[mod_win st="o/win/out_win.png" ][set_time]
Tôi đã mua đủ những gì mình cần。[lr_]
Có nên rẽ vào đâu đó một chút không nhỉ？[l_]

[if exp="f.thoi_tiet==0 && f.love>=300 || f.thoi_tiet==3 && f.love>=300 || f.thoi_tiet==1 && f.love>=300"]
[button storage="mod/hiroba_alone.ks" target="*hiroba"  graphic="s_menu/stay_hiroba.png"  x="845"  y="160" ]
[button storage="mod/wood_alone.ks" target="*wood"  graphic="s_menu/wood.png"  x="845"  y="240" ]
[endif]
[if exp="f.sachi_date>=1 && f.act<=4"]
[button  storage="mod/shop_sachi.ks"  target="*shop"  graphic="s_menu/shop.png"  x="845"  y="320" ][endif]
[button storage="act_alone/cafe_alone.ks" target="*cafe" graphic="s_menu/cafe.png"  x="845"  y="400" ]
[button  storage="mod/market_alone.ks"  target="*market"  graphic="s_menu/market.png"  x="845"  y="480" ]
[button target="*back_home" graphic="s_menu/go_home.png"  x="845"  y="560" ]

[else]
Tôi đã mua đủ những thứ mình cần. Có lẽ nên về thôi.[p]
[jump target="*back_home"]
[endif]
[cancelskip][s]


*back_home
[cm]
[_]（Tôi sẽ đi thẳng về nhà。[p_]
[eval exp="f.miyage='nothing'" ][stop_bgm]
[jump target="*home" ]
*back_home_n
[cm]
[_]（Tôi sẽ đi thẳng về nhà。[p_]
[eval exp="f.shop_night='not'" ][stop_bgm]
[jump target="*home" ]

;;帰宅
*home
[cm]
[if exp="f.s_studi=='yet' && f.thu<=5 && f.act<=3"]
[jump storage="mod/home_alone.ks" target="*home"][endif]
[bgm_JH][chara_00][set_stand]
[_]（…[p_]
[if exp="f.act>=4 && f.love>=1000 && f.vgf>=1"]
[jump storage="mod/go_home.ks" target="*event"][endif]
[if exp="f.self>=1" ][else][eval exp="f.self=0" ][endif]
[if exp="f.lust>=150 && f.self==0 && f.miyage=='nothing' || f.lust>=150 && f.self==0 && f.shop_night=='not'" ]
[jump storage="H/self.ks" target="*H_self_first" ][endif]

;[if exp="f.lust>=150 && f.self_c>=10 && f.miyage=='nothing' || f.lust>=150 && f.self==0 && f.shop_night=='not'" ]


[if exp="f.sexless_c>=1 && f.self>=1" ][eval exp="f.sexless=f.sexless-1" ]
[eval exp="f.self=f.self+1" ][eval exp="f.lust=f.lust+1" ][endif]
[eval exp="f.daily_out='alone'" ]

[if exp="f.talk=='nxy'"]
[random_25][else][eval exp="f.r='non'"][endif]
[if exp="f.sy_ne_st>=1 && f.ne_x_s>=70 && f.r>=8"]
[eval exp="f.talk=0"]
[jump storage="mod/neph_x_syl1.ks" target="*begin"]
[elsif exp="f.sy_ne_st>=1 && f.ne_x_s>=60 && f.r>=10"]
[eval exp="f.talk=0"]
[jump storage="mod/neph_x_syl1.ks" target="*begin"]
[elsif exp="f.sy_ne_st>=1 && f.ne_x_s>=50 && f.r>=12"]
[eval exp="f.talk=0"]
[jump storage="mod/neph_x_syl1.ks" target="*begin"]
[elsif exp="f.sy_ne_st>=1 && f.ne_x_s>=40 && f.r>=14"]
[eval exp="f.talk=0"]
[jump storage="mod/neph_x_syl1.ks" target="*begin"]
[elsif exp="f.sy_ne_st>=1 && f.ne_x_s>=30 && f.r>=15"]
[eval exp="f.talk=0"]
[jump storage="mod/neph_x_syl1.ks" target="*begin"]
[elsif exp="f.sy_ne_st>=1 && f.r<=5"]
[eval exp="f.talk=0"]
[jump storage="mod/neph_x_syl1.ks" target="*begin"]
[endif]

[if exp="f.love<=500" ][jump target="*a_" ]
[elsif exp="f.love<=1000" ][jump target="*b_" ]
[elsif exp="f.love<=1500" ][jump target="*b_c_" ]
[elsif exp="f.love<=2000" ][jump target="*c_d_" ]
[else][jump target="*d_e_" ][endif]

*b_c_
[if exp="f.lust<=500" ][jump target="*b_" ]
[else][jump target="*c_" ][endif]
*c_d_
[if exp="f.lust<=1000" ][jump target="*b_c_" ]
[else][jump target="*d_" ][endif]
*d_e_
[if exp="f.lust<=1500" ][jump target="*c_d_" ]
[else][jump target="*e_" ][endif]

*a_
[bg_door][f/s_nt][show_stand]
[f/s]Ah, mừng anh đã về [name]。Anh đi mua sắm tốt chứ ![p_]
[jump target="*end" ]
*b_
[bg_door][f/ss_nt][show_stand]
[f/s]Ah, mừng anh đã về [name]。[lr_]
[f/ss]Anh đi mua sắm tốt chứ ![p_]
[_]（Khoảnh khắc mà tôi mở cửa, Sylvie chạy tới chào đón tôi[p_]
[jump target="*end" ]
*c_
[bg_door][f/sp_nt][show_stand]
[f/s]Mừng anh đã về、[name]。[lr_]
[f/scl]Anh đi mua sắm thế nào rồi？[p_]
[_]（Khi tôi vừa đặt tay lên nắm cửa。[lr_]
Có vẻ Sylvie đã chờ đợi tôi từ bên cửa sổ。[p_]
[jump target="*end" ]
*d_
[bg_doorout]
[_]（Khoảnh khắc mà tôi mở cửa, Sylvie chạy tới chào đón tôi[p_]
[f/ssp_nt][show_stand]
[f/s]Mừng anh đã về、[name]。[p_]
[f/cl]Ah,...etou...em không thể đợi được lâu hơn…。[p_]
[_]（Dường như cô ấy luôn chờ đợi tôi bên cửa sổ。[p_]
[jump target="*end" ]
*e_
[bg_doorout]
[_]（Khoảnh khắc mà tôi mở cửa, Sylvie chạy tới chào đón tôi[p_]
[show_stand]
[f/c]Mừng anh đã về、[name]。[lr_]
[_]（Sylvie chạy ngay tới và ôm chặt lấy tôi。[p_]
[f/clc]Không sao, không sao đâu...em ổn mà…。[p_]
[jump target="*end" ]


*end
[if exp="f.shop_night=='bought'" ][jump target="*present" ]
[elsif exp="f.shop_night=='went' || f.shop_night=='not' || f.miyage=='non' || f.miyage=='nothing'" ]
[jump storage="act_with/go_out.ks" target="*after_town" ][endif]


[syl][f/s]…Ah、[miyage][if exp="f.tea_dorayaki==0 && f.miyage=='dorayaki' || f.tea_youkan==0 && f.miyage=='youkan'" ]？[endif]
Anh đã mua quà cho em ư？[p_]
[f/re]Vậy chúng ta sẽ cùng thưởng thức sau khi ăn cơm xong。[lr_]
[f/ss]Cảm ơn anh、[name]。[p_]
[jump storage="act_with/go_out.ks" target="*after_town" ]

*present
[syl][f/]Ah, anh đã mua thêm thứ gì vậy？[lr_]
[f/re]…cho em ư？[p_]
[f/p]đây là…。[lr_]

[if exp="f.lust<=200" ][f/clp]không đâu ạ、nếu [name] muốn, em sẽ thử ạ…。[p_]
[elsif exp="f.lust<=1000" ][f/sp]…Vâng、em rất thích nó ạ [p_]
[else][f/sp]…vâng、em sẽ làm theo nhưng gì [name] thích。[p_]
[f/s][name]Vì em muốn là người mà [name] thích nhất…♡[p_]
[endif]

[black][jump storage="act_with/go_out.ks" target="*after_town" ]



