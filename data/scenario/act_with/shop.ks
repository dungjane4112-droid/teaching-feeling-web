h_f;;タブメニュー
*menu_button
[if exp="f.ch_win==1" ]
[button target="*shop_dress" graphic="clothe/button-c1.png" x="815" y="33" ][else]
[button target="*shop_dress" graphic="clothe/button-c1-.png" x="815" y="33" ][endif]
[if exp="f.ch_win==2 && f.step==6" ]
[button target="*shop_dress2" graphic="clothe/button-c2.png" x="860" y="33" ]
[elsif exp="f.step==6" ][button target="*shop_dress2" graphic="clothe/button-c2-.png" x="860" y="33" ][endif]
;[if exp="f.ch_win==3" ]
;[button target="*shop_dress3" graphic="clothe/button-c3.png" x="815" y="64" ][else]
;[button target="*shop_dress3" graphic="clothe/button-c3-.png" x="815" y="64" ][endif]
[if exp="f.ch_win==4" ]
[button target="*shop_hair" graphic="clothe/button-hr.png" x="904" y="33" ][else]
[button target="*shop_hair" graphic="clothe/button-hr-.png" x="904" y="33" ][endif]
[if exp="f.ch_win==5" ]
[button target="*shop_pin" graphic="clothe/button-pin.png" x="948" y="33" ][else]
[button target="*shop_pin" graphic="clothe/button-pin-.png" x="948" y="33" ][endif]
[if exp="f.ch_win==6 && f.step==6" ]
[button target="*shop_head" graphic="clothe/button-hd.png" x="992" y="33" ]
[elsif exp="f.step==6" ][button target="*shop_head" graphic="clothe/button-hd-.png" x="992" y="33" ][endif]
[if exp="f.ch_win==7" ]
[button target="*shop_leg" graphic="clothe/button-l.png" x="1036" y="33" ][else]
[button target="*shop_leg" graphic="clothe/button-l-.png" x="1036" y="33" ][endif]
[if exp="f.ch_win==8 && f.step==6" ]
[button target="*shop_glasses" graphic="clothe/button-gl.png" x="1080" y="33" ]
[elsif exp="f.step==6" ][button target="*shop_glasses" graphic="clothe/button-gl-.png" x="1080" y="33" ][endif]
[if exp="f.ch_win==9" ]
[button target="*shop_under" graphic="clothe/button-u.png" x="1124" y="33" ]
[else" ][button target="*shop_under" graphic="clothe/button-u-.png" x="1124" y="33" ][endif]
;[if exp="f.ch_win==10 && f.step==6" ]
;[button target="*shop_arm" graphic="clothe/button-arm.png" x="1168" y="33" ]
;[elsif exp="f.step==6" ][button target="*shop_arm" graphic="clothe/button-arm-.png" x="1168" y="33" ][endif]
[if exp="f.ch_win==11 && f.step==6" ]
[button target="*shop_other" graphic="clothe/button-o.png" x="1212" y="33" ]
[elsif exp="f.step==6" ][button target="*shop_other" graphic="clothe/button-o-.png" x="1212" y="33" ][endif]
[button target="*return_menu" graphic="menu/home.png" x="1180" y="560" ]
[if exp="f.step>=6 && f.shop_t==0" ]
[button target="*talk" graphic="clothe/shop-talk.png" x="990" y="80" ][endif]
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
[eval exp="f.talk=f.zince"]
[cm][stop_bgm][black][eval exp="f.hp=f.hp+1"][hp_return]
[random_5][eval exp="f.lady=f.r" ][bg_shop][eval exp="f.shop_c=0" ][bgm_BR]
[_]（Tôi đến cửa hàng bán quần áo.)[p_]
[eval exp="f.r=0"]
[random_5]
[if exp="f.aur_love>=30 && f.r==1"][eval exp="f.lady=6"]
[elsif exp="f.aur_love>=30 && f.r==2"][eval exp="f.lady=7"]
[elsif exp="f.aur_love>=30 && f.r==3"][eval exp="f.lady=8"]
[elsif exp="f.aur_love>=30 && f.r<=5"][eval exp="f.lady=12"][endif]
[set_lady]

[chara_show name="sub" time="100" wait="true" ][eval exp="f.shop_t=0" ]
[aurel][aur_ara_4]Ah..Xin chào quý khách. Hãy thoải mái tham quan cửa hàng nhé.[p_]
[_]（Tôi nên mua gì bây giờ? )[p_]
[anim name="sub" time="300" left="-300" ]
[chara_mod name="window" time="1" storage="o/win/shop-win.png" ]
[chara_show name="window" time="1" wait="true" left="613" top="22" ]

;;服１
*shop_dress
[cm][eval exp="f.ch_win=1" ][call target="*menu_button" ]
;落ち着いた
[button target="*c_b_time" graphic="clothe/c_tite.png" x="680" y="165" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c350k.png" x="500" y="165" ][endif]
[if exp="f.Dc_b[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="920" y="165" ]
[else][button target="*c_b1" graphic="clothe/bc_blue.png" x="920" y="165" ][endif]
[if exp="f.Dc_b[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="970" y="165" ]
[else][button target="*c_b2" graphic="clothe/bc_black.png" x="970" y="165" ][endif]
[if exp="f.Dc_b[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1020" y="165" ]
[else][button target="*c_b3" graphic="clothe/bc_purple.png" x="1020" y="165" ][endif]
[if exp="f.Dc_b[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1070" y="165" ]
[else][button target="*c_b4" graphic="clothe/bc_red.png" x="1070" y="165" ][endif]
[if exp="f.Dc_b[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1120" y="165" ]
[else][button target="*c_b5" graphic="clothe/bc_green.png" x="1120" y="165" ][endif]
[if exp="f.Dc_b[6]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="1170" y="165" ]
[else][button target="*c_b6" graphic="clothe/bc_brown.png" x="1170" y="165" ][endif]
;ひらひら
[if exp="f.step>=4" ][button target="*c_c_time" graphic="clothe/c_hira.png" x="680" y="210" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c500k.png" x="500" y="210" ][endif]
[if exp="f.Dc_c[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="920" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c1" graphic="clothe/bc_blue.png" x="920" y="210" ][endif]
[if exp="f.Dc_c[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="970" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c2" graphic="clothe/bc_black.png" x="970" y="210" ][endif]
[if exp="f.Dc_c[3]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1020" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c3" graphic="clothe/bc_green.png" x="1020" y="210" ][endif]
[if exp="f.Dc_c[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1070" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c4" graphic="clothe/bc_red.png" x="1070" y="210" ][endif]
[if exp="f.Dc_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1120" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c5" graphic="clothe/bc_purple.png" x="1120" y="210" ][endif]
[if exp="f.Dc_c[6]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="1170" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c6" graphic="clothe/bc_brown.png" x="1170" y="210" ][endif]
[if exp="f.Dc_c[7]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1220" y="210" ]
[elsif exp="f.step>=4" ][button target="*c_c7" graphic="clothe/bc_pink.png" x="1220" y="210" ][endif]
;ワンピース
[if exp="f.step>=5" ][button target="*c_e_time" graphic="clothe/c_onep.png" x="680" y="255" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c300k.png" x="500" y="255" ][endif]
[if exp="f.Dc_e[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="920" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e1" graphic="clothe/bc_blue.png" x="920" y="255" ][endif]
[if exp="f.Dc_e[2]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="970" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e2" graphic="clothe/bc_yellow.png" x="970" y="255" ][endif]
[if exp="f.Dc_e[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1020" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e3" graphic="clothe/bc_red.png" x="1020" y="255" ][endif]
[if exp="f.Dc_e[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1070" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e4" graphic="clothe/bc_purple.png" x="1070" y="255" ][endif]
[if exp="f.Dc_e[5]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1120" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e5" graphic="clothe/bc_white.png" x="1120" y="255" ][endif]
[if exp="f.Dc_e[6]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1170" y="255" ]
[elsif exp="f.step>=5" ][button target="*c_e6" graphic="clothe/bc_black.png" x="1170" y="255" ][endif]
;ナース
[if exp="f.step>=6 && f.love>=300" ][button target="*c_f_time" graphic="clothe/c_nurse.png" x="680" y="300" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c700k.png" x="500" y="300" ][endif]
[if exp="f.Dc_f[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="920" y="300" ]
[elsif exp="f.step>=6 && f.love>=300" ][button target="*c_f1" graphic="clothe/bc_white.png" x="920" y="300" ][endif]
[if exp="f.Dc_f[2]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="970" y="300" ]
[elsif exp="f.step>=6 && f.love>=300" ][button target="*c_f2" graphic="clothe/bc_pink.png" x="970" y="300" ][endif]
[if exp="f.Dc_f[3]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1020" y="300" ]
[elsif exp="f.Dc_f[1]==1" ][button target="*c_f3" graphic="clothe/bc_black.png" x="1020" y="300" ][endif]
;和服
[if exp="f.step>=6 && f.love>=400" ][button target="*c_g_time" graphic="clothe/c_wahuku.png" x="680" y="345" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c1200k.png" x="500" y="345" ][endif]
[if exp="f.Dc_g[1]==1" ][button target="*bought" graphic="clothe/bc_red2-.png" x="920" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g1" graphic="clothe/bc_red2.png" x="920" y="345" ][endif]
[if exp="f.Dc_g[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="970" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g2" graphic="clothe/bc_blue.png" x="970" y="345" ][endif]
[if exp="f.Dc_g[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1020" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g3" graphic="clothe/bc_purple.png" x="1020" y="345" ][endif]
[if exp="f.Dc_g[4]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1070" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g4" graphic="clothe/bc_pink.png" x="1070" y="345" ][endif]
[if exp="f.Dc_g[5]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1120" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g5" graphic="clothe/bc_black.png" x="1120" y="345" ][endif]
[if exp="f.Dc_g[6]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1170" y="345" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*c_g6" graphic="clothe/bc_white.png" x="1170" y="345" ][endif]
;セーラー
[if exp="f.step>=6 && f.love>=500" ][button target="*c_h_time" graphic="clothe/c_sera.png" x="680" y="390" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c400k.png" x="500" y="390" ][endif]
[if exp="f.Dc_h[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="920" y="390" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*c_h1" graphic="clothe/bc_white.png" x="920" y="390" ][endif]
[if exp="f.Dc_h[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="970" y="390" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*c_h2" graphic="clothe/bc_black.png" x="970" y="390" ][endif]
[if exp="f.Dc_h[3]==1" ][button target="*bought" graphic="clothe/c_long-w-.png" x="1020" y="390" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*c_h3" graphic="clothe/c_long-w.png" x="1020" y="390" ][endif]
[if exp="f.Dc_h[4]==1" ][button target="*bought" graphic="clothe/c_long-b-.png" x="1162" y="390" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*c_h4" graphic="clothe/c_long-b.png" x="1162" y="390" ][endif]
;エプロンドレス
[if exp="f.step>=6 && f.love>=600" ][button target="*c_i_time" graphic="clothe/c_epdress.png" x="680" y="435" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c800k.png" x="500" y="435" ][endif]
[if exp="f.Dc_i[1]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="920" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i1" graphic="clothe/bc_black.png" x="920" y="435" ][endif]
[if exp="f.Dc_i[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="970" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i2" graphic="clothe/bc_blue.png" x="970" y="435" ][endif]
[if exp="f.Dc_i[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1020" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i3" graphic="clothe/bc_purple.png" x="1020" y="435" ][endif]
[if exp="f.Dc_i[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1070" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i4" graphic="clothe/bc_green.png" x="1070" y="435" ][endif]
[if exp="f.Dc_i[5]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1120" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i5" graphic="clothe/bc_pink.png" x="1120" y="435" ][endif]
[if exp="f.Dc_i[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1170" y="435" ]
[elsif exp="f.step>=6 && f.love>=600" ][button target="*c_i6" graphic="clothe/bc_orange.png" x="1170" y="435" ][endif]
;ブレザー
[if exp="f.step>=6 && f.love>=700" ][button target="*c_j_time" graphic="clothe/c_uni-cold.png" x="680" y="480" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c850k.png" x="500" y="480" ][endif]
[if exp="f.Dc_j[1]==1" ][button target="*bought" graphic="clothe/bc_blue2-.png" x="920" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j1" graphic="clothe/bc_blue2.png" x="920" y="480" ][endif]
[if exp="f.Dc_j[2]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="970" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j2" graphic="clothe/bc_brown.png" x="970" y="480" ][endif]
[if exp="f.Dc_j[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1020" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j3" graphic="clothe/bc_purple.png" x="1020" y="480" ][endif]
[if exp="f.Dc_j[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1070" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j4" graphic="clothe/bc_green.png" x="1070" y="480" ][endif]
[if exp="f.Dc_j[5]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1120" y="480" ]
[elsif exp="f.step>=6 && f.love>=700" ][button target="*c_j5" graphic="clothe/bc_black.png" x="1120" y="480" ][endif]
;シャツネクタイ
[if exp="f.step>=6 && f.love>=750" ][button target="*c_k_time" graphic="clothe/c_uni-warm.png" x="680" y="525" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress" graphic="clothe/cos/c680k.png" x="500" y="525" ][endif]
[if exp="f.Dc_k[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="920" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k1" graphic="clothe/bc_blue.png" x="920" y="525" ][endif]
[if exp="f.Dc_k[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="970" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k2" graphic="clothe/bc_red.png" x="970" y="525" ][endif]
[if exp="f.Dc_k[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1020" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k3" graphic="clothe/bc_purple.png" x="1020" y="525" ][endif]
[if exp="f.Dc_k[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1070" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k4" graphic="clothe/bc_green.png" x="1070" y="525" ][endif]
[if exp="f.Dc_k[5]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="1120" y="525" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k5" graphic="clothe/bc_brown.png" x="1120" y="525" ][endif]
[if exp="f.Dc_k[6]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1170" y="526" ]
[elsif exp="f.step>=6 && f.love>=750" ][button target="*c_k6" graphic="clothe/bc_pink.png" x="1170" y="526" ][endif]
[cancelskip][s]
;;服２
*shop_dress2
[cm][eval exp="f.ch_win=2" ][chara_mod name="window" time="100" storage="o/win/shop-win.png" ][call target="*menu_button" ]
;清楚な服
[if exp="f.love>=800" ][button target="*c_l_time" graphic="clothe/c_seiso.png" x="680" y="165" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress2" graphic="clothe/cos/c830k.png" x="500" y="165" ][endif]
[if exp="f.Dc_l[1]==1" ][button target="*bought" graphic="clothe/bc_blue2-.png" x="894" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l1" graphic="clothe/bc_blue2.png" x="894" y="165" ][endif]
[if exp="f.Dc_l[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="944" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l2" graphic="clothe/bc_black.png" x="944" y="165" ][endif]
[if exp="f.Dc_l[3]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="994" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l3" graphic="clothe/bc_brown.png" x="994" y="165" ][endif]
[if exp="f.Dc_l[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1044" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l4" graphic="clothe/bc_purple.png" x="1044" y="165" ][endif]
[if exp="f.Dc_l[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1094" y="165" ]
[elsif exp="f.love>=800" ][button target="*c_l5" graphic="clothe/bc_green.png" x="1094" y="165" ][endif]
;カジュアル
[if exp="f.love>=900" ][button target="*c_m_time" graphic="clothe/c_hana.png" x="680" y="210" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress2" graphic="clothe/cos/c480k.png" x="500" y="210" ][endif]
[if exp="f.Dc_m[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="894" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m1" graphic="clothe/bc_blue.png" x="894" y="210" ][endif]
[if exp="f.Dc_m[2]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="944" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m2" graphic="clothe/bc_brown.png" x="944" y="210" ][endif]
[if exp="f.Dc_m[3]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="994" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m3" graphic="clothe/bc_green.png" x="994" y="210" ][endif]
[if exp="f.Dc_m[4]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1044" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m4" graphic="clothe/bc_orange.png" x="1044" y="210" ][endif]
[if exp="f.Dc_m[5]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1094" y="210" ]
[elsif exp="f.love>=900" ][button target="*c_m5" graphic="clothe/bc_black.png" x="1094" y="210" ][endif]
;タイトドレス
[if exp="f.love>=1000" ][button target="*c_n_time" graphic="clothe/c_yi.png" x="680" y="255" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress2" graphic="clothe/cos/c940k.png" x="500" y="255" ][endif]
[if exp="f.Dc_n[1]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="894" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n1" graphic="clothe/bc_black.png" x="894" y="255" ][endif]
[if exp="f.Dc_n[2]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="944" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n2" graphic="clothe/bc_white.png" x="944" y="255" ][endif]
[if exp="f.Dc_n[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="994" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n3" graphic="clothe/bc_red.png" x="994" y="255" ][endif]
[if exp="f.Dc_n[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1044" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n4" graphic="clothe/bc_purple.png" x="1044" y="255" ][endif]
[if exp="f.Dc_n[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1094" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n5" graphic="clothe/bc_green.png" x="1094" y="255" ][endif]
[if exp="f.Dc_n[6]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="1144" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n6" graphic="clothe/bc_blue.png" x="1144" y="255" ][endif]
[if exp="f.Dc_n[7]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1194" y="255" ]
[elsif exp="f.love>=1000" ][button target="*c_n7" graphic="clothe/bc_pink.png" x="1194" y="255" ][endif]
;ベルトパンク
[if exp="f.love>=1100" ][button target="*c_o_time" graphic="clothe/c_ali.png" x="680" y="300" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress2" graphic="clothe/cos/c900k.png" x="500" y="300" ][endif]
[if exp="f.Dc_o[1]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="894" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o1" graphic="clothe/bc_black.png" x="894" y="300" ][endif]
[if exp="f.Dc_o[2]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="944" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o2" graphic="clothe/bc_brown.png" x="944" y="300" ][endif]
[if exp="f.Dc_o[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="994" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o3" graphic="clothe/bc_blue.png" x="994" y="300" ][endif]
[if exp="f.Dc_o[4]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1044" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o4" graphic="clothe/bc_purple.png" x="1044" y="300" ][endif]
[if exp="f.Dc_o[5]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1094" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o5" graphic="clothe/bc_red.png" x="1094" y="300" ][endif]
[if exp="f.Dc_o[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1144" y="300" ]
[elsif exp="f.love>=1100" ][button target="*c_o6" graphic="clothe/bc_green.png" x="1144" y="300" ][endif]
;リボン付き
[if exp="f.love>=1200" ][button target="*c_p_time" graphic="clothe/c_pea.png" x="680" y="345" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_dress2" graphic="clothe/cos/c1000k.png" x="500" y="345" ][endif]
[if exp="f.Dc_p[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="894" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p1" graphic="clothe/bc_blue.png" x="894" y="345" ][endif]
[if exp="f.Dc_p[2]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="944" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p2" graphic="clothe/bc_green.png" x="944" y="345" ][endif]
[if exp="f.Dc_p[3]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="994" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p3" graphic="clothe/bc_purple.png" x="994" y="345" ][endif]
[if exp="f.Dc_p[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1044" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p4" graphic="clothe/bc_red.png" x="1044" y="345" ][endif]
[if exp="f.Dc_p[5]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1094" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p5" graphic="clothe/bc_black.png" x="1094" y="345" ][endif]
[if exp="f.Dc_p[6]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1144" y="345" ]
[elsif exp="f.love>=1200" ][button target="*c_p6" graphic="clothe/bc_pink.png" x="1144" y="345" ][endif]
[cancelskip][s]

*shop_dress3
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=3" ][call target="*menu_button" ][cancelskip][s]
;;リボン
*shop_hair
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=4" ][call target="*menu_button" ]
;細いリボン
[button target="*r_a_time" graphic="clothe/hb_ribbon_a.png" x="680" y="165" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_hair" graphic="clothe/cos/c10k.png" x="500" y="165" ][endif]
[if exp="f.Dr_a[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="165" ]
[else][button target="*r_a1" graphic="clothe/bc_blue.png" x="830" y="165" ][endif]
[if exp="f.Dr_a[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="165" ]
[else][button target="*r_a2" graphic="clothe/bc_red.png" x="880" y="165" ][endif]
[if exp="f.Dr_a[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="165" ]
[else][button target="*r_a3" graphic="clothe/bc_yellow.png" x="930" y="165" ][endif]
[if exp="f.Dr_a[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="165" ]
[else][button target="*r_a4" graphic="clothe/bc_green.png" x="980" y="165" ][endif]
[if exp="f.Dr_a[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="165" ]
[else][button target="*r_a5" graphic="clothe/bc_purple.png" x="1030" y="165" ][endif]
[if exp="f.Dr_a[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="165" ]
[else][button target="*r_a6" graphic="clothe/bc_orange.png" x="1080" y="165" ][endif]
[if exp="f.Dr_a[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="165" ]
[else][button target="*r_a7" graphic="clothe/bc_white.png" x="1130" y="165" ][endif]
[if exp="f.Dr_a[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="165" ]
[else][button target="*r_a8" graphic="clothe/bc_black.png" x="1180" y="165" ][endif]
[if exp="f.Dr_a[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="165" ]
[else][button target="*r_a9" graphic="clothe/bc_pink.png" x="1230" y="165" ][endif]
;太いリボン
[if exp="f.step>=6" ][button target="*r_b_time" graphic="clothe/hb_ribbon_b.png" x="680" y="210" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_hair" graphic="clothe/cos/c12k.png" x="500" y="210" ][endif]
[if exp="f.Dr_b[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dr_b[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dr_b[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dr_b[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dr_b[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dr_b[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dr_b[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dr_b[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dr_b[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[elsif exp="f.step>=6" ][button target="*r_b9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]
;シュシュ
[if exp="f.step>=6 && f.love>=400" ][button target="*r_c_time" graphic="clothe/hb_ss.png" x="680" y="255" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_hair" graphic="clothe/cos/c100k.png" x="500" y="255" ][endif]
[if exp="f.Dr_c[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c1" graphic="clothe/bc_blue.png" x="830" y="255" ][endif]
[if exp="f.Dr_c[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c2" graphic="clothe/bc_red.png" x="880" y="255" ][endif]
[if exp="f.Dr_c[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c3" graphic="clothe/bc_yellow.png" x="930" y="255" ][endif]
[if exp="f.Dr_c[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c4" graphic="clothe/bc_green.png" x="980" y="255" ][endif]
[if exp="f.Dr_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c5" graphic="clothe/bc_purple.png" x="1030" y="255" ][endif]
[if exp="f.Dr_c[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c6" graphic="clothe/bc_orange.png" x="1080" y="255" ][endif]
[if exp="f.Dr_c[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c7" graphic="clothe/bc_white.png" x="1130" y="255" ][endif]
[if exp="f.Dr_c[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c8" graphic="clothe/bc_black.png" x="1180" y="255" ][endif]
[if exp="f.Dr_c[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_c9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]
;ビーズ
[if exp="f.step>=6 && f.love>=500" ][button target="*r_d_time" graphic="clothe/hb_bz.png" x="680" y="300" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_hair" graphic="clothe/cos/c11k.png" x="500" y="300" ][endif]
[if exp="f.Dr_d[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d1" graphic="clothe/bc_blue.png" x="830" y="300" ][endif]
[if exp="f.Dr_d[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d2" graphic="clothe/bc_red.png" x="880" y="300" ][endif]
[if exp="f.Dr_d[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d3" graphic="clothe/bc_yellow.png" x="930" y="300" ][endif]
[if exp="f.Dr_d[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d4" graphic="clothe/bc_green.png" x="980" y="300" ][endif]
[if exp="f.Dr_d[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d5" graphic="clothe/bc_purple.png" x="1030" y="300" ][endif]
[if exp="f.Dr_d[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d6" graphic="clothe/bc_orange.png" x="1080" y="300" ][endif]
[if exp="f.Dr_d[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d7" graphic="clothe/bc_white.png" x="1130" y="300" ][endif]
[if exp="f.Dr_d[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d8" graphic="clothe/bc_black.png" x="1180" y="300" ][endif]
[if exp="f.Dr_d[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="300" ]
[elsif exp="f.step>=6 && f.love>=500" ][button target="*r_d9" graphic="clothe/bc_pink.png" x="1230" y="300" ][endif]
;かんざし
[if exp="f.cos_look=='on'"]
[button target="*r_e_time" graphic="clothe/cos/c150k.png" x="500" y="480" ][endif]
[if exp="f.Dr_e[1]==1" ][button target="*bought" graphic="clothe/hb_kanzashi-g-.png" x="680" y="480" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_e1" graphic="clothe/hb_kanzashi-g.png" x="680" y="480" ][endif]
[if exp="f.Dr_e[2]==1" ][button target="*bought" graphic="clothe/hb_kanzashi-s-.png" x="900" y="480" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*r_e2" graphic="clothe/hb_kanzashi-s.png" x="900" y="480" ][endif]
[cancelskip][s]

;;ヘアピン
*shop_pin
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=5" ][call target="*menu_button" ]

[button target="*p_a_time" graphic="clothe/hp_tin.png" x="660" y="165" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_pin" graphic="clothe/cos/c5k.png" x="500" y="165" ][endif]
[if exp="f.Dp_a[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="165" ]
[else][button target="*p_a1" graphic="clothe/bc_blue.png" x="830" y="165" ][endif]
[if exp="f.Dp_a[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="165" ]
[else][button target="*p_a2" graphic="clothe/bc_red.png" x="880" y="165" ][endif]
[if exp="f.Dp_a[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="165" ]
[else][button target="*p_a3" graphic="clothe/bc_yellow.png" x="930" y="165" ][endif]
[if exp="f.Dp_a[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="165" ]
[else][button target="*p_a4" graphic="clothe/bc_green.png" x="980" y="165" ][endif]
[if exp="f.Dp_a[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="165" ]
[else][button target="*p_a5" graphic="clothe/bc_purple.png" x="1030" y="165" ][endif]
[if exp="f.Dp_a[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="165" ]
[else][button target="*p_a6" graphic="clothe/bc_orange.png" x="1080" y="165" ][endif]
[if exp="f.Dp_a[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="165" ]
[else][button target="*p_a7" graphic="clothe/bc_white.png" x="1130" y="165" ][endif]
[if exp="f.Dp_a[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="165" ]
[else][button target="*p_a8" graphic="clothe/bc_black.png" x="1180" y="165" ][endif]
[if exp="f.Dp_a[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="165" ]
[else][button target="*p_a9" graphic="clothe/bc_pink.png" x="1230" y="165" ][endif]

[if exp="f.step>=6" ][button target="*p_b_time" graphic="clothe/hp_egg.png" x="660" y="210" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_pin" graphic="clothe/cos/c8k.png" x="500" y="210" ][endif]
[if exp="f.Dp_b[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dp_b[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dp_b[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dp_b[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dp_b[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dp_b[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dp_b[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dp_b[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dp_b[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[elsif exp="f.step>=6" ][button target="*p_b9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]

[if exp="f.step>=6 && f.love>=400" ][button target="*p_c_time" graphic="clothe/hp_flower.png" x="660" y="255" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_pin" graphic="clothe/cos/c12k.png" x="500" y="255" ][endif]
[if exp="f.Dp_c[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c1" graphic="clothe/bc_blue.png" x="830" y="255" ][endif]
[if exp="f.Dp_c[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c2" graphic="clothe/bc_red.png" x="880" y="255" ][endif]
[if exp="f.Dp_c[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c3" graphic="clothe/bc_yellow.png" x="930" y="255" ][endif]
[if exp="f.Dp_c[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c4" graphic="clothe/bc_green.png" x="980" y="255" ][endif]
[if exp="f.Dp_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c5" graphic="clothe/bc_purple.png" x="1030" y="255" ][endif]
[if exp="f.Dp_c[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c6" graphic="clothe/bc_orange.png" x="1080" y="255" ][endif]
[if exp="f.Dp_c[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c7" graphic="clothe/bc_white.png" x="1130" y="255" ][endif]
[if exp="f.Dp_c[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c8" graphic="clothe/bc_black.png" x="1180" y="255" ][endif]
[if exp="f.Dp_c[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="255" ]
[elsif exp="f.step>=6 && f.love>=400" ][button target="*p_c9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]

;[if exp="f.Dp_d[1]==1" ][button target="*bought" graphic="clothe/hp_hurt-.png" x="830" y="300" ]
;[elsif exp="f.step>=6 && f.love>=500" ][button target="*p_d1" graphic="clothe/hp_hurt.png" x="830" y="300" ][endif]
;[if exp="f.Dp_d[2]==1" ][button target="*bought" graphic="clothe/hp_star-.png" x="880" y="300" ]
;[elsif exp="f.step>=6 && f.love>=500" ][button target="*p_d2" graphic="clothe/hp_star.png" x="880" y="300" ][endif]
;[if exp="f.Dp_d[3]==1" ][button target="*bought" graphic="clothe/hp_clover-.png" x="930" y="300" ]
;[elsif exp="f.step>=6 && f.love>=500" ][button target="*p_d3" graphic="clothe/hp_clover.png" x="930" y="300" ][endif]
[cancelskip][s]

;;頭
*shop_head
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=6" ][call target="*menu_button" ]
;耳、角、麦わら、メイドヘッド
[if exp="f.Dh_a[1]==1" ][button target="*bought" graphic="clothe/h_ear-.png" x="680" y="165" ]
[elsif exp="f.love>=300" ][button target="*h_a1" graphic="clothe/h_ear.png" x="680" y="165" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_head" graphic="clothe/cos/c80k.png" x="680" y="125" ][endif]
[if exp="f.Dh_a[2]==1" ][button target="*bought" graphic="clothe/h_horn-.png" x="842" y="165" ]
[elsif exp="f.love>=350" ][button target="*h_a2" graphic="clothe/h_horn.png" x="842" y="165" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_head" graphic="clothe/cos/c80k.png" x="842" y="125" ][endif]
[if exp="f.Dh_b[1]==1" ][button target="*bought" graphic="clothe/h_mugi-.png" x="1015" y="165" ]
[elsif exp="f.love>=400" ][button target="*h_b1" graphic="clothe/h_mugi.png" x="1015" y="165" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_head" graphic="clothe/cos/c40k.png" x="1015" y="125" ][endif]
[if exp="f.Dh_b[2]==1" ][button target="*bought" graphic="clothe/h_head-d-.png" x="1150" y="165" ]
[elsif exp="f.love>=600 && f.Dc_i[0]=='got'" ][button target="*h_b2" graphic="clothe/h_head-d.png" x="1150" y="165" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_head" graphic="clothe/cos/c50k.png" x="1150" y="125" ][endif]
;カチューシャ
[if exp="f.love>=500" ][button target="*h_d_time" graphic="clothe/h_band.png" x="680" y="210" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_head" graphic="clothe/cos/c40k.png" x="500" y="210" ][endif]
[if exp="f.Dh_d[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dh_d[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dh_d[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dh_d[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dh_d[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dh_d[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dh_d[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dh_d[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dh_d[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[elsif exp="f.love>=500" ][button target="*h_d9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]
;キャスケット
[if exp="f.love>=600" ][button target="*h_e_time" graphic="clothe/h_cask.png" x="680" y="255" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_head" graphic="clothe/cos/c40k.png" x="500" y="255" ][endif]
[if exp="f.Dh_e[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e1" graphic="clothe/bc_white.png" x="835" y="255" ][endif]
[if exp="f.Dh_e[2]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="890" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e2" graphic="clothe/bc_brown.png" x="890" y="255" ][endif]
[if exp="f.Dh_e[3]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="945" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e3" graphic="clothe/bc_black.png" x="945" y="255" ][endif]
[if exp="f.Dh_e[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1000" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e4" graphic="clothe/bc_green.png" x="1000" y="255" ][endif]
[if exp="f.Dh_e[5]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1055" y="255" ]
[elsif exp="f.love>=600" ][button target="*h_e5" graphic="clothe/bc_red.png" x="1055" y="255" ][endif]
;シルクハット
[if exp="f.love>=700" ][button target="*h_f_time" graphic="clothe/h_s-hat.png" x="680" y="300" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_head" graphic="clothe/cos/c40k.png" x="500" y="300" ][endif]
[if exp="f.Dh_f[1]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="835" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f1" graphic="clothe/bc_black.png" x="835" y="300" ][endif]
[if exp="f.Dh_f[2]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="890" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f2" graphic="clothe/bc_white.png" x="890" y="300" ][endif]
[if exp="f.Dh_f[3]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="945" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f3" graphic="clothe/bc_brown.png" x="945" y="300" ][endif]
[if exp="f.Dh_f[4]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="1000" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f4" graphic="clothe/bc_blue.png" x="1000" y="300" ][endif]
[if exp="f.Dh_f[5]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="1055" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f5" graphic="clothe/bc_red.png" x="1055" y="300" ][endif]
[if exp="f.Dh_f[6]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1110" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f6" graphic="clothe/bc_purple.png" x="1110" y="300" ][endif]
[if exp="f.Dh_f[7]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1165" y="300" ]
[elsif exp="f.love>=700" ][button target="*h_f7" graphic="clothe/bc_green.png" x="1165" y="300" ][endif]
[cancelskip][s]
;;靴下
*shop_leg
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=7" ][call target="*menu_button" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_leg" graphic="clothe/cos/c20k.png" x="500" y="165" ][endif]
[button target="*s_a_time" graphic="clothe/s_short.png" x="680" y="165" ]

[if exp="f.Ds_a[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="830" y="165" ]
[else][button target="*s_a1" graphic="clothe/bc_white.png" x="830" y="165" ][endif]
[if exp="f.Ds_a[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="880" y="165" ]
[else][button target="*s_a2" graphic="clothe/bc_black.png" x="880" y="165" ][endif]
[if exp="f.Ds_a[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="165" ]
[else][button target="*s_a3" graphic="clothe/bc_blue.png" x="930" y="165" ][endif]
[if exp="f.Ds_a[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="165" ]
[else][button target="*s_a4" graphic="clothe/bc_red.png" x="980" y="165" ][endif]
[if exp="f.Ds_a[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="165" ]
[else][button target="*s_a5" graphic="clothe/bc_yellow.png" x="1030" y="165" ][endif]
[if exp="f.Ds_a[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="165" ]
[else][button target="*s_a6" graphic="clothe/bc_green.png" x="1080" y="165" ][endif]
[if exp="f.Ds_a[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="165" ]
[else][button target="*s_a7" graphic="clothe/bc_purple.png" x="1130" y="165" ][endif]
[if exp="f.Ds_a[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="165" ]
[else][button target="*s_a8" graphic="clothe/bc_orange.png" x="1180" y="165" ][endif]
[if exp="f.Ds_a[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="165" ]
[else][button target="*s_a9" graphic="clothe/bc_pink.png" x="1230" y="165" ][endif]

[if exp="f.step>=6" ][button target="*s_b_time" graphic="clothe/s_long.png" x="680" y="210" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_leg" graphic="clothe/cos/c25k.png" x="500" y="210" ][endif]
[if exp="f.Ds_b[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="830" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b1" graphic="clothe/bc_white.png" x="830" y="210" ][endif]
[if exp="f.Ds_b[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="880" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b2" graphic="clothe/bc_black.png" x="880" y="210" ][endif]
[if exp="f.Ds_b[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b3" graphic="clothe/bc_blue.png" x="930" y="210" ][endif]
[if exp="f.Ds_b[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b4" graphic="clothe/bc_red.png" x="980" y="210" ][endif]
[if exp="f.Ds_b[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b5" graphic="clothe/bc_yellow.png" x="1030" y="210" ][endif]
[if exp="f.Ds_b[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b6" graphic="clothe/bc_green.png" x="1080" y="210" ][endif]
[if exp="f.Ds_b[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b7" graphic="clothe/bc_purple.png" x="1130" y="210" ][endif]
[if exp="f.Ds_b[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b8" graphic="clothe/bc_orange.png" x="1180" y="210" ][endif]
[if exp="f.Ds_b[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[elsif exp="f.step>=6" ][button target="*s_b9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]

[if exp="f.step>=6 && f.love>=300" ][button target="*s_c_time" graphic="clothe/s_stripe-w.png" x="680" y="255" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_leg" graphic="clothe/cos/c40k.png" x="500" y="255" ][endif]
[if exp="f.Ds_c[1]==1" ][button target="*bought" graphic="clothe/bc_gray-.png" x="830" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c1" graphic="clothe/bc_gray.png" x="830" y="255" ][endif]
[if exp="f.Ds_c[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="880" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c2" graphic="clothe/bc_black.png" x="880" y="255" ][endif]
[if exp="f.Ds_c[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c3" graphic="clothe/bc_blue.png" x="930" y="255" ][endif]
[if exp="f.Ds_c[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c4" graphic="clothe/bc_red.png" x="980" y="255" ][endif]
[if exp="f.Ds_c[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c5" graphic="clothe/bc_yellow.png" x="1030" y="255" ][endif]
[if exp="f.Ds_c[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c6" graphic="clothe/bc_green.png" x="1080" y="255" ][endif]
[if exp="f.Ds_c[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c7" graphic="clothe/bc_purple.png" x="1130" y="255" ][endif]
[if exp="f.Ds_c[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c8" graphic="clothe/bc_orange.png" x="1180" y="255" ][endif]
[if exp="f.Ds_c[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="255" ]
[elsif exp="f.Ds_b[0]=='got' && f.love>=300" ][button target="*s_c9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]

[if exp="f.step>=6 && f.love>=400" ][button target="*s_d_time" graphic="clothe/s_stripe-lw.png" x="680" y="300" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_leg" graphic="clothe/cos/c50k.png" x="500" y="300" ][endif]
[if exp="f.Ds_d[1]==1" ][button target="*bought" graphic="clothe/bc_gray-.png" x="830" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d1" graphic="clothe/bc_gray.png" x="830" y="300" ][endif]
[if exp="f.Ds_d[2]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="880" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d2" graphic="clothe/bc_black.png" x="880" y="300" ][endif]
[if exp="f.Ds_d[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d3" graphic="clothe/bc_blue.png" x="930" y="300" ][endif]
[if exp="f.Ds_d[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d4" graphic="clothe/bc_red.png" x="980" y="300" ][endif]
[if exp="f.Ds_d[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d5" graphic="clothe/bc_yellow.png" x="1030" y="300" ][endif]
[if exp="f.Ds_d[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d6" graphic="clothe/bc_green.png" x="1080" y="300" ][endif]
[if exp="f.Ds_d[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d7" graphic="clothe/bc_purple.png" x="1130" y="300" ][endif]
[if exp="f.Ds_d[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d8" graphic="clothe/bc_orange.png" x="1180" y="300" ][endif]
[if exp="f.Ds_d[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="300" ]
[elsif exp="f.Ds_c[0]=='got' && f.love>=400" ][button target="*s_d9" graphic="clothe/bc_pink.png" x="1230" y="300" ][endif]

[if exp="f.step>=6 && f.love>=500" ][button target="*s_e_time" graphic="clothe/s_stripe-b.png" x="680" y="345" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_leg" graphic="clothe/cos/c50k.png" x="500" y="345" ][endif]
[if exp="f.Ds_e[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="830" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e1" graphic="clothe/bc_white.png" x="830" y="345" ][endif]
[if exp="f.Ds_e[2]==1" ][button target="*bought" graphic="clothe/bc_gray-.png" x="880" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e2" graphic="clothe/bc_gray.png" x="880" y="345" ][endif]
[if exp="f.Ds_e[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e3" graphic="clothe/bc_blue.png" x="930" y="345" ][endif]
[if exp="f.Ds_e[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e4" graphic="clothe/bc_red.png" x="980" y="345" ][endif]
[if exp="f.Ds_e[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e5" graphic="clothe/bc_yellow.png" x="1030" y="345" ][endif]
[if exp="f.Ds_e[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e6" graphic="clothe/bc_green.png" x="1080" y="345" ][endif]
[if exp="f.Ds_e[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e7" graphic="clothe/bc_purple.png" x="1130" y="345" ][endif]
[if exp="f.Ds_e[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e8" graphic="clothe/bc_orange.png" x="1180" y="345" ][endif]
[if exp="f.Ds_e[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="345" ]
[elsif exp="f.Ds_d[0]=='got' && f.love>=500" ][button target="*s_e9" graphic="clothe/bc_pink.png" x="1230" y="345" ][endif]

[if exp="f.step>=6 && f.love>=600" ][button target="*s_f_time" graphic="clothe/s_stripe-lb.png" x="680" y="390" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_leg" graphic="clothe/cos/c50k.png" x="500" y="390" ][endif]
[if exp="f.Ds_f[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="830" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f1" graphic="clothe/bc_white.png" x="830" y="390" ][endif]
[if exp="f.Ds_f[2]==1" ][button target="*bought" graphic="clothe/bc_gray-.png" x="880" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f2" graphic="clothe/bc_gray.png" x="880" y="390" ][endif]
[if exp="f.Ds_f[3]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="930" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f3" graphic="clothe/bc_blue.png" x="930" y="390" ][endif]
[if exp="f.Ds_f[4]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="980" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f4" graphic="clothe/bc_red.png" x="980" y="390" ][endif]
[if exp="f.Ds_f[5]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1030" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f5" graphic="clothe/bc_yellow.png" x="1030" y="390" ][endif]
[if exp="f.Ds_f[6]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1080" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f6" graphic="clothe/bc_green.png" x="1080" y="390" ][endif]
[if exp="f.Ds_f[7]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1130" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f7" graphic="clothe/bc_purple.png" x="1130" y="390" ][endif]
[if exp="f.Ds_f[8]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1180" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f8" graphic="clothe/bc_orange.png" x="1180" y="390" ][endif]
[if exp="f.Ds_f[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="390" ]
[elsif exp="f.Ds_e[0]=='got' && f.love>=600" ][button target="*s_f9" graphic="clothe/bc_pink.png" x="1230" y="390" ][endif]
[cancelskip][s]

;;メガネ
*shop_glasses
[cm][chara_mod name="window" time="100" storage="o/win/shop-win.png" ]
[eval exp="f.ch_win=8" ][call target="*menu_button" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_glasses" graphic="clothe/cos/c140k.png" x="500" y="210" ][endif]
[button target="*g_a_time" graphic="clothe/gl-c.png" x="680" y="210" ]
[if exp="f.Dg_a[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="210" ]
[else][button target="*g_a1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dg_a[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="210" ]
[else][button target="*g_a2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dg_a[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="210" ]
[else][button target="*g_a3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dg_a[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="210" ]
[else][button target="*g_a4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dg_a[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="210" ]
[else][button target="*g_a5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dg_a[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="210" ]
[else][button target="*g_a6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dg_a[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="210" ]
[else][button target="*g_a7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dg_a[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="210" ]
[else][button target="*g_a8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dg_a[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="210" ]
[else][button target="*g_a9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]

[if exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b_time" graphic="clothe/gl-s.png" x="680" y="300" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_glasses" graphic="clothe/cos/c150k.png" x="500" y="300" ][endif]
[if exp="f.Dg_b[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="300" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b1" graphic="clothe/bc_blue.png" x="830" y="300" ][endif]
[if exp="f.Dg_b[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="300" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b2" graphic="clothe/bc_red.png" x="880" y="300" ][endif]
[if exp="f.Dg_b[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="300" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b3" graphic="clothe/bc_yellow.png" x="930" y="300" ][endif]
[if exp="f.Dg_b[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="300" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b4" graphic="clothe/bc_green.png" x="980" y="300" ][endif]
[if exp="f.Dg_b[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="300" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b5" graphic="clothe/bc_purple.png" x="1030" y="300" ][endif]
[if exp="f.Dg_b[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="300" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b6" graphic="clothe/bc_orange.png" x="1080" y="300" ][endif]
[if exp="f.Dg_b[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="300" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b7" graphic="clothe/bc_white.png" x="1130" y="300" ][endif]
[if exp="f.Dg_b[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="300" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b8" graphic="clothe/bc_black.png" x="1180" y="300" ][endif]
[if exp="f.Dg_b[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="300" ]
[elsif exp="f.love>=300 && f.Dg_a[0]=='got'" ][button target="*g_b9" graphic="clothe/bc_pink.png" x="1230" y="300" ][endif]

[if exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c_time" graphic="clothe/gl-h.png" x="680" y="390" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_glasses" graphic="clothe/cos/c150k.png" x="500" y="390" ][endif]
[if exp="f.Dg_c[1]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="830" y="390" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c1" graphic="clothe/bc_blue.png" x="830" y="390" ][endif]
[if exp="f.Dg_c[2]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="880" y="390" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c2" graphic="clothe/bc_red.png" x="880" y="390" ][endif]
[if exp="f.Dg_c[3]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="930" y="390" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c3" graphic="clothe/bc_yellow.png" x="930" y="390" ][endif]
[if exp="f.Dg_c[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="980" y="390" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c4" graphic="clothe/bc_green.png" x="980" y="390" ][endif]
[if exp="f.Dg_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1030" y="390" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c5" graphic="clothe/bc_purple.png" x="1030" y="390" ][endif]
[if exp="f.Dg_c[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1080" y="390" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c6" graphic="clothe/bc_orange.png" x="1080" y="390" ][endif]
[if exp="f.Dg_c[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1130" y="390" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c7" graphic="clothe/bc_white.png" x="1130" y="390" ][endif]
[if exp="f.Dg_c[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1180" y="390" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c8" graphic="clothe/bc_black.png" x="1180" y="390" ][endif]
[if exp="f.Dg_c[9]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1230" y="390" ]
[elsif exp="f.love>=400 && f.Dg_b[0]=='got'" ][button target="*g_c9" graphic="clothe/bc_pink.png" x="1230" y="390" ][endif]
[cancelskip][s]

;;下着
*shop_under
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=9" ][call target="*menu_button" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_under" graphic="clothe/cos/c30k.png" x="500" y="165" ][endif]
[button target="*u_a_time" graphic="clothe/u_s.png" x="680" y="165" ]

[if exp="f.Du_a[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="210" ]
[else][button target="*u_a1" graphic="clothe/bc_white.png" x="835" y="210" ][endif]
[if exp="f.Du_a[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="210" ]
[else][button target="*u_a2" graphic="clothe/bc_blue.png" x="890" y="210" ][endif]
[if exp="f.Du_a[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="210" ]
[else][button target="*u_a3" graphic="clothe/bc_pink.png" x="945" y="210" ][endif]
[if exp="f.Du_a[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="210" ]
[else][button target="*u_a4" graphic="clothe/bc_yellow.png" x="1000" y="210" ][endif]
[if exp="f.Du_a[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="210" ]
[else][button target="*u_a5" graphic="clothe/bc_green.png" x="1055" y="210" ][endif]
[if exp="f.Du_a[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="210" ]
[else][button target="*u_a6" graphic="clothe/bc_orange.png" x="1110" y="210" ][endif]
[if exp="f.Du_a[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="210" ]
[else][button target="*u_a7" graphic="clothe/bc_black.png" x="1165" y="210" ][endif]

[if exp="f.sex>=1" ][button target="*u_c_time" graphic="clothe/u_marble.png" x="680" y="255" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_under" graphic="clothe/cos/c40k.png" x="500" y="255" ][endif]
[if exp="f.Du_c[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="300" ]
[elsif exp="f.sex>=1" ][button target="*u_c1" graphic="clothe/bc_white.png" x="835" y="300" ][endif]
[if exp="f.Du_c[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="300" ]
[elsif exp="f.sex>=1" ][button target="*u_c2" graphic="clothe/bc_blue.png" x="890" y="300" ][endif]
[if exp="f.Du_c[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="300" ]
[elsif exp="f.sex>=1" ][button target="*u_c3" graphic="clothe/bc_pink.png" x="945" y="300" ][endif]
[if exp="f.Du_c[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="300" ]
[elsif exp="f.sex>=1" ][button target="*u_c4" graphic="clothe/bc_yellow.png" x="1000" y="300" ][endif]
[if exp="f.Du_c[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="300" ]
[elsif exp="f.sex>=1" ][button target="*u_c5" graphic="clothe/bc_green.png" x="1055" y="300" ][endif]
[if exp="f.Du_c[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="300" ]
[elsif exp="f.sex>=1" ][button target="*u_c6" graphic="clothe/bc_orange.png" x="1110" y="300" ][endif]
[if exp="f.Du_c[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="300" ]
[elsif exp="f.sex>=1" ][button target="*u_c7" graphic="clothe/bc_black.png" x="1165" y="300" ][endif]

[if exp="f.sex>=1 && f.love>=600" ][button target="*u_b_time" graphic="clothe/u_r.png" x="680" y="345" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_under" graphic="clothe/cos/c40k.png" x="500" y="345" ][endif]
[if exp="f.Du_b[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="390" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b1" graphic="clothe/bc_white.png" x="835" y="390" ][endif]
[if exp="f.Du_b[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="390" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b2" graphic="clothe/bc_blue.png" x="890" y="390" ][endif]
[if exp="f.Du_b[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="390" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b3" graphic="clothe/bc_pink.png" x="945" y="390" ][endif]
[if exp="f.Du_b[4]==1" ][button target="*bought" graphic="clothe/bc_yellow-.png" x="1000" y="390" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b4" graphic="clothe/bc_yellow.png" x="1000" y="390" ][endif]
[if exp="f.Du_b[5]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1055" y="390" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b5" graphic="clothe/bc_green.png" x="1055" y="390" ][endif]
[if exp="f.Du_b[6]==1" ][button target="*bought" graphic="clothe/bc_orange-.png" x="1110" y="390" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b6" graphic="clothe/bc_orange.png" x="1110" y="390" ][endif]
[if exp="f.Du_b[7]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1165" y="390" ]
[elsif exp="f.sex>=1 && f.love>=600" ][button target="*u_b7" graphic="clothe/bc_black.png" x="1165" y="390" ][endif]
[cancelskip][s]

;;腕
*shop_arm
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=10" ][call target="*menu_button" ][cancelskip][s]
;;他
*shop_other
[cm][mod_win st="o/win/shop-win.png" ]
[eval exp="f.ch_win=11" ][call target="*menu_button" ]
[if exp="f.cos_look=='on'"]
[button target="*shop_other" graphic="clothe/cos/c170k.png" x="500" y="165" ][endif]
[if exp="f.love>=400" ][button target="*ne_a_time" graphic="clothe/n_maf.png" x="680" y="165" ][endif]
[if exp="f.Dne_a[1]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="835" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a1" graphic="clothe/bc_brown.png" x="835" y="165" ][endif]
[if exp="f.Dne_a[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a2" graphic="clothe/bc_blue.png" x="890" y="165" ][endif]
[if exp="f.Dne_a[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="945" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a3" graphic="clothe/bc_red.png" x="945" y="165" ][endif]
[if exp="f.Dne_a[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1000" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a4" graphic="clothe/bc_green.png" x="1000" y="165" ][endif]
[if exp="f.Dne_a[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1055" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a5" graphic="clothe/bc_purple.png" x="1055" y="165" ][endif]
[if exp="f.Dne_a[6]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1110" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a6" graphic="clothe/bc_pink.png" x="1110" y="165" ][endif]
[if exp="f.Dne_a[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1165" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a7" graphic="clothe/bc_white.png" x="1165" y="165" ][endif]
[if exp="f.Dne_a[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1220" y="165" ]
[elsif exp="f.love>=400" ][button target="*ne_a8" graphic="clothe/bc_black.png" x="1220" y="165" ][endif]

[if exp="f.love>=500" ][button target="*ne_c_time" graphic="clothe/n_maf-c.png" x="680" y="210" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_other" graphic="clothe/cos/c170k.png" x="500" y="210" ][endif]
[if exp="f.Dne_c[1]==1" ][button target="*bought" graphic="clothe/bc_brown-.png" x="835" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c1" graphic="clothe/bc_brown.png" x="835" y="210" ][endif]
[if exp="f.Dne_c[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c2" graphic="clothe/bc_blue.png" x="890" y="210" ][endif]
[if exp="f.Dne_c[3]==1" ][button target="*bought" graphic="clothe/bc_red-.png" x="945" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c3" graphic="clothe/bc_red.png" x="945" y="210" ][endif]
[if exp="f.Dne_c[4]==1" ][button target="*bought" graphic="clothe/bc_green-.png" x="1000" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c4" graphic="clothe/bc_green.png" x="1000" y="210" ][endif]
[if exp="f.Dne_c[5]==1" ][button target="*bought" graphic="clothe/bc_purple-.png" x="1055" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c5" graphic="clothe/bc_purple.png" x="1055" y="210" ][endif]
[if exp="f.Dne_c[6]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="1110" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c6" graphic="clothe/bc_pink.png" x="1110" y="210" ][endif]
[if exp="f.Dne_c[7]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="1165" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c7" graphic="clothe/bc_white.png" x="1165" y="210" ][endif]
[if exp="f.Dne_c[8]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1220" y="210" ]
[elsif exp="f.love>=500" ][button target="*ne_c8" graphic="clothe/bc_black.png" x="1220" y="210" ][endif]

[if exp="f.love>=400" ][button target="*ne_b_time" graphic="clothe/n_ep.png" x="680" y="255" ][endif]
[if exp="f.cos_look=='on'"]
[button target="*shop_other" graphic="clothe/cos/c80k.png" x="500" y="255" ][endif]
[if exp="f.Dne_b[1]==1" ][button target="*bought" graphic="clothe/bc_white-.png" x="835" y="255" ]
[elsif exp="f.love>=400" ][button target="*ne_b1" graphic="clothe/bc_white.png" x="835" y="255" ][endif]
[if exp="f.Dne_b[2]==1" ][button target="*bought" graphic="clothe/bc_blue-.png" x="890" y="255" ]
[elsif exp="f.love>=400" ][button target="*ne_b2" graphic="clothe/bc_blue.png" x="890" y="255" ][endif]
[if exp="f.Dne_b[3]==1" ][button target="*bought" graphic="clothe/bc_pink-.png" x="945" y="255" ]
[elsif exp="f.love>=400" ][button target="*ne_b3" graphic="clothe/bc_pink.png" x="945" y="255" ][endif]
[if exp="f.Dne_b[4]==1" ][button target="*bought" graphic="clothe/bc_black-.png" x="1000" y="255" ]
[elsif exp="f.love>=400" ][button target="*ne_b4" graphic="clothe/bc_black.png" x="1000" y="255" ][endif]
[cancelskip][s]


;;服-セリフ

*c_b_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_b[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_b[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_b[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_b[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_b[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_b[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_+f.zince1*f.zince5_*f.zince3"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_b[1]==1" ][else][eval exp="f.Dc_b[1]=1"][eval exp="f.Dc_b_per[1]=100" ][endif]
[if exp="f.Dc_b[2]==1" ][else][eval exp="f.Dc_b[2]=1"][eval exp="f.Dc_b_per[2]=100" ][endif]
[if exp="f.Dc_b[3]==1" ][else][eval exp="f.Dc_b[3]=1"][eval exp="f.Dc_b_per[3]=100" ][endif]
[if exp="f.Dc_b[4]==1" ][else][eval exp="f.Dc_b[4]=1"][eval exp="f.Dc_b_per[4]=100" ][endif]
[if exp="f.Dc_b[5]==1" ][else][eval exp="f.Dc_b[5]=1"][eval exp="f.Dc_b_per[5]=100" ][endif]
[if exp="f.Dc_b[6]==1" ][else][eval exp="f.Dc_b[6]=1"][eval exp="f.Dc_b_per[6]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_b" ]

;;------------------------------------------------------------------------------------------

*c_b1
[cm]（Một bộ đồ thường 「mầu xanh」  - giá 350000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_+f.zince1*f.zince5_*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_b[1]=1" ][eval exp="f.Dc_b_per[1]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_b" ][endif]
;----------------------------------------------------------------------------------------------
*c_b2
[cm]（Một bộ đồ thường 「mầu đen」  - giá 350000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_+f.zince1*f.zince5_*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_b[2]=1" ][eval exp="f.Dc_b_per[2]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_b" ][endif]
;----------------------------------------------------------------------------------------------
*c_b3
[cm]（Một bộ đồ thường 「mầu tím」  - giá 350000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_+f.zince1*f.zince5_*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_b[3]=1" ][eval exp="f.Dc_b_per[3]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_b" ][endif]
;---------------------------------------------------------------------------------------------
*c_b4
[cm]（Một bộ đồ thường 「mầu đỏ」  - giá 350000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_+f.zince1*f.zince5_*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_b[4]=1" ][eval exp="f.Dc_b_per[4]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_b" ][endif]
;----------------------------------------------------------------------------------------------
*c_b5
[cm]（Một bộ đồ thường 「mầu lục」  - giá 350000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_+f.zince3*f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_b[5]=1" ][eval exp="f.Dc_b_per[5]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_b" ][endif]
;----------------------------------------------------------------------------------------------
*c_b6
[cm]（Một bộ đồ thường 「mầu trà」  - giá 350000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_+f.zince3*f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_b[6]=1" ][eval exp="f.Dc_b_per[6]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_b" ][endif]
;----------------------------------------------------------------------------------------------
*c_b
Tôi đã mua nó[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.bought_skip==1" ][else]
	[jump target="*color" ]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_c_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_c[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_c[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_c[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_c[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_c[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_c[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_c[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_c[1]==1" ][else][eval exp="f.Dc_c[1]=1"][eval exp="f.Dc_c_per[1]=100" ][endif]
[if exp="f.Dc_c[2]==1" ][else][eval exp="f.Dc_c[2]=1"][eval exp="f.Dc_c_per[2]=100" ][endif]
[if exp="f.Dc_c[3]==1" ][else][eval exp="f.Dc_c[3]=1"][eval exp="f.Dc_c_per[3]=100" ][endif]
[if exp="f.Dc_c[4]==1" ][else][eval exp="f.Dc_c[4]=1"][eval exp="f.Dc_c_per[4]=100" ][endif]
[if exp="f.Dc_c[5]==1" ][else][eval exp="f.Dc_c[5]=1"][eval exp="f.Dc_c_per[5]=100" ][endif]
[if exp="f.Dc_c[6]==1" ][else][eval exp="f.Dc_c[6]=1"][eval exp="f.Dc_c_per[6]=100" ][endif]
[if exp="f.Dc_c[7]==1" ][else][eval exp="f.Dc_c[7]=1"][eval exp="f.Dc_c_per[7]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_c" ]

;;------------------------------------------------------------------------------------------
*c_c1
[cm]（Chiếc váy xếp 「mầu xanh」 - giá 500000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_c[1]=1" ][eval exp="f.Dc_c_per[1]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_c" ][endif]
;----------------------------------------------------------------------------------------------
*c_c2
[cm]（Chiếc váy xếp 「mầu đen」 - giá 500000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_c[2]=1" ][eval exp="f.Dc_c_per[2]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_c" ][endif]
;----------------------------------------------------------------------------------------------
*c_c3
[cm]Chiếc váy xếp 「mầu lục」 - giá 500000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_c[3]=1" ][eval exp="f.Dc_c_per[3]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_c" ][endif]
;----------------------------------------------------------------------------------------------
*c_c4
[cm]（Chiếc váy xếp 「mầu đỏ」 - giá 500000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_c[4]=1" ][eval exp="f.Dc_c_per[4]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_c" ][endif]
;----------------------------------------------------------------------------------------------
*c_c5
[cm]（Chiếc váy xếp 「mầu tím」 - giá 500000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_c[5]=1" ][eval exp="f.Dc_c_per[5]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_c" ][endif]
;----------------------------------------------------------------------------------------------
*c_c6
[cm]（Chiếc váy xếp 「mầu trà」 - giá 500000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_c[6]=1" ][eval exp="f.Dc_c_per[6]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_c" ][endif]
;----------------------------------------------------------------------------------------------
*c_c7
[cm]（Chiếc váy xếp 「mầu hồng」 - giá 500000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_c[7]=1" ][eval exp="f.Dc_c_per[7]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_c" ][endif]
;----------------------------------------------------------------------------------------------
*c_c
Tôi mua cái này[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_c[0]!='got'" ][eval exp="f.Dc_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[syl]Chiếc váy xếp này thật sáng. Còn có rất nhiều nơ nữa… dễ thương quá。[lr_]
	Cảm ơn anh rất nhiều。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[jump target="*color" ]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_e_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_e[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_e[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_e[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_e[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_e[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_e[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_e[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_e[1]==1" ][else][eval exp="f.Dc_e[1]=1"][eval exp="f.Dc_e_per[1]=100" ][endif]
[if exp="f.Dc_e[2]==1" ][else][eval exp="f.Dc_e[2]=1"][eval exp="f.Dc_e_per[2]=100" ][endif]
[if exp="f.Dc_e[3]==1" ][else][eval exp="f.Dc_e[3]=1"][eval exp="f.Dc_e_per[3]=100" ][endif]
[if exp="f.Dc_e[4]==1" ][else][eval exp="f.Dc_e[4]=1"][eval exp="f.Dc_e_per[4]=100" ][endif]
[if exp="f.Dc_e[5]==1" ][else][eval exp="f.Dc_e[5]=1"][eval exp="f.Dc_e_per[5]=100" ][endif]
[if exp="f.Dc_e[6]==1" ][else][eval exp="f.Dc_e[6]=1"][eval exp="f.Dc_e_per[6]=100" ][endif]
;[if exp="f.Dc_e[7]==1" ][else][eval exp="f.Dc_e[7]=1"][eval exp="f.Dc_e_per[7]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_e" ]
;;-----------------------------------------------------------------------------------------
*c_e1
[cm]（Tôi mua chiếc váy một mảnh mầu xanh - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_e[1]=1" ][eval exp="f.Dc_e_per[1]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_e" ][endif]
;----------------------------------------------------------------------------------------------
*c_e2
[cm]（Váy mầu vàng - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_e[2]=1" ][eval exp="f.Dc_e_per[2]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_e" ][endif]
;----------------------------------------------------------------------------------------------
*c_e3
[cm]（Váy mầu đỏ - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_e[3]=1" ][eval exp="f.Dc_e_per[3]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_e" ][endif]
;----------------------------------------------------------------------------------------------
*c_e4
[cm]（Váy mầu tím - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_e[4]=1" ][eval exp="f.Dc_e_per[4]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_e" ][endif]
;----------------------------------------------------------------------------------------------
*c_e5
[cm]（Váy mầu trắng - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_e[5]=1" ][eval exp="f.Dc_e_per[5]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_e" ][endif]
;----------------------------------------------------------------------------------------------
*c_e6
[cm]（Váy mầu đen - giá 300000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_e[6]=1" ][eval exp="f.Dc_e_per[6]=100" ]

Tài khoản còn [money][p_]
[jump target="*c_e" ][endif]
;----------------------------------------------------------------------------------------------
*c_e
Tôi mua nó[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_e[0]!='got'" ][eval exp="f.Dc_e[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s][syl]
	Um!… đó là một chiếc váy rất dễ thương。[lr_]
	[f/re]mặc nó sẽ rất mát mẻ, di chuyển dễ dàng[p_]
	[f/ss]Anh sẽ mua nó![lr_]Cám ơn anh rất nhiều[p_]
	[f/s]Em muốn mặc chiếc váy này khi đi ra ngoài cùng [name][p_]
[elsif exp="f.bought_skip==1" ][else]
	[jump target="*color" ]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*color
[if exp="f.step<=4" ][shop_f/][syl]
	Mình sẽ lấy cái này。[p_]
	[f/re]Đây là… một màu khác từ đồ mà anh đã mua cho em khi trước.[p_]
	[f/re]Chỉ một thay đổi nhỏ về màu sắc cũng có thể đem đến một cảm giác mới lạ. [lr_]
	[f/s]Liệu sẽ ổn nếu em mặc thứ này chứ?[p_]…Cảm ơn anh rất nhiều.。[p_]
[else][syl]
	Đây là… một màu khác từ đồ mà anh đã mua cho em khi trước.[lr_]
	[f/s]Cảm ơn anh rất nhiều.[p_]
	[f/re]Chỉ một thay đổi nhỏ về màu sắc cũng có thể đem đến một cảm giác mới lạ.[lr_]
	[f/ss]Em muốn thử mặc bộ này sớm.[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_f_time
[cm]
[eval exp="f.code_time=0"]
;[if exp="f.Dc_f[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_f[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_f[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_b[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_b[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_b[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince7_"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
;[if exp="f.Dc_f[1]==1" ][else][eval exp="f.Dc_f[1]=1"][eval exp="f.Dc_f_per[1]=100" ][endif]
[if exp="f.Dc_f[2]==1" ][else][eval exp="f.Dc_f[2]=1"][eval exp="f.Dc_f_per[2]=100" ][endif]
[if exp="f.Dc_f[3]==1" ][else][eval exp="f.Dc_f[3]=1"][eval exp="f.Dc_f_per[3]=100" ][endif]
;[if exp="f.Dc_b[4]==1" ][else][eval exp="f.Dc_b[4]=1"][eval exp="f.Dc_b_per[4]=100" ][endif]
;[if exp="f.Dc_b[5]==1" ][else][eval exp="f.Dc_b[5]=1"][eval exp="f.Dc_b_per[5]=100" ][endif]
;[if exp="f.Dc_b[6]==1" ][else][eval exp="f.Dc_b[6]=1"][eval exp="f.Dc_b_per[6]=100" ][endif]
Tài khoản còn [money][p]
#
(Tôi mua nó.[p]
[after_shop]
;------------------------------------------------------------------------------------------------------

*c_f1
[cm]（Tôi mua bộ đồ y tá. - giá 0 đ đ[p]
[eval exp="f.Dc_f[1]=1" ][eval exp="f.Dc_f_per[1]=100" ]
Tài khoản còn [money][p_][call target="*c_f" ]
	[f/s]Đây là… Bộ đồng phục y tá. [lr_]Em sẽ mặc thứ này và giúp đỡ công việc với anh đúng không, [name]?[p_]
	[f/ss]Cảm ơn anh nhiều.[r]
	Em sẽ cố gắng hết sức để giúp anh, [name].[p_][after_shop]
;----------------------------------------------------------------------------------------------
*c_f2
[cm]（Tôi mua đồng phục y tá màu hồng. - giá 700000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_f[2]=1" ][eval exp="f.Dc_f_per[2]=100" ]

Tài khoản còn [money][p_][call target="*c_f" ][endif]
	[f/s]Đây là màu sắc khác của bộ đồ y tá anh đã mua[lr_]là một mầu khác 。[p_]Nó cũng thật dễ thương。[p_]
	[f/ss]Cảm ơn anh rất nhiều。[r]
	Em cũng sẽ cố gắng làm việc chăm chỉ hơn。[p_][after_shop]
;----------------------------------------------------------------------------------------------
*c_f3
[cm]（Tôi mua bộ đồng phục y tá màu đen - giá 700000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_f[3]=1" ][eval exp="f.Dc_f_per[3]=100" ]

Tài khoản còn [money][p_][call target="*c_f" ][endif]
	[f/]Mầu đen…。Có cả đồng phục mầu này ư?[p_]
	[f/ss]Cảm ơn anh rất nhiều。[r]
	Em cũng sẽ cố gắng làm việc chăm chỉ hơn。[p_][after_shop]
;----------------------------------------------------------------------------------------------
*c_f
Tôi mua bộ này[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_f[0]!='got'" ][eval exp="f.Dc_f[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[syl]Đây là… Bộ đồng phục y tá。[lr_]
	[f/s]Em sẽ mặc thứ này và giúp đỡ công việc với anh đúng không, [name]?[p_]
	[f/ss]Cảm ơn anh nhiều.[r]
[elsif exp="f.bought_skip==1" ][after_shop][else]
	[shop_f/][syl]Đây là… mầu khác từ bộ đồ y tá。[lr_]
	[f/re]Nó sẽ là một bộ dự phòng。[p_]
[endif][return]
;----------------------------------------------------------------------------------------------
*c_g_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_g[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_g[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_g[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_g[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_g[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_g[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_g[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince1+f.zince1*f.zince2*f.zince2_"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_g[1]==1" ][else][eval exp="f.Dc_g[1]=1"][eval exp="f.Dc_g_per[1]=100" ][endif]
[if exp="f.Dc_g[2]==1" ][else][eval exp="f.Dc_g[2]=1"][eval exp="f.Dc_g_per[2]=100" ][endif]
[if exp="f.Dc_g[3]==1" ][else][eval exp="f.Dc_g[3]=1"][eval exp="f.Dc_g_per[3]=100" ][endif]
[if exp="f.Dc_g[4]==1" ][else][eval exp="f.Dc_g[4]=1"][eval exp="f.Dc_g_per[4]=100" ][endif]
[if exp="f.Dc_g[5]==1" ][else][eval exp="f.Dc_g[5]=1"][eval exp="f.Dc_g_per[5]=100" ][endif]
[if exp="f.Dc_g[6]==1" ][else][eval exp="f.Dc_g[6]=1"][eval exp="f.Dc_g_per[6]=100" ][endif]
;[if exp="f.Dc_g[7]==1" ][else][eval exp="f.Dc_g[7]=1"][eval exp="f.Dc_g_per[7]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_g" ]
;------------------------------------------------------------------------------------------

*c_g1
[cm]（Bộ kimono mầu đỏ - giá 1200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1+f.zince1*f.zince2*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_g[1]=1" ][eval exp="f.Dc_g_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*c_g" ][endif]
;----------------------------------------------------------------------------------------------
*c_g2
[cm]（Bộ kimono mầu xanh - giá 1200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1+f.zince1*f.zince2*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_g[2]=1" ][eval exp="f.Dc_g_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*c_g" ][endif]
;----------------------------------------------------------------------------------------------
*c_g3
[cm]（Bộ kimono mầu tímh - giá 1200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1+f.zince1*f.zince2*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_g[3]=1" ][eval exp="f.Dc_g_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*c_g" ][endif]
;----------------------------------------------------------------------------------------------
*c_g4
[cm]（Bộ kimono mầu hồng - giá 1200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1+f.zince1*f.zince2*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_g[4]=1" ][eval exp="f.Dc_g_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*c_g" ][endif]
;----------------------------------------------------------------------------------------------
*c_g5
[cm]（Bộ kimono mầu đen - giá 1200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1+f.zince1*f.zince2*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_g[5]=1" ][eval exp="f.Dc_g_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*c_g" ][endif]
;----------------------------------------------------------------------------------------------
*c_g6
[cm]（Bộ kimono mầu trắng - giá 1200000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1+f.zince1*f.zince2*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_g[6]=1" ][eval exp="f.Dc_g_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*c_g" ][endif]
;----------------------------------------------------------------------------------------------
*c_g
Tôi mua bộ này。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_g[0]!='got'" ][eval exp="f.Dc_g[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s][syl]
	Chất liệu của vải thực sự rất đẹp。[lr_]
	[f/]Làm sao để lấy nó xuống đây？[p_]
	[f/re]Đây là trang phục truyền thống của nước Nhật ư! Chắc nó đắt lắm [p_]
	[f/re]Làm sao để mặc nó bây giờ？[[p_]
	[f/s]Để em thử hỏi cô bán hàng thử xem.[lr_]
	[f/re]Ah.. thì ra là vậy, em sẽ học cách để mặc nó…[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/][syl]
	Đây là… một màu khác từ đồ mà anh đã mua cho em khi trước[p_]
	[f/s]Nó là kimono nhỉ。[r]
	Anh sẽ mua nó chứ？[p_]
	[f/re]Có một chút khó khăn để mặc nhưng nó thật sự rất đẹp。[p_]
	[f/ss]Cảm ơn anh。[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_h_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_h[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_h[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_h[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_h[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_h[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_h[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_h[1]==1" ][else][eval exp="f.Dc_h[1]=1"][eval exp="f.Dc_h_per[1]=100" ][endif]
[if exp="f.Dc_h[2]==1" ][else][eval exp="f.Dc_h[2]=1"][eval exp="f.Dc_h_per[2]=100" ][endif]
[if exp="f.Dc_h[3]==1" ][else][eval exp="f.Dc_h[3]=1"][eval exp="f.Dc_h_per[3]=100" ][endif]
[if exp="f.Dc_h[4]==1" ][else][eval exp="f.Dc_h[4]=1"][eval exp="f.Dc_h_per[4]=100" ][endif]
;[if exp="f.Dc_h[5]==1" ][else][eval exp="f.Dc_h[5]=1"][eval exp="f.Dc_h_per[5]=100" ][endif]
;[if exp="f.Dc_h[6]==1" ][else][eval exp="f.Dc_h[6]=1"][eval exp="f.Dc_h_per[6]=100" ][endif]
Tài khoản còn [money][p]
#
(Tôi mua nó[p]
[after_shop]
;----------------------------------------------------------------------------------------------

*c_h1
[cm]Bộ đồng phục thủy thủ - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_h[1]=1" ][eval exp="f.Dc_h_per[1]=100" ] 

Tài khoản còn [money][p_][call target="*c_h" ][endif]
	[f/re]Nó có mầu trắng và ống tay ngắn、[r]
	Có một cảm giác gì đó thật tuyệt khi mặc nó。[p_]
	[f/ss]Cảm ơn anh、[name][p_][after_shop]
;----------------------------------------------------------------------------------------------
*c_h2
[cm]（bộ đồng phục thủy thủ mầu đen - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_h[2]=1" ][eval exp="f.Dc_h_per[2]=100" ] 

Tài khoản còn [money][p_][call target="*c_h" ][endif]
	[f/re]Một bộ đồ thủy thủ màu khác sao？[[p_]
[f/s]Ahh..Màu đen nhìn nó thật khác.[r]
	[f/re]Màu đen và trắng nhìn khác nhau hoàn toàn.[p_]
	[f/ss]Cảm ơn anh、[name][p_][after_shop]
;----------------------------------------------------------------------------------------------
*c_h3
[cm]（Bộ đồng phục thủy thủ - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]

[zin_t]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_h[3]=1" ][eval exp="f.Dc_h_per[3]=100" ]  

Tài khoản còn [money][p_][call target="*c_h" ][endif]
	[f/re]Đây là……một bộ đồng phục thủy thủ nữa sao？[p_]
	[f/ss]Cảm ơn anh、[name][p_][after_shop]
;----------------------------------------------------------------------------------------------
*c_h4
[cm]（bộ đồng phục thủy thủ mầu đen - giá 400000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_h[4]=1" ][eval exp="f.Dc_h_per[4]=100" ]  

Tài khoản còn [money][p_][call target="*c_h" ][endif]
	[f/re]Đây là một bộ thủy thủ có màu khác sao？[p_]
	[f/re]Đây là bộ đồng phục với tay áo dài, nó có vẻ hơi vướng víu khi hoạt động。[p_]
	[f/ss]Cảm ơn anh rât nhiều、[name][p_][after_shop]
;----------------------------------------------------------------------------------------------
*c_h
Tôi mua bộ này。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_h[0]!='got'" ][eval exp="f.Dc_h[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[syl][f/]Đây là……đồng phục thủy thủ sao？[lr_]
	Lần đầu tiên em được thấy nó。[p_]
	[f/re]Nhưng nó có váy nữa nè……[lr_]
	[f/s]Một cô gái mặc đồng phục thủy thủ sao？[p_]
	[f/s]Nhìn nó rất cá tính,[r]
	Chắc chắn mặc nó sẽ rất mát…[p_]
[elsif exp="f.bought_skip==1" ][after_shop][else]
	[shop_f/][syl]Dù sao… Cảm ơn anh rất nhiều [name]…[p_]
[endif][return]
;----------------------------------------------------------------------------------------------
*c_i_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_i[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_i[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_i[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_i[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_i[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_i[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_i[7]==1" ][else][eval exp="f.code_time=f.code_time-1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_i[1]==1" ][else][eval exp="f.Dc_i[1]=1"][eval exp="f.Dc_i_per[1]=100" ][endif]
[if exp="f.Dc_i[2]==1" ][else][eval exp="f.Dc_i[2]=1"][eval exp="f.Dc_i_per[2]=100" ][endif]
[if exp="f.Dc_i[3]==1" ][else][eval exp="f.Dc_i[3]=1"][eval exp="f.Dc_i_per[3]=100" ][endif]
[if exp="f.Dc_i[4]==1" ][else][eval exp="f.Dc_i[4]=1"][eval exp="f.Dc_i_per[4]=100" ][endif]
[if exp="f.Dc_i[5]==1" ][else][eval exp="f.Dc_i[5]=1"][eval exp="f.Dc_i_per[5]=100" ][endif]
[if exp="f.Dc_i[6]==1" ][else][eval exp="f.Dc_i[6]=1"][eval exp="f.Dc_i_per[6]=100" ][endif]
;[if exp="f.Dc_i[7]==1" ][else][eval exp="f.Dc_i[7]=1"][eval exp="f.Dc_i_per[7]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_i" ]
;-------------------------------------------------------------------------------------------

*c_i1
[cm]（Tôi mua một bộ đồ hầu gái mầu đen - giá 800000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_i[1]=1" ][eval exp="f.Dc_i_per[1]=100" ] 

Tài khoản còn [money][p_][jump target="*c_i" ][endif]
;----------------------------------------------------------------------------------------------
*c_i2
[cm]（bộ đồ maid mầu xanh - giá 800000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_i[2]=1" ][eval exp="f.Dc_i_per[2]=100" ] 

Tài khoản còn [money][p_][jump target="*c_i" ][endif]
;----------------------------------------------------------------------------------------------
*c_i3
[cm]（bộ đồ maid mầu tím - giá 800000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_i[3]=1" ][eval exp="f.Dc_i_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*c_i" ][endif]
;----------------------------------------------------------------------------------------------
*c_i4
[cm]（bộ đồ maid mầu lục - giá 800000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_i[4]=1" ][eval exp="f.Dc_i_per[4]=100" ] 

Tài khoản còn [money][p_][jump target="*c_i" ][endif]
;----------------------------------------------------------------------------------------------
*c_i5
[cm]（bộ đồ maid mầu hồng - giá 800000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_i[5]=1" ][eval exp="f.Dc_i_per[5]=100" ] 

Tài khoản còn [money][p_][jump target="*c_i" ][endif]
;----------------------------------------------------------------------------------------------
*c_i6
[cm]（bộ đồ maid Mầu cam - giá 800000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_i[6]=1" ][eval exp="f.Dc_i_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*c_i" ][endif]
;----------------------------------------------------------------------------------------------
*c_i
Tôi mua bộ này。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_i[0]!='got'" ][eval exp="f.Dc_i[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s][syl]
	Đây là một bộ đồ hầu gái sao？[p_]
	[f/re]Tuy vậy, nó khá đẹp。[p_]
	[f/re]Có vẻ như anh muốn em mặc nó khi làm việc nhà。[lr_]
	[f/ss]Cảm ơn anh "Goshujin-sama"。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[syl]Đây là một mầu sắc khác từ bộ đồ hầu gái mà anh đã mua trước đây.[p_]
	[f/re]Nó thật dễ thương, mầu sắc mới mẻ.[lr_]
	[f/re]Em cảm thấy muốn làm việc nhà nhiều hơn nữa…。[p_]
	[f/ss]Cảm ơn anh rất nhiều。[name]。[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_j_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_j[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_j[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_j[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_j[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_j[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_j[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince5_"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_j[1]==1" ][else][eval exp="f.Dc_j[1]=1"][eval exp="f.Dc_j_per[1]=100" ][endif]
[if exp="f.Dc_j[2]==1" ][else][eval exp="f.Dc_j[2]=1"][eval exp="f.Dc_j_per[2]=100" ][endif]
[if exp="f.Dc_j[3]==1" ][else][eval exp="f.Dc_j[3]=1"][eval exp="f.Dc_j_per[3]=100" ][endif]
[if exp="f.Dc_j[4]==1" ][else][eval exp="f.Dc_j[4]=1"][eval exp="f.Dc_j_per[4]=100" ][endif]
[if exp="f.Dc_j[5]==1" ][else][eval exp="f.Dc_j[5]=1"][eval exp="f.Dc_j_per[5]=100" ][endif]
;[if exp="f.Dc_j[6]==1" ][else][eval exp="f.Dc_j[6]=1"][eval exp="f.Dc_j_per[6]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_j" ]
;---------------------------------------------------------------------------------------------------

*c_j1
[cm][eval exp="f.Dc_j[1]=1" ]（Tôi mua bộ đồng phục với chiếc áo khoác - giá 850000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_j[1]=1" ][eval exp="f.Dc_j_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*c_j" ][endif]
;----------------------------------------------------------------------------------------------
*c_j2
[cm]（bộ đồng phục mầu trà - giá 850000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_j[2]=1" ][eval exp="f.Dc_j_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*c_j" ][endif]
;----------------------------------------------------------------------------------------------
*c_j3
[cm]（bộ đồng phục mầu tím - giá 850000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_j[3]=1" ][eval exp="f.Dc_j_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*c_j" ][endif]
;----------------------------------------------------------------------------------------------
*c_j4
[cm]（bộ đồng phục mầu lục - giá 850000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_j[4]=1" ][eval exp="f.Dc_j_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*c_j" ][endif]
;----------------------------------------------------------------------------------------------
*c_j5
[cm]（bộ đồng phục mầu đen - giá 850000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_j[5]=1" ][eval exp="f.Dc_j_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*c_j" ][endif]
;----------------------------------------------------------------------------------------------


*c_j
Tôi mua bộ này。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_j[0]!='got'" ][eval exp="f.Dc_j[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/][syl]
	Đây là…đồng phục, áo khoác[lr_]
	[f/re]Nó có vẻ giống với đồ nam[p_]
	[f/s]Nó thật trang nhã và lịch thiệp[lr_]
	[f/re]Em tự hỏi trông sẽ thế nào khi em mặc nó？[p_]
	[f/ss]Cảm ơn anh nhiều….[name][p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/][syl]
	Đây là mầu khác từ bộ anh đã mua。[p_]
	[f/s]Có một chút khác biệt cũng rất thú vị[lr_]
	[f/ss]Cảm ơn anh rất nhiều。[name]。[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_k_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_k[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_k[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_k[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_k[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_k[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_k[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince6_+f.zince1*f.zince3*f.zince8_"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_k[1]==1" ][else][eval exp="f.Dc_k[1]=1"][eval exp="f.Dc_k_per[1]=100" ][endif]
[if exp="f.Dc_k[2]==1" ][else][eval exp="f.Dc_k[2]=1"][eval exp="f.Dc_k_per[2]=100" ][endif]
[if exp="f.Dc_k[3]==1" ][else][eval exp="f.Dc_k[3]=1"][eval exp="f.Dc_k_per[3]=100" ][endif]
[if exp="f.Dc_k[4]==1" ][else][eval exp="f.Dc_k[4]=1"][eval exp="f.Dc_k_per[4]=100" ][endif]
[if exp="f.Dc_k[5]==1" ][else][eval exp="f.Dc_k[5]=1"][eval exp="f.Dc_k_per[5]=100" ][endif]
[if exp="f.Dc_k[6]==1" ][else][eval exp="f.Dc_k[6]=1"][eval exp="f.Dc_k_per[6]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_k" ]
;---------------------------------------------------------------------------
*c_k1
[cm]（Tôi mua trang phục với áo sơ mi và calavat - giá 680000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince6_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_k[1]=1" ][eval exp="f.Dc_k_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*c_k" ][endif]
;----------------------------------------------------------------------------------------------
*c_k2
[cm]（bộ có calavat mầu đỏ - giá 680000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince6_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_k[2]=1" ][eval exp="f.Dc_k_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*c_k" ][endif]
;----------------------------------------------------------------------------------------------
*c_k3
[cm]（bộ có calavat mầu tím - giá 680000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince6_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_k[3]=1" ][eval exp="f.Dc_k_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*c_k" ][endif]
;----------------------------------------------------------------------------------------------
*c_k4
[cm]（bộ có calavat mầu lục - giá 680000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince6_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_k[4]=1" ][eval exp="f.Dc_k_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*c_k" ][endif]
;----------------------------------------------------------------------------------------------
*c_k5
[cm]（bộ có calavat mầu trà - giá 680000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince6_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_k[5]=1" ][eval exp="f.Dc_k_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*c_k" ][endif]
;----------------------------------------------------------------------------------------------
*c_k6
[cm]（bộ có calavat mầu hồng - giá 680000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince6_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_k[6]=1" ][eval exp="f.Dc_k_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*c_k" ][endif]
;----------------------------------------------------------------------------------------------
*c_k
Tôi mua bộ này。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_k[0]!='got'" ][eval exp="f.Dc_k[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/][syl]
	Bộ này…Nhìn thì đơn giản nhưng mang lại cảm giác tươi trẻ[lr_]
	[f/s]Nó có váy ngắn, tay áo ngắn nên dễ di chuyển[p_]
	[f/re]Mặc nó chắc mát lắm[p_]
	[f/ss]Cảm ơn anh rất nhiều….[name][p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/][syl]
	Đây là… một mầu khác từ bộ anh đã mua。[p_]
	[f/s]Không có họa tiết trang thí gì thêm, mầu sắc là thứ khác biệt duy nhất。[lr_]
	[f/ss]Cảm ơn anh rất nhiều。[name]。[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_l_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_l[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_l[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_l[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_l[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_l[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_l[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince3_"][eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_l[1]==1" ][else][eval exp="f.Dc_l[1]=1"][eval exp="f.Dc_l_per[1]=100" ][endif]
[if exp="f.Dc_l[2]==1" ][else][eval exp="f.Dc_l[2]=1"][eval exp="f.Dc_l_per[2]=100" ][endif]
[if exp="f.Dc_l[3]==1" ][else][eval exp="f.Dc_l[3]=1"][eval exp="f.Dc_l_per[3]=100" ][endif]
[if exp="f.Dc_l[4]==1" ][else][eval exp="f.Dc_l[4]=1"][eval exp="f.Dc_l_per[4]=100" ][endif]
[if exp="f.Dc_l[5]==1" ][else][eval exp="f.Dc_l[5]=1"][eval exp="f.Dc_l_per[5]=100" ][endif]
;[if exp="f.Dc_l[6]==1" ][else][eval exp="f.Dc_l[6]=1"][eval exp="f.Dc_l_per[6]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_l" ]
;-----------------------------------------------------------------------------------------------
*c_l1
[cm]（Tôi mua một bộ váy dài - giá 830000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_l[1]=1" ][eval exp="f.Dc_l_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*c_l" ][endif]
;----------------------------------------------------------------------------------------------
*c_l2
[cm]（Cái váy dài 「mầu đen」 - giá 830000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_l[2]=1" ][eval exp="f.Dc_l_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*c_l" ][endif]
;----------------------------------------------------------------------------------------------
*c_l3
[cm]（Cái váy dài 「mầu trà」 - giá 830000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_l[3]=1" ][eval exp="f.Dc_l_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*c_l" ][endif]
;----------------------------------------------------------------------------------------------
*c_l4
[cm]（Cái váy dài 「mầu tím」 - giá 830000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_l[4]=1" ][eval exp="f.Dc_l_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*c_l" ][endif]
;----------------------------------------------------------------------------------------------
*c_l5
[cm]（Cái váy dài 「mầu lục」 - giá 830000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince8_+f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_l[5]=1" ][eval exp="f.Dc_l_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*c_l" ][endif]
;----------------------------------------------------------------------------------------------

*c_l
Tôi mua bộ váy dài。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_l[0]!='got'" ][eval exp="f.Dc_l[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s][syl]
	Đó là…Một bộ váy dài rất đẹp[lr_]
	[f/re]Họa tiết trang trí của nó thật đẹp[p_]
	[f/re]Mặc nó em có cảm giác mình như 1 tiểu thư …[lr_]
	[f/ss]Cảm ơn anh rất nhiều…[name]♡[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s][syl]
	Đây là một mầu sắc khác từ cái váy mà anh đã mua cho em。[p_]
	[f/re]Mầu sắc tuy khác nhau nhưng nó vẫn thật tinh tế。[lr_]
	[f/ss]Cảm ơn anh rất nhiều。[name]。[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_m_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_m[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_m[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_m[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_m[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_m[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_m[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_+f.zince1*f.zince3*f.zince8_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_m[1]==1" ][else][eval exp="f.Dc_m[1]=1"][eval exp="f.Dc_m_per[1]=100" ][endif]
[if exp="f.Dc_m[2]==1" ][else][eval exp="f.Dc_m[2]=1"][eval exp="f.Dc_m_per[2]=100" ][endif]
[if exp="f.Dc_m[3]==1" ][else][eval exp="f.Dc_m[3]=1"][eval exp="f.Dc_m_per[3]=100" ][endif]
[if exp="f.Dc_m[4]==1" ][else][eval exp="f.Dc_m[4]=1"][eval exp="f.Dc_m_per[4]=100" ][endif]
[if exp="f.Dc_m[5]==1" ][else][eval exp="f.Dc_m[5]=1"][eval exp="f.Dc_m_per[5]=100" ][endif]
;[if exp="f.Dc_m[6]==1" ][else][eval exp="f.Dc_m[6]=1"][eval exp="f.Dc_m_per[6]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_m" ]
;--------------------------------------------------------------------------------
*c_m1
[cm]（Mầu xanh - giá 480000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_m[1]=1" ][eval exp="f.Dc_m_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*c_m" ][endif]
;----------------------------------------------------------------------------------------------
*c_m2
[cm]（Mầu trà - giá 480000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_m[2]=1" ][eval exp="f.Dc_m_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*c_m" ][endif]
;----------------------------------------------------------------------------------------------
*c_m3
[cm]（Mầu lục - giá 480000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_m[3]=1" ][eval exp="f.Dc_m_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*c_m" ][endif]
;----------------------------------------------------------------------------------------------
*c_m4
[cm]（Mầu cam - giá 480000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_m[4]=1" ][eval exp="f.Dc_m_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*c_m" ][endif]
;----------------------------------------------------------------------------------------------
*c_m5
[cm]（Mầu đen - giá 480000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince4_+f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_m[5]=1" ][eval exp="f.Dc_m_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*c_m" ][endif]
;----------------------------------------------------------------------------------------------
*c_m
Tôi mua bộ đồ đơn giản。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_m[0]!='got'" ][eval exp="f.Dc_m[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/][syl]
	Đây là …áo khoác và quần dài。[lr_]
	[f/re]Nó thật sự hợp với em?[p_]
	[f/ss]Không、Nó là đồ anh chọn thì đương nhiên phù hợp rồi。[p_]
	[f/s]Cảm ơn anh rất nhiều、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/][syl]
	Đây là một mầu khác từ bộ anh đã mua cho em。[lr_]
	[f/re]Mầu sắc thay đổi sẽ tạo nên ấn tượng mới, em sẽ cảm thấy khó khăn khi lựa chọn。[p_]
	[f/s]Tuy nhiên, em thực sự rất hạnh phúc。[lr_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_n_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_n[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_n[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_n[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_n[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_n[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_n[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_n[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_+f.zince1*f.zince3*f.zince4_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_n[1]==1" ][else][eval exp="f.Dc_n[1]=1"][eval exp="f.Dc_n_per[1]=100" ][endif]
[if exp="f.Dc_n[2]==1" ][else][eval exp="f.Dc_n[2]=1"][eval exp="f.Dc_n_per[2]=100" ][endif]
[if exp="f.Dc_n[3]==1" ][else][eval exp="f.Dc_n[3]=1"][eval exp="f.Dc_n_per[3]=100" ][endif]
[if exp="f.Dc_n[4]==1" ][else][eval exp="f.Dc_n[4]=1"][eval exp="f.Dc_n_per[4]=100" ][endif]
[if exp="f.Dc_n[5]==1" ][else][eval exp="f.Dc_n[5]=1"][eval exp="f.Dc_n_per[5]=100" ][endif]
[if exp="f.Dc_n[6]==1" ][else][eval exp="f.Dc_n[6]=1"][eval exp="f.Dc_n_per[6]=100" ][endif]
[if exp="f.Dc_n[7]==1" ][else][eval exp="f.Dc_n[7]=1"][eval exp="f.Dc_n_per[7]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_n" ]
;---------------------------------------------------------------------------------------------

*c_n1
[cm]（Mầu đen - giá 940000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_n[1]=1" ][eval exp="f.Dc_n_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*c_n" ][endif]
;----------------------------------------------------------------------------------------------
*c_n2
[cm]（Mầu trắng - giá 940000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_n[2]=1" ][eval exp="f.Dc_n_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*c_n" ][endif]
;----------------------------------------------------------------------------------------------
*c_n3
[cm]（Mầu đỏ - giá 940000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_n[3]=1" ][eval exp="f.Dc_n_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*c_n" ][endif]
;----------------------------------------------------------------------------------------------
*c_n4
[cm]（Mầu tím - giá 940000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_n[4]=1" ][eval exp="f.Dc_n_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*c_n" ][endif]
;----------------------------------------------------------------------------------------------
*c_n5
[cm]（Mầu lục - giá 940000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_n[5]=1" ][eval exp="f.Dc_n_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*c_n" ][endif]
;----------------------------------------------------------------------------------------------
*c_n6
[cm]（Mầu xanh - giá 940000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_n[6]=1" ][eval exp="f.Dc_n_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*c_n" ][endif]
;----------------------------------------------------------------------------------------------
*c_n7
[cm]（Mầu hồng - giá 940000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_n[7]=1" ][eval exp="f.Dc_n_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*c_n" ][endif]
;----------------------------------------------------------------------------------------------
*c_n
Tôi mua chiếc váy bó sát。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_n[0]!='got'" ][eval exp="f.Dc_n[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/][syl]
	Thiết kế của nó thật kì lạ。[r]
	Đây có phải là một phong cách thời trang？[p_]
	[f/s]Tuy nhiên, nó thực sự rất đep。[lr_]
	[f/ss]cảm ơn anh rất nhiều、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/][syl]
	Đây là…mầu khác từ chiếc váy anh đã mua。[p_]
	[f/s]Mầu sắc của nó tạo một ấn tượng khác biệt。[lr_]
	[f/re]Em hi vọng sẽ không trở nên quá khác lạ khi mặc chúng。[p_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_o_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_o[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_o[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_o[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_o[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_o[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_o[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_o[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_o[1]==1" ][else][eval exp="f.Dc_o[1]=1"][eval exp="f.Dc_o_per[1]=100" ][endif]
[if exp="f.Dc_o[2]==1" ][else][eval exp="f.Dc_o[2]=1"][eval exp="f.Dc_o_per[2]=100" ][endif]
[if exp="f.Dc_o[3]==1" ][else][eval exp="f.Dc_o[3]=1"][eval exp="f.Dc_o_per[3]=100" ][endif]
[if exp="f.Dc_o[4]==1" ][else][eval exp="f.Dc_o[4]=1"][eval exp="f.Dc_o_per[4]=100" ][endif]
[if exp="f.Dc_o[5]==1" ][else][eval exp="f.Dc_o[5]=1"][eval exp="f.Dc_o_per[5]=100" ][endif]
[if exp="f.Dc_o[6]==1" ][else][eval exp="f.Dc_o[6]=1"][eval exp="f.Dc_o_per[6]=100" ][endif]
;[if exp="f.Dc_o[7]==1" ][else][eval exp="f.Dc_o[7]=1"][eval exp="f.Dc_o_per[7]=100" ][endif]
Tài khoản còn [money][p]
[after_shop]
;------------------------------------------------------------------------------------------------
*c_o1
[cm]（Mầu đen - giá 900000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_o[1]=1" ][eval exp="f.Dc_o_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*ali_color" ][endif]
;----------------------------------------------------------------------------------------------
*c_o2
[cm]（Mầu trà - giá 900000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_o[2]=1" ][eval exp="f.Dc_o_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*ali_color" ][endif]
;----------------------------------------------------------------------------------------------
*c_o3
[cm]（Mầu xanh - giá 900000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_o[3]=1" ][eval exp="f.Dc_o_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*ali_color" ][endif]
;----------------------------------------------------------------------------------------------
*c_o4
[cm]（Mầu tím - giá 900000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_o[4]=1" ][eval exp="f.Dc_o_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*ali_color" ][endif]
;----------------------------------------------------------------------------------------------
*c_o5
[cm]（Mầu đỏ - giá 900000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_o[5]=1" ][eval exp="f.Dc_o_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*ali_color" ][endif]
;----------------------------------------------------------------------------------------------
*c_o6
[cm]（Mầu lục - giá 900000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_o[6]=1" ][eval exp="f.Dc_o_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*ali_color" ][endif]
;----------------------------------------------------------------------------------------------
*ali_color
Một trang phục kì lạ với đai ở khắp nơi。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_o[0]!='got'" ][eval exp="f.Dc_o[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/][syl]
	Đây là…Bộ đồ này thật sự rất kì lạ, những cái đai được gắn khắp mọi nơi。[lr_]
	[f/cl]Và nó sẽ tốn thời gian để mặc…。[p_]
	[f/s]Nhưng nó mang lại ấn tượng mạnh mẽ, năng động？[lr_]
	[f/ss]Cảm ơn anh rất nhiều。[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/][syl]
	Đây là… mầu khác từ bộ đồ kì lạ anh đã mua。[p_]
	[f/s]Tuy ấn tượng hơi khác chút nhưng nó vẫn thật "mạnh mẽ"。[p_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
*c_p_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dc_p[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_p[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_p[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_p[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_p[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dc_p[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dc_p[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince1"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dc_p[1]==1" ][else][eval exp="f.Dc_p[1]=1"][eval exp="f.Dc_p_per[1]=100" ][endif]
[if exp="f.Dc_p[2]==1" ][else][eval exp="f.Dc_p[2]=1"][eval exp="f.Dc_p_per[2]=100" ][endif]
[if exp="f.Dc_p[3]==1" ][else][eval exp="f.Dc_p[3]=1"][eval exp="f.Dc_p_per[3]=100" ][endif]
[if exp="f.Dc_p[4]==1" ][else][eval exp="f.Dc_p[4]=1"][eval exp="f.Dc_p_per[4]=100" ][endif]
[if exp="f.Dc_p[5]==1" ][else][eval exp="f.Dc_p[5]=1"][eval exp="f.Dc_p_per[5]=100" ][endif]
[if exp="f.Dc_p[6]==1" ][else][eval exp="f.Dc_p[6]=1"][eval exp="f.Dc_p_per[6]=100" ][endif]
;[if exp="f.Dc_p[7]==1" ][else][eval exp="f.Dc_p[7]=1"][eval exp="f.Dc_p_per[7]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*c_p" ]
;--------------------------------------------------------------------------------------------------
*c_p1
[cm]（'cái váy có dải ruy băng lớn' Mầu xanh- giá 1000000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_p[1]=1" ][eval exp="f.Dc_p_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*c_p" ][endif]
;----------------------------------------------------------------------------------------------
*c_p2
[cm]（'cái váy có dải ruy băng lớn' Mầu lục - giá- giá 1000000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_p[2]=1" ][eval exp="f.Dc_p_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*c_p" ][endif]
;----------------------------------------------------------------------------------------------
*c_p3
[cm]（'cái váy có dải ruy băng lớn' Mầu tím- giá 1000000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_p[3]=1" ][eval exp="f.Dc_p_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*c_p" ][endif]
;----------------------------------------------------------------------------------------------
*c_p4
[cm]（'cái váy có dải ruy băng lớn' Mầu đỏ- giá 1000000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_p[4]=1" ][eval exp="f.Dc_p_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*c_p" ][endif]
;----------------------------------------------------------------------------------------------
*c_p5
[cm]（'cái váy có dải ruy băng lớn' Mầu đen - giá 1000000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_p[5]=1" ][eval exp="f.Dc_p_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*c_p" ][endif]
;----------------------------------------------------------------------------------------------
*c_p6
[cm]（'cái váy có dải ruy băng lớn' Mầu hồng - giá 1000000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dc_p[6]=1" ][eval exp="f.Dc_p_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*c_p" ][endif]
;----------------------------------------------------------------------------------------------
*c_p
Tôi mua bộ này。[p_][eval exp="f.daily_out='shop_d'" ]
[if exp="f.Dc_p[0]!='got'" ][eval exp="f.Dc_p[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s][syl]
	Một chiếc váy với dải ruy băng thật lớn。[lr_]
	[f/re]Mặc nó sẽ rất thoải mái。[p_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/][syl]
	Đây là… một mầu khác từ chiếc váy anh đã mua。[p_]
	[f/s]Có chút thay đổi nhưng vẫn là dải ruy băng lớn đó。[p_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
[endif][after_shop]
;----------------------------------------------------------------------------------------------
;;リボン-セリフ
*r_a_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dr_a[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_a[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_a[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_a[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_a[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_a[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_a[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_a[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_a[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dr_a[1]==1" ][else][eval exp="f.Dr_a[1]=1"][eval exp="f.Dr_a_per[1]=100" ][endif]
[if exp="f.Dr_a[2]==1" ][else][eval exp="f.Dr_a[2]=1"][eval exp="f.Dr_a_per[2]=100" ][endif]
[if exp="f.Dr_a[3]==1" ][else][eval exp="f.Dr_a[3]=1"][eval exp="f.Dr_a_per[3]=100" ][endif]
[if exp="f.Dr_a[4]==1" ][else][eval exp="f.Dr_a[4]=1"][eval exp="f.Dr_a_per[4]=100" ][endif]
[if exp="f.Dr_a[5]==1" ][else][eval exp="f.Dr_a[5]=1"][eval exp="f.Dr_a_per[5]=100" ][endif]
[if exp="f.Dr_a[6]==1" ][else][eval exp="f.Dr_a[6]=1"][eval exp="f.Dr_a_per[6]=100" ][endif]
[if exp="f.Dr_a[7]==1" ][else][eval exp="f.Dr_a[7]=1"][eval exp="f.Dr_a_per[7]=100" ][endif]
[if exp="f.Dr_a[8]==1" ][else][eval exp="f.Dr_a[8]=1"][eval exp="f.Dr_a_per[8]=100" ][endif]
[if exp="f.Dr_a[9]==1" ][else][eval exp="f.Dr_a[9]=1"][eval exp="f.Dr_a_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*r_a" ]
;------------------------------------------------------------------------------------------------------

*r_a1
[cm]（Mầu xanh - giá 10000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_a[1]=1" ][eval exp="f.Dr_a_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*r_a" ][endif]
;----------------------------------------------------------------------------------------------

*r_a2
[cm]（Mầu đỏ - giá 10000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_a[2]=1" ][eval exp="f.Dr_a_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*r_a" ][endif]
;----------------------------------------------------------------------------------------------
*r_a3
[cm]（Mầu vàng - giá 10000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_a[3]=1" ][eval exp="f.Dr_a_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*r_a" ][endif]
;----------------------------------------------------------------------------------------------
*r_a4
[cm]（Mầu lục - giá 10000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_a[4]=1" ][eval exp="f.Dr_a_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*r_a" ][endif]
;----------------------------------------------------------------------------------------------
*r_a5
[cm]（Mầu tím - giá 10000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_a[5]=1" ][eval exp="f.Dr_a_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*r_a" ][endif]
;----------------------------------------------------------------------------------------------
*r_a6
[cm]（Mầu cam - giá 10000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_a[6]=1" ][eval exp="f.Dr_a_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*r_a" ][endif]
;----------------------------------------------------------------------------------------------
*r_a7
[cm]（Mầu đen - giá 10000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_a[7]=1" ][eval exp="f.Dr_a_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*r_a" ][endif]
;----------------------------------------------------------------------------------------------
*r_a8
[cm]（Mầu trắng - giá 10000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_a[8]=1" ][eval exp="f.Dr_a_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*r_a" ][endif]
;----------------------------------------------------------------------------------------------
*r_a9
[cm]（Mầu hồng - giá 10000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_a[9]=1" ][eval exp="f.Dr_a_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*r_a" ][endif]
;----------------------------------------------------------------------------------------------
*r_b_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dr_b[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_b[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_b[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_b[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_b[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_b[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_b[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_b[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_b[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dr_b[1]==1" ][else][eval exp="f.Dr_b[1]=1"][eval exp="f.Dr_b_per[1]=100" ][endif]
[if exp="f.Dr_b[2]==1" ][else][eval exp="f.Dr_b[2]=1"][eval exp="f.Dr_b_per[2]=100" ][endif]
[if exp="f.Dr_b[3]==1" ][else][eval exp="f.Dr_b[3]=1"][eval exp="f.Dr_b_per[3]=100" ][endif]
[if exp="f.Dr_b[4]==1" ][else][eval exp="f.Dr_b[4]=1"][eval exp="f.Dr_b_per[4]=100" ][endif]
[if exp="f.Dr_b[5]==1" ][else][eval exp="f.Dr_b[5]=1"][eval exp="f.Dr_b_per[5]=100" ][endif]
[if exp="f.Dr_b[6]==1" ][else][eval exp="f.Dr_b[6]=1"][eval exp="f.Dr_b_per[6]=100" ][endif]
[if exp="f.Dr_b[7]==1" ][else][eval exp="f.Dr_b[7]=1"][eval exp="f.Dr_b_per[7]=100" ][endif]
[if exp="f.Dr_b[8]==1" ][else][eval exp="f.Dr_b[8]=1"][eval exp="f.Dr_b_per[8]=100" ][endif]
[if exp="f.Dr_b[9]==1" ][else][eval exp="f.Dr_b[9]=1"][eval exp="f.Dr_b_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*r_b" ]
;--------------------------------------------------------------------------------------------
*r_b1
[cm]（Mầu xanh - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_b[1]=1" ][eval exp="f.Dr_b_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*r_b" ][endif]
;----------------------------------------------------------------------------------------------
*r_b2
[cm]（Mầu đỏ - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_b[2]=1" ][eval exp="f.Dr_b_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*r_b" ][endif]
;----------------------------------------------------------------------------------------------
*r_b3
[cm]（Mầu vàng - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_b[3]=1" ][eval exp="f.Dr_b_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*r_b" ][endif]
;----------------------------------------------------------------------------------------------
*r_b4
[cm]（Mầu lục - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_b[4]=1" ][eval exp="f.Dr_b_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*r_b" ][endif]
;----------------------------------------------------------------------------------------------
*r_b5
[cm]（Mầu tím - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_b[5]=1" ][eval exp="f.Dr_b_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*r_b" ][endif]
;----------------------------------------------------------------------------------------------
*r_b6
[cm]（Mầu cam - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_b[6]=1" ][eval exp="f.Dr_b_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*r_b" ][endif]
;----------------------------------------------------------------------------------------------
*r_b7
[cm]（Mầu đen - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_b[7]=1" ][eval exp="f.Dr_b_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*r_b" ][endif]
;----------------------------------------------------------------------------------------------
*r_b8
[cm]（Mầu trắng - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_b[8]=1" ][eval exp="f.Dr_b_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*r_b" ][endif]
;----------------------------------------------------------------------------------------------
*r_b9
[cm]（Mầu hồng - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_b[9]=1" ][eval exp="f.Dr_b_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*r_b" ][endif]
;----------------------------------------------------------------------------------------------

*r_a
Tôi mua chiếc nơ nhỏ。[p_][if exp="f.bought_skip==1" ][else][jump target="*r_ab_re" ][endif]
*r_b
Tôi mua chiếc nơ lớn[p_]
[if exp="f.Dr_b[0]!='got'" ][eval exp="f.Dr_b[0]='got'" ][eval exp="f.r='got'" ]
	[syl][shop_f/] 
	Chiếc nơ này trông có vẻ lớn hơn cái mà anh mua cho em khi trước。[lr_]
	[f/s]Cảm ơn anh rất nhiều。[p_]
	[f/s]Nếu em mang thứ này, nhìn em có dễ thương không？[p_]
[elsif exp="f.bought_skip==1" ][else]
	[jump target="*r_ab_re" ]
[endif][after_shop]

*r_ab_re
[shop_f/] 
[if exp="f.step<=4" ]
	[syl]Đây là… mầu sắc khác từ cái nơ anh đã mua cho em。[p_]
	Sẽ không sao nếu em nhận nó chứ?[p_]
	[f/s]…Cảm ơn anh。[p_]
[else]
	[syl]Đây là… mầu sắc khác từ cái nơ anh đã mua cho em。[lr_]
	[f/s]Cảm ơn anh rất nhiều。[p_]
	Có cảm giác như trông em sẽ rất khác khi đeo chúng。[lr_]
	[f/ss]Em thực sự rất mong chờ để thử chúng。[p_]
[endif][after_shop]
;--------------------------------------------------------------------------------------------
*r_c_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dr_c[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_c[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_c[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_c[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_c[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_c[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_c[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_c[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_c[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dr_c[1]==1" ][else][eval exp="f.Dr_c[1]=1"][eval exp="f.Dr_c_per[1]=100" ][endif]
[if exp="f.Dr_c[2]==1" ][else][eval exp="f.Dr_c[2]=1"][eval exp="f.Dr_c_per[2]=100" ][endif]
[if exp="f.Dr_c[3]==1" ][else][eval exp="f.Dr_c[3]=1"][eval exp="f.Dr_c_per[3]=100" ][endif]
[if exp="f.Dr_c[4]==1" ][else][eval exp="f.Dr_c[4]=1"][eval exp="f.Dr_c_per[4]=100" ][endif]
[if exp="f.Dr_c[5]==1" ][else][eval exp="f.Dr_c[5]=1"][eval exp="f.Dr_c_per[5]=100" ][endif]
[if exp="f.Dr_c[6]==1" ][else][eval exp="f.Dr_c[6]=1"][eval exp="f.Dr_c_per[6]=100" ][endif]
[if exp="f.Dr_c[7]==1" ][else][eval exp="f.Dr_c[7]=1"][eval exp="f.Dr_c_per[7]=100" ][endif]
[if exp="f.Dr_c[8]==1" ][else][eval exp="f.Dr_c[8]=1"][eval exp="f.Dr_c_per[8]=100" ][endif]
[if exp="f.Dr_c[9]==1" ][else][eval exp="f.Dr_c[9]=1"][eval exp="f.Dr_c_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*r_c" ]
;-------------------------------------------------------------------------------------------
*r_c1
[cm]（Mầu xanh - giá 100000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_c[1]=1" ]

Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------
;*r_c1
;[cm]（Mầu xanh - giá 100000 đ[p]
;[eval exp="f.zince_=f.zince1*f.zince2"]
;[zin_t]
;[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
;#
;Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
;[else]
;[eval exp="f.Dr_c[1]=1" ][eval exp="f.Dr_c_per[1]=100" ]
;Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------
*r_c2
[cm]（Mầu đỏ - giá 100000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_c[2]=1" ][eval exp="f.Dr_c_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------
*r_c3
[cm]（Mầu vàng - giá 100000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_c[3]=1" ][eval exp="f.Dr_c_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------
*r_c4
[cm]（Mầu lục - giá 100000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_c[4]=1" ][eval exp="f.Dr_c_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------
*r_c5
[cm]（Mầu tím - giá 100000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_c[5]=1" ][eval exp="f.Dr_c_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------
*r_c6
[cm]（Mầu cam - giá 100000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_c[6]=1" ][eval exp="f.Dr_c_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------
*r_c7
[cm]（Mầu trắng - giá 100000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_c[7]=1" ][eval exp="f.Dr_c_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------
*r_c8
[cm]（Mầu đen - giá 100000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_c[8]=1" ][eval exp="f.Dr_c_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------
*r_c9
[cm]（Mầu hồng - giá 100000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_c[9]=1" ][eval exp="f.Dr_c_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*r_c" ][endif]
;----------------------------------------------------------------------------------------------

*r_c
Tôi mua dây buộc tóc bằng vải thun[p_]
[if exp="f.Dr_c[0]!='got'" ][eval exp="f.Dr_c[0]='got'" ][eval exp="f.r='got'" ]
	[syl][shop_f/s]
	Ah… một cái dây buộc tóc mới。[lr_]
	[f/re]Nó làm từ vải thun nhỉ ？？[p_]
	[f/re]Chạm vào nó có cảm giác thích thật。[p_]
	[f/ss]Cảm ơn anh rất nhiều… [name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[syl][shop_f/s]
	Đây là một mầu khác từ dây buộc tóc anh đã mua。[p_]
	[f/s]Nó thật gọn nhẹ 。[lr_]
	[f/ss]Và thật đẹp。[p_]
	[f/s]Cảm ơn anh rất nhiều。[p_]
[endif][after_shop]
;;=================================================================================================
*r_d_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dr_d[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_d[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_d[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_d[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_d[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_d[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_d[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_d[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_d[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dr_d[1]==1" ][else][eval exp="f.Dr_d[1]=1"][eval exp="f.Dr_d_per[1]=100" ][endif]
[if exp="f.Dr_d[2]==1" ][else][eval exp="f.Dr_d[2]=1"][eval exp="f.Dr_d_per[2]=100" ][endif]
[if exp="f.Dr_d[3]==1" ][else][eval exp="f.Dr_d[3]=1"][eval exp="f.Dr_d_per[3]=100" ][endif]
[if exp="f.Dr_d[4]==1" ][else][eval exp="f.Dr_d[4]=1"][eval exp="f.Dr_d_per[4]=100" ][endif]
[if exp="f.Dr_d[5]==1" ][else][eval exp="f.Dr_d[5]=1"][eval exp="f.Dr_d_per[5]=100" ][endif]
[if exp="f.Dr_d[6]==1" ][else][eval exp="f.Dr_d[6]=1"][eval exp="f.Dr_d_per[6]=100" ][endif]
[if exp="f.Dr_d[7]==1" ][else][eval exp="f.Dr_d[7]=1"][eval exp="f.Dr_d_per[7]=100" ][endif]
[if exp="f.Dr_d[8]==1" ][else][eval exp="f.Dr_d[8]=1"][eval exp="f.Dr_d_per[8]=100" ][endif]
[if exp="f.Dr_d[9]==1" ][else][eval exp="f.Dr_d[9]=1"][eval exp="f.Dr_d_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*r_d" ]
;----------------------------------------------------------------------------------------------------
*r_d1
[cm]（Mầu xanh - giá 11000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_d[1]=1" ][eval exp="f.Dr_d_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*r_d" ][endif]
;----------------------------------------------------------------------------------------------
*r_d2
[cm]（Mầu đỏ - giá 11000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_d[2]=1" ][eval exp="f.Dr_d_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*r_d" ][endif]
;----------------------------------------------------------------------------------------------
*r_d3
[cm]（Mầu vàng - giá 11000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_d[3]=1" ][eval exp="f.Dr_d_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*r_d" ][endif]
;----------------------------------------------------------------------------------------------
*r_d4
[cm]（Mầu lục - giá 11000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_d[4]=1" ][eval exp="f.Dr_d_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*r_d" ][endif]
;----------------------------------------------------------------------------------------------
*r_d5
[cm]（Mầu tím - giá 11000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_d[5]=1" ][eval exp="f.Dr_d_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*r_d" ][endif]
;----------------------------------------------------------------------------------------------
*r_d6
[cm]（Mầu cam - giá 11000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_d[6]=1" ][eval exp="f.Dr_d_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*r_d" ][endif]
;----------------------------------------------------------------------------------------------
*r_d7
[cm]（Mầu trắng - giá 11000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_d[7]=1" ][eval exp="f.Dr_d_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*r_d" ][endif]
;----------------------------------------------------------------------------------------------
*r_d8
[cm]（Mầu đen - giá 11000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_d[8]=1" ][eval exp="f.Dr_d_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*r_d" ][endif]
;----------------------------------------------------------------------------------------------
*r_d9
[cm]（Mầu hồng - giá 11000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_d[9]=1" ][eval exp="f.Dr_d_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*r_d" ][endif]
;----------------------------------------------------------------------------------------------

*r_d
Tôi mua dây buộc tóc[p_]
[if exp="f.Dr_d[0]!='got'" ][eval exp="f.Dr_d[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]Nó là sợi dây buộc tóc với những hạt trang trí、[lr_]
	[f/s]Nó đẹp lấp lánh[r]Nhưng trông có hơi trẻ con nhỉ？[p_]
	[f/ss]Dù sao cũng cảm ơn anh rất nhiều。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[f/re]Đó là một mầu khác từ dây buộc tóc mà anh đã mua。[lr_]
	[f/scl]Có thể để nó lăn lăn trong lòng bàn tay như một trò giải trí nhỉ?。[p_]
	[f/s]Cảm ơn anh rất nhiều。[name][p_]
[endif][after_shop]
;;=================================================================================================
*r_e_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dr_e[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dr_e[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]

[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince5_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dr_e[1]==1" ][else][eval exp="f.Dr_e[1]=1"][eval exp="f.Dr_e_per[1]=100" ][endif]
[if exp="f.Dr_e[2]==1" ][else][eval exp="f.Dr_e[2]=1"][eval exp="f.Dr_e_per[2]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*r_e" ]
;---------------------------------------
*r_e1
[cm]（Mầu bạc - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_e[1]=1" ][eval exp="f.Dr_e_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*r_e" ][endif]
;----------------------------------------------------------------------------------------------
*r_e2
[cm]（Mầu vàng - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dr_e[2]=1" ][eval exp="f.Dr_e_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*r_e" ][endif]
;----------------------------------------------------------------------------------------------
*r_e
Tôi mua cây trâm[p_]
[if exp="f.Dr_e[0]!='got'" ][eval exp="f.Dr_e[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]Thật là một cây trâm đẹp。[lr_]
	[f/re]Nó dùng để giữ tóc của em nhỉ？[p_]
	[f/re]Nó Là một phụ kiện dành cho trang phục kimono。[lr_]
	[f/re]Vậy em sẽ sử dụng khi mặc kimono。[p_]
	[f/ss]Cảm ơn anh rất nhiều。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[f/re]Nó là một mầu khác từ cây trâm anh đã mua。[p_]
	[f/re]Nó được gọi là kanzashi。[lr_]
	[f/ss]Nó đẹp lấp lánh。[p_]
	[f/s]Cảm ơn anh rất nhiều, em sẽ thử nó lần sau。[p_]
[endif][after_shop]
;;=================================================================================================
;;ヘアピン-セリフ
*p_a_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dp_a[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_a[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_a[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_a[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_a[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_a[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_a[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_a[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_a[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince5_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dp_a[1]==1" ][else][eval exp="f.Dp_a[1]=1"][eval exp="f.Dp_a_per[1]=100" ][endif]
[if exp="f.Dp_a[2]==1" ][else][eval exp="f.Dp_a[2]=1"][eval exp="f.Dp_a_per[2]=100" ][endif]
[if exp="f.Dp_a[3]==1" ][else][eval exp="f.Dp_a[3]=1"][eval exp="f.Dp_a_per[3]=100" ][endif]
[if exp="f.Dp_a[4]==1" ][else][eval exp="f.Dp_a[4]=1"][eval exp="f.Dp_a_per[4]=100" ][endif]
[if exp="f.Dp_a[5]==1" ][else][eval exp="f.Dp_a[5]=1"][eval exp="f.Dp_a_per[5]=100" ][endif]
[if exp="f.Dp_a[6]==1" ][else][eval exp="f.Dp_a[6]=1"][eval exp="f.Dp_a_per[6]=100" ][endif]
[if exp="f.Dp_a[7]==1" ][else][eval exp="f.Dp_a[7]=1"][eval exp="f.Dp_a_per[7]=100" ][endif]
[if exp="f.Dp_a[8]==1" ][else][eval exp="f.Dp_a[8]=1"][eval exp="f.Dp_a_per[8]=100" ][endif]
[if exp="f.Dp_a[9]==1" ][else][eval exp="f.Dp_a[9]=1"][eval exp="f.Dp_a_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*p_a" ]
;---------------------------------------------------------------------------------------------------
*p_a1
[cm]（Mầu xanh - giá 5000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_a[1]=1" ][eval exp="f.Dp_a_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*p_a" ][endif]
;----------------------------------------------------------------------
*p_a2
[cm]（Mầu đỏ - giá 5000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_a[2]=1" ][eval exp="f.Dp_a_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*p_a" ][endif]
;----------------------------------------------------------------------------------------------
*p_a3
[cm]（Mầu vàng - giá 5000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_a[3]=1" ][eval exp="f.Dp_a_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*p_a" ][endif]
;----------------------------------------------------------------------------------------------
*p_a4
[cm]（Mầu lục - giá 5000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_a[4]=1" ][eval exp="f.Dp_a_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*p_a" ][endif]
;----------------------------------------------------------------------------------------------
*p_a5
[cm]（Mầu tím - giá 5000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_a[5]=1" ][eval exp="f.Dp_a_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*p_a" ][endif]
;----------------------------------------------------------------------------------------------
*p_a6
[cm]（Mầu cam - giá 5000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_a[6]=1" ][eval exp="f.Dp_a_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*p_a" ][endif]
;----------------------------------------------------------------------------------------------
*p_a7
[cm]（Mầu đen - giá 5000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_a[7]=1" ][eval exp="f.Dp_a_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*p_a" ][endif]
;----------------------------------------------------------------------------------------------
*p_a8
[cm]（Mầu trắng - giá 5000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_a[8]=1" ][eval exp="f.Dp_a_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*p_a" ][endif]
;----------------------------------------------------------------------------------------------
*p_a9
[cm]（Mầu hồng - giá 5000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_a[9]=1" ][eval exp="f.Dp_a_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*p_a" ][endif]
;----------------------------------------------------------------------------------------------

*p_a
Tôi mua cái kẹp tóc này。[p_]
[if exp="f.bought_skip==1" ][after_shop][endif]
[shop_f/]
[if exp="f.step<=5" ]
	[syl]Đây là… một mầu khác từ cái kẹp tóc anh đã mua。[p_]
	[f/re]Có thật sự là em nhận được nó chứ？[p_]
	[f/s]…Cảm ơn anh ạ。[p_]
[else]
	[syl]Đây là…một mầu khác từ cái kẹp tóc anh đã mua。[lr_]
	[f/s]Cảm ơn anh rất nhiều。[p_]
	[f/re]Một sự thay đổi nhỏ cũng tạo nên ấn tượng。[lr_]
	[f/ss]Em không thể chờ thêm được nữa để thử nó。[p_]
[endif][after_shop]
;;=================================================================================================
*p_b_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dp_b[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_b[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_b[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_b[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_b[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_b[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_b[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_b[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_b[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince8_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dp_b[1]==1" ][else][eval exp="f.Dp_b[1]=1"][eval exp="f.Dp_b_per[1]=100" ][endif]
[if exp="f.Dp_b[2]==1" ][else][eval exp="f.Dp_b[2]=1"][eval exp="f.Dp_b_per[2]=100" ][endif]
[if exp="f.Dp_b[3]==1" ][else][eval exp="f.Dp_b[3]=1"][eval exp="f.Dp_b_per[3]=100" ][endif]
[if exp="f.Dp_b[4]==1" ][else][eval exp="f.Dp_b[4]=1"][eval exp="f.Dp_b_per[4]=100" ][endif]
[if exp="f.Dp_b[5]==1" ][else][eval exp="f.Dp_b[5]=1"][eval exp="f.Dp_b_per[5]=100" ][endif]
[if exp="f.Dp_b[6]==1" ][else][eval exp="f.Dp_b[6]=1"][eval exp="f.Dp_b_per[6]=100" ][endif]
[if exp="f.Dp_b[7]==1" ][else][eval exp="f.Dp_b[7]=1"][eval exp="f.Dp_b_per[7]=100" ][endif]
[if exp="f.Dp_b[8]==1" ][else][eval exp="f.Dp_b[8]=1"][eval exp="f.Dp_b_per[8]=100" ][endif]
[if exp="f.Dp_b[9]==1" ][else][eval exp="f.Dp_b[9]=1"][eval exp="f.Dp_b_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*p_b" ]
;----------------------------------------------------------------------------------------------
*p_b1
[cm]（Mầu xanh - giá 8000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_b[1]=1" ][eval exp="f.Dp_b_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*p_b" ][endif]
;----------------------------------------------------------------------------------------------
*p_b2
[cm]（Mầu đỏ - giá 8000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_b[2]=1" ][eval exp="f.Dp_b_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*p_b" ][endif]
;----------------------------------------------------------------------------------------------
*p_b3
[cm]（Mầu vàng - giá 8000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_b[3]=1" ][eval exp="f.Dp_b_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*p_b" ][endif]
;----------------------------------------------------------------------------------------------
*p_b4
[cm]（Mầu lục - giá 8000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_b[4]=1" ][eval exp="f.Dp_b_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*p_b" ][endif]
;----------------------------------------------------------------------------------------------
*p_b5
[cm]（Mầu tím - giá 8000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_b[5]=1" ][eval exp="f.Dp_b_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*p_b" ][endif]
;----------------------------------------------------------------------------------------------
*p_b6
[cm]（Mầu cam - giá 8000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_b[6]=1" ][eval exp="f.Dp_b_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*p_b" ][endif]
;----------------------------------------------------------------------------------------------
*p_b7
[cm]（Mầu đen - giá 8000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_b[7]=1" ][eval exp="f.Dp_b_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*p_b" ][endif]
;----------------------------------------------------------------------------------------------
*p_b8
[cm]（Mầu trắng - giá 8000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_b[8]=1" ][eval exp="f.Dp_b_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*p_b" ][endif]
;----------------------------------------------------------------------------------------------
*p_b9
[cm]（Mầu hồng - giá 8000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_b[9]=1" ][eval exp="f.Dp_b_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*p_b" ][endif]
;----------------------------------------------------------------------------------------------
*p_b
tôi mua kẹp tóc có gắn hoa。[p_]
[if exp="f.Dp_b[0]!='got'" ][eval exp="f.Dp_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/] [syl]Ah! Những bông hoa gắn trên kẹp tóc này… thật đáng yêu quá。[lr_]
	[f/s]Em rất mong chờ để được thử nó。[p_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] [syl]Nó là mầu khác từ chiếc kẹp tóc anh đã mua。[lr_]
	[f/s]Em rất mong chờ để được thử nó。[p_]
	[f/ss]Cảm ơn anh rất nhiều、[name][p_]
[endif][after_shop]
;;===============================================================================================
*p_c_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dp_c[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_c[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_c[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_c[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_c[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_c[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_c[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_c[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dp_c[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dp_c[1]==1" ][else][eval exp="f.Dp_c[1]=1"][eval exp="f.Dp_c_per[1]=100" ][endif]
[if exp="f.Dp_c[2]==1" ][else][eval exp="f.Dp_c[2]=1"][eval exp="f.Dp_c_per[2]=100" ][endif]
[if exp="f.Dp_c[3]==1" ][else][eval exp="f.Dp_c[3]=1"][eval exp="f.Dp_c_per[3]=100" ][endif]
[if exp="f.Dp_c[4]==1" ][else][eval exp="f.Dp_c[4]=1"][eval exp="f.Dp_c_per[4]=100" ][endif]
[if exp="f.Dp_c[5]==1" ][else][eval exp="f.Dp_c[5]=1"][eval exp="f.Dp_c_per[5]=100" ][endif]
[if exp="f.Dp_c[6]==1" ][else][eval exp="f.Dp_c[6]=1"][eval exp="f.Dp_c_per[6]=100" ][endif]
[if exp="f.Dp_c[7]==1" ][else][eval exp="f.Dp_c[7]=1"][eval exp="f.Dp_c_per[7]=100" ][endif]
[if exp="f.Dp_c[8]==1" ][else][eval exp="f.Dp_c[8]=1"][eval exp="f.Dp_c_per[8]=100" ][endif]
[if exp="f.Dp_c[9]==1" ][else][eval exp="f.Dp_c[9]=1"][eval exp="f.Dp_c_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*p_c" ]

;------------------------------------------------------------------------------------------------
*p_c1
[cm]（Mầu xanh - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_c[1]=1" ][eval exp="f.Dp_c_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*p_c" ][endif]
;----------------------------------------------------------------------------------------------
*p_c2
[cm]（Mầu đỏ - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_c[2]=1" ][eval exp="f.Dp_c_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*p_c" ][endif]
;----------------------------------------------------------------------------------------------
*p_c3
[cm]（Mầu vàng - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_c[3]=1" ][eval exp="f.Dp_c_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*p_c" ][endif]
;----------------------------------------------------------------------------------------------
*p_c4
[cm]（Mầu lục - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_c[4]=1" ][eval exp="f.Dp_c_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*p_c" ][endif]
;----------------------------------------------------------------------------------------------
*p_c5
[cm]（Mầu tím - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_c[5]=1" ][eval exp="f.Dp_c_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*p_c" ][endif]
;----------------------------------------------------------------------------------------------
*p_c6
[cm]（Mầu cam - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_c[6]=1" ][eval exp="f.Dp_c_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*p_c" ][endif]
;----------------------------------------------------------------------------------------------
*p_c7
[cm]（Mầu đen - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_c[7]=1" ][eval exp="f.Dp_c_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*p_c" ][endif]
;----------------------------------------------------------------------------------------------
*p_c8
[cm]（Mầu trắng - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_c[8]=1" ][eval exp="f.Dp_c_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*p_c" ][endif]
;----------------------------------------------------------------------------------------------
*p_c9
[cm]（Mầu hồng - giá 12000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dp_c[9]=1" ][eval exp="f.Dp_c_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*p_c" ][endif]
;----------------------------------------------------------------------------------------------
*p_c
Tôi mua kẹp tóc hoa。[p_]
[if exp="f.Dp_c[0]!='got'" ][eval exp="f.Dp_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[syl]Ah、Một chiếc kẹp tóc gắn hoa thật dễ thương。[p_]
	[f/ss]Em rất háo hức để thử nó。[lr_]
	Cảm ơn anh rất nhiều、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[syl]Nó là mầu khác với mầu trước。[p_]
	[f/s]Em không hiểu lắm nhưng chỉ mầu sắc cũng làm cho nó hoàn toàn khác nhau。[lr_]
	Cảm ơn anh、[name]。[p_]
[endif][after_shop]
;;=================================================================================================
;;メガネ-セリフ
*g_a_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dg_a[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_a[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_a[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_a[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_a[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_a[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_a[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_a[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_a[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dg_a[1]==1" ][else][eval exp="f.Dg_a[1]=1"][eval exp="f.Dg_a_per[1]=100" ][endif]
[if exp="f.Dg_a[2]==1" ][else][eval exp="f.Dg_a[2]=1"][eval exp="f.Dg_a_per[2]=100" ][endif]
[if exp="f.Dg_a[3]==1" ][else][eval exp="f.Dg_a[3]=1"][eval exp="f.Dg_a_per[3]=100" ][endif]
[if exp="f.Dg_a[4]==1" ][else][eval exp="f.Dg_a[4]=1"][eval exp="f.Dg_a_per[4]=100" ][endif]
[if exp="f.Dg_a[5]==1" ][else][eval exp="f.Dg_a[5]=1"][eval exp="f.Dg_a_per[5]=100" ][endif]
[if exp="f.Dg_a[6]==1" ][else][eval exp="f.Dg_a[6]=1"][eval exp="f.Dg_a_per[6]=100" ][endif]
[if exp="f.Dg_a[7]==1" ][else][eval exp="f.Dg_a[7]=1"][eval exp="f.Dg_a_per[7]=100" ][endif]
[if exp="f.Dg_a[8]==1" ][else][eval exp="f.Dg_a[8]=1"][eval exp="f.Dg_a_per[8]=100" ][endif]
[if exp="f.Dg_a[9]==1" ][else][eval exp="f.Dg_a[9]=1"][eval exp="f.Dg_a_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*g_a" ]
;----------------------------------------------------------------------------------------------------
*g_a1
[cm]（Mầu xanh - giá 140000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_a[1]=1" ][eval exp="f.Dg_a_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*g_a" ][endif]
;----------------------------------------------------------------------------------------------
*g_a2
[cm]（Mầu đỏ - giá 140000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_a[2]=1" ][eval exp="f.Dg_a_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*g_a" ][endif]
;----------------------------------------------------------------------------------------------
*g_a3
[cm]（Mầu vàng - giá 140000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_a[3]=1" ][eval exp="f.Dg_a_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*g_a" ][endif]
;----------------------------------------------------------------------------------------------
*g_a4
[cm]（Mầu lục - giá 140000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_a[4]=1" ][eval exp="f.Dg_a_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*g_a" ][endif]
;----------------------------------------------------------------------------------------------
*g_a5
[cm]（Mầu tím - giá 140000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_a[5]=1" ][eval exp="f.Dg_a_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*g_a" ][endif]
;----------------------------------------------------------------------------------------------
*g_a6
[cm]（Mầu cam - giá 140000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_a[6]=1" ][eval exp="f.Dg_a_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*g_a" ][endif]
;----------------------------------------------------------------------------------------------
*g_a7
[cm]（Mầu đen - giá 140000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_a[7]=1" ][eval exp="f.Dg_a_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*g_a" ][endif]
;----------------------------------------------------------------------------------------------
*g_a8
[cm]（Mầu trắng - giá 140000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_a[8]=1" ][eval exp="f.Dg_a_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*g_a" ][endif]
;----------------------------------------------------------------------------------------------
*g_a9
[cm]（Mầu hồng - giá 140000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_a[9]=1" ][eval exp="f.Dg_a_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*g_a" ][endif]
;----------------------------------------------------------------------------------------------
*g_a
Tôi mua cái mắt kính。[p]
[if exp="f.Dg_a[0]!='got'" ][eval exp="f.Dg_a[0]='got'" ][eval exp="f.r='got'" ]
[free_chara][set_stand][shop_f/] [f/c]
	[syl]Đây là… mắt kiếng?[lr_]
	Em không nghĩ là thị lực của em tệ cho lắm。[p_]
	[f/]Huh? Nó không có độ。[lr_]
	Nó chỉ để làm đẹp thôi ư？[p_]
	[f/s]Em thật sự không hiểu, nhưng nếu anh thích nó, [name], Em sẽ thử mang chúng。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[syl]Một mầu sắc khác từ cái kính anh đã mua cho em。[lr_]
	[f/s]Cảm ơn anh rất nhiều。[p_]
	[f/s]Đeo kính có vẻ thời trang nhưng em vẫn thấy hơi lạ。[p_]
[endif][after_shop]
;;=================================================================================================
*g_b_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dg_b[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_b[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_b[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_b[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_b[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_b[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_b[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_b[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_b[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dg_b[1]==1" ][else][eval exp="f.Dg_b[1]=1"][eval exp="f.Dg_b_per[1]=100" ][endif]
[if exp="f.Dg_b[2]==1" ][else][eval exp="f.Dg_b[2]=1"][eval exp="f.Dg_b_per[2]=100" ][endif]
[if exp="f.Dg_b[3]==1" ][else][eval exp="f.Dg_b[3]=1"][eval exp="f.Dg_b_per[3]=100" ][endif]
[if exp="f.Dg_b[4]==1" ][else][eval exp="f.Dg_b[4]=1"][eval exp="f.Dg_b_per[4]=100" ][endif]
[if exp="f.Dg_b[5]==1" ][else][eval exp="f.Dg_b[5]=1"][eval exp="f.Dg_b_per[5]=100" ][endif]
[if exp="f.Dg_b[6]==1" ][else][eval exp="f.Dg_b[6]=1"][eval exp="f.Dg_b_per[6]=100" ][endif]
[if exp="f.Dg_b[7]==1" ][else][eval exp="f.Dg_b[7]=1"][eval exp="f.Dg_b_per[7]=100" ][endif]
[if exp="f.Dg_b[8]==1" ][else][eval exp="f.Dg_b[8]=1"][eval exp="f.Dg_b_per[8]=100" ][endif]
[if exp="f.Dg_b[9]==1" ][else][eval exp="f.Dg_b[9]=1"][eval exp="f.Dg_b_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*g_b" ]
;--------------------------------------------------------------------------------------------------
*g_b1
[cm]（Mầu xanh - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_b[1]=1" ][eval exp="f.Dg_b_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*g_b" ][endif]
;----------------------------------------------------------------------------------------------
*g_b2
[cm]（Mầu đỏ - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_b[2]=1" ][eval exp="f.Dg_b_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*g_b" ][endif]
;----------------------------------------------------------------------------------------------
*g_b3
[cm]（Mầu vàng - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_b[3]=1" ][eval exp="f.Dg_b_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*g_b" ][endif]
;----------------------------------------------------------------------------------------------
*g_b4
[cm]（Mầu lục - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_b[4]=1" ][eval exp="f.Dg_b_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*g_b" ][endif]
;----------------------------------------------------------------------------------------------
*g_b5
[cm]（Mầu tím - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_b[5]=1" ][eval exp="f.Dg_b_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*g_b" ][endif]
;----------------------------------------------------------------------------------------------
*g_b6
[cm]（Mầu cam - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_b[6]=1" ][eval exp="f.Dg_b_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*g_b" ][endif]
;----------------------------------------------------------------------------------------------
*g_b7
[cm]（Mầu đen - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_b[7]=1" ][eval exp="f.Dg_b_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*g_b" ][endif]
;----------------------------------------------------------------------------------------------
*g_b8
[cm]（Mầu trắng - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_b[8]=1" ][eval exp="f.Dg_b_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*g_b" ][endif]
;----------------------------------------------------------------------------------------------
*g_b9
[cm]（Mầu hồng - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_b[9]=1" ][eval exp="f.Dg_b_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*g_b" ][endif]
;----------------------------------------------------------------------------------------------
*g_b
Tôi mua mắt kính vuông。[p]
[if exp="f.Dg_b[0]!='got'" ][eval exp="f.Dg_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/] 
	[syl]Đây là… một kiểu kính khác với kiểu anh đã mua。[p_]
	[f/s]Em cảm thấy thông minh hơn một chút khi đeo chúng。[lr_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[sylMột mầu sắc khác từ cái kính anh đã mua cho em。[lr_]
	[f/s]Cảm ơn anh rất nhiều。[p_]
	[f/s]Đeo kính có vẻ thời trang nhưng em vẫn thấy hơi lạ。[p_]
[endif][after_shop]
;;=================================================================================================
*g_c_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dg_c[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_c[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_c[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_c[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_c[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_c[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_c[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_c[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dg_c[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dg_c[1]==1" ][else][eval exp="f.Dg_c[1]=1"][eval exp="f.Dg_c_per[1]=100" ][endif]
[if exp="f.Dg_c[2]==1" ][else][eval exp="f.Dg_c[2]=1"][eval exp="f.Dg_c_per[2]=100" ][endif]
[if exp="f.Dg_c[3]==1" ][else][eval exp="f.Dg_c[3]=1"][eval exp="f.Dg_c_per[3]=100" ][endif]
[if exp="f.Dg_c[4]==1" ][else][eval exp="f.Dg_c[4]=1"][eval exp="f.Dg_c_per[4]=100" ][endif]
[if exp="f.Dg_c[5]==1" ][else][eval exp="f.Dg_c[5]=1"][eval exp="f.Dg_c_per[5]=100" ][endif]
[if exp="f.Dg_c[6]==1" ][else][eval exp="f.Dg_c[6]=1"][eval exp="f.Dg_c_per[6]=100" ][endif]
[if exp="f.Dg_c[7]==1" ][else][eval exp="f.Dg_c[7]=1"][eval exp="f.Dg_c_per[7]=100" ][endif]
[if exp="f.Dg_c[8]==1" ][else][eval exp="f.Dg_c[8]=1"][eval exp="f.Dg_c_per[8]=100" ][endif]
[if exp="f.Dg_c[9]==1" ][else][eval exp="f.Dg_c[9]=1"][eval exp="f.Dg_c_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*g_c" ]
;-----------------------------------------------------------------------------------------------------
*g_c1
[cm]（Mầu xanh - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_c[1]=1" ][eval exp="f.Dg_c_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*g_c" ][endif]
;----------------------------------------------------------------------------------------------
*g_c2
[cm]（Mầu đỏ - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_c[2]=1" ][eval exp="f.Dg_c_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*g_c" ][endif]
;----------------------------------------------------------------------------------------------
*g_c3
[cm]（Mầu vàng - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_c[3]=1" ][eval exp="f.Dg_c_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*g_c" ][endif]
;----------------------------------------------------------------------------------------------
*g_c4
[cm]（Mầu lục - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_c[4]=1" ][eval exp="f.Dg_c_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*g_c" ][endif]
;----------------------------------------------------------------------------------------------
*g_c5
[cm]（Mầu tím - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_c[5]=1" ][eval exp="f.Dg_c_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*g_c" ][endif]
;----------------------------------------------------------------------------------------------
*g_c6
[cm]（Mầu cam - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_c[6]=1" ][eval exp="f.Dg_c_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*g_c" ][endif]
;----------------------------------------------------------------------------------------------
*g_c7
[cm]（Mầu đen - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_c[7]=1" ][eval exp="f.Dg_c_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*g_c" ][endif]
;----------------------------------------------------------------------------------------------
*g_c8
[cm]（Mầu trắng - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_c[8]=1" ][eval exp="f.Dg_c_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*g_c" ][endif]
;----------------------------------------------------------------------------------------------
*g_c9
[cm]（Mầu hồng - giá 150000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dg_c[9]=1" ][eval exp="f.Dg_c_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*g_c" ][endif]
;----------------------------------------------------------------------------------------------
*g_c
Tôi mua mắt kính。[p]
[if exp="f.Dg_c[0]!='got'" ][eval exp="f.Dg_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/] 
	[syl]Đây là… một kiểu kính khác với kiểu anh đã mua。[p_]
	[f/s]Nó có vẻ "thời trang"。[lr_]
	Cảm ơn anh rất nhiều。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[syl]Một mầu sắc khác từ cái kính anh đã mua cho em。[lr_]
	[f/s]Cảm ơn anh rất nhiều。[p_]
	[f/s]Đeo kính có vẻ thời trang nhưng em vẫn thấy hơi lạ。[p_]
[endif][after_shop]
;;=================================================================================================
;;頭-セリフ
*h_a1
[cm] 
[_]Tôi mua một cái băng đô tai thú。 - giá 80000 đ[p_]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_a[1]=1" ][eval exp="f.Dh_a_per[1]=100" ]

Tài khoản còn [money][p_][endif]
[shop_f/] 
[syl]Đây là……một cái băng đô hình tai thú ư？[p_]
…Em không biết là nó tốt hay xấu，nhưng…[name] em muốn đeo nó cho anh xem。[p_]
[f/s]…Ahh, nó thật đẹp và dễ thương nữa。[p_]
[after_shop]

*h_a2
[cm]
[_]（Tôi mua một cái băng đô sừng cừu。 - giá 80000 đ[p_]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_a[2]=1" ][eval exp="f.Dh_a_per[2]=100" ]

Tài khoản còn [money][p_][endif]
[shop_f/][syl]Đây là cái băng đô giống với loại anh đã mua khi trước sao？[p_]
…Em thấy hơi bối rối, nhưng…[name] em muốn đeo nó。[p_]
…Nó có hơi khó đeo。[r]
Nhưng chắc [name] rất thích nó。[p_]
[after_shop]

*h_b1
[cm]
[_]（Tôi mua một chiếc mũ rơm。 - giá 40000 đ[p_]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_b[1]=1" ][eval exp="f.Dh_b_per[1]=100" ]

Tài khoản còn [money][p_][endif]
[shop_f/s][syl]Ahh..Cái mũ này nó thật lớn。[p_]
Mùa hè có nó đội thì không còn sợ nắng nữa。[lr_]
[f/ss]Cảm ơn anh…[name]。[p_]
[after_shop]

*h_b2
[cm]
[_]Tôi mua một cái mũ hầu gái。 - giá 50000 đ[p_]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_b[2]=1" ][eval exp="f.Dh_b_per[2]=100" ]

Tài khoản còn [money][p_][endif]
[shop_f/][syl]Cái đó là mũ hầu gái ư？[p_]
Có phải em sẽ dùng nó với bộ đồ hầu gái mà anh đã mua không？[p_]
[f/s]Cám ơn anh rất nhiều。[p_]
[after_shop]
;;=================================================================================================
*h_d_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dh_d[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_d[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_d[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_d[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_d[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_d[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_d[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_d[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_d[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dh_d[1]==1" ][else][eval exp="f.Dh_d[1]=1"][eval exp="f.Dh_d_per[1]=100" ][endif]
[if exp="f.Dh_d[2]==1" ][else][eval exp="f.Dh_d[2]=1"][eval exp="f.Dh_d_per[2]=100" ][endif]
[if exp="f.Dh_d[3]==1" ][else][eval exp="f.Dh_d[3]=1"][eval exp="f.Dh_d_per[3]=100" ][endif]
[if exp="f.Dh_d[4]==1" ][else][eval exp="f.Dh_d[4]=1"][eval exp="f.Dh_d_per[4]=100" ][endif]
[if exp="f.Dh_d[5]==1" ][else][eval exp="f.Dh_d[5]=1"][eval exp="f.Dh_d_per[5]=100" ][endif]
[if exp="f.Dh_d[6]==1" ][else][eval exp="f.Dh_d[6]=1"][eval exp="f.Dh_d_per[6]=100" ][endif]
[if exp="f.Dh_d[7]==1" ][else][eval exp="f.Dh_d[7]=1"][eval exp="f.Dh_d_per[7]=100" ][endif]
[if exp="f.Dh_d[8]==1" ][else][eval exp="f.Dh_d[8]=1"][eval exp="f.Dh_d_per[8]=100" ][endif]
[if exp="f.Dh_d[9]==1" ][else][eval exp="f.Dh_d[9]=1"][eval exp="f.Dh_d_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*h_d" ]
;------------------------------------------------------------------------------------------------
*h_d1
[cm]（Mầu xanh - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_d[1]=1" ][eval exp="f.Dh_d_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*h_d" ][endif]
;----------------------------------------------------------------------------------------------
*h_d2
[cm]（Mầu đỏ - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_d[2]=1" ][eval exp="f.Dh_d_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*h_d" ][endif]
;----------------------------------------------------------------------------------------------
*h_d3
[cm]（Mầu vàng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_d[3]=1" ][eval exp="f.Dh_d_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*h_d" ][endif]
;----------------------------------------------------------------------------------------------
*h_d4
[cm]（Mầu lục - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_d[4]=1" ][eval exp="f.Dh_d_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*h_d" ][endif]
;----------------------------------------------------------------------------------------------
*h_d5
[cm]（Mầu tím - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_d[5]=1" ][eval exp="f.Dh_d_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*h_d" ][endif]
;----------------------------------------------------------------------------------------------
*h_d6
[cm]（Mầu cam - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_d[6]=1" ][eval exp="f.Dh_d_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*h_d" ][endif]
;----------------------------------------------------------------------------------------------
*h_d7
[cm]（Mầu trắng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_d[7]=1" ][eval exp="f.Dh_d_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*h_d" ][endif]
;----------------------------------------------------------------------------------------------
*h_d8
[cm]（Mầu đen - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_d[8]=1" ][eval exp="f.Dh_d_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*h_d" ][endif]
;----------------------------------------------------------------------------------------------
*h_d9
[cm]（Mầu hồng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_d[9]=1" ][eval exp="f.Dh_d_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*h_d" ][endif]
;----------------------------------------------------------------------------------------------
*h_d
Tôi mua mũ headband。[p_]
[if exp="f.Dh_d[0]!='got'" ][eval exp="f.Dh_d[0]='got'" ][eval exp="f.r='got'" ]
	[syl]Nó được gọi là "headband" (Mũ trái banh)。[lr_]
	[f/s]Thật giống với tên gọi。[p_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[syl]Nó là một mầu khác của cái mũ anh đã mua。[p_]
	[f/s]Nó sẽ phù hợp hơn với quần áo cùng mầu。[p_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
[endif][after_shop]
;;=================================================================================================
*h_e_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dh_e[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_e[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_e[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_e[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_e[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dh_e[1]==1" ][else][eval exp="f.Dh_e[1]=1"][eval exp="f.Dh_e_per[1]=100" ][endif]
[if exp="f.Dh_e[2]==1" ][else][eval exp="f.Dh_e[2]=1"][eval exp="f.Dh_e_per[2]=100" ][endif]
[if exp="f.Dh_e[3]==1" ][else][eval exp="f.Dh_e[3]=1"][eval exp="f.Dh_e_per[3]=100" ][endif]
[if exp="f.Dh_e[4]==1" ][else][eval exp="f.Dh_e[4]=1"][eval exp="f.Dh_e_per[4]=100" ][endif]
[if exp="f.Dh_e[5]==1" ][else][eval exp="f.Dh_e[5]=1"][eval exp="f.Dh_e_per[5]=100" ][endif]

Tài khoản còn [money][p]
[jump target="*h_e" ]
;-----------------------------------------------------------------------------------------------------------------
*h_e1
[cm]（Mầu trà - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_e[1]=1" ][eval exp="f.Dh_e_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*h_e" ][endif]
;----------------------------------------------------------------------------------------------
*h_e2
[cm]（Mầu trà - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_e[2]=1" ][eval exp="f.Dh_e_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*h_e" ][endif]
;----------------------------------------------------------------------------------------------
*h_e3
[cm]（Mầu đen - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_e[3]=1" ][eval exp="f.Dh_e_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*h_e" ][endif]
;----------------------------------------------------------------------------------------------
*h_e4
[cm]（Mầu lục - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_e[4]=1" ][eval exp="f.Dh_e_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*h_e" ][endif]
;----------------------------------------------------------------------------------------------
*h_e5
[cm]（Mầu đỏ - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_e[5]=1" ][eval exp="f.Dh_e_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*h_e" ][endif]
;----------------------------------------------------------------------------------------------
*h_e
Tôi đã mua mũ "casket cap"。[p_]
[if exp="f.Dh_e[0]!='got'" ][eval exp="f.Dh_e[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/] 
	[syl]"casket cap" là gì vậy。[lr_]
	Đội cái mũ này trông em sẽ như một cậu bé ấy, anh thích như vậy sao？[p_]
	[f/s]Dù sao cũng…Cảm ơn anh[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s]
	[syl]Một mầu khác từ cái mũ anh đã mua。[p_]
	Nó thật mềm mại。[lr_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
[endif][after_shop]
;;=================================================================================================
*h_f_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dh_f[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_f[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_f[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_f[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_f[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_f[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dh_f[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dh_f[1]==1" ][else][eval exp="f.Dh_f[1]=1"][eval exp="f.Dh_f_per[1]=100" ][endif]
[if exp="f.Dh_f[2]==1" ][else][eval exp="f.Dh_f[2]=1"][eval exp="f.Dh_f_per[2]=100" ][endif]
[if exp="f.Dh_f[3]==1" ][else][eval exp="f.Dh_f[3]=1"][eval exp="f.Dh_f_per[3]=100" ][endif]
[if exp="f.Dh_f[4]==1" ][else][eval exp="f.Dh_f[4]=1"][eval exp="f.Dh_f_per[4]=100" ][endif]
[if exp="f.Dh_f[5]==1" ][else][eval exp="f.Dh_f[5]=1"][eval exp="f.Dh_f_per[5]=100" ][endif]
[if exp="f.Dh_f[6]==1" ][else][eval exp="f.Dh_f[6]=1"][eval exp="f.Dh_f_per[6]=100" ][endif]
[if exp="f.Dh_f[7]==1" ][else][eval exp="f.Dh_f[7]=1"][eval exp="f.Dh_f_per[7]=100" ][endif]

Tài khoản còn [money][p]
[jump target="*h_f" ]
;------------------------------------------------
*h_f1
[cm]（Mầu đen - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_f[1]=1" ][eval exp="f.Dh_f_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*h_f" ][endif]
;-------------------------------------------------------------------------------------
*h_f2
[cm]（Mầu trắng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_f[2]=1" ][eval exp="f.Dh_f_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*h_f" ][endif]
*h_f3
[cm]（Mầu trà - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_f[3]=1" ][eval exp="f.Dh_f_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*h_f" ][endif]
*h_f4
[cm]（Mầu xanh - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_f[4]=1" ][eval exp="f.Dh_f_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*h_f" ][endif]
*h_f5
[cm]（Mầu đỏ - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_f[5]=1" ][eval exp="f.Dh_f_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*h_f" ][endif]
*h_f6
[cm]（Mầu tím - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_f[6]=1" ][eval exp="f.Dh_f_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*h_f" ][endif]
*h_f7
[cm]（Mầu lục - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dh_f[7]=1" ][eval exp="f.Dh_f_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*h_f" ][endif]
*h_f
Mũ mềm…phải không ạ。[p_]
[if exp="f.Dh_f[0]!='got'" ][eval exp="f.Dh_f[0]='got'" ][eval exp="f.r='got'" ]
	[syl]Anh thực sự muốn em đội nó。[lr_]

	[f/c][name]em sẽ làm mọi thứ anh muốn, không biết bộn đồ nào sẽ hợp với nó đây？[p_]
	[f/s]demo, cảm ơn anh rất nhiều。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[syl]Nó là một mầu khác từ chiếc mũ anh đã mua[p_]
	Em không nghĩ có sự khác biệt lớn so với cái mầu đen nhưng nó vẫn thật lịch thiệp, trang nhã。[p_]
	[f/s]Cảm ơn anh rất nhiều、[name]。[p_]
[endif][after_shop]
;;=================================================================================================

;;靴下-セリフ
*s_a_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Ds_a[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_a[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_a[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_a[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_a[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_a[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_a[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_a[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_a[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
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
[if exp="f.Ds_a[1]==1" ][else][eval exp="f.Ds_a[1]=1"][eval exp="f.Ds_a_per[1]=100" ][endif]
[if exp="f.Ds_a[2]==1" ][else][eval exp="f.Ds_a[2]=1"][eval exp="f.Ds_a_per[2]=100" ][endif]
[if exp="f.Ds_a[3]==1" ][else][eval exp="f.Ds_a[3]=1"][eval exp="f.Ds_a_per[3]=100" ][endif]
[if exp="f.Ds_a[4]==1" ][else][eval exp="f.Ds_a[4]=1"][eval exp="f.Ds_a_per[4]=100" ][endif]
[if exp="f.Ds_a[5]==1" ][else][eval exp="f.Ds_a[5]=1"][eval exp="f.Ds_a_per[5]=100" ][endif]
[if exp="f.Ds_a[6]==1" ][else][eval exp="f.Ds_a[6]=1"][eval exp="f.Ds_a_per[6]=100" ][endif]
[if exp="f.Ds_a[7]==1" ][else][eval exp="f.Ds_a[7]=1"][eval exp="f.Ds_a_per[7]=100" ][endif]
[if exp="f.Ds_a[8]==1" ][else][eval exp="f.Ds_a[8]=1"][eval exp="f.Ds_a_per[8]=100" ][endif]
[if exp="f.Ds_a[9]==1" ][else][eval exp="f.Ds_a[9]=1"][eval exp="f.Ds_a_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*s_a" ]
;--------------------------------------------------------------------------------------------------

*s_a1
[cm]（Mầu trắng - giá 20000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_a[1]=1" ][eval exp="f.Ds_a_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*s_a" ][endif]
;----------------------------------------------------------------------------------------------
*s_a2
[cm]（Mầu đen - giá 20000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_a[2]=1" ][eval exp="f.Ds_a_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*s_a" ][endif]
;----------------------------------------------------------------------------------------------
*s_a3
[cm]（Mầu xanh - giá 20000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_a[3]=1" ][eval exp="f.Ds_a_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*s_a" ][endif]
;----------------------------------------------------------------------------------------------
*s_a4
[cm]（Mầu đỏ - giá 20000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_a[4]=1" ][eval exp="f.Ds_a_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*s_a" ][endif]
;----------------------------------------------------------------------------------------------
*s_a5
[cm]（Mầu vàng - giá 20000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_a[5]=1" ][eval exp="f.Ds_a_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*s_a" ][endif]
;----------------------------------------------------------------------------------------------
*s_a6
[cm]（Mầu xanh lục - giá 20000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_a[6]=1" ][eval exp="f.Ds_a_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*s_a" ][endif]
;----------------------------------------------------------------------------------------------
*s_a7
[cm]（Mầu tím - giá 20000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_a[7]=1" ][eval exp="f.Ds_a_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*s_a" ][endif]
;----------------------------------------------------------------------------------------------
*s_a8
[cm]（Mầu cam - giá 20000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_a[8]=1" ][eval exp="f.Ds_a_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*s_a" ][endif]
;----------------------------------------------------------------------------------------------
*s_a9
[cm]（Mầu hồng - giá 20000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_a[9]=1" ][eval exp="f.Ds_a_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*s_a" ][endif]
;----------------------------------------------------------------------------------------------
*s_b_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Ds_b[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_b[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_b[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_b[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_b[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_b[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_b[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_b[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_b[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Ds_b[1]==1" ][else][eval exp="f.Ds_b[1]=1"][eval exp="f.Ds_b_per[1]=100" ][endif]
[if exp="f.Ds_b[2]==1" ][else][eval exp="f.Ds_b[2]=1"][eval exp="f.Ds_b_per[2]=100" ][endif]
[if exp="f.Ds_b[3]==1" ][else][eval exp="f.Ds_b[3]=1"][eval exp="f.Ds_b_per[3]=100" ][endif]
[if exp="f.Ds_b[4]==1" ][else][eval exp="f.Ds_b[4]=1"][eval exp="f.Ds_b_per[4]=100" ][endif]
[if exp="f.Ds_b[5]==1" ][else][eval exp="f.Ds_b[5]=1"][eval exp="f.Ds_b_per[5]=100" ][endif]
[if exp="f.Ds_b[6]==1" ][else][eval exp="f.Ds_b[6]=1"][eval exp="f.Ds_b_per[6]=100" ][endif]
[if exp="f.Ds_b[7]==1" ][else][eval exp="f.Ds_b[7]=1"][eval exp="f.Ds_b_per[7]=100" ][endif]
[if exp="f.Ds_b[8]==1" ][else][eval exp="f.Ds_b[8]=1"][eval exp="f.Ds_b_per[8]=100" ][endif]
[if exp="f.Ds_b[9]==1" ][else][eval exp="f.Ds_b[9]=1"][eval exp="f.Ds_b_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*s_b" ]
;-----------------------------------------------------------------------

*s_b1
[cm]（Mầu trắng - giá 25000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_b[1]=1" ][eval exp="f.Ds_b_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*s_b" ][endif]
;----------------------------------------------------------------------------------------------
*s_b2
[cm]（Mầu đen - giá 25000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_b[2]=1" ][eval exp="f.Ds_b_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*s_b" ][endif]
;----------------------------------------------------------------------------------------------
*s_b3
[cm]（Mầu xanh - giá 25000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_b[3]=1" ][eval exp="f.Ds_b_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*s_b" ][endif]
;----------------------------------------------------------------------------------------------
*s_b4
[cm]（Mầu đỏ - giá 25000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_b[4]=1" ][eval exp="f.Ds_b_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*s_b" ][endif]
;----------------------------------------------------------------------------------------------
*s_b5
[cm]（Mầu vàng - giá 25000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_b[5]=1" ][eval exp="f.Ds_b_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*s_b" ][endif]
;----------------------------------------------------------------------------------------------
*s_b6
[cm]（Mầu xanh lục - giá 25000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_b[6]=1" ][eval exp="f.Ds_b_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*s_b" ][endif]
;----------------------------------------------------------------------------------------------
*s_b7
[cm]（Mầu tím - giá 25000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_b[7]=1" ][eval exp="f.Ds_b_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*s_b" ][endif]
;----------------------------------------------------------------------------------------------
*s_b8
[cm]（Mầu cam - giá 25000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_b[8]=1" ][eval exp="f.Ds_b_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*s_b" ][endif]
;----------------------------------------------------------------------------------------------
*s_b9
[cm]（Mầu hồng - giá 25000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_b[9]=1" ][eval exp="f.Ds_b_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*s_b" ][endif]
;----------------------------------------------------------------------------------------------
*s_c_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Ds_c[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_c[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_c[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_c[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_c[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_c[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_c[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_c[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_c[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Ds_c[1]==1" ][else][eval exp="f.Ds_c[1]=1"][eval exp="f.Ds_c_per[1]=100" ][endif]
[if exp="f.Ds_c[2]==1" ][else][eval exp="f.Ds_c[2]=1"][eval exp="f.Ds_c_per[2]=100" ][endif]
[if exp="f.Ds_c[3]==1" ][else][eval exp="f.Ds_c[3]=1"][eval exp="f.Ds_c_per[3]=100" ][endif]
[if exp="f.Ds_c[4]==1" ][else][eval exp="f.Ds_c[4]=1"][eval exp="f.Ds_c_per[4]=100" ][endif]
[if exp="f.Ds_c[5]==1" ][else][eval exp="f.Ds_c[5]=1"][eval exp="f.Ds_c_per[5]=100" ][endif]
[if exp="f.Ds_c[6]==1" ][else][eval exp="f.Ds_c[6]=1"][eval exp="f.Ds_c_per[6]=100" ][endif]
[if exp="f.Ds_c[7]==1" ][else][eval exp="f.Ds_c[7]=1"][eval exp="f.Ds_c_per[7]=100" ][endif]
[if exp="f.Ds_c[8]==1" ][else][eval exp="f.Ds_c[8]=1"][eval exp="f.Ds_c_per[8]=100" ][endif]
[if exp="f.Ds_c[9]==1" ][else][eval exp="f.Ds_c[9]=1"][eval exp="f.Ds_c_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*s_c" ]
;----------------------------------------------------------------------------------------------------
*s_c1
[cm]（Mầu nâu - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_c[1]=1" ][eval exp="f.Ds_c_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*s_c" ][endif]
;----------------------------------------------------------------------------------------------
*s_c2
[cm]（Mầu đen - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_c[2]=1" ][eval exp="f.Ds_c_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*s_c" ][endif]
;----------------------------------------------------------------------------------------------
*s_c3
[cm]（Mầu xanh - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_c[3]=1" ][eval exp="f.Ds_c_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*s_c" ][endif]
;----------------------------------------------------------------------------------------------
*s_c4
[cm]（Mầu đỏ - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_c[4]=1" ][eval exp="f.Ds_c_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*s_c" ][endif]
;----------------------------------------------------------------------------------------------
*s_c5
[cm]（Mầu vàng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_c[5]=1" ][eval exp="f.Ds_c_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*s_c" ][endif]
;----------------------------------------------------------------------------------------------
*s_c6
[cm]（Mầu xanh lục - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_c[6]=1" ][eval exp="f.Ds_c_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*s_c" ][endif]
;----------------------------------------------------------------------------------------------
*s_c7
[cm]（Mầu tím - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_c[7]=1" ][eval exp="f.Ds_c_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*s_c" ][endif]
;----------------------------------------------------------------------------------------------
*s_c8
[cm]（Mầu cam - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_c[8]=1" ][eval exp="f.Ds_c_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*s_c" ][endif]
;----------------------------------------------------------------------------------------------
*s_c9
[cm]（Mầu hồng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_c[9]=1" ][eval exp="f.Ds_c_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*s_c" ][endif]
;----------------------------------------------------------------------------------------------
*s_d_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Ds_d[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_d[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_d[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_d[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_d[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_d[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_d[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_d[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_d[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Ds_d[1]==1" ][else][eval exp="f.Ds_d[1]=1"][eval exp="f.Ds_d_per[1]=100" ][endif]
[if exp="f.Ds_d[2]==1" ][else][eval exp="f.Ds_d[2]=1"][eval exp="f.Ds_d_per[2]=100" ][endif]
[if exp="f.Ds_d[3]==1" ][else][eval exp="f.Ds_d[3]=1"][eval exp="f.Ds_d_per[3]=100" ][endif]
[if exp="f.Ds_d[4]==1" ][else][eval exp="f.Ds_d[4]=1"][eval exp="f.Ds_d_per[4]=100" ][endif]
[if exp="f.Ds_d[5]==1" ][else][eval exp="f.Ds_d[5]=1"][eval exp="f.Ds_d_per[5]=100" ][endif]
[if exp="f.Ds_d[6]==1" ][else][eval exp="f.Ds_d[6]=1"][eval exp="f.Ds_d_per[6]=100" ][endif]
[if exp="f.Ds_d[7]==1" ][else][eval exp="f.Ds_d[7]=1"][eval exp="f.Ds_d_per[7]=100" ][endif]
[if exp="f.Ds_d[8]==1" ][else][eval exp="f.Ds_d[8]=1"][eval exp="f.Ds_d_per[8]=100" ][endif]
[if exp="f.Ds_d[9]==1" ][else][eval exp="f.Ds_d[9]=1"][eval exp="f.Ds_d_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*s_d" ]
;----------------------------------------------------------------------------------------------
*s_d1
[cm]（Mầu nâu - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_d[1]=1" ][eval exp="f.Ds_d_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*s_d" ][endif]
;----------------------------------------------------------------------------------------------
*s_d2
[cm]（Mầu đen - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_d[2]=1" ][eval exp="f.Ds_d_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*s_d" ][endif]
;----------------------------------------------------------------------------------------------
*s_d3
[cm]（Mầu xanh - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_d[3]=1" ][eval exp="f.Ds_d_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*s_d" ][endif]
;----------------------------------------------------------------------------------------------
*s_d4
[cm]（Mầu đỏ - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_d[4]=1" ][eval exp="f.Ds_d_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*s_d" ][endif]
;----------------------------------------------------------------------------------------------
*s_d5
[cm]（Mầu vàng - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_d[5]=1" ][eval exp="f.Ds_d_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*s_d" ][endif]
;----------------------------------------------------------------------------------------------
*s_d6
[cm]（Mầu xanh lục - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_d[6]=1" ][eval exp="f.Ds_d_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*s_d" ][endif]
;----------------------------------------------------------------------------------------------
*s_d7
[cm]（Mầu tím - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_d[7]=1" ][eval exp="f.Ds_d_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*s_d" ][endif]
;----------------------------------------------------------------------------------------------
*s_d8
[cm]（Mầu cam - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_d[8]=1" ][eval exp="f.Ds_d_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*s_d" ][endif]
;----------------------------------------------------------------------------------------------
*s_d9
[cm]（Mầu hồng - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_d[9]=1" ][eval exp="f.Ds_d_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*s_d" ][endif]
;----------------------------------------------------------------------------------------------

*s_d1_
[cm][eval exp="f.Ds_d[1]=1" ]（Mầu nâu[jump target="*s_d" ]
*s_d2_
[cm][eval exp="f.Ds_d[2]=1" ]（Mầu đen[jump target="*s_d" ]
*s_d3_
[cm][eval exp="f.Ds_d[3]=1" ]（Mầu xanh[jump target="*s_d" ]
*s_d4_
[cm][eval exp="f.Ds_d[4]=1" ]（Mầu đỏ[jump target="*s_d" ]
*s_d5_
[cm][eval exp="f.Ds_d[5]=1" ]（Mầu vàng[jump target="*s_d" ]
*s_d6_
[cm][eval exp="f.Ds_d[6]=1" ]（Mầu xanh lục[jump target="*s_d" ]
*s_d7_
[cm][eval exp="f.Ds_d[7]=1" ]（Mầu tím[jump target="*s_d" ]
*s_d8_
[cm][eval exp="f.Ds_d[8]=1" ]（Mầu cam[jump target="*s_d" ]
*s_d9_
[cm][eval exp="f.Ds_d[9]=1" ]（Mầu hồng[jump target="*s_d" ]
;------------------------------------------------------------------------------------------------
*s_e_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Ds_e[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_e[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_e[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_e[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_e[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_e[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_e[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_e[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_e[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Ds_e[1]==1" ][else][eval exp="f.Ds_e[1]=1"][eval exp="f.Ds_e_per[1]=100" ][endif]
[if exp="f.Ds_e[2]==1" ][else][eval exp="f.Ds_e[2]=1"][eval exp="f.Ds_e_per[2]=100" ][endif]
[if exp="f.Ds_e[3]==1" ][else][eval exp="f.Ds_e[3]=1"][eval exp="f.Ds_e_per[3]=100" ][endif]
[if exp="f.Ds_e[4]==1" ][else][eval exp="f.Ds_e[4]=1"][eval exp="f.Ds_e_per[4]=100" ][endif]
[if exp="f.Ds_e[5]==1" ][else][eval exp="f.Ds_e[5]=1"][eval exp="f.Ds_e_per[5]=100" ][endif]
[if exp="f.Ds_e[6]==1" ][else][eval exp="f.Ds_e[6]=1"][eval exp="f.Ds_e_per[6]=100" ][endif]
[if exp="f.Ds_e[7]==1" ][else][eval exp="f.Ds_e[7]=1"][eval exp="f.Ds_e_per[7]=100" ][endif]
[if exp="f.Ds_e[8]==1" ][else][eval exp="f.Ds_e[8]=1"][eval exp="f.Ds_e_per[8]=100" ][endif]
[if exp="f.Ds_e[9]==1" ][else][eval exp="f.Ds_e[9]=1"][eval exp="f.Ds_e_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*s_e" ]
;---------------------------------------------------------------------------------------------
*s_e1
[cm]（Mầu trắng - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_e[1]=1" ][eval exp="f.Ds_e_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*s_e" ][endif]
;;------------------------------------------------------------------------------------------------
*s_e2
[cm]（Mầu nâu - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_e[2]=1" ][eval exp="f.Ds_e_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*s_e" ][endif]
;;------------------------------------------------------------------------------------------------
*s_e3
[cm]（Mầu xanh - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_e[3]=1" ][eval exp="f.Ds_e_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*s_e" ][endif]
;;------------------------------------------------------------------------------------------------
*s_e4
[cm]（Mầu đỏ - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_e[4]=1" ][eval exp="f.Ds_e_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*s_e" ][endif]
;;------------------------------------------------------------------------------------------------
*s_e5
[cm]（Mầu vàng - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_e[5]=1" ][eval exp="f.Ds_e_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*s_e" ][endif]
;;------------------------------------------------------------------------------------------------
*s_e6
[cm]（Mầu xanh lục - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_e[6]=1" ][eval exp="f.Ds_e_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*s_e" ][endif]
;;------------------------------------------------------------------------------------------------
*s_e7
[cm]（Mầu tím - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_e[7]=1" ][eval exp="f.Ds_e_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*s_e" ][endif]
;;------------------------------------------------------------------------------------------------
*s_e8
[cm]（Mầu cam - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_e[8]=1" ][eval exp="f.Ds_e_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*s_e" ][endif]
;;------------------------------------------------------------------------------------------------
*s_e9
[cm]（Mầu hồng - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_e[9]=1" ][eval exp="f.Ds_e_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*s_e" ][endif]
;;------------------------------------------------------------------------------------------------
*s_f_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Ds_f[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_f[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_f[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_f[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_f[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_f[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_f[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_f[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Ds_f[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Ds_f[1]==1" ][else][eval exp="f.Ds_f[1]=1"][eval exp="f.Ds_f_per[1]=100" ][endif]
[if exp="f.Ds_f[2]==1" ][else][eval exp="f.Ds_f[2]=1"][eval exp="f.Ds_f_per[2]=100" ][endif]
[if exp="f.Ds_f[3]==1" ][else][eval exp="f.Ds_f[3]=1"][eval exp="f.Ds_f_per[3]=100" ][endif]
[if exp="f.Ds_f[4]==1" ][else][eval exp="f.Ds_f[4]=1"][eval exp="f.Ds_f_per[4]=100" ][endif]
[if exp="f.Ds_f[5]==1" ][else][eval exp="f.Ds_f[5]=1"][eval exp="f.Ds_f_per[5]=100" ][endif]
[if exp="f.Ds_f[6]==1" ][else][eval exp="f.Ds_f[6]=1"][eval exp="f.Ds_f_per[6]=100" ][endif]
[if exp="f.Ds_f[7]==1" ][else][eval exp="f.Ds_f[7]=1"][eval exp="f.Ds_f_per[7]=100" ][endif]
[if exp="f.Ds_f[8]==1" ][else][eval exp="f.Ds_f[8]=1"][eval exp="f.Ds_f_per[8]=100" ][endif]
[if exp="f.Ds_f[9]==1" ][else][eval exp="f.Ds_f[9]=1"][eval exp="f.Ds_f_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*s_f" ]
;---------------------------------------------------------------------------------------------
*s_f1
[cm]（Mầu trắng - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_f[1]=1" ][eval exp="f.Ds_f_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*s_f" ][endif]
;;------------------------------------------------------------------------------------------------
*s_f2
[cm]（Mầu nâu - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_f[2]=1" ][eval exp="f.Ds_f_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*s_f" ][endif]
;;------------------------------------------------------------------------------------------------
*s_f3
[cm]（Mầu xanh - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_f[3]=1" ][eval exp="f.Ds_f_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*s_f" ][endif]
;;------------------------------------------------------------------------------------------------
*s_f4
[cm]（Mầu đỏ - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_f[4]=1" ][eval exp="f.Ds_f_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*s_f" ][endif]
;;------------------------------------------------------------------------------------------------
*s_f5
[cm]（Mầu vàng - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_f[5]=1" ][eval exp="f.Ds_f_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*s_f" ][endif]
;;------------------------------------------------------------------------------------------------
*s_f6
[cm]（Mầu xanh lục - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_f[6]=1" ][eval exp="f.Ds_f_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*s_f" ][endif]
;;------------------------------------------------------------------------------------------------
*s_f7
[cm]（Mầu tím - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_f[7]=1" ][eval exp="f.Ds_f_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*s_f" ][endif]
;;------------------------------------------------------------------------------------------------
*s_f8
[cm]（Mầu cam - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_f[8]=1" ][eval exp="f.Ds_f_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*s_f" ][endif]
;;------------------------------------------------------------------------------------------------
*s_f9
[cm]（Mầu hồng - giá 50000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Ds_f[9]=1" ][eval exp="f.Ds_f_per[9]=100" ]

Tài khoản còn [money][p_][jump target="*s_f" ][endif]
;;------------------------------------------------------------------------------------------------

*s_a
Tôi mua nó。[p_]
[if exp="f.bought_skip==1" ][after_shop][endif]
	[shop_f/]
	[f/re]Đây là… một mầu khác từ đôi tất mà anh đã mua trước đây[lr_]
[if exp="f.step>=6" ]
	[f/s]Cảm ơn anh。[lr_]
	[f/re]Em sẽ luôn mặc những gì mà [name] thích。[p_]
[else]
	[f/s]…Cảm ơn anh rất nhiều。[p_]
[endif][after_shop]
;;=================================================================================================
*s_b
Tôi mua nó。[p]
[if exp="f.Ds_b[0]!='got'" ][eval exp="f.Ds_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]Đây là…một đôi tất dài。[lr_]
	[f/re]Em chưa bao giờ đi 1 đôi tất dài。[p_]
	[f/s]Cảm ơn anh rất nhiều。[name][lr_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]Đây là… một mầu khác từ đôi tất mà anh đã mua trước đây[lr_]
	[f/s]Cảm ơn anh rất nhiều。[lr_]
	[f/re]Em sẽ mặc bất cứ thứ gì [name] thích。[p_]
[p_]
[endif][after_shop]
;;=================================================================================================
*s_c
Tôi mua nó。[p]
[if exp="f.Ds_c[0]!='got'" ][eval exp="f.Ds_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]Đôi tất này… thật kì lạ。[p_]
	[f/cl]Nó chắc sẽ hợp với em…。[lr_]
	[f/sc][name]sẽ mua nó cho em ư？[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]Đây là… một mầu khác từ đôi tất mà anh đã mua trước đây[lr_]
	[f/s]Cảm ơn anh。[lr_]
	[f/re]Em sẽ mặc bất cứ thứ gì [name] thích。[p_]
[p_]
[endif][after_shop]
;;=================================================================================================
*s_d
Tôi mua nó。[p]
[if exp="f.Ds_d[0]!='got'" ][eval exp="f.Ds_d[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]Đây là…. đôi tất dài với những đường kẻ ngang。[p_]
	[f/cl]Có vẻ như em khó mà có thể hợp với nó…。[lr_]
	[f/ssc][name]Nghĩ nó sẽ phù hợp với em nhỉ？[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]Đây là… một mầu khác từ đôi tất mà anh đã mua trước đây[lr_]
	[f/s]Cảm ơn anh rất nhiều。[lr_]
	[f/re][Em sẽ mặc bất cứ thứ gì [name] thích。[p_]
[endif][after_shop]
;;=================================================================================================
*s_e
Tôi mua nó。[p]
[if exp="f.Ds_e[0]!='got'" ][eval exp="f.Ds_e[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]Đây là… đôi tất ngắn với những đường kẻ ngang mầu đen。[p_]
	[f/s]Có vẻ mầu cơ bản của nó là những kẻ sọc mầu đen。[lr_]
	[f/re]Em tụ hỏi liệu nó có điểm nhấn hơn là 1 đôi tất trắng?。[p_]
	[f/s]Cảm ơn anh rất nhiều。[name][p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]Đây là… một mầu khác từ đôi tất mà anh đã mua trước đây[lr_]
	[f/s]Cảm ơn anh rất nhiều。[lr_]
	[f/re][Em sẽ mặc bất cứ thứ gì [name] thích。[p_]
[endif][after_shop]
;;=================================================================================================
*s_f
Tôi mua nó。[p]
[if exp="f.Ds_f[0]!='got'" ][eval exp="f.Ds_f[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/]
	[f/re]Đây là… một đôi tất dài với những đường kẻ ngang mầu đen。[p_]
	[f/sc]…Nhìn nó quá lâu khiến em thấy hơi chóng mặt。[lr_]
	[f/s]Nhưng em vẫn muốn chờ xem không biết nó hợp với bộ nào đây。[p_]
	[f/ss]Cảm ơn anh rất nhiều。[name][p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[f/re]Đây là… một mầu khác từ đôi tất mà anh đã mua trước đây[lr_]
	[f/s]Cảm ơn anh rất nhiều。[lr_]
	[f/re][Em sẽ mặc bất cứ thứ gì [name] thích。[p_]
[endif][after_shop]
;;=================================================================================================
;;マフラー-セリフ
*ne_a_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dne_a[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_a[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_a[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_a[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_a[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_a[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_a[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_a[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dne_a[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dne_a[1]==1" ][else][eval exp="f.Dne_a[1]=1"][eval exp="f.Ds_f_per[1]=100" ][endif]
[if exp="f.Dne_a[2]==1" ][else][eval exp="f.Dne_a[2]=1"][eval exp="f.Ds_f_per[2]=100" ][endif]
[if exp="f.Dne_a[3]==1" ][else][eval exp="f.Dne_a[3]=1"][eval exp="f.Ds_f_per[3]=100" ][endif]
[if exp="f.Dne_a[4]==1" ][else][eval exp="f.Dne_a[4]=1"][eval exp="f.Ds_f_per[4]=100" ][endif]
[if exp="f.Dne_a[5]==1" ][else][eval exp="f.Dne_a[5]=1"][eval exp="f.Ds_f_per[5]=100" ][endif]
[if exp="f.Dne_a[6]==1" ][else][eval exp="f.Dne_a[6]=1"][eval exp="f.Ds_f_per[6]=100" ][endif]
[if exp="f.Dne_a[7]==1" ][else][eval exp="f.Dne_a[7]=1"][eval exp="f.Ds_f_per[7]=100" ][endif]
[if exp="f.Dne_a[8]==1" ][else][eval exp="f.Dne_a[8]=1"][eval exp="f.Ds_f_per[8]=100" ][endif]
;[if exp="f.Dne_a[9]==1" ][else][eval exp="f.Dne_a[9]=1"][eval exp="f.Ds_f_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*ne_a" ]
;----------------------------------------------------------------------------------------------------------------
*ne_a1
[cm]（Mầu đỏ - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_a[1]=1" ][eval exp="f.Dne_a_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*ne_a" ][endif]
;;------------------------------------------------------------------------------------------------
*ne_a2
[cm]（Xanh lục - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_a[2]=1" ][eval exp="f.Dne_a_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*ne_a" ][endif]
;;------------------------------------------------------------------------------------------------
*ne_a3
[cm]（Mầu trà - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_a[3]=1" ][eval exp="f.Dne_a_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*ne_a" ][endif]
;;------------------------------------------------------------------------------------------------
*ne_a4
[cm] - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_a[4]=1" ][eval exp="f.Dne_a_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*ne_a" ][endif]
;;------------------------------------------------------------------------------------------------
*ne_a5
[cm]（Xanh - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_a[5]=1" ][eval exp="f.Dne_a_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*ne_a" ][endif]
;;------------------------------------------------------------------------------------------------
*ne_a6
[cm]（Trà - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_a[6]=1" ][eval exp="f.Dne_a_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*ne_a" ][endif]
;;------------------------------------------------------------------------------------------------
*ne_a7
[cm]（Lục - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_a[7]=1" ][eval exp="f.Dne_a_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*ne_a" ][endif]
;;------------------------------------------------------------------------------------------------
*ne_a8
[cm]（Đen - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_a[8]=1" ][eval exp="f.Dne_a_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*ne_a" ][endif]
;;------------------------------------------------------------------------------------------------
*ne_a
Tôi mua khăn choàng[p_]
[if exp="f.Dne_a[0]!='got'" ][eval exp="f.Dne_a[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s] 
	[syl]Nó là một chiếc khăn choàng thật đẹp。[lr_]
	[f/re]Anh có thể mua nó cho em sao？[p_]
	[f/ss]…Mn…Được sao。[p_]
	[f/s]Em sẽ giữ gìn nó thật cẩn thận，cảm ơn anh…[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s] 
	[syl]Một mầu khác từ chiếc khăn anh đã mua。[lr_]
	[f/re]Anh sẽ mua nó thật sao？[p][p_]
	[f/s]Cảm ơn anh、[name][lr_]
	[f/ssp]… em sẽ giữ nó cẩn thận♪[p_]
[endif][after_shop]
;;=================================================================================================
*ne_c_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dne_c[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_c[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_c[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_c[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_c[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_c[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_c[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_c[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Dne_c[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dne_c[1]==1" ][else][eval exp="f.Dne_c[1]=1"][eval exp="f.Ds_f_per[1]=100" ][endif]
[if exp="f.Dne_c[2]==1" ][else][eval exp="f.Dne_c[2]=1"][eval exp="f.Ds_f_per[2]=100" ][endif]
[if exp="f.Dne_c[3]==1" ][else][eval exp="f.Dne_c[3]=1"][eval exp="f.Ds_f_per[3]=100" ][endif]
[if exp="f.Dne_c[4]==1" ][else][eval exp="f.Dne_c[4]=1"][eval exp="f.Ds_f_per[4]=100" ][endif]
[if exp="f.Dne_c[5]==1" ][else][eval exp="f.Dne_c[5]=1"][eval exp="f.Ds_f_per[5]=100" ][endif]
[if exp="f.Dne_c[6]==1" ][else][eval exp="f.Dne_c[6]=1"][eval exp="f.Ds_f_per[6]=100" ][endif]
[if exp="f.Dne_c[7]==1" ][else][eval exp="f.Dne_c[7]=1"][eval exp="f.Ds_f_per[7]=100" ][endif]
[if exp="f.Dne_c[8]==1" ][else][eval exp="f.Dne_c[8]=1"][eval exp="f.Ds_f_per[8]=100" ][endif]
;[if exp="f.Dne_c[9]==1" ][else][eval exp="f.Dne_c[9]=1"][eval exp="f.Ds_f_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*ne_c" ]
;--------------------------------------------------------------------------------------------------------------
*ne_c1
[cm]（Mầu trà - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_c[1]=1" ][eval exp="f.Dne_c_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*ne_c" ][endif]
;;------------------------------------------------------------------------------------------------
*ne_c2
[cm]（Mầu xanh - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_c[2]=1" ][eval exp="f.Dne_c_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*ne_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_c3
[cm]（Mầu đỏ - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_c[3]=1" ][eval exp="f.Dne_c_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*ne_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_c4
[cm]（Mầu xanh lục - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_c[4]=1" ][eval exp="f.Dne_c_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*ne_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_c5
[cm]（Mầu tím - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_c[5]=1" ][eval exp="f.Dne_c_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*ne_c" ][endif]
*ne_c6
[cm]（Mầu hồng - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_c[6]=1" ][eval exp="f.Dne_c_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*ne_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_c7
[cm]（Mầu trắng - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_c[7]=1" ][eval exp="f.Dne_c_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*ne_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_c8
[cm]（Mầu đen - giá 170000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince1*f.zince3*f.zince7_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_c[8]=1" ][eval exp="f.Dne_c_per[8]=100" ]

Tài khoản còn [money][p_][jump target="*ne_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_c
Tôi đã mua khăn với những đường kẻ caro[p_]
[if exp="f.Dne_c[0]!='got'" ][eval exp="f.Dne_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s] 
	[f/re]Đó là một chiếc khăn quàng phải không、[lr_]
	[f/re]Những họa tiết này… nó trông nổi bật hơn hẳn。[lr_]
	[f/ss]Em cũng mong thời tiết sẽ trở lạnh。[p_]
	[f/s]Cảm ơn anh rất nhiều, em sẽ giữ gìn nó cẩn thận。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/s] 
	[f/re]Nó là một mầu khác từ chiếc khăn anh mua cho em trước đó。[lr_]
	[f/re]Anh sẽ mua nó chứ？[p_]
	[f/s]Cảm ơn anh、[name][lr_]
	[f/ssp]…Nó thật ấm áp♪[p_]
[endif][after_shop]
;;=================================================================================================

;;エプロン-セリフ
*ne_b_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Dne_b[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_b[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_b[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Dne_b[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince8_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Dne_b[1]==1" ][else][eval exp="f.Dne_b[1]=1"][eval exp="f.Ds_f_per[1]=100" ][endif]
[if exp="f.Dne_b[2]==1" ][else][eval exp="f.Dne_b[2]=1"][eval exp="f.Ds_f_per[2]=100" ][endif]
[if exp="f.Dne_b[3]==1" ][else][eval exp="f.Dne_b[3]=1"][eval exp="f.Ds_f_per[3]=100" ][endif]
[if exp="f.Dne_b[4]==1" ][else][eval exp="f.Dne_b[4]=1"][eval exp="f.Ds_f_per[4]=100" ][endif]

Tài khoản còn [money][p]
[jump target="*ne_b" ]

*ne_b1
[cm]（Mầu trắng - giá 80000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_b[1]=1" ][eval exp="f.Dne_b_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*ne_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_b2
[cm]（Mầu xanh - giá 80000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_b[2]=1" ][eval exp="f.Dne_b_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*ne_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_b3
[cm]（Mầu hồng - giá 80000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_b[3]=1" ][eval exp="f.Dne_b_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*ne_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_b4
[cm]（Mầu đen - giá 80000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince8_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Dne_b[4]=1" ][eval exp="f.Dne_b_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*ne_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*ne_b
Tôi mua 1 chiếc tạp dề[p_]
[if exp="f.Dne_b[0]!='got'" ][eval exp="f.Dne_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/] 
	[syl][f/s]Đây là… tạp dề？[p_]
	Dùng nó, em sẽ không bị bẩn quần áo khi nấu ăn。[p_]
	[f/ss]
	Cám ơn anh [name][r]em sẽ thường xuyên dùng nó。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/] 
	[syl][f/s]Một mầu khác từ chiếc tạp dề anh đã mua[lr_]
	Anh sẽ lại mua tiếp sao？[p_]
	[f/ss]Cảm ơn anh rât nhiều、[name]。[p_]
[endif][after_shop]
;;=================================================================================================
;;下着-セリフ
*u_a_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Du_a[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_a[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_a[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_a[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_a[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_a[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_a[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Du_a[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Du_a[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Du_a[1]==1" ][else][eval exp="f.Du_a[1]=1"][eval exp="f.Ds_f_per[1]=100" ][endif]
[if exp="f.Du_a[2]==1" ][else][eval exp="f.Du_a[2]=1"][eval exp="f.Ds_f_per[2]=100" ][endif]
[if exp="f.Du_a[3]==1" ][else][eval exp="f.Du_a[3]=1"][eval exp="f.Ds_f_per[3]=100" ][endif]
[if exp="f.Du_a[4]==1" ][else][eval exp="f.Du_a[4]=1"][eval exp="f.Ds_f_per[4]=100" ][endif]
[if exp="f.Du_a[5]==1" ][else][eval exp="f.Du_a[5]=1"][eval exp="f.Ds_f_per[5]=100" ][endif]
[if exp="f.Du_a[6]==1" ][else][eval exp="f.Du_a[6]=1"][eval exp="f.Ds_f_per[6]=100" ][endif]
[if exp="f.Du_a[7]==1" ][else][eval exp="f.Du_a[7]=1"][eval exp="f.Ds_f_per[7]=100" ][endif]
;[if exp="f.Du_a[8]==1" ][else][eval exp="f.Du_a[8]=1"][eval exp="f.Ds_f_per[8]=100" ][endif]
;[if exp="f.Du_a[9]==1" ][else][eval exp="f.Du_a[9]=1"][eval exp="f.Ds_f_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*u_a" ]
;-------------------------------------------------------------------------------------------------
*u_a1
[cm]（Mầu trắng - giá 30000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_a[1]=1" ][eval exp="f.Du_a_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*u_a" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_a2
[cm]（Mầu xanh - giá 30000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_a[2]=1" ][eval exp="f.Du_a_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*u_a" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_a3
[cm]（Mầu hồng - giá 30000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_a[3]=1" ][eval exp="f.Du_a_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*u_a" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_a4
[cm]（Mầu vàng - giá 30000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_a[4]=1" ][eval exp="f.Du_a_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*u_a" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_a5
[cm]（Mầu lục - giá 30000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_a[5]=1" ][eval exp="f.Du_a_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*u_a" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_a6
[cm]（Mầu cam - giá 30000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_a[6]=1" ][eval exp="f.Du_a_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*u_a" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_a7
[cm]（Mầu đen - giá 30000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_a[7]=1" ][eval exp="f.Du_a_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*u_a" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_a
Tôi mua nó。[p_]
[if exp="f.step<=5"][after_shop][endif]
[if exp="f.bought_skip==1" ][after_shop][endif]
	[shop_f/] [syl]Đây là… một mầu khác từ bộ đồ lót anh đã mua。[lr_]
	[f/s]Mặc dù nó sẽ không thể thấy nhưng…nó cũng là phong cách mới。[p_]
[if exp="f.bought_skip==1" ][after_shop][endif]
[if exp="f.lust>=30" ]
	[shop_f/] [f/sp]…Nhưng [name],Nếu muốn anh cũng có thể…。[lr_][endif]
	[f/re]Cảm ơn anh rất nhiều。[p_]
[after_shop]
;;=================================================================================================
*u_b_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Du_b[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_b[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_b[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_b[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_b[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_b[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_b[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Du_b[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Du_b[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Du_b[1]==1" ][else][eval exp="f.Du_b[1]=1"][eval exp="f.Ds_f_per[1]=100" ][endif]
[if exp="f.Du_b[2]==1" ][else][eval exp="f.Du_b[2]=1"][eval exp="f.Ds_f_per[2]=100" ][endif]
[if exp="f.Du_b[3]==1" ][else][eval exp="f.Du_b[3]=1"][eval exp="f.Ds_f_per[3]=100" ][endif]
[if exp="f.Du_b[4]==1" ][else][eval exp="f.Du_b[4]=1"][eval exp="f.Ds_f_per[4]=100" ][endif]
[if exp="f.Du_b[5]==1" ][else][eval exp="f.Du_b[5]=1"][eval exp="f.Ds_f_per[5]=100" ][endif]
[if exp="f.Du_b[6]==1" ][else][eval exp="f.Du_b[6]=1"][eval exp="f.Ds_f_per[6]=100" ][endif]
[if exp="f.Du_b[7]==1" ][else][eval exp="f.Du_b[7]=1"][eval exp="f.Ds_f_per[7]=100" ][endif]
;[if exp="f.Du_b[8]==1" ][else][eval exp="f.Du_b[8]=1"][eval exp="f.Ds_f_per[8]=100" ][endif]
;[if exp="f.Du_b[9]==1" ][else][eval exp="f.Du_b[9]=1"][eval exp="f.Ds_f_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*u_b" ]
;--------------------------------------------------------------------------------------------------------------
*u_b1
[cm]（Bộ đồ lót kiểu người lớn - Mầu trắng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_b[1]=1" ][eval exp="f.Du_b_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*u_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_b2
[cm]（Bộ đồ lót kiểu người lớn - Mầu xanh - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_b[2]=1" ][eval exp="f.Du_b_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*u_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_b3
[cm]（Bộ đồ lót kiểu người lớn - Mầu hồng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_b[3]=1" ][eval exp="f.Du_b_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*u_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_b4
[cm]（Bộ đồ lót kiểu người lớn - Mầu vàng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_b[4]=1" ][eval exp="f.Du_b_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*u_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_b5
[cm]（Bộ đồ lót kiểu người lớn - Mầu lục - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_b[5]=1" ][eval exp="f.Du_b_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*u_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_b6
[cm]（Bộ đồ lót kiểu người lớn - Mầu cam - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_b[6]=1" ][eval exp="f.Du_b_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*u_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_b7
[cm]（Bộ đồ lót kiểu người lớn - Mầu đen - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_b[7]=1" ][eval exp="f.Du_b_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*u_b" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_b
Tôi mua nó。[p_]
[if exp="f.Du_b[0]!='got'" ][eval exp="f.Du_b[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/p][syl]
	Bộ đồ lót này… nó thật rườm rà nhưng lại trông rất gợi cảm。[lr_]
	[f/re]Có lẽ em sẽ hiểu một chút tâm trạng người lớn khi mặc nó。[p_]
	[f/sp]etou…Cảm ơn anh。[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/][syl]
	[syl]Đây là…một mầu khác.。[lr_]
	[f/s]Mặc dù nó sẽ không thể thấy nhưng…nó cũng là phong cách mới。[p_]
	[f/re]Cảm ơn anh rất nhiều、[name]。[p_]
[endif][after_shop]
;;=================================================================================================
*u_c_time
[cm]
[eval exp="f.code_time=0"]
[if exp="f.Du_c[1]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_c[2]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_c[3]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_c[4]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_c[5]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_c[6]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.Du_c[7]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Du_c[8]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
;[if exp="f.Du_c[9]==1" ][else][eval exp="f.code_time=f.code_time+1"][endif]
[if exp="f.code_time==0"]
#
(Tôi đã có hết loại này rồi.[p][after_shop][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]
[eval exp="f.zince_=f.zince_*f.code_time"][eval exp="f.code_time_=f.code_time"][eval exp="f.code_time=0"]
[_]Mua thêm: [emb exp="f.code_time_"] bộ.[r]
Số tiền cần phải trả: [emb exp="f.zince_"] đồng.[p]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[endif]
[if exp="f.Du_c[1]==1" ][else][eval exp="f.Du_c[1]=1"][eval exp="f.Ds_f_per[1]=100" ][endif]
[if exp="f.Du_c[2]==1" ][else][eval exp="f.Du_c[2]=1"][eval exp="f.Ds_f_per[2]=100" ][endif]
[if exp="f.Du_c[3]==1" ][else][eval exp="f.Du_c[3]=1"][eval exp="f.Ds_f_per[3]=100" ][endif]
[if exp="f.Du_c[4]==1" ][else][eval exp="f.Du_c[4]=1"][eval exp="f.Ds_f_per[4]=100" ][endif]
[if exp="f.Du_c[5]==1" ][else][eval exp="f.Du_c[5]=1"][eval exp="f.Ds_f_per[5]=100" ][endif]
[if exp="f.Du_c[6]==1" ][else][eval exp="f.Du_c[6]=1"][eval exp="f.Ds_f_per[6]=100" ][endif]
[if exp="f.Du_c[7]==1" ][else][eval exp="f.Du_c[7]=1"][eval exp="f.Ds_f_per[7]=100" ][endif]
;[if exp="f.Du_c[8]==1" ][else][eval exp="f.Du_c[8]=1"][eval exp="f.Ds_f_per[8]=100" ][endif]
;[if exp="f.Du_c[9]==1" ][else][eval exp="f.Du_c[9]=1"][eval exp="f.Ds_f_per[9]=100" ][endif]
Tài khoản còn [money][p]
[jump target="*u_c" ]
;-----------------------------------------------------------------------------------------------
*u_c1
[cm]（Mầu trắng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_c[1]=1" ][eval exp="f.Du_c_per[1]=100" ]

Tài khoản còn [money][p_][jump target="*u_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_c2
[cm]（Mầu xanh - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_c[2]=1" ][eval exp="f.Du_c_per[2]=100" ]

Tài khoản còn [money][p_][jump target="*u_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_c3
[cm]（Mầu hồng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_c[3]=1" ][eval exp="f.Du_c_per[3]=100" ]

Tài khoản còn [money][p_][jump target="*u_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_c4
[cm]（Mầu vàng - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_c[4]=1" ][eval exp="f.Du_c_per[4]=100" ]

Tài khoản còn [money][p_][jump target="*u_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_c5
[cm]（Mầu xanh lục - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_c[5]=1" ][eval exp="f.Du_c_per[5]=100" ]

Tài khoản còn [money][p_][jump target="*u_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_c6
[cm]（Mầu cam - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_c[6]=1" ][eval exp="f.Du_c_per[6]=100" ]

Tài khoản còn [money][p_][jump target="*u_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_c7
[cm]（Mầu đen - giá 40000 đ[p]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince4_"]

[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.Du_c[7]=1" ][eval exp="f.Du_c_per[7]=100" ]

Tài khoản còn [money][p_][jump target="*u_c" ][endif]
;;----------------------------------------------------------------------------------------------------
*u_c
Tôi mua bộ đồ lót với những chấm polka。[p_]
[if exp="f.Du_c[0]!='got'" ][eval exp="f.Du_c[0]='got'" ][eval exp="f.r='got'" ]
	[shop_f/s]
	[f/re]Đây là… bộ đồ lót với những chấm bi, Nó khá dễ thương。[lr_]
	[f/p]…[name] Cũng nghĩ thế sao?[p_]
	[f/re]Cảm ơn anh rất nhiều。[name]。[p_]
[elsif exp="f.bought_skip==1" ][else]
	[shop_f/]
	[f/re]Đây là… Một mầu khác từ bộ anh đã mua。[lr_]
	[f/s]Tuy đây là nơi mà mọi người không thể nhìn thấy Nhưng em vẫn rất hạnh phúc khi có nó。[p_]
	[f/re]Cảm ơn anh rất nhiều、[name]。[p_]
[endif][after_shop]
;;=================================================================================================
;;既買-お買い上げ後
*bought
[cm]（Mình đã mua nó rồi, nên tìm thứ khác vậy。[l_]
*show_menu
[if exp="f.ch_win==1" ][jump target="*shop_dress" ][elsif exp="f.ch_win==2" ][jump target="*shop_dress2" ]
[elsif exp="f.ch_win==3" ][jump target="*shop_dress3" ][elsif exp="f.ch_win==4" ][jump target="*shop_hair" ]
[elsif exp="f.ch_win==5" ][jump target="*shop_pin" ][elsif exp="f.ch_win==6" ][jump target="*shop_head" ]
[elsif exp="f.ch_win==7" ][jump target="*shop_leg" ][elsif exp="f.ch_win==8" ][jump target="*shop_glasses" ]
[elsif exp="f.ch_win==9" ][jump target="*shop_under" ][elsif exp="f.ch_win==10" ][jump target="*shop_arm" ]
[elsif exp="f.ch_win==11" ][jump target="*shop_other" ][endif]
;;=================================================================================================
*return_menu
[cm][_]Đã đến lúc về rồi。[p_][eval exp="f.shop_c=6" ]
[jump target="*end_shop" ]

*after_shop
[cm]
[eval exp="f.love=f.love+1" ][eval exp="f.shop_c=0" ]
[if exp="f.daily_out!='shop_d'" ][eval exp="f.daily_out='shop_a'" ][endif]
[if exp="f.shop_c<=2" ][jump target="*return_shop" ]
[elsif exp="f.love>=200 && f.shop_c<=3" ][jump target="*return_shop" ]
[elsif exp="f.love>=500 && f.shop_c<=4" ][jump target="*return_shop" ]
[elsif exp="f.love>=1000 && f.shop_c<=5" ][jump target="*return_shop" ]
[elsif exp="f.love>=1500 && f.shop_c<=6" ][jump target="*return_shop" ]
[elsif exp="f.love>=2000 && f.shop_c<=7" ][jump target="*return_shop" ]
[elsif exp="f.love>=2500 && f.shop_c<=8" ][jump target="*return_shop" ][endif]
[_]Hôm nay chũng ta hãy thử đến đó xem。[p_]

*end_shop
[cm][eval exp="f.act=f.act+1" ][eval exp="f.out=1" ][eval exp="f.last_act='shop'" ]
[black][bg_shop][set_lady][chara_show name="sub" time="100" wait="true" ]
[aurel]Hẹn gặp lại quý khách。[p_]
[black][_][bgm_SG]
[if exp="f.step>=6"]
[jump storage="act_with/go_out.ks" target="*town"][else]
[return_bace][endif]

*return_shop
[cm][_][if exp="f.bought_skip==1 && f.r!='got'" ][jump target="*show_menu" ][endif]
[free_chara][chara_anim][set_lady][eval exp="f.r=0" ]
[chara_show name="sub" height="900" time="100" wait="true" ]
[anim name="sub" time="300" left="-300" ]
[mod_win st="o/win/shop-win.png" ]
[chara_show name="window" time="1" wait="true" left="613" top="22" ]
[chara_stop]
[random_10]
[if exp="f.aur_love>=100 && f.r>=6 && f.zince<f.talk"]
#Aurelia
[aur_sone_3]Quý khách được [font color="0x00ffee"]voucher giảm giá 20%[resetfont] cho sản phẩm vừa rồi.[p]
[eval exp="f.talk=f.talk-f.zince"][eval exp="f.talk=f.talk/100"][eval exp="f.talk=f.talk*20"][eval exp="f.zince=f.zince+f.talk"]
Tài khoản còn [money][p]
[endif]
[if exp="f.aur_love>=50 && f.r>=6 && f.zince<f.talk"]
#Aurelia
[aur_sone_3]Quý khách được [font color="0x3cff00"]voucher giảm giá 15%[resetfont] cho sản phẩm vừa rồi.[p]
[eval exp="f.talk=f.talk-f.zince"][eval exp="f.talk=f.talk/100"][eval exp="f.talk=f.talk*15"][eval exp="f.zince=f.zince+f.talk"]
Tài khoản còn [money][p]
[endif]
[eval exp="f.talk=f.zince"]
[jump target="*show_menu" ]


;;オーレリアトーク
*talk
[cm][eval exp="f.shop_t=1" ]
[if exp="f.aur_love>=0"][eval exp="f.aur_love=f.aur_love+1"][else][eval exp="f.aur_love=1"][endif]
[if exp="f.shop_talk>=1" ][jump target="*talks" ][else]
[_]（Tôi chưa bao giờ thấy nhân viên nào khác ngoài cô ấy trong cửa hàng này…[p_]
[aurel][aur_ara_3]Nhân viên bán hàng khác？[lr_][wait time="600"]
[aur_zanene_1]Cửa hàng này hiện tại không thuê thêm nhân viên khác。[p_]
Tôi quên không nói trước, nhưng tôi Aurelia, là chủ sở hữu cửa hàng này。[lr_]
[aurel][aur_sone_2]Cảm ơn anh đã ủng hộ tôi。[p_]
[eval exp="f.shop_talk=1" ][jump target="*shop_dress" ][endif]

*talks
[if exp="f.aur_love>=0"][eval exp="f.aur_love=f.aur_love+1"][else][eval exp="f.aur_love=1"][endif]
[if exp="f.aurelia_talk>=0"][else][eval exp="f.aurelia_talk=0"][endif]
[_][eval exp="f.aurelia_talk=f.aurelia_talk+1"][random_13]
[if exp="f.r==1" ][jump target="*shop_t1" ][elsif exp="f.r==2" ][jump target="*shop_t2" ]
[elsif exp="f.r==3" ][jump target="*shop_t3" ][elsif exp="f.r==4" ][jump target="*shop_t4" ]
[elsif exp="f.r==5" ][jump target="*shop_t5" ][elsif exp="f.r==6" ][jump target="*shop_t6" ]
[elsif exp="f.r==7" ][jump target="*shop_t7" ][elsif exp="f.r==8" ][jump target="*shop_t8" ]
[elsif exp="f.r==9" ][jump target="*shop_t9" ][elsif exp="f.r==10" ][jump target="*shop_t10" ]
[elsif exp="f.r==11" ][jump target="*shop_t11" ][elsif exp="f.r==12" ][jump target="*shop_t12" ]
[elsif exp="f.r==13" ][jump target="*shop_t13" ][elsif exp="f.r==14" ][jump target="*shop_t14" ]
[elsif exp="f.r==15" ][jump target="*shop_t15" ][endif]

*shop_t1
[aurel]
[aur_de_1]Có cái gì đó đã gây chú ý cho anh?[p_]
[_]（Cô ấy nói như đang diễn kịch với tôi vậy。[r]
Chắc cô ấy cố ý[p_]
[jump target="*shop_dress" ]
*shop_t2
（Tôi tự hỏi, sao cô ấy vẫn đội mũ khu ở trong nhà?…[p_]
[aurel]
[aur_sa_1]Cái mũ này ư？[p_]
Tôi đội nó vì nó có nghĩa tôi là một người rất đặc biệt。[lr_]
tôi không quan tâm người khác nói gì。[p_]
[jump target="*shop_dress" ]
*shop_t3
（Cửa hàng có bán rất nhiều loại quần áo…[p_]
[aurel]
Ở đây có rất nhiều quần áo。[p_]
Có những thứ kì lạ nữa sao？[lr_]
Nó được nhập khẩu từ nhiều nước khác nhau。[p_]
[aur_sa_1]…Tuy nhiên…ở đây không bán đồ cho nam。[p_]
[jump target="*shop_dress" ]
*shop_t4
（Khi chúng tôi nói chuyện, Sylvie có biểu cảm rất lạ。[p_]
（Cô ấy nhìn tôi với ánh mắt rất lạ。[p_]
[aurel]
[aur_do_1]Có chuyện gì sao？[p_]
[_]（Sylvie nhanh chóng nhìn đi chỗ khác…[p_]
[jump target="*shop_dress" ]
*shop_t5
（Chưa thấy người khách nào khác đến đây, không biết cửa hàng này kinh doanh ra sao nữa.[p_]
[aurel]
[aur_aha_1]fu…fu…!anh không cần lo lắng về điều đó。[lr_]
Ít ra giờ cũng có người đến rồi。[p_]
[_]（Cô ấy mỉm cười và nhìn ra chỗ khác。[p_]
[jump target="*shop_dress" ]
*shop_t6
（Cô ấy rất cao so với những người phụ nữ khác。[p_]
（Tuy nhiên cô ấy có thể đang mang giày cao gót、[r]
Có vẻ tại vì vậy nên cô ấy không thể di chuyển nhanh được。[p_]
（Chiếc mũ che đi phần mặt của cô ấy nên tôi không rõ tuổi。[lr_]
Nhưng theo vóc dáng tôi đoán cô ấy khoảng 30 tuổi[p_]
（Trong khi tôi đang suy nghĩ, đột nhiên tôi cảm thấy áo của tôi đang bị ai đó níu xuống。[lr_]
Tôi không để ý rằng Sylvie đang nhìn tôi với vẻ mặt nhăn nhó[p_]
[jump target="*shop_dress" ]
*shop_t7
[aurel]
[aur_sone_3]Trên thực tế… tôi vẫn thích như vậy…。[p_]
[aur_aha_1]Fufu…Không sao đâu。[p_]
[_]（Sylvie khẽ trộm nhìn và bắt gặp nụ cười của tôi。[p_]
[jump target="*shop_dress" ]
*shop_t8
[aurel]
[aur_ne_1]Này…quan hệ giữa anh và cô bé ấy có vẻ rất tốt。[p_]
Ahh… Không, không có gì。[p_]
[aur_aha_1]Fu…fu…。[p_]
[_]（Cô ấy có vẻ ghen, cáu kỉnh về tôi và Aurelia。[p_]
[jump target="*shop_dress" ]
*shop_t9
（…Tôi tự hỏi sẽ như thế nào nếu nhìn cô ấy ở bên ngoài cửa hàng。[p_]
（Giữa đường phố đông người và tấp nập、[r]
Vẻ đẹp của cô ấy có thể được nhìn thấy từ rất xa。[p_]
[aurel]
[aur_ara_2]…Trên mặt tôi đang dính gì à？[p_]
[jump target="*shop_dress" ]
*shop_t10
（Tôi nhìn ra các cửa hàng khác[p_]
[aurel]
[aur_do_1]Anh thấy đây là một nơi tuyệt vời chứ？[p_]
Để phát triển được nhiều mẫu sp mới[r]
Chúng tôi đã có một mặt bằng khá rộng。[p_]
[_]（Tôi cảm giác nó ít gây chú ý hơn các cửa hàng khác…[p_]
[jump target="*shop_dress" ]
*shop_t11
[aurel]
[aur_ne_1]Tôi cũng hay tự may và thiết kế các loại quần áo。[lr_]
Một vài trong số đó bán được rất nhiều…。[p_]
Ví dụ bộ đầu tiên anh mua cho cô bé này、[r]
Nó là một trong những thiết kế ban đầu của tôi。[p_]
[jump target="*shop_dress" ]
*shop_t12
[aurel]
[aur_sone_2]Ở đây, tôi cũng có cả dịch vụ sửa chữa quần áo。[p_]
Coi vậy chứ tôi cũng chưa già lắm đâu、[r]
Nếu có yêu cầu gì quý khách cũng đừng ngần ngại。[p_]
[jump target="*shop_dress" ]
*shop_t13
（Tôi cảm thấy không thoải mái lắm trong của hàng này。[p_]
[aurel]
…[p_]
[_]（có thể vì đôi mắt đỏ thẫm của cô chủ tiệm này chăng…[p_]
[jump target="*shop_dress" ]





