;;メニュー
*menu_button
[if exp="f.ch_win==1" ]
[button target="*shop_dress" graphic="clothe/button-c1.png" x="815" y="33" ][else]
[button target="*shop_dress" graphic="clothe/button-c1-.png" x="815" y="33" ][endif]
;[if exp="f.ch_win==2" ]
;[button target="*shop_dress2" graphic="clothe/button-c2.png" x="865" y="70" ][else]
;[button target="*shop_dress2" graphic="clothe/button-c2-.png" x="865" y="70" ][endif]
;[if exp="f.ch_win==3" ]
;[button target="*shop_dress3" graphic="clothe/button-c3.png" x="910" y="70" ][else]
;[button target="*shop_dress3" graphic="clothe/button-c3-.png" x="910" y="70" ][endif]

;[if exp="f.ch_win==4" ]
;[button target="*shop_hair" graphic="clothe/button-hr.png" x="955" y="70" ][else]
;[button target="*shop_hair" graphic="clothe/button-hr-.png" x="955" y="70" ][endif]
;[if exp="f.ch_win==5" ]
;[button target="*shop_head" graphic="clothe/button-hd.png" x="1010" y="70" ][else]
;[button target="*shop_head" graphic="clothe/button-hd-.png" x="1010" y="70" ][endif]
[if exp="f.ch_win==6 && f.lust>=200" ]
[button target="*shop_acce" graphic="clothe/button-o.png" x="914" y="33" ][elsif exp="f.lust>=300" ]
[button target="*shop_acce" graphic="clothe/button-o-.png" x="914" y="33" ][endif]
;[if exp="f.ch_win==7" ]
;[button target="*shop_leg" graphic="clothe/button-l.png" x="1096" y="70" ][else]
;[button target="*shop_leg" graphic="clothe/button-l-.png" x="1096" y="70" ][endif]
[if exp="f.ch_win==8" ]
[button target="*shop_under" graphic="clothe/button-u.png" x="860" y="33" ][elsif exp="f.lust>=200" ]
[button target="*shop_under" graphic="clothe/button-u-.png" x="860" y="33" ][endif]
;[if exp="f.ch_win==9" ]
;[button target="*shop_other" graphic="clothe/button-o.png" x="1195" y="70" ][else]
;[button target="*shop_other" graphic="clothe/button-o-.png" x="1195" y="70" ][endif]
[button target="*return_menu" graphic="menu/home.png" x="1180" y="560" ]

;[if exp="f.shop_t==1" ]
;[button target="*talk" graphic="clothe/shop-talk.png" x="820" y="20" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*cos_off" graphic="clothe/cos/look_off.png" x="1160" y="610" ][else]
[button target="*cos_on" graphic="clothe/cos/look_on.png" x="1160" y="610" ][endif]
[return]

*cos_off
[cm][eval exp="f.cos_look='off'"][jump target="*show_menu" ]
*cos_on
[cm][eval exp="f.cos_look='on'"][jump target="*show_menu" ]


;;入店
*shop
[cm][stop_bgm][black][eval exp="f.shop_c=0" ]
[random_3][eval exp="f.lady=f.r+10" ]
[random_5]
[if exp="f.aur_love>=30 && f.r==1"][eval exp="f.lady=6"]
[elsif exp="f.aur_love>=30 && f.r==2"][eval exp="f.lady=7"]
[elsif exp="f.aur_love>=30 && f.r==3"][eval exp="f.lady=8"]
[elsif exp="f.aur_love>=30 && f.r<=5"][eval exp="f.lady=12"][endif]
[if exp="f.shop_n==1" ][bgm_DS][bg_shop_n]
[_]（Khi bước vào cửa hàng, tôi thấy diện mạo nó khác hẳn so với ban ngày) 。[p_]
[set_lady][chara_show name="sub" time="100" wait="true" ]
[aurel]
[aur_ara_2]Aa!.. Xin chào quý khách, xin mời tham quan cửa hàng。[p_]
[else][call target="*first_time" ][endif]

[_]（Tôi có chút thắc mắc về những gì họ bán？)[p_]
[eval exp="f.shop_night='went'" ]
[anim name="sub" time="300" left="-300" ]
[chara_mod name="window" time="1" storage="o/win/shop-win.png" ]
[chara_show name="window" time="1" wait="true" left="613" top="22" ]

;;服タブ
*shop_dress
[cm][eval exp="f.ch_win=1" ][call target="*menu_button" ]

[button target="*c_xa_time" graphic="clothe/c_doll.png" x="680" y="165" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c300k.png" x="500" y="165" ][endif]
[if exp="f.Dc_xa[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="904" y="165" ]
[else][button target="*c_xa1" graphic="clothe/bc_white.png" x="904" y="165" ][endif]
[if exp="f.Dc_xa[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="954" y="165" ]
[else][button target="*c_xa2" graphic="clothe/bc_blue.png" x="954" y="165" ][endif]
[if exp="f.Dc_xa[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1004" y="165" ]
[else][button target="*c_xa3" graphic="clothe/bc_pink.png" x="1004" y="165" ][endif]
[if exp="f.Dc_xa[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1054" y="165" ]
[else][button target="*c_xa4" graphic="clothe/bc_yellow.png" x="1054" y="165" ][endif]
[if exp="f.Dc_xa[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1104" y="165" ]
[else][button target="*c_xa5" graphic="clothe/bc_green.png" x="1104" y="165" ][endif]
[if exp="f.Dc_xa[6]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1154" y="165" ]
[else][button target="*c_xa6" graphic="clothe/bc_purple.png" x="1154" y="165" ][endif]
[if exp="f.Dc_xa[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1204" y="165" ]
[else][button target="*c_xa7" graphic="clothe/bc_black.png" x="1204" y="165" ][endif]

[button target="*c_xb_time" graphic="clothe/c_doll2.png" x="680" y="210" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c400k.png" x="500" y="210" ][endif]
[if exp="f.Dc_xb[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="904" y="210" ]
[else][button target="*c_xb1" graphic="clothe/bc_white.png" x="904" y="210" ][endif]
[if exp="f.Dc_xb[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="954" y="210" ]
[else][button target="*c_xb2" graphic="clothe/bc_blue.png" x="954" y="210" ][endif]
[if exp="f.Dc_xb[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1004" y="210" ]
[else][button target="*c_xb3" graphic="clothe/bc_pink.png" x="1004" y="210" ][endif]
[if exp="f.Dc_xb[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1054" y="210" ]
[else][button target="*c_xb4" graphic="clothe/bc_yellow.png" x="1054" y="210" ][endif]
[if exp="f.Dc_xb[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1104" y="210" ]
[else][button target="*c_xb5" graphic="clothe/bc_green.png" x="1104" y="210" ][endif]
[if exp="f.Dc_xb[6]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1154" y="210" ]
[else][button target="*c_xb6" graphic="clothe/bc_purple.png" x="1154" y="210" ][endif]
[if exp="f.Dc_xb[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1204" y="210" ]
[else][button target="*c_xb7" graphic="clothe/bc_black.png" x="1204" y="210" ][endif]


[button target="*c_xc_time" graphic="clothe/c_onep-x.png" x="680" y="255" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c300k.png" x="500" y="255" ][endif]
[if exp="f.Dc_xc[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="904" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc1" graphic="clothe/bc_blue.png" x="904" y="255" ][endif]
[if exp="f.Dc_xc[2]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="954" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc2" graphic="clothe/bc_yellow.png" x="954" y="255" ][endif]
[if exp="f.Dc_xc[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1004" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc3" graphic="clothe/bc_red.png" x="1004" y="255" ][endif]
[if exp="f.Dc_xc[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1054" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc4" graphic="clothe/bc_purple.png" x="1054" y="255" ][endif]
[if exp="f.Dc_xc[5]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1104" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc5" graphic="clothe/bc_white.png" x="1104" y="255" ][endif]
[if exp="f.Dc_xc[6]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1154" y="255" ]
[elsif exp="f.lust>=200" ][button target="*c_xc6" graphic="clothe/bc_black.png" x="1154" y="255" ][endif]
[cancelskip][s]

;;未実装タブ（服、２
;*shop_dress2
;[cm][eval exp="f.ch_win=2" ]
;[chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
;[call target="*menu_button" ][cancelskip][s]

;;アクセタブ
*shop_acce
[cm][eval exp="f.ch_win=6" ]
[chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[call target="*menu_button" ]

[if exp="f.Dac_b[1]==1" ][button target="*bought" graphic="clothe/ac_gold-a-.png" x="680" y="165" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_acce" graphic="clothe/cos/c300k.png" x="500" y="165" ][endif]
[else][button target="*ri_b1" graphic="clothe/ac_gold-a.png" x="680" y="165" ][endif]
[if exp="f.Dac_c[1]==1" ][button target="*bought" graphic="clothe/ac_ring-x-.png" x="975" y="165" ]
[else][button target="*ri_c1" graphic="clothe/ac_ring-x.png" x="975" y="165" ][endif]
[if exp="f.Dac_d[1]==1" ][button target="*bought" graphic="clothe/ac_ring-ch-.png" x="1075" y="165" ]
[else][button target="*ri_d1" graphic="clothe/ac_ring-ch.png" x="1075" y="165" ][endif]
[if exp="f.Dac_b[2]==1" ][button target="*bought" graphic="clothe/ac_sil-a-.png" x="680" y="210" ]
[else][button target="*ri_b2" graphic="clothe/ac_sil-a.png" x="680" y="210" ][endif]
[if exp="f.Dac_c[2]==1" ][button target="*bought" graphic="clothe/ac_ring-x-.png" x="975" y="210" ]
[else][button target="*ri_c2" graphic="clothe/ac_ring-x.png" x="975" y="210" ][endif]
[if exp="f.Dac_d[2]==1" ][button target="*bought" graphic="clothe/ac_ring-ch-.png" x="1075" y="210" ]
[else][button target="*ri_d2" graphic="clothe/ac_ring-ch.png" x="1075" y="210" ][endif]
[cancelskip][s]

;;未実装タブ（靴下,他
;*shop_leg
;[cm][mod_win st="o/win/shop-win.png" ]
;[eval exp="f.ch_win=7" ][call target="*menu_button" ]
;[cancelskip][s]
;*shop_other
;[cm][mod_win st="o/win/shop-win.png" ]
;[eval exp="f.ch_win=9" ][call target="*menu_button" ]
;[cancelskip][s]


;;下着タブ
*shop_under
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=8" ][call target="*menu_button" ]

;[button target="*shop_under" graphic="clothe/u_little.png" x="680" y="165" ]
;[if exp="f.Du_xa[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="165" ]
;[else][button target="*u_xa1" graphic="clothe/bc_white.png" x="835" y="165" ][endif]
;[if exp="f.Du_xa[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="165" ]
;[else][button target="*u_xa2" graphic="clothe/bc_blue.png" x="890" y="165" ][endif]
;[if exp="f.Du_xa[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="165" ]
;[else][button target="*u_xa3" graphic="clothe/bc_pink.png" x="945" y="165" ][endif]
;[if exp="f.Du_xa[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="165" ]
;[else][button target="*u_xa4" graphic="clothe/bc_yellow.png" x="1000" y="165" ][endif]
;[if exp="f.Du_xa[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="165" ]
;[else][button target="*u_xa5" graphic="clothe/bc_green.png" x="1055" y="165" ][endif]
;[if exp="f.Du_xa[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="165" ]
;[else][button target="*u_xa6" graphic="clothe/bc_orange.png" x="1110" y="165" ][endif]
;[if exp="f.Du_xa[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="165" ]
;[else][button target="*u_xa7" graphic="clothe/bc_black.png" x="1165" y="165" ][endif]

[if exp="f.lust>=150" ][button target="*u_xb_time" graphic="clothe/u_r-little.png" x="680" y="210" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_under" graphic="clothe/cos/c60k.png" x="500" y="210" ][endif]
[if exp="f.Du_xb[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="922" y="210" ]
[elsif exp="f.lust>=150" ][button target="*u_xb1" graphic="clothe/bc_white.png" x="922" y="210" ][endif]
[if exp="f.Du_xb[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="972" y="210" ]
[elsif exp="f.lust>=150" ][button target="*u_xb2" graphic="clothe/bc_blue.png" x="972" y="210" ][endif]
[if exp="f.Du_xb[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1022" y="210" ]
[elsif exp="f.lust>=150" ][button target="*u_xb3" graphic="clothe/bc_pink.png" x="1022" y="210" ][endif]
[if exp="f.Du_xb[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1072" y="210" ]
[elsif exp="f.lust>=150" ][button target="*u_xb4" graphic="clothe/bc_yellow.png" x="1072" y="210" ][endif]
[if exp="f.Du_xb[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1122" y="210" ]
[elsif exp="f.lust>=150" ][button target="*u_xb5" graphic="clothe/bc_green.png" x="1122" y="210" ][endif]
[if exp="f.Du_xb[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1172" y="210" ]
[elsif exp="f.lust>=150" ][button target="*u_xb6" graphic="clothe/bc_orange.png" x="1172" y="210" ][endif]
[if exp="f.Du_xb[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1222" y="210" ]
[elsif exp="f.lust>=150" ][button target="*u_xb7" graphic="clothe/bc_black.png" x="1222" y="210" ][endif]

[if exp="f.lust>=200" ][button target="*u_xc_time" graphic="clothe/u_hole.png" x="680" y="255" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_under" graphic="clothe/cos/c200k.png" x="500" y="255" ][endif]
[if exp="f.Du_xc[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="922" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc1" graphic="clothe/bc_white.png" x="922" y="255" ][endif]
[if exp="f.Du_xc[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="972" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc2" graphic="clothe/bc_blue.png" x="972" y="255" ][endif]
[if exp="f.Du_xc[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1022" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc3" graphic="clothe/bc_pink.png" x="1022" y="255" ][endif]
[if exp="f.Du_xc[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1072" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc4" graphic="clothe/bc_yellow.png" x="1072" y="255" ][endif]
[if exp="f.Du_xc[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1122" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc5" graphic="clothe/bc_green.png" x="1122" y="255" ][endif]
[if exp="f.Du_xc[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1172" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc6" graphic="clothe/bc_orange.png" x="1172" y="255" ][endif]
[if exp="f.Du_xc[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1222" y="255" ]
[elsif exp="f.lust>=200" ][button target="*u_xc7" graphic="clothe/bc_black.png" x="1222" y="255" ][endif]

[cancelskip][s]

;;購入
*c_xa_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_xa[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xa[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xa[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xa[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xa[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xa[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xa[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_xa[1]==1" ][else][eval exp="f.Dc_xa[1]=1"][eval exp="f.Dc_xa_per[1]=100" ][endif]
[if exp="f.Dc_xa[2]==1" ][else][eval exp="f.Dc_xa[2]=1"][eval exp="f.Dc_xa_per[2]=100" ][endif]
[if exp="f.Dc_xa[3]==1" ][else][eval exp="f.Dc_xa[3]=1"][eval exp="f.Dc_xa_per[3]=100" ][endif]
[if exp="f.Dc_xa[4]==1" ][else][eval exp="f.Dc_xa[4]=1"][eval exp="f.Dc_xa_per[4]=100" ][endif]
[if exp="f.Dc_xa[5]==1" ][else][eval exp="f.Dc_xa[5]=1"][eval exp="f.Dc_xa_per[5]=100" ][endif]
[if exp="f.Dc_xa[6]==1" ][else][eval exp="f.Dc_xa[6]=1"][eval exp="f.Dc_xa_per[6]=100" ][endif]
[if exp="f.Dc_xa[7]==1" ][else][eval exp="f.Dc_xa[7]=1"][eval exp="f.Dc_xa_per[7]=100" ][endif]
[eval exp="f.Dc_xa[0]='got'" ]
Tài khoản còn [money][p]
[jump target="*buy" ]
;----------------------------------------------------------------------------------------------
*c_xa1
[cm]（Chiếc váy ngủ mỏng 「mầu trắng」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xa[1]=1" ][eval exp="f.Dc_xa_per[1]=100"][eval exp="f.Dc_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xa2
[cm]（Chiếc váy ngủ mỏng 「mầu xanh」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xa[2]=1" ][eval exp="f.Dc_xa_per[2]=100"][eval exp="f.Dc_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xa3
[cm]Chiếc váy ngủ mỏng 「mầu hồng」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xa[3]=1" ][eval exp="f.Dc_xa_per[3]=100"][eval exp="f.Dc_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xa4
[cm]（Chiếc váy ngủ mỏng 「mầu đen」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xa[4]=1" ][eval exp="f.Dc_xa_per[4]=100"][eval exp="f.Dc_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xa5
[cm][call target="*c_xa" ]（Chiếc váy ngủ mỏng 「mầu lục」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xa[5]=1" ][eval exp="f.Dc_xa_per[5]=100"][eval exp="f.Dc_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xa6
[cm][call target="*c_xa" ]（Chiếc váy ngủ mỏng 「mầu tím」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xa[6]=1" ][eval exp="f.Dc_xa_per[6]=100"][eval exp="f.Dc_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xa7
[cm][call target="*c_xa" ]（Chiếc váy ngủ mỏng 「mầu đen」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xa[7]=1" ][eval exp="f.Dc_xa_per[7]=100"][eval exp="f.Dc_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xa
[eval exp="f.Dc_xa[0]='got'" ][return]
;------------------------------------------------------------------------------------------------------
*c_xb_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_xb[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xb[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xb[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xb[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xb[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xb[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xb[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_xb[1]==1" ][else][eval exp="f.Dc_xb[1]=1"][eval exp="f.Dc_xb_per[1]=100" ][endif]
[if exp="f.Dc_xb[2]==1" ][else][eval exp="f.Dc_xb[2]=1"][eval exp="f.Dc_xb_per[2]=100" ][endif]
[if exp="f.Dc_xb[3]==1" ][else][eval exp="f.Dc_xb[3]=1"][eval exp="f.Dc_xb_per[3]=100" ][endif]
[if exp="f.Dc_xb[4]==1" ][else][eval exp="f.Dc_xb[4]=1"][eval exp="f.Dc_xb_per[4]=100" ][endif]
[if exp="f.Dc_xb[5]==1" ][else][eval exp="f.Dc_xb[5]=1"][eval exp="f.Dc_xb_per[5]=100" ][endif]
[if exp="f.Dc_xb[6]==1" ][else][eval exp="f.Dc_xb[6]=1"][eval exp="f.Dc_xb_per[6]=100" ][endif]
[if exp="f.Dc_xb[7]==1" ][else][eval exp="f.Dc_xb[7]=1"][eval exp="f.Dc_xb_per[7]=100" ][endif]
[eval exp="f.Dc_xb[0]='got'" ]
Tài khoản còn [money][p]
[jump target="*buy" ]
;-----------------------------------------------------------------------------------------------------
*c_xb1
[cm]（Chiếc váy ngủ dài 「mầu trắng」 - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xb[1]=1" ][eval exp="f.Dc_xb_per[1]=100"][eval exp="f.Dc_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xb2
[cm]（Chiếc váy ngủ dài 「mầu xanh」 - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xb[2]=1" ][eval exp="f.Dc_xb_per[2]=100"][eval exp="f.Dc_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xb3
[cm]（Chiếc váy ngủ dài 「mầu hồng」 - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xb[3]=1" ][eval exp="f.Dc_xb_per[3]=100"][eval exp="f.Dc_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xb4
[cm]（Chiếc váy ngủ dài 「mầu đen」 - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xb[4]=1" ][eval exp="f.Dc_xb_per[4]=100"][eval exp="f.Dc_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xb5
[cm][call target="*c_xb" ]（Chiếc váy ngủ dài 「Mầu lục」 - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xb[5]=1" ][eval exp="f.Dc_xb_per[5]=100"][eval exp="f.Dc_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xb6
[cm][call target="*c_xb" ]（Chiếc váy ngủ dài 「mầu tím」 - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xb[6]=1" ][eval exp="f.Dc_xb_per[6]=100"][eval exp="f.Dc_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xb7
[cm][call target="*c_xb" ]（Chiếc váy ngủ dài 「mầu đen」 - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xb[7]=1" ][eval exp="f.Dc_xb_per[7]=100"][eval exp="f.Dc_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xb
[eval exp="f.Dc_xb[0]='got'" ][return]
;------------------------------------------------------------------------------------------------------
*c_xc_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_xc[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xc[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xc[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xc[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xc[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_xc[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_xc[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_xc[1]==1" ][else][eval exp="f.Dc_xc[1]=1"][eval exp="f.Dc_xc_per[1]=100" ][endif]
[if exp="f.Dc_xc[2]==1" ][else][eval exp="f.Dc_xc[2]=1"][eval exp="f.Dc_xc_per[2]=100" ][endif]
[if exp="f.Dc_xc[3]==1" ][else][eval exp="f.Dc_xc[3]=1"][eval exp="f.Dc_xc_per[3]=100" ][endif]
[if exp="f.Dc_xc[4]==1" ][else][eval exp="f.Dc_xc[4]=1"][eval exp="f.Dc_xc_per[4]=100" ][endif]
[if exp="f.Dc_xc[5]==1" ][else][eval exp="f.Dc_xc[5]=1"][eval exp="f.Dc_xc_per[5]=100" ][endif]
[if exp="f.Dc_xc[6]==1" ][else][eval exp="f.Dc_xc[6]=1"][eval exp="f.Dc_xc_per[6]=100" ][endif]
;[if exp="f.Dc_xc[7]==1" ][else][eval exp="f.Dc_xc[7]=1"][eval exp="f.Dc_xc_per[7]=100" ][endif]
[eval exp="f.Dc_xc[0]='got'" ]
Tài khoản còn [money][p]
[jump target="*buy" ]
;------------------------------------------------------------------------------------------------------------
*c_xc1
[cm]（Chiếc váy mỏng 「xanh」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xc[1]=1" ][eval exp="f.Dc_xc_per[1]=100"][eval exp="f.Dc_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xc2
[cm]（Chiếc váy mỏng 「vàng」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xc[2]=1" ][eval exp="f.Dc_xc_per[2]=100"][eval exp="f.Dc_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xc3
[cm]（Chiếc váy mỏng 「đỏ」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xc[3]=1" ][eval exp="f.Dc_xc_per[3]=100"][eval exp="f.Dc_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xc4
[cm]（Chiếc váy mỏng 「lục」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xc[4]=1" ][eval exp="f.Dc_xc_per[4]=100"][eval exp="f.Dc_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xc5
[cm]（Chiếc váy mỏng 「trắng」 - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xc[5]=1" ][eval exp="f.Dc_xc_per[5]=100"][eval exp="f.Dc_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xc6
[cm][call target="*c_xc" ]（Chiếc váy mỏng「mầu đen」[ - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dc_xc[6]=1" ][eval exp="f.Dc_xc_per[6]=100"][eval exp="f.Dc_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*c_xc
[eval exp="f.Dc_xc[0]='got'" ][return]

*ri_b1
[cm][call target="*ri_b" ]（khuyên vàng - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dac_b[1]=1" ][eval exp="f.Dac_b_per[1]=100"]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*ri_c1
[cm][call target="*ri_c" ]（khuyên vàng trang trí chữ thập - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dac_c[1]=1" ][eval exp="f.Dac_c_per[1]=100"]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*ri_d1
[cm][call target="*ri_d" ]（Khuyên vàng được nối với nhau - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dac_d[1]=1" ][eval exp="f.Dac_d_per[1]=100"]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*ri_b2
[cm][call target="*ri_b" ]（khuyên bạc - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dac_b[2]=1" ][eval exp="f.Dac_b_per[2]=100"]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*ri_c2
[cm][call target="*ri_c" ]（khuyên bạc trang trí chữ thập - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dac_c[2]=1" ][eval exp="f.Dac_c_per[2]=100"]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*ri_d2
[cm][call target="*ri_d" ]（Khuyên bạc được nối với nhau - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Dac_d[2]=1" ][eval exp="f.Dac_d_per[2]=100"]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------

*ri_b
[eval exp="f.Dac_b[0]='got'" ][return]
*ri_c
[eval exp="f.Dac_c[0]='got'" ][return]
*ri_d
[eval exp="f.Dac_d[0]='got'" ][return]
;-----------------------------------------------------------------------------------------------------
*u_xa_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Du_xa[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xa[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xa[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xa[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xa[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xa[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xa[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Du_xa[1]==1" ][else][eval exp="f.Du_xa[1]=1"][eval exp="f.Du_xa_per[1]=100" ][endif]
[if exp="f.Du_xa[2]==1" ][else][eval exp="f.Du_xa[2]=1"][eval exp="f.Du_xa_per[2]=100" ][endif]
[if exp="f.Du_xa[3]==1" ][else][eval exp="f.Du_xa[3]=1"][eval exp="f.Du_xa_per[3]=100" ][endif]
[if exp="f.Du_xa[4]==1" ][else][eval exp="f.Du_xa[4]=1"][eval exp="f.Du_xa_per[4]=100" ][endif]
[if exp="f.Du_xa[5]==1" ][else][eval exp="f.Du_xa[5]=1"][eval exp="f.Du_xa_per[5]=100" ][endif]
[if exp="f.Du_xa[6]==1" ][else][eval exp="f.Du_xa[6]=1"][eval exp="f.Du_xa_per[6]=100" ][endif]
[if exp="f.Du_xa[7]==1" ][else][eval exp="f.Du_xa[7]=1"][eval exp="f.Du_xa_per[7]=100" ][endif]
[eval exp="f.Du_xa[0]='got'" ]
Tài khoản còn [money][p]
[jump target="*buy" ]
;-----------------------------------------------------------------------------------------------------------

*u_xa1
[cm]（mini-under 「trắng」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xa[1]=1" ][eval exp="f.Du_xa_per[1]=100" ][eval exp="f.Du_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xa2
[cm]（mini-under 「xanh」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xa[2]=1" ][eval exp="f.Du_xa_per[2]=100" ][eval exp="f.Du_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xa3
[cm]（mini-under 「hồng」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xa[3]=1" ][eval exp="f.Du_xa_per[3]=100" ][eval exp="f.Du_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xa4
[cm]（mini-under 「vàng」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xa[4]=1" ][eval exp="f.Du_xa_per[4]=100" ][eval exp="f.Du_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xa5
[cm]（mini-under 「lục」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xa[5]=1" ][eval exp="f.Du_xa_per[5]=100" ][eval exp="f.Du_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xa6
[cm]（mini-under 「đen」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xa[6]=1" ][eval exp="f.Du_xa_per[6]=100" ][eval exp="f.Du_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xa7
[cm][call target="*u_xa" ]（mini-under「đen」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xa[7]=1" ][eval exp="f.Du_xa_per[7]=100" ][eval exp="f.Du_xa[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xa
[eval exp="f.Du_xa[0]='got'" ][return]
;-----------------------------------------------------------------------------------------------------
*u_xb_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Du_xb[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xb[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xb[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xb[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xb[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xb[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xb[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Du_xb[1]==1" ][else][eval exp="f.Du_xb[1]=1"][eval exp="f.Du_xb_per[1]=100" ][endif]
[if exp="f.Du_xb[2]==1" ][else][eval exp="f.Du_xb[2]=1"][eval exp="f.Du_xb_per[2]=100" ][endif]
[if exp="f.Du_xb[3]==1" ][else][eval exp="f.Du_xb[3]=1"][eval exp="f.Du_xb_per[3]=100" ][endif]
[if exp="f.Du_xb[4]==1" ][else][eval exp="f.Du_xb[4]=1"][eval exp="f.Du_xb_per[4]=100" ][endif]
[if exp="f.Du_xb[5]==1" ][else][eval exp="f.Du_xb[5]=1"][eval exp="f.Du_xb_per[5]=100" ][endif]
[if exp="f.Du_xb[6]==1" ][else][eval exp="f.Du_xb[6]=1"][eval exp="f.Du_xb_per[6]=100" ][endif]
[if exp="f.Du_xb[7]==1" ][else][eval exp="f.Du_xb[7]=1"][eval exp="f.Du_xb_per[7]=100" ][endif]
[eval exp="f.Du_xb[0]='got'" ]
Tài khoản còn [money][p]
[jump target="*buy" ]
;--------------------------------------------------------------------------------------------------------
*u_xb1
[cm]（under-đặc biệt 「trắng」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xb[1]=1" ][eval exp="f.Du_xb_per[1]=100" ][eval exp="f.Du_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xb2
[cm]（under-đặc biệt 「xanh」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xb[2]=1" ][eval exp="f.Du_xb_per[2]=100" ][eval exp="f.Du_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xb3
[cm]（under-đặc biệt 「hồng」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xb[3]=1" ][eval exp="f.Du_xb_per[3]=100" ][eval exp="f.Du_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xb4
[cm]（under-đặc biệt 「vàng」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xb[4]=1" ][eval exp="f.Du_xb_per[4]=100" ][eval exp="f.Du_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xb5
[cm]（under-đặc biệt 「lục」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xb[5]=1" ][eval exp="f.Du_xb_per[5]=100" ][eval exp="f.Du_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xb6
[cm]（under-đặc biệt 「đen」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xb[6]=1" ][eval exp="f.Du_xb_per[6]=100" ][eval exp="f.Du_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xb7
[cm][call target="*u_xb" ]（under-đặc biệt 「đen」 - giá 60000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xb[7]=1" ][eval exp="f.Du_xb_per[7]=100" ][eval exp="f.Du_xb[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xb
[eval exp="f.Du_xb[0]='got'" ][return]
;----------------------------------------------------------------------------------------------------
*u_xc_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Du_xc[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xc[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xc[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xc[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xc[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xc[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_xc[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Du_xc[1]==1" ][else][eval exp="f.Du_xc[1]=1"][eval exp="f.Du_xc_per[1]=100" ][endif]
[if exp="f.Du_xc[2]==1" ][else][eval exp="f.Du_xc[2]=1"][eval exp="f.Du_xc_per[2]=100" ][endif]
[if exp="f.Du_xc[3]==1" ][else][eval exp="f.Du_xc[3]=1"][eval exp="f.Du_xc_per[3]=100" ][endif]
[if exp="f.Du_xc[4]==1" ][else][eval exp="f.Du_xc[4]=1"][eval exp="f.Du_xc_per[4]=100" ][endif]
[if exp="f.Du_xc[5]==1" ][else][eval exp="f.Du_xc[5]=1"][eval exp="f.Du_xc_per[5]=100" ][endif]
[if exp="f.Du_xc[6]==1" ][else][eval exp="f.Du_xc[6]=1"][eval exp="f.Du_xc_per[6]=100" ][endif]
[if exp="f.Du_xc[7]==1" ][else][eval exp="f.Du_xc[7]=1"][eval exp="f.Du_xc_per[7]=100" ][endif]
[eval exp="f.Du_xc[0]='got'" ]
Tài khoản còn [money][p]
[jump target="*buy" ]
;-----------------------------------------------------------------------------------------------------------

*u_xc1
[cm][call target="*u_xc" ]（Đồ lót gợi cảm 「trắng」 - giá 200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xc[1]=1" ][eval exp="f.Du_xc_per[1]=100" ][eval exp="f.Du_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xc2
[cm][call target="*u_xc" ]（Đồ lót gợi cảm 「xanh」 - giá 200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xc[2]=1" ][eval exp="f.Du_xc_per[2]=100" ][eval exp="f.Du_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xc3
[cm][call target="*u_xc" ]（Đồ lót gợi cảm 「hồng」 - giá 200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xc[3]=1" ][eval exp="f.Du_xc_per[3]=100" ][eval exp="f.Du_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xc4
[cm][call target="*u_xc" ]（Đồ lót gợi cảm 「vàng」 - giá 200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xc[4]=1" ][eval exp="f.Du_xc_per[4]=100" ][eval exp="f.Du_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xc5
[cm][call target="*u_xc" ]（Đồ lót gợi cảm 「lục」 - giá 200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xc[5]=1" ][eval exp="f.Du_xc_per[5]=100" ][eval exp="f.Du_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xc6
[cm][call target="*u_xc" ]（Đồ lót gợi cảm 「cam」 - giá 200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xc[6]=1" ][eval exp="f.Du_xc_per[6]=100" ][eval exp="f.Du_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xc7
[cm][call target="*u_xc" ]（Đồ lót gợi cảm 「đen」 - giá 200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*after_shop_n" ]
[else]
[eval exp="f.Du_xc[7]=1" ][eval exp="f.Du_xc_per[7]=100" ][eval exp="f.Du_xc[0]='got'" ]

Tài khoản còn [money][p_][jump target="*buy" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_xc
[eval exp="f.Du_xc[0]='got'" ][return]

*buy
Tôi mua。[p_][eval exp="f.shop_night='bought'" ]
[jump target="*after_shop_n" ]

*bought
[cm]（Tôi nên mua thêm vài thứ nữa。[l_]

;;行動後
*show_menu
[if exp="f.ch_win==1" ][jump target="*shop_dress" ]
[elsif exp="f.ch_win==2" ][jump target="*shop_dress2" ]
[elsif exp="f.ch_win==3" ][jump target="*shop_dress3" ]
[elsif exp="f.ch_win==4" ][jump target="*shop_hair" ]
[elsif exp="f.ch_win==5" ][jump target="*shop_head" ]
[elsif exp="f.ch_win==6" ][jump target="*shop_acce" ]
[elsif exp="f.ch_win==7" ][jump target="*shop_leg" ]
[elsif exp="f.ch_win==8" ][jump target="*shop_under" ]
[elsif exp="f.ch_win==9" ][jump target="*shop_other" ][endif]

*return_menu
[cm][eval exp="f.shop_c=7" ]
[_]Chắc vậy được rồi, nên về nhà thôi。[p_][jump target="*end_shop" ]

*after_shop_n
[cm][eval exp="f.shop_c=f.shop_c+1" ]
[jump target="*show_menu" ]
[if exp="f.lust>=200 && f.shop_c<=4" ][jump target="*show_menu" ]
[elsif exp="f.lust>=400 && f.shop_c<=5" ][jump target="*show_menu" ]
[elsif exp="f.lust>=700 && f.shop_c<=6" ][jump target="*show_menu" ]
[elsif exp="f.lust>=1000 && f.shop_c<=7" ][jump target="*show_menu" ]
[elsif exp="f.lust>=1200 && f.shop_c<=8" ][jump target="*show_menu" ]
[elsif exp="f.lust>=1500 && f.shop_c<=9" ][jump target="*show_menu" ][endif]

*end_shop
[cm][black][bg_shop_n][eval exp="f.act=f.act+1" ][eval exp="f.out=1" ][eval exp="f.last_act='shop'" ]
[set_lady][chara_show name="sub" time="100" wait="true" ]
[_]Có lẽ nhiêu đây là đủ rồi。[p_]
[aurel]Hẹn gặp lại quý khách。[lr]
[wait time="10"][aur_sm_2]fufufu…。[p_]
[black][_][bgm_SG]
[jump storage="act_alone/out_alone.ks" target="*home" ]

*;talk
;[cm][eval exp="f.shop_t=0" ]
;[iscript]
;f.shop_t=Math.floor(Math.random() * 13 + 1);
;[endscript]
;[jump target="*shop_dress" ]


;;初回イベ
*first_time
[black][eval exp="f.shop_n=1" ]
[eval exp="f.Dac_a=[]" ][eval exp="f.Dac_b=[]" ]
[_]Thông thường vào thời điểm này , các cửa hàng đã được đóng cửa , nhưng đèn[lr_]
Dường như quên tắt, chắc chủ cửa hàng không muốn làm điều đó[p_]
[bgm_DS][bg_shop_n]
(Ánh sáng từ đèn điện và sự phản chiếu trên hàng hóa thật khác so với ban ngày)[p_]
[set_lady][chara_show name="sub" time="100" wait="true" ]
[aurel]
[aur_ara_4]Oh , chào quý khách! mừng ngài đã trở lại![lr_]
Từ hôm nay, shop chúng tôi làm việc cả về "đêm"[p_]

[aur_sa_1]Cửa hàng này...[lr_]
chỉ bán đồ dành cho phụ nữ[lr_]
Quý khách có thể mua về làm "quà" cho ai đó![p_]
Tất nhiên "thông tin" có thể được giữ bí mật[lr_]
Quý khách không cần lo lắng[lr_]
[aur_aha_1]Fu...fuu ...[p_]
[return]

