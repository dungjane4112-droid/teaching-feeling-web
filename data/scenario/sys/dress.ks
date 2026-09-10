;;リターン/ジャンプ
*top
;[cm]
[if exp="f.dress==0 || f.dress>=1000 && f.dress<=1029" ]
[chara_mod name="ef2" time="0" storage="s/body/dress_hide.png" ]
[else][chara_mod name="ef2" time="0" storage="00.png" ][endif]

[if exp="f.ch_win==1" ][jump target="*dress_up" ][elsif exp="f.ch_win==2" ][jump target="*dress_up2" ]
[elsif exp="f.ch_win==3" ][jump target="*dress_up3" ][elsif exp="f.ch_win==4" ][jump target="*dress_up4" ]
[elsif exp="f.ch_win==5" ][jump target="*dress_hair" ][elsif exp="f.ch_win==6" ][jump target="*dress_pin" ]
[elsif exp="f.ch_win==7" ][jump target="*dress_head" ][elsif exp="f.ch_win==8" ][jump target="*dress_leg" ]
[elsif exp="f.ch_win==9" ][jump target="*dress_glasses" ][elsif exp="f.ch_win==10" ][jump target="*dress_under" ]
[elsif exp="f.ch_win==11" ][jump target="*dress_under2" ][elsif exp="f.ch_win==12" ][jump target="*dress_arm" ]
[elsif exp="f.ch_win==13" ][jump target="*dress_other" ][elsif exp="f.ch_win==14" ][jump target="*dress_original" ][endif]

*return
[cm][endnolog][hide_ask_win][show_role][show_message_w][return_bace]

*change_dress
[if exp="f.wet>=0"][else][eval exp="f.wet=0"][endif]
[cm][hide_role][nolog][hide_message_w][set_dress]
[if exp="f.step==6" ][eval exp="f.dress_save=f.dress" ][eval exp="f.last_act='dress_up'" ][endif]
[mod_win st="o/win/dress-win_.png" ][show_dress][-]

;;服１---------------------------------------------------------------------------------------------
*dress_up
[eval exp="f.mlem='h'" ]
[cm][eval exp="f.ch_win=1" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[button target="*c_a" graphic="clothe/c_boro.png" x="730" y="118" ]

[if exp="f.lust>=5" ][button target="*c_non" graphic="clothe/non.png" x="830" y="118" ][endif]

;落ち着いた
[if exp="f.Dc_b[0]=='got'" ][button target="*dress_up" graphic="clothe/c_tite.png" x="680" y="165" ][endif]
[if exp="f.Dc_b[1]==1" ][button target="*c_b1" graphic="clothe/bc_blue2.png" x="920" y="165" ][endif]
[if exp="f.Dc_b[2]==1" ][button target="*c_b2" graphic="clothe/bc_black.png" x="970" y="165" ][endif]
[if exp="f.Dc_b[3]==1" ][button target="*c_b3" graphic="clothe/bc_purple.png" x="1020" y="165" ][endif]
[if exp="f.Dc_b[4]==1" ][button target="*c_b4" graphic="clothe/bc_red.png" x="1070" y="165" ][endif]
[if exp="f.Dc_b[5]==1" ][button target="*c_b5" graphic="clothe/bc_green.png" x="1120" y="165" ][endif]
[if exp="f.Dc_b[6]==1" ][button target="*c_b6" graphic="clothe/bc_brown.png" x="1170" y="165" ][endif]
;ひらひら
[if exp="f.Dc_c[0]=='got'" ][button target="*dress_up" graphic="clothe/c_hira.png" x="680" y="210" ][endif]
[if exp="f.Dc_c[1]==1" ][button target="*c_c1" graphic="clothe/bc_blue.png" x="920" y="210" ][endif]
[if exp="f.Dc_c[2]==1" ][button target="*c_c2" graphic="clothe/bc_black.png" x="970" y="210" ][endif]
[if exp="f.Dc_c[3]==1" ][button target="*c_c3" graphic="clothe/bc_green.png" x="1020" y="210" ][endif]
[if exp="f.Dc_c[4]==1" ][button target="*c_c4" graphic="clothe/bc_red.png" x="1070" y="210" ][endif]
[if exp="f.Dc_c[5]==1" ][button target="*c_c5" graphic="clothe/bc_purple.png" x="1120" y="210" ][endif]
[if exp="f.Dc_c[6]==1" ][button target="*c_c6" graphic="clothe/bc_brown.png" x="1170" y="210" ][endif]
[if exp="f.Dc_c[7]==1" ][button target="*c_c7" graphic="clothe/bc_pink.png" x="1220" y="210" ][endif]
;ワンピース
[if exp="f.Dc_e[0]=='got'" ][button target="*dress_up" graphic="clothe/c_onep.png" x="680" y="255" ][endif]
[if exp="f.Dc_e[1]==1" ][button target="*c_e1" graphic="clothe/bc_blue.png" x="920" y="255" ][endif]
[if exp="f.Dc_e[2]==1" ][button target="*c_e2" graphic="clothe/bc_yellow.png" x="970" y="255" ][endif]
[if exp="f.Dc_e[3]==1" ][button target="*c_e3" graphic="clothe/bc_red.png" x="1020" y="255" ][endif]
[if exp="f.Dc_e[4]==1" ][button target="*c_e4" graphic="clothe/bc_purple.png" x="1070" y="255" ][endif]
[if exp="f.Dc_e[5]==1" ][button target="*c_e5" graphic="clothe/bc_white.png" x="1120" y="255" ][endif]
[if exp="f.Dc_e[6]==1" ][button target="*c_e6" graphic="clothe/bc_black.png" x="1170" y="255" ][endif]
;ナース
[if exp="f.Dc_f[0]=='got'" ][button target="*dress_up" graphic="clothe/c_nurse.png" x="680" y="300" ][endif]
[if exp="f.Dc_f[1]==1" ][button target="*c_f1" graphic="clothe/bc_white.png" x="920" y="300" ][endif]
[if exp="f.Dc_f[2]==1" ][button target="*c_f2" graphic="clothe/bc_pink.png" x="970" y="300" ][endif]
[if exp="f.Dc_f[3]==1" ][button target="*c_f3" graphic="clothe/bc_black.png" x="1020" y="300" ][endif]
;和服
[if exp="f.Dc_g[0]=='got'" ][button target="*dress_up" graphic="clothe/c_wahuku.png" x="680" y="345" ][endif]
[if exp="f.Dc_g[1]==1" ][button target="*c_g1" graphic="clothe/bc_red2.png" x="920" y="345" ][endif]
[if exp="f.Dc_g[2]==1" ][button target="*c_g2" graphic="clothe/bc_blue.png" x="970" y="345" ][endif]
[if exp="f.Dc_g[3]==1" ][button target="*c_g3" graphic="clothe/bc_purple.png" x="1020" y="345" ][endif]
[if exp="f.Dc_g[4]==1" ][button target="*c_g4" graphic="clothe/bc_pink.png" x="1070" y="345" ][endif]
[if exp="f.Dc_g[5]==1" ][button target="*c_g5" graphic="clothe/bc_black.png" x="1120" y="345" ][endif]
[if exp="f.Dc_g[6]==1" ][button target="*c_g6" graphic="clothe/bc_white.png" x="1170" y="345" ][endif]
;セーラー
[if exp="f.Dc_h[0]=='got'" ][button target="*dress_up" graphic="clothe/c_sera.png" x="680" y="390" ][endif]
[if exp="f.Dc_h[1]==1" ][button target="*c_h1" graphic="clothe/bc_white.png" x="920" y="390" ][endif]
[if exp="f.Dc_h[2]==1" ][button target="*c_h2" graphic="clothe/bc_black.png" x="970" y="390" ][endif]
[if exp="f.Dc_h[3]==1" ][button target="*c_h3" graphic="clothe/c_long-w.png" x="1020" y="390" ][endif]
[if exp="f.Dc_h[4]==1" ][button target="*c_h4" graphic="clothe/c_long-b.png" x="1162" y="390" ][endif]
;エプロンドレス
[if exp="f.Dc_i[0]=='got'" ][button target="*dress_up" graphic="clothe/c_epdress.png" x="680" y="435" ][endif]
[if exp="f.Dc_i[1]==1" ][button target="*c_i1" graphic="clothe/bc_black.png" x="920" y="435" ][endif]
[if exp="f.Dc_i[2]==1" ][button target="*c_i2" graphic="clothe/bc_blue.png" x="970" y="435" ][endif]
[if exp="f.Dc_i[3]==1" ][button target="*c_i3" graphic="clothe/bc_purple.png" x="1020" y="435" ][endif]
[if exp="f.Dc_i[4]==1" ][button target="*c_i4" graphic="clothe/bc_green.png" x="1070" y="435" ][endif]
[if exp="f.Dc_i[5]==1" ][button target="*c_i5" graphic="clothe/bc_pink.png" x="1120" y="435" ][endif]
[if exp="f.Dc_i[6]==1" ][button target="*c_i6" graphic="clothe/bc_orange.png" x="1170" y="435" ][endif]
;ブレザー
[if exp="f.Dc_j[0]=='got'" ][button target="*dress_up" graphic="clothe/c_uni-cold.png" x="680" y="480" ][endif]
[if exp="f.Dc_j[1]==1" ][button target="*c_j1" graphic="clothe/bc_blue2.png" x="920" y="480" ][endif]
[if exp="f.Dc_j[2]==1" ][button target="*c_j2" graphic="clothe/bc_brown.png" x="970" y="480" ][endif]
[if exp="f.Dc_j[3]==1" ][button target="*c_j3" graphic="clothe/bc_purple.png" x="1020" y="480" ][endif]
[if exp="f.Dc_j[4]==1" ][button target="*c_j4" graphic="clothe/bc_green.png" x="1070" y="480" ][endif]
[if exp="f.Dc_j[5]==1" ][button target="*c_j5" graphic="clothe/bc_black.png" x="1120" y="480" ][endif]
;シャツネクタイ
[if exp="f.Dc_k[0]=='got'" ][button target="*dress_up" graphic="clothe/c_uni-warm.png" x="680" y="525" ][endif]
[if exp="f.Dc_k[1]==1" ][button target="*c_k1" graphic="clothe/bc_blue.png" x="920" y="525" ][endif]
[if exp="f.Dc_k[2]==1" ][button target="*c_k2" graphic="clothe/bc_red.png" x="970" y="525" ][endif]
[if exp="f.Dc_k[3]==1" ][button target="*c_k3" graphic="clothe/bc_purple.png" x="1020" y="525" ][endif]
[if exp="f.Dc_k[4]==1" ][button target="*c_k4" graphic="clothe/bc_green.png" x="1070" y="525" ][endif]
[if exp="f.Dc_k[5]==1" ][button target="*c_k5" graphic="clothe/bc_brown.png" x="1120" y="525" ][endif]
[if exp="f.Dc_k[6]==1" ][button target="*c_k6" graphic="clothe/bc_pink.png" x="1170" y="526" ][endif]
[cancelskip]
[if exp="f.lust>=50"][call target="*click"][else][s][endif]


*c_non
[mod_dress st="00.png" ][eval exp="f.dress=0" ][back_top_h]
*c_a
[mod_dress st="s/dress/D/a.png" ][eval exp="f.dress=1" ][back_top_]

*c_b1
[mod_dress st="s/dress/D/b1.png" ][eval exp="f.dress=11" ][back_top_]
*c_b2
[mod_dress st="s/dress/D/b2.png" ][eval exp="f.dress=12" ][back_top_]
*c_b3
[mod_dress st="s/dress/D/b3.png" ][eval exp="f.dress=13" ][back_top_]
*c_b4
[mod_dress st="s/dress/D/b4.png" ][eval exp="f.dress=14" ][back_top_]
*c_b5
[mod_dress st="s/dress/D/b5.png" ][eval exp="f.dress=15" ][back_top_]
*c_b6
[mod_dress st="s/dress/D/b6.png" ][eval exp="f.dress=16" ][back_top_]

*c_c1
[mod_dress st="s/dress/D/c1.png" ][eval exp="f.dress=21" ][back_top_]
*c_c2
[mod_dress st="s/dress/D/c2.png" ][eval exp="f.dress=22" ][back_top_]
*c_c3
[mod_dress st="s/dress/D/c3.png" ][eval exp="f.dress=23" ][back_top_]
*c_c4
[mod_dress st="s/dress/D/c4.png" ][eval exp="f.dress=24" ][back_top_]
*c_c5
[mod_dress st="s/dress/D/c5.png" ][eval exp="f.dress=25" ][back_top_]
*c_c6
[mod_dress st="s/dress/D/c6.png" ][eval exp="f.dress=26" ][back_top_]
*c_c7
[mod_dress st="s/dress/D/c7.png" ][eval exp="f.dress=27" ][back_top_]

*c_e1
[mod_dress st="s/dress/D/e1.png" ][eval exp="f.dress=41" ][back_top_]
*c_e2
[mod_dress st="s/dress/D/e2.png" ][eval exp="f.dress=42" ][back_top_]
*c_e3
[mod_dress st="s/dress/D/e3.png" ][eval exp="f.dress=43" ][back_top_]
*c_e4
[mod_dress st="s/dress/D/e4.png" ][eval exp="f.dress=44" ][back_top_]
*c_e5
[mod_dress st="s/dress/D/e5.png" ][eval exp="f.dress=45" ][back_top_]
*c_e6
[mod_dress st="s/dress/D/e6.png" ][eval exp="f.dress=46" ][back_top_]


*c_f1
[mod_dress st="s/dress/D/f1.png" ][eval exp="f.dress=51" ][back_top_]
*c_f2
[mod_dress st="s/dress/D/f2.png" ][eval exp="f.dress=52" ][back_top_]
*c_f3
[mod_dress st="s/dress/D/f3.png" ][eval exp="f.dress=53" ][back_top_]

*c_g1
[mod_dress st="s/dress/D/g1.png" ][eval exp="f.dress=61" ][back_top_]
*c_g2
[mod_dress st="s/dress/D/g2.png" ][eval exp="f.dress=62" ][back_top_]
*c_g3
[mod_dress st="s/dress/D/g3.png" ][eval exp="f.dress=63" ][back_top_]
*c_g4
[mod_dress st="s/dress/D/g4.png" ][eval exp="f.dress=64" ][back_top_]
*c_g5
[mod_dress st="s/dress/D/g5.png" ][eval exp="f.dress=65" ][back_top_]
*c_g6
[mod_dress st="s/dress/D/g6.png" ][eval exp="f.dress=66" ][back_top_]

*c_h1
[mod_dress st="s/dress/D/h1.png" ][eval exp="f.dress=71" ][back_top_]
*c_h2
[mod_dress st="s/dress/D/h2.png" ][eval exp="f.dress=72" ][back_top_]
*c_h3
[mod_dress st="s/dress/D/h3.png" ][eval exp="f.dress=73" ][back_top_]
*c_h4
[mod_dress st="s/dress/D/h4.png" ][eval exp="f.dress=74" ][back_top_]

*c_i1
[mod_dress st="s/dress/D/i1.png" ][eval exp="f.dress=81" ][back_top_]
*c_i2
[mod_dress st="s/dress/D/i2.png" ][eval exp="f.dress=82" ][back_top_]
*c_i3
[mod_dress st="s/dress/D/i3.png" ][eval exp="f.dress=83" ][back_top_]
*c_i4
[mod_dress st="s/dress/D/i4.png" ][eval exp="f.dress=84" ][back_top_]
*c_i5
[mod_dress st="s/dress/D/i5.png" ][eval exp="f.dress=85" ][back_top_]
*c_i6
[mod_dress st="s/dress/D/i6.png" ][eval exp="f.dress=86" ][back_top_]

*c_j1
[mod_dress st="s/dress/D/j1.png" ][eval exp="f.dress=91" ][back_top_]
*c_j2
[mod_dress st="s/dress/D/j2.png" ][eval exp="f.dress=92" ][back_top_]
*c_j3
[mod_dress st="s/dress/D/j3.png" ][eval exp="f.dress=93" ][back_top_]
*c_j4
[mod_dress st="s/dress/D/j4.png" ][eval exp="f.dress=94" ][back_top_]
*c_j5
[mod_dress st="s/dress/D/j5.png" ][eval exp="f.dress=95" ][back_top_]

*c_k1
[mod_dress st="s/dress/D/k1.png" ][eval exp="f.dress=101" ][back_top_]
*c_k2
[mod_dress st="s/dress/D/k2.png" ][eval exp="f.dress=102" ][back_top_]
*c_k3
[mod_dress st="s/dress/D/k3.png" ][eval exp="f.dress=103" ][back_top_]
*c_k4
[mod_dress st="s/dress/D/k4.png" ][eval exp="f.dress=104" ][back_top_]
*c_k5
[mod_dress st="s/dress/D/k5.png" ][eval exp="f.dress=105" ][back_top_]
*c_k6
[mod_dress st="s/dress/D/k6.png" ][eval exp="f.dress=106" ][back_top_]

;;服２---------------------------------------------------------------------------------------------
*dress_up2
[cm][eval exp="f.ch_win=2" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[if exp="f.lust>=5" ]
[button target="*c_non" graphic="clothe/non.png" x="740" y="118" ][endif]
;清楚な服
[if exp="f.Dc_l[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_seiso.png" x="680" y="165" ][endif]
[if exp="f.Dc_l[1]==1" ][button target="*c_l1" graphic="clothe/bc_blue2.png" x="894" y="165" ][endif]
[if exp="f.Dc_l[2]==1" ][button target="*c_l2" graphic="clothe/bc_black.png" x="944" y="165" ][endif]
[if exp="f.Dc_l[3]==1" ][button target="*c_l3" graphic="clothe/bc_brown.png" x="994" y="165" ][endif]
[if exp="f.Dc_l[4]==1" ][button target="*c_l4" graphic="clothe/bc_purple.png" x="1044" y="165" ][endif]
[if exp="f.Dc_l[5]==1" ][button target="*c_l5" graphic="clothe/bc_green.png" x="1094" y="165" ][endif]
;カジュアル
[if exp="f.Dc_m[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_hana.png" x="680" y="210" ][endif]
[if exp="f.Dc_m[1]==1" ][button target="*c_m1" graphic="clothe/bc_blue.png" x="894" y="210" ][endif]
[if exp="f.Dc_m[2]==1" ][button target="*c_m2" graphic="clothe/bc_brown.png" x="944" y="210" ][endif]
[if exp="f.Dc_m[3]==1" ][button target="*c_m3" graphic="clothe/bc_green.png" x="994" y="210" ][endif]
[if exp="f.Dc_m[4]==1" ][button target="*c_m4" graphic="clothe/bc_orange.png" x="1044" y="210" ][endif]
[if exp="f.Dc_m[5]==1" ][button target="*c_m5" graphic="clothe/bc_black.png" x="1094" y="210" ][endif]
;タイトドレス
[if exp="f.Dc_n[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_yi.png" x="680" y="255" ][endif]
[if exp="f.Dc_n[1]==1" ][button target="*c_n1" graphic="clothe/bc_black.png" x="894" y="255" ][endif]
[if exp="f.Dc_n[2]==1" ][button target="*c_n2" graphic="clothe/bc_white.png" x="944" y="255" ][endif]
[if exp="f.Dc_n[3]==1" ][button target="*c_n3" graphic="clothe/bc_red.png" x="994" y="255" ][endif]
[if exp="f.Dc_n[4]==1" ][button target="*c_n4" graphic="clothe/bc_purple.png" x="1044" y="255" ][endif]
[if exp="f.Dc_n[5]==1" ][button target="*c_n5" graphic="clothe/bc_green.png" x="1094" y="255" ][endif]
[if exp="f.Dc_n[6]==1" ][button target="*c_n6" graphic="clothe/bc_blue.png" x="1144" y="255" ][endif]
[if exp="f.Dc_n[7]==1" ][button target="*c_n7" graphic="clothe/bc_pink.png" x="1194" y="255" ][endif]
;ベルトパンク
[if exp="f.Dc_o[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_ali.png" x="680" y="300" ][endif]
[if exp="f.Dc_o[1]==1" ][button target="*c_o1" graphic="clothe/bc_black.png" x="894" y="300" ][endif]
[if exp="f.Dc_o[2]==1" ][button target="*c_o2" graphic="clothe/bc_brown.png" x="944" y="300" ][endif]
[if exp="f.Dc_o[3]==1" ][button target="*c_o3" graphic="clothe/bc_blue.png" x="994" y="300" ][endif]
[if exp="f.Dc_o[4]==1" ][button target="*c_o4" graphic="clothe/bc_purple.png" x="1044" y="300" ][endif]
[if exp="f.Dc_o[5]==1" ][button target="*c_o5" graphic="clothe/bc_red.png" x="1094" y="300" ][endif]
[if exp="f.Dc_o[6]==1" ][button target="*c_o6" graphic="clothe/bc_green.png" x="1144" y="300" ][endif]
;リボン付き
[if exp="f.Dc_p[0]=='got'" ][button target="*dress_up2" graphic="clothe/c_pea.png" x="680" y="345" ][endif]
[if exp="f.Dc_p[1]==1" ][button target="*c_p1" graphic="clothe/bc_blue.png" x="894" y="345" ][endif]
[if exp="f.Dc_p[2]==1" ][button target="*c_p2" graphic="clothe/bc_green.png" x="944" y="345" ][endif]
[if exp="f.Dc_p[3]==1" ][button target="*c_p3" graphic="clothe/bc_purple.png" x="994" y="345" ][endif]
[if exp="f.Dc_p[4]==1" ][button target="*c_p4" graphic="clothe/bc_red.png" x="1044" y="345" ][endif]
[if exp="f.Dc_p[5]==1" ][button target="*c_p5" graphic="clothe/bc_black.png" x="1094" y="345" ][endif]
[if exp="f.Dc_p[6]==1" ][button target="*c_p6" graphic="clothe/bc_pink.png" x="1144" y="345" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*c_l1
[mod_dress st="s/dress/D/l1.png" ][eval exp="f.dress=111" ][back_top_]
*c_l2
[mod_dress st="s/dress/D/l2.png" ][eval exp="f.dress=112" ][back_top_]
*c_l3
[mod_dress st="s/dress/D/l3.png" ][eval exp="f.dress=113" ][back_top_]
*c_l4
[mod_dress st="s/dress/D/l4.png" ][eval exp="f.dress=114" ][back_top_]
*c_l5
[mod_dress st="s/dress/D/l5.png" ][eval exp="f.dress=115" ][back_top_]

*c_m1
[mod_dress st="s/dress/D/m1.png" ][eval exp="f.dress=121" ][back_top_]
*c_m2
[mod_dress st="s/dress/D/m2.png" ][eval exp="f.dress=122" ][back_top_]
*c_m3
[mod_dress st="s/dress/D/m3.png" ][eval exp="f.dress=123" ][back_top_]
*c_m4
[mod_dress st="s/dress/D/m4.png" ][eval exp="f.dress=124" ][back_top_]
*c_m5
[mod_dress st="s/dress/D/m5.png" ][eval exp="f.dress=125" ][back_top_]

*c_n1
[mod_dress st="s/dress/D/n1.png" ][eval exp="f.dress=131" ][back_top_]
*c_n2
[mod_dress st="s/dress/D/n2.png" ][eval exp="f.dress=132" ][back_top_]
*c_n3
[mod_dress st="s/dress/D/n3.png" ][eval exp="f.dress=133" ][back_top_]
*c_n4
[mod_dress st="s/dress/D/n4.png" ][eval exp="f.dress=134" ][back_top_]
*c_n5
[mod_dress st="s/dress/D/n5.png" ][eval exp="f.dress=135" ][back_top_]
*c_n6
[mod_dress st="s/dress/D/n6.png" ][eval exp="f.dress=136" ][back_top_]
*c_n7
[mod_dress st="s/dress/D/n7.png" ][eval exp="f.dress=137" ][back_top_]

*c_o1
[mod_dress st="s/dress/D/o1.png" ][eval exp="f.dress=141" ][back_top_]
*c_o2
[mod_dress st="s/dress/D/o2.png" ][eval exp="f.dress=142" ][back_top_]
*c_o3
[mod_dress st="s/dress/D/o3.png" ][eval exp="f.dress=143" ][back_top_]
*c_o4
[mod_dress st="s/dress/D/o4.png" ][eval exp="f.dress=144" ][back_top_]
*c_o5
[mod_dress st="s/dress/D/o5.png" ][eval exp="f.dress=145" ][back_top_]
*c_o6
[mod_dress st="s/dress/D/o6.png" ][eval exp="f.dress=146" ][back_top_]

*c_p1
[mod_dress st="s/dress/D/p1.png" ][eval exp="f.dress=151" ][back_top_]
*c_p2
[mod_dress st="s/dress/D/p2.png" ][eval exp="f.dress=152" ][back_top_]
*c_p3
[mod_dress st="s/dress/D/p3.png" ][eval exp="f.dress=153" ][back_top_]
*c_p4
[mod_dress st="s/dress/D/p4.png" ][eval exp="f.dress=154" ][back_top_]
*c_p5
[mod_dress st="s/dress/D/p5.png" ][eval exp="f.dress=155" ][back_top_]
*c_p6
[mod_dress st="s/dress/D/p6.png" ][eval exp="f.dress=156" ][back_top_]

*c_q1
[mod_dress st="s/dress/D/q1.png" ][eval exp="f.dress=161" ][back_top_]
*c_q2
[mod_dress st="s/dress/D/q2.png" ][eval exp="f.dress=162" ][back_top_]
*c_q3
[mod_dress st="s/dress/D/q3.png" ][eval exp="f.dress=163" ][back_top_]
*c_q4
[mod_dress st="s/dress/D/q4.png" ][eval exp="f.dress=164" ][back_top_]
*c_q5
[mod_dress st="s/dress/D/q5.png" ][eval exp="f.dress=165" ][back_top_]
*c_q6
[mod_dress st="s/dress/D/q6.png" ][eval exp="f.dress=166" ][back_top_]

;;服３---------------------------------------------------------------------------------------------
*dress_up3
[cm][eval exp="f.ch_win=3" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
;彼シャツ
[if exp="f.self>=1" ][button target="*c_man" graphic="clothe/c_mans.png" x="710" y="118" ][endif]
[if exp="f.self>=1" ][button target="*c_man_" graphic="clothe/c_mans-.png" x="845" y="118" ][endif]

[if exp="f.lust>=5" ][button target="*c_non" graphic="clothe/non.png" x="950" y="118" ][endif]

;薄い部屋着
[if exp="f.Dc_xa[0]=='got'" ][button target="*dress_up3" graphic="clothe/c_doll.png" x="680" y="165" ][endif]
[if exp="f.Dc_xa[1]==1" ][button target="*c_xa1" graphic="clothe/bc_white.png" x="904" y="165" ][endif]
[if exp="f.Dc_xa[2]==1" ][button target="*c_xa2" graphic="clothe/bc_blue.png" x="954" y="165" ][endif]
[if exp="f.Dc_xa[3]==1" ][button target="*c_xa3" graphic="clothe/bc_pink.png" x="1004" y="165" ][endif]
[if exp="f.Dc_xa[4]==1" ][button target="*c_xa4" graphic="clothe/bc_yellow.png" x="1054" y="165" ][endif]
[if exp="f.Dc_xa[5]==1" ][button target="*c_xa5" graphic="clothe/bc_green.png" x="1104" y="165" ][endif]
[if exp="f.Dc_xa[6]==1" ][button target="*c_xa6" graphic="clothe/bc_purple.png" x="1154" y="165" ][endif]
[if exp="f.Dc_xa[7]==1" ][button target="*c_xa7" graphic="clothe/bc_black.png" x="1204" y="165" ][endif]

[if exp="f.Dc_xb[0]=='got'" ][button target="*dress_up3" graphic="clothe/c_doll2.png" x="680" y="210" ][endif]
[if exp="f.Dc_xb[1]==1" ][button target="*c_xb1" graphic="clothe/bc_white.png" x="904" y="210" ][endif]
[if exp="f.Dc_xb[2]==1" ][button target="*c_xb2" graphic="clothe/bc_blue.png" x="954" y="210" ][endif]
[if exp="f.Dc_xb[3]==1" ][button target="*c_xb3" graphic="clothe/bc_pink.png" x="1004" y="210" ][endif]
[if exp="f.Dc_xb[4]==1" ][button target="*c_xb4" graphic="clothe/bc_yellow.png" x="1054" y="210" ][endif]
[if exp="f.Dc_xb[5]==1" ][button target="*c_xb5" graphic="clothe/bc_green.png" x="1104" y="210" ][endif]
[if exp="f.Dc_xb[6]==1" ][button target="*c_xb6" graphic="clothe/bc_purple.png" x="1154" y="210" ][endif]
[if exp="f.Dc_xb[7]==1" ][button target="*c_xb7" graphic="clothe/bc_black.png" x="1204" y="210" ][endif]

;透けワンピース
[if exp="f.Dc_xc[0]=='got'" ][button target="*dress_up3" graphic="clothe/c_onep-x.png" x="680" y="255" ][endif]
[if exp="f.Dc_xc[1]==1" ][button target="*c_xc1" graphic="clothe/bc_blue.png" x="904" y="255" ][endif]
[if exp="f.Dc_xc[2]==1" ][button target="*c_xc2" graphic="clothe/bc_yellow.png" x="954" y="255" ][endif]
[if exp="f.Dc_xc[3]==1" ][button target="*c_xc3" graphic="clothe/bc_red.png" x="1004" y="255" ][endif]
[if exp="f.Dc_xc[4]==1" ][button target="*c_xc4" graphic="clothe/bc_purple.png" x="1054" y="255" ][endif]
[if exp="f.Dc_xc[5]==1" ][button target="*c_xc5" graphic="clothe/bc_white.png" x="1104" y="255" ][endif]
[if exp="f.Dc_xc[6]==1" ][button target="*c_xc6" graphic="clothe/bc_black.png" x="1154" y="255" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*c_man
[mod_dress st="s/dress/D/man.png" ][eval exp="f.dress=5" ][back_top_h]
*c_man_
[mod_dress st="s/dress/D/man-.png" ][eval exp="f.dress=6" ][back_top_h]

*c_xa1
[mod_dress st="s/dress/D/xa1.png" ][eval exp="f.dress=1001" ][back_top_h]
*c_xa2
[mod_dress st="s/dress/D/xa2.png" ][eval exp="f.dress=1002" ][back_top_h]
*c_xa3
[mod_dress st="s/dress/D/xa3.png" ][eval exp="f.dress=1003" ][back_top_h]
*c_xa4
[mod_dress st="s/dress/D/xa4.png" ][eval exp="f.dress=1004" ][back_top_h]
*c_xa5
[mod_dress st="s/dress/D/xa5.png" ][eval exp="f.dress=1005" ][back_top_h]
*c_xa6
[mod_dress st="s/dress/D/xa6.png" ][eval exp="f.dress=1006" ][back_top_h]
*c_xa7
[mod_dress st="s/dress/D/xa7.png" ][eval exp="f.dress=1007" ][back_top_h]

*c_xb1
[mod_dress st="s/dress/D/xb1.png" ][eval exp="f.dress=1011" ][back_top_h]
*c_xb2
[mod_dress st="s/dress/D/xb2.png" ][eval exp="f.dress=1012" ][back_top_h]
*c_xb3
[mod_dress st="s/dress/D/xb3.png" ][eval exp="f.dress=1013" ][back_top_h]
*c_xb4
[mod_dress st="s/dress/D/xb4.png" ][eval exp="f.dress=1014" ][back_top_h]
*c_xb5
[mod_dress st="s/dress/D/xb5.png" ][eval exp="f.dress=1015" ][back_top_h]
*c_xb6
[mod_dress st="s/dress/D/xb6.png" ][eval exp="f.dress=1016" ][back_top_h]
*c_xb7
[mod_dress st="s/dress/D/xb7.png" ][eval exp="f.dress=1017" ][back_top_h]

*c_xc1
[mod_dress st="s/dress/D/xc1.png" ][eval exp="f.dress=1021" ][back_top_h]
*c_xc2
[mod_dress st="s/dress/D/xc2.png" ][eval exp="f.dress=1022" ][back_top_h]
*c_xc3
[mod_dress st="s/dress/D/xc3.png" ][eval exp="f.dress=1023" ][back_top_h]
*c_xc4
[mod_dress st="s/dress/D/xc4.png" ][eval exp="f.dress=1024" ][back_top_h]
*c_xc5
[mod_dress st="s/dress/D/xc5.png" ][eval exp="f.dress=1025" ][back_top_h]
*c_xc6
[mod_dress st="s/dress/D/xc6.png" ][eval exp="f.dress=1026" ][back_top_h]

;;服4---------------------------------------------------------------------------------------------
*dress_up4
[cm][eval exp="f.ch_win=4" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[if exp="f.Dc_n[0]=='got'" ][button target="*c_nx" graphic="clothe/c_yi-half.png" x="708" y="118" ][endif]
[if exp="f.lust>=5" ][button target="*c_non" graphic="clothe/non.png" x="940" y="118" ][endif]

[if exp="f.Dc_k[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_uni-warm-half.png" x="680" y="165" ][endif]
[if exp="f.Dc_k[1]==1" ][button target="*c_kx1" graphic="clothe/bc_blue.png" x="856" y="165" ][endif]
[if exp="f.Dc_k[2]==1" ][button target="*c_kx2" graphic="clothe/bc_red.png" x="906" y="165" ][endif]
[if exp="f.Dc_k[3]==1" ][button target="*c_kx3" graphic="clothe/bc_purple.png" x="956" y="165" ][endif]
[if exp="f.Dc_k[4]==1" ][button target="*c_kx4" graphic="clothe/bc_green.png" x="1006" y="165" ][endif]
[if exp="f.Dc_k[5]==1" ][button target="*c_kx5" graphic="clothe/bc_brown.png" x="1056" y="165" ][endif]
[if exp="f.Dc_k[6]==1" ][button target="*c_kx6" graphic="clothe/bc_pink.png" x="1106" y="165" ][endif]

[if exp="f.Dc_h[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_sera-half.png" x="680" y="210" ][endif]
[if exp="f.Dc_h[1]==1" ][button target="*c_hx1" graphic="clothe/bc_white.png" x="856" y="210" ][endif]
[if exp="f.Dc_h[2]==1" ][button target="*c_hx2" graphic="clothe/bc_black.png" x="906" y="210" ][endif]
[if exp="f.Dc_h[3]==1" ][button target="*c_hx3" graphic="clothe/c_long-w.png" x="956" y="210" ][endif]
[if exp="f.Dc_h[4]==1" ][button target="*c_hx4" graphic="clothe/c_long-b.png" x="1100" y="210" ][endif]

;;------------------------------------------------------------------------------------------------------
[if exp="f.Dc_h[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_sera-part.png" x="680" y="255" ][endif]
[if exp="f.Dc_h[1]==1 || f.Dc_h[3]==1" ][button target="*c_xd1" graphic="clothe/bc_white.png" x="856" y="255" ][endif]
[if exp="f.Dc_h[2]==1 || f.Dc_h[4]==1" ][button target="*c_xd2" graphic="clothe/bc_black.png" x="906" y="255" ][endif]
[if exp="f.Dc_h[1]==1" ][button target="*c_xd3" graphic="clothe/bc_white.png" x="956" y="255" ][endif]
[if exp="f.Dc_h[2]==1" ][button target="*c_xd4" graphic="clothe/bc_black.png" x="1006" y="255" ][endif]
[if exp="f.Dc_h[3]==1" ][button target="*c_xd5" graphic="clothe/c_long-w.png" x="1056" y="255" ][endif]
[if exp="f.Dc_h[4]==1" ][button target="*c_xd6" graphic="clothe/c_long-b.png" x="1200" y="255" ][endif]
;;-----------------------------------------------------------------------------------------------------------

[if exp="f.Dc_j[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_uni-cold-half.png" x="680" y="300" ][endif]
[if exp="f.Dc_j[1]==1" ][button target="*c_jx1" graphic="clothe/bc_blue2.png" x="856" y="300" ][endif]
[if exp="f.Dc_j[2]==1" ][button target="*c_jx2" graphic="clothe/bc_brown.png" x="906" y="300" ][endif]
[if exp="f.Dc_j[3]==1" ][button target="*c_jx3" graphic="clothe/bc_purple.png" x="956" y="300" ][endif]
[if exp="f.Dc_j[4]==1" ][button target="*c_jx4" graphic="clothe/bc_green.png" x="1006" y="300" ][endif]

[if exp="f.Dc_k[0]=='got' || f.Dc_h[2]==1" ][button target="*dress_up4" graphic="clothe/c_skirt.png" x="680" y="345" ][endif]
[if exp="f.Dc_k[1]==1" ][button target="*c_ssx1" graphic="clothe/bc_blue.png" x="856" y="345" ][endif]
[if exp="f.Dc_k[2]==1" ][button target="*c_ssx2" graphic="clothe/bc_red.png" x="906" y="345" ][endif]
[if exp="f.Dc_k[3]==1" ][button target="*c_ssx3" graphic="clothe/bc_purple.png" x="956" y="345" ][endif]
[if exp="f.Dc_k[4]==1" ][button target="*c_ssx4" graphic="clothe/bc_green.png" x="1006" y="345" ][endif]
[if exp="f.Dc_k[5]==1" ][button target="*c_ssx5" graphic="clothe/bc_brown.png" x="1056" y="345" ][endif]
[if exp="f.Dc_h[2]==1" ][button target="*c_ssx6" graphic="clothe/bc_black.png" x="1106" y="345" ][endif]
[if exp="f.Dc_k[6]==1" ][button target="*c_ssx7" graphic="clothe/bc_pink.png" x="1156" y="345" ][endif]

[if exp="f.Dc_j[0]=='got' || f.Dc_h[3]==1" ][button target="*dress_up4" graphic="clothe/c_skirt-long.png" x="680" y="390" ][endif]
[if exp="f.Dc_j[1]==1" ][button target="*c_slx1" graphic="clothe/bc_blue2.png" x="856" y="390" ][endif]
[if exp="f.Dc_j[2]==1" ][button target="*c_slx2" graphic="clothe/bc_brown.png" x="906" y="390" ][endif]
[if exp="f.Dc_j[3]==1" ][button target="*c_slx3" graphic="clothe/bc_purple.png" x="956" y="390" ][endif]
[if exp="f.Dc_j[4]==1" ][button target="*c_slx4" graphic="clothe/bc_green.png" x="1006" y="390" ][endif]
[if exp="f.Dc_h[3]==1" ][button target="*c_slx5" graphic="clothe/bc_blue.png" x="1056" y="390" ][endif]
[if exp="f.Dc_j[5]==1" ][button target="*c_slx6" graphic="clothe/bc_black.png" x="1106" y="390" ][endif]

[if exp="f.Dc_m[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_hana-half.png" x="680" y="435" ][endif]
[if exp="f.Dc_m[1]==1" ][button target="*c_mx1" graphic="clothe/bc_blue.png" x="856" y="435" ][endif]
[if exp="f.Dc_m[2]==1" ][button target="*c_mx2" graphic="clothe/bc_brown.png" x="906" y="435" ][endif]
[if exp="f.Dc_m[3]==1" ][button target="*c_mx3" graphic="clothe/bc_green.png" x="956" y="435" ][endif]
[if exp="f.Dc_m[4]==1" ][button target="*c_mx4" graphic="clothe/bc_orange.png" x="1006" y="435" ][endif]
[if exp="f.Dc_m[5]==1" ][button target="*c_mx5" graphic="clothe/bc_black.png" x="1056" y="435" ][endif]

[if exp="f.Dc_o[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_ali-half.png" x="680" y="480" ][endif]
[if exp="f.Dc_o[1]==1" ][button target="*c_ox1" graphic="clothe/bc_black.png" x="856" y="480" ][endif]
[if exp="f.Dc_o[2]==1" ][button target="*c_ox2" graphic="clothe/bc_brown.png" x="906" y="480" ][endif]
[if exp="f.Dc_o[3]==1" ][button target="*c_ox3" graphic="clothe/bc_blue.png" x="956" y="480" ][endif]
[if exp="f.Dc_o[4]==1" ][button target="*c_ox4" graphic="clothe/bc_purple.png" x="1006" y="480" ][endif]
[if exp="f.Dc_o[5]==1" ][button target="*c_ox5" graphic="clothe/bc_red.png" x="1056" y="480" ][endif]
[if exp="f.Dc_o[6]==1" ][button target="*c_ox6" graphic="clothe/bc_green.png" x="1106" y="480" ][endif]

[if exp="f.Dc_p[0]=='got'" ][button target="*dress_up4" graphic="clothe/c_pea-half.png" x="680" y="525" ][endif]
[if exp="f.Dc_p[1]==1" ][button target="*c_px1" graphic="clothe/bc_blue.png" x="856" y="525" ][endif]
[if exp="f.Dc_p[2]==1" ][button target="*c_px2" graphic="clothe/bc_green.png" x="906" y="525" ][endif]
[if exp="f.Dc_p[3]==1" ][button target="*c_px3" graphic="clothe/bc_purple.png" x="956" y="525" ][endif]
[if exp="f.Dc_p[4]==1" ][button target="*c_px4" graphic="clothe/bc_red.png" x="1006" y="525" ][endif]
[if exp="f.Dc_p[5]==1" ][button target="*c_px5" graphic="clothe/bc_black.png" x="1056" y="525" ][endif]
[if exp="f.Dc_p[6]==1" ][button target="*c_px6" graphic="clothe/bc_pink.png" x="1106" y="525" ][endif]

[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*c_nx
[mod_dress st="s/dress/D/nx.png" ][eval exp="f.dress=2002" ][back_top_h]

*c_kx1
[mod_dress st="s/dress/D/kx1.png" ][eval exp="f.dress=1031" ][back_top_h]
*c_kx2
[mod_dress st="s/dress/D/kx2.png" ][eval exp="f.dress=1032" ][back_top_h]
*c_kx3
[mod_dress st="s/dress/D/kx3.png" ][eval exp="f.dress=1033" ][back_top_h]
*c_kx4
[mod_dress st="s/dress/D/kx4.png" ][eval exp="f.dress=1034" ][back_top_h]
*c_kx5
[mod_dress st="s/dress/D/kx5.png" ][eval exp="f.dress=1035" ][back_top_h]
*c_kx6
[mod_dress st="s/dress/D/kx6.png" ][eval exp="f.dress=1036" ][back_top_h]

*c_hx1
[mod_dress st="s/dress/D/hx1.png" ][eval exp="f.dress=1041" ][back_top_h]
*c_hx2
[mod_dress st="s/dress/D/hx2.png" ][eval exp="f.dress=1042" ][back_top_h]
*c_hx3
[mod_dress st="s/dress/D/hx3.png" ][eval exp="f.dress=1043" ][back_top_h]
*c_hx4
[mod_dress st="s/dress/D/hx4.png" ][eval exp="f.dress=1044" ][back_top_h]

*c_xd1
[mod_dress st="s/dress/D/xd1.png" ][eval exp="f.dress=1111" ][back_top_h]
*c_xd2
[mod_dress st="s/dress/D/xd2.png" ][eval exp="f.dress=1112" ][back_top_h]
*c_xd3
[mod_dress st="s/dress/D/xd3.png" ][eval exp="f.dress=1113" ][back_top_h]
*c_xd4
[mod_dress st="s/dress/D/xd4.png" ][eval exp="f.dress=1114" ][back_top_h]
*c_xd5
[mod_dress st="s/dress/D/xd5.png" ][eval exp="f.dress=1115" ][back_top_h]
*c_xd6
[mod_dress st="s/dress/D/xd6.png" ][eval exp="f.dress=1116" ][back_top_h]

*c_jx1
[mod_dress st="s/dress/D/jx1.png" ][eval exp="f.dress=1051" ][back_top_h]
*c_jx2
[mod_dress st="s/dress/D/jx2.png" ][eval exp="f.dress=1052" ][back_top_h]
*c_jx3
[mod_dress st="s/dress/D/jx3.png" ][eval exp="f.dress=1053" ][back_top_h]
*c_jx4
[mod_dress st="s/dress/D/jx4.png" ][eval exp="f.dress=1054" ][back_top_h]

*c_ssx1
[mod_dress st="s/dress/D/ssx1.png" ][eval exp="f.dress=1061" ][back_top_h]
*c_ssx2
[mod_dress st="s/dress/D/ssx2.png" ][eval exp="f.dress=1062" ][back_top_h]
*c_ssx3
[mod_dress st="s/dress/D/ssx3.png" ][eval exp="f.dress=1063" ][back_top_h]
*c_ssx4
[mod_dress st="s/dress/D/ssx4.png" ][eval exp="f.dress=1064" ][back_top_h]
*c_ssx5
[mod_dress st="s/dress/D/ssx5.png" ][eval exp="f.dress=1065" ][back_top_h]
*c_ssx6
[mod_dress st="s/dress/D/ssx6.png" ][eval exp="f.dress=1066" ][back_top_h]
*c_ssx7
[mod_dress st="s/dress/D/ssx7.png" ][eval exp="f.dress=1067" ][back_top_h]

*c_slx1
[mod_dress st="s/dress/D/slx1.png" ][eval exp="f.dress=1071" ][back_top_h]
*c_slx2
[mod_dress st="s/dress/D/slx2.png" ][eval exp="f.dress=1072" ][back_top_h]
*c_slx3
[mod_dress st="s/dress/D/slx3.png" ][eval exp="f.dress=1073" ][back_top_h]
*c_slx4
[mod_dress st="s/dress/D/slx4.png" ][eval exp="f.dress=1074" ][back_top_h]
*c_slx5
[mod_dress st="s/dress/D/slx5.png" ][eval exp="f.dress=1075" ][back_top_h]
*c_slx6
[mod_dress st="s/dress/D/slx6.png" ][eval exp="f.dress=1076" ][back_top_h]

*c_mx1
[mod_dress st="s/dress/D/mx1.png" ][eval exp="f.dress=1081" ][back_top_h]
*c_mx2
[mod_dress st="s/dress/D/mx2.png" ][eval exp="f.dress=1082" ][back_top_h]
*c_mx3
[mod_dress st="s/dress/D/mx3.png" ][eval exp="f.dress=1083" ][back_top_h]
*c_mx4
[mod_dress st="s/dress/D/mx4.png" ][eval exp="f.dress=1084" ][back_top_h]
*c_mx5
[mod_dress st="s/dress/D/mx5.png" ][eval exp="f.dress=1085" ][back_top_h]

*c_ox1
[mod_dress st="s/dress/D/ox1.png" ][eval exp="f.dress=1091" ][back_top_h]
*c_ox2
[mod_dress st="s/dress/D/ox2.png" ][eval exp="f.dress=1092" ][back_top_h]
*c_ox3
[mod_dress st="s/dress/D/ox3.png" ][eval exp="f.dress=1093" ][back_top_h]
*c_ox4
[mod_dress st="s/dress/D/ox4.png" ][eval exp="f.dress=1094" ][back_top_h]
*c_ox5
[mod_dress st="s/dress/D/ox5.png" ][eval exp="f.dress=1095" ][back_top_h]
*c_ox6
[mod_dress st="s/dress/D/ox6.png" ][eval exp="f.dress=1096" ][back_top_h]

*c_px1
[mod_dress st="s/dress/D/px1.png" ][eval exp="f.dress=1101" ][back_top_h]
*c_px2
[mod_dress st="s/dress/D/px2.png" ][eval exp="f.dress=1102" ][back_top_h]
*c_px3
[mod_dress st="s/dress/D/px3.png" ][eval exp="f.dress=1103" ][back_top_h]
*c_px4
[mod_dress st="s/dress/D/px4.png" ][eval exp="f.dress=1104" ][back_top_h]
*c_px5
[mod_dress st="s/dress/D/px5.png" ][eval exp="f.dress=1105" ][back_top_h]
*c_px6
[mod_dress st="s/dress/D/px6.png" ][eval exp="f.dress=1106" ][back_top_h]

;;髪型１---------------------------------------------------------------------------------------------
*dress_hair
[cm][eval exp="f.ch_win=5" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[button target="*r_non" graphic="clothe/non.png" x="730" y="118" ]

[button target="*r_a" graphic="clothe/hs_pony.png" x="719" y="165" ]
[if exp="f.love>=300" ]
[button target="*r_b" graphic="clothe/hs_l-pony.png" x="719" y="210" ][endif]
[if exp="f.love>=600" ]
[button target="*r_c" graphic="clothe/hs_twin.png" x="914" y="165" ][endif]
[if exp="f.love>=900" ]
[button target="*r_d" graphic="clothe/hs_l-twin.png" x="914" y="210" ][endif]
[if exp="f.love>=1200" ]
[button target="*r_e" graphic="clothe/hs_side.png" x="1117" y="165" ][endif]
;細いリボン
[if exp="f.Dr_a[0]=='got'" ][button target="*dress_hair" graphic="clothe/hb_ribbon_a.png" x="680" y="390" ][endif]
[if exp="f.Dr_a[1]==1" ][button target="*r_11" graphic="clothe/bc_blue.png" x="830" y="390" ][endif]
[if exp="f.Dr_a[2]==1" ][button target="*r_12" graphic="clothe/bc_red.png" x="880" y="390" ][endif]
[if exp="f.Dr_a[3]==1" ][button target="*r_13" graphic="clothe/bc_yellow.png" x="930" y="390" ][endif]
[if exp="f.Dr_a[4]==1" ][button target="*r_14" graphic="clothe/bc_green.png" x="980" y="390" ][endif]
[if exp="f.Dr_a[5]==1" ][button target="*r_15" graphic="clothe/bc_purple.png" x="1030" y="390" ][endif]
[if exp="f.Dr_a[6]==1" ][button target="*r_16" graphic="clothe/bc_orange.png" x="1080" y="390" ][endif]
[if exp="f.Dr_a[7]==1" ][button target="*r_17" graphic="clothe/bc_white.png" x="1130" y="390" ][endif]
[if exp="f.Dr_a[8]==1" ][button target="*r_18" graphic="clothe/bc_black.png" x="1180" y="390" ][endif]
[if exp="f.Dr_a[9]==1" ][button target="*r_19" graphic="clothe/bc_pink.png" x="1230" y="390" ][endif]
;太いリボン
[if exp ="f.Dr_b[0]=='got'" ][button target="*dress_hair" graphic="clothe/hb_ribbon_b.png" x="680" y="255" ][endif]
[if exp ="f.Dr_b[1]==1" ][button target="*r_21" graphic="clothe/bc_blue.png" x="830" y="255" ][endif]
[if exp ="f.Dr_b[2]==1" ][button target="*r_22" graphic="clothe/bc_red.png" x="880" y="255" ][endif]
[if exp ="f.Dr_b[3]==1" ][button target="*r_23" graphic="clothe/bc_yellow.png" x="930" y="255" ][endif]
[if exp ="f.Dr_b[4]==1" ][button target="*r_24" graphic="clothe/bc_green.png" x="980" y="255" ][endif]
[if exp ="f.Dr_b[5]==1" ][button target="*r_25" graphic="clothe/bc_purple.png" x="1030" y="255" ][endif]
[if exp ="f.Dr_b[6]==1" ][button target="*r_26" graphic="clothe/bc_orange.png" x="1080" y="255" ][endif]
[if exp ="f.Dr_b[7]==1" ][button target="*r_27" graphic="clothe/bc_white.png" x="1130" y="255" ][endif]
[if exp ="f.Dr_b[8]==1" ][button target="*r_28" graphic="clothe/bc_black.png" x="1180" y="255" ][endif]
[if exp ="f.Dr_b[9]==1" ][button target="*r_29" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]
;シュシュ
[if exp="f.Dr_c[0]=='got'" ][button target="*dress_hair" graphic="clothe/hb_ss.png" x="680" y="300" ][endif]
[if exp="f.Dr_c[1]==1" ][button target="*r_31" graphic="clothe/bc_blue.png" x="830" y="300" ][endif]
[if exp="f.Dr_c[2]==1" ][button target="*r_32" graphic="clothe/bc_red.png" x="880" y="300" ][endif]
[if exp="f.Dr_c[3]==1" ][button target="*r_33" graphic="clothe/bc_yellow.png" x="930" y="300" ][endif]
[if exp="f.Dr_c[4]==1" ][button target="*r_34" graphic="clothe/bc_green.png" x="980" y="300" ][endif]
[if exp="f.Dr_c[5]==1" ][button target="*r_35" graphic="clothe/bc_purple.png" x="1030" y="300" ][endif]
[if exp="f.Dr_c[6]==1" ][button target="*r_36" graphic="clothe/bc_orange.png" x="1080" y="300" ][endif]
[if exp="f.Dr_c[7]==1" ][button target="*r_37" graphic="clothe/bc_white.png" x="1130" y="300" ][endif]
[if exp="f.Dr_c[8]==1" ][button target="*r_38" graphic="clothe/bc_black.png" x="1180" y="300" ][endif]
[if exp="f.Dr_c[9]==1" ][button target="*r_39" graphic="clothe/bc_pink.png" x="1230" y="300" ][endif]
;ビーズ
[if exp ="f.Dr_d[0]=='got'" ][button target="*dress_hair" graphic="clothe/hb_bz.png" x="680" y="345" ][endif]
[if exp ="f.Dr_d[1]==1" ][button target="*r_41" graphic="clothe/bc_blue.png" x="830" y="345" ][endif]
[if exp ="f.Dr_d[2]==1" ][button target="*r_42" graphic="clothe/bc_red.png" x="880" y="345" ][endif]
[if exp ="f.Dr_d[3]==1" ][button target="*r_43" graphic="clothe/bc_yellow.png" x="930" y="345" ][endif]
[if exp ="f.Dr_d[4]==1" ][button target="*r_44" graphic="clothe/bc_green.png" x="980" y="345" ][endif]
[if exp ="f.Dr_d[5]==1" ][button target="*r_45" graphic="clothe/bc_purple.png" x="1030" y="345" ][endif]
[if exp ="f.Dr_d[6]==1" ][button target="*r_46" graphic="clothe/bc_orange.png" x="1080" y="345" ][endif]
[if exp ="f.Dr_d[7]==1" ][button target="*r_47" graphic="clothe/bc_white.png" x="1130" y="345" ][endif]
[if exp ="f.Dr_d[8]==1" ][button target="*r_48" graphic="clothe/bc_black.png" x="1180" y="345" ][endif]
[if exp ="f.Dr_d[9]==1" ][button target="*r_49" graphic="clothe/bc_pink.png" x="1230" y="345" ][endif]
;かんざし
[if exp="f.Dr_e[1]==1" ][button target="*r_c1" graphic="clothe/hb_kanzashi-g.png" x="680" y="480" ][endif]
[if exp="f.Dr_e[2]==1" ][button target="*r_c2" graphic="clothe/hb_kanzashi-s.png" x="900" y="480" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*r_non
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_band=0" ][eval exp="f.hair_style=0" ][dress_hair_set][back_top]

*r_a
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_style=1" ][dress_hair_set][back_top]
*r_b
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_style=2" ][dress_hair_set][back_top]
*r_c
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[eval exp="f.hair_style=3" ][dress_hair_set][eval exp="f.hat=0" ][chara_mod name="hair_b" time="0" storage="00.png" ][back_top]
*r_d
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_style=4" ][dress_hair_set][back_top]
*r_e
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[eval exp="f.hair_style=5" ][dress_hair_set][eval exp="f.hat=0" ][chara_mod name="hair_b" time="0" storage="00.png" ][back_top]


*r_11
[eval exp="f.hair_band=11" ][hair_select][dress_hair_set][back_top]
*r_12
[eval exp="f.hair_band=12" ][hair_select][dress_hair_set][back_top]
*r_13
[eval exp="f.hair_band=13" ][hair_select][dress_hair_set][back_top]
*r_14
[eval exp="f.hair_band=14" ][hair_select][dress_hair_set][back_top]
*r_15
[eval exp="f.hair_band=15" ][hair_select][dress_hair_set][back_top]
*r_16
[eval exp="f.hair_band=16" ][hair_select][dress_hair_set][back_top]
*r_17
[eval exp="f.hair_band=17" ][hair_select][dress_hair_set][back_top]
*r_18
[eval exp="f.hair_band=18" ][hair_select][dress_hair_set][back_top]
*r_19
[eval exp="f.hair_band=19" ][hair_select][dress_hair_set][back_top]
*r_21
[eval exp="f.hair_band=21" ][hair_select][dress_hair_set][back_top]
*r_22
[eval exp="f.hair_band=22" ][hair_select][dress_hair_set][back_top]
*r_23
[eval exp="f.hair_band=23" ][hair_select][dress_hair_set][back_top]
*r_24
[eval exp="f.hair_band=24" ][hair_select][dress_hair_set][back_top]
*r_25
[eval exp="f.hair_band=25" ][hair_select][dress_hair_set][back_top]
*r_26
[eval exp="f.hair_band=26" ][hair_select][dress_hair_set][back_top]
*r_27
[eval exp="f.hair_band=27" ][hair_select][dress_hair_set][back_top]
*r_28
[eval exp="f.hair_band=28" ][hair_select][dress_hair_set][back_top]
*r_29
[eval exp="f.hair_band=29" ][hair_select][dress_hair_set][back_top]

*r_31
[eval exp="f.hair_band=31" ][hair_select][dress_hair_set][back_top]
*r_32
[eval exp="f.hair_band=32" ][hair_select][dress_hair_set][back_top]
*r_33
[eval exp="f.hair_band=33" ][hair_select][dress_hair_set][back_top]
*r_34
[eval exp="f.hair_band=34" ][hair_select][dress_hair_set][back_top]
*r_35
[eval exp="f.hair_band=35" ][hair_select][dress_hair_set][back_top]
*r_36
[eval exp="f.hair_band=36" ][hair_select][dress_hair_set][back_top]
*r_37
[eval exp="f.hair_band=37" ][hair_select][dress_hair_set][back_top]
*r_38
[eval exp="f.hair_band=38" ][hair_select][dress_hair_set][back_top]
*r_39
[eval exp="f.hair_band=39" ][hair_select][dress_hair_set][back_top]
*r_41
[eval exp="f.hair_band=41" ][hair_select][dress_hair_set][back_top]
*r_42
[eval exp="f.hair_band=42" ][hair_select][dress_hair_set][back_top]
*r_43
[eval exp="f.hair_band=43" ][hair_select][dress_hair_set][back_top]
*r_44
[eval exp="f.hair_band=44" ][hair_select][dress_hair_set][back_top]
*r_45
[eval exp="f.hair_band=45" ][hair_select][dress_hair_set][back_top]
*r_46
[eval exp="f.hair_band=46" ][hair_select][dress_hair_set][back_top]
*r_47
[eval exp="f.hair_band=47" ][hair_select][dress_hair_set][back_top]
*r_48
[eval exp="f.hair_band=48" ][hair_select][dress_hair_set][back_top]
*r_49
[eval exp="f.hair_band=49" ][hair_select][dress_hair_set][back_top]


*r_c1
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_band=51" ][eval exp="f.hair_style=6" ][dress_hair_set][back_top]
*r_c2
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_band=52" ][eval exp="f.hair_style=6" ][dress_hair_set][back_top]

;;前髪---------------------------------------------------------------------------------------------
*dress_pin
[cm][eval exp="f.ch_win=6" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[button target="*p_non" graphic="clothe/non.png" x="740" y="118" ]

[button target="*p_1" graphic="clothe/fh_1.png" x="700" y="165" ]
[if exp="f.love>=300" ][button target="*p_2" graphic="clothe/fh_2.png" x="870" y="165" ][endif]
[if exp="f.love>=600" ][button target="*p_3" graphic="clothe/fh_3.png" x="1055" y="165" ][endif]

[if exp ="f.Dp_a[0]=='got'" ][button target="*dress_pin" graphic="clothe/hp_tin.png" x="660" y="210" ][endif]
[if exp="f.Dp_a[1]==1" ][button target="*p_a1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dp_a[2]==1" ][button target="*p_a2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dp_a[3]==1" ][button target="*p_a3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dp_a[4]==1" ][button target="*p_a4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dp_a[5]==1" ][button target="*p_a5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dp_a[6]==1" ][button target="*p_a6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dp_a[7]==1" ][button target="*p_a7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dp_a[8]==1" ][button target="*p_a8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dp_a[9]==1" ][button target="*p_a9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]

[if exp ="f.Dp_b[0]=='got'" ][button target="*dress_pin" graphic="clothe/hp_egg.png" x="660" y="255" ][endif]
[if exp="f.Dp_b[1]==1" ][button target="*p_b1" graphic="clothe/bc_blue.png" x="830" y="255" ][endif]
[if exp="f.Dp_b[2]==1" ][button target="*p_b2" graphic="clothe/bc_red.png" x="880" y="255" ][endif]
[if exp="f.Dp_b[3]==1" ][button target="*p_b3" graphic="clothe/bc_yellow.png" x="930" y="255" ][endif]
[if exp="f.Dp_b[4]==1" ][button target="*p_b4" graphic="clothe/bc_green.png" x="980" y="255" ][endif]
[if exp="f.Dp_b[5]==1" ][button target="*p_b5" graphic="clothe/bc_purple.png" x="1030" y="255" ][endif]
[if exp="f.Dp_b[6]==1" ][button target="*p_b6" graphic="clothe/bc_orange.png" x="1080" y="255" ][endif]
[if exp="f.Dp_b[7]==1" ][button target="*p_b7" graphic="clothe/bc_white.png" x="1130" y="255" ][endif]
[if exp="f.Dp_b[8]==1" ][button target="*p_b8" graphic="clothe/bc_black.png" x="1180" y="255" ][endif]
[if exp="f.Dp_b[9]==1" ][button target="*p_b9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]

[if exp ="f.Dp_c[0]=='got'" ][button target="*dress_pin" graphic="clothe/hp_flower.png" x="660" y="300" ][endif]
[if exp="f.Dp_c[1]==1" ][button target="*p_c1" graphic="clothe/bc_blue.png" x="830" y="300" ][endif]
[if exp="f.Dp_c[2]==1" ][button target="*p_c2" graphic="clothe/bc_red.png" x="880" y="300" ][endif]
[if exp="f.Dp_c[3]==1" ][button target="*p_c3" graphic="clothe/bc_yellow.png" x="930" y="300" ][endif]
[if exp="f.Dp_c[4]==1" ][button target="*p_c4" graphic="clothe/bc_green.png" x="980" y="300" ][endif]
[if exp="f.Dp_c[5]==1" ][button target="*p_c5" graphic="clothe/bc_purple.png" x="1030" y="300" ][endif]
[if exp="f.Dp_c[6]==1" ][button target="*p_c6" graphic="clothe/bc_orange.png" x="1080" y="300" ][endif]
[if exp="f.Dp_c[7]==1" ][button target="*p_c7" graphic="clothe/bc_white.png" x="1130" y="300" ][endif]
[if exp="f.Dp_c[8]==1" ][button target="*p_c8" graphic="clothe/bc_black.png" x="1180" y="300" ][endif]
[if exp="f.Dp_c[9]==1" ][button target="*p_c9" graphic="clothe/bc_pink.png" x="1230" y="300" ][endif]

[if exp="f.Dp_d[1]==1" ][button target="*p_d1" graphic="clothe/hp_hurt.png" x="830" y="345" ][endif]
[if exp="f.Dp_d[2]==1" ][button target="*p_d2" graphic="clothe/hp_star.png" x="880" y="345" ][endif]
[if exp="f.Dp_d[3]==1" ][button target="*p_d3" graphic="clothe/hp_clover.png" x="930" y="345" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*p_non
[eval exp="f.pin=0" ]
[if exp="f.front_hair==0"][eval exp="f.front_hair=3" ]
[elsif exp="f.front_hair==3"][eval exp="f.front_hair=4" ]
[elsif exp="f.front_hair==4"][eval exp="f.front_hair=6" ]
[elsif exp="f.front_hair==6"][eval exp="f.front_hair=0" ][else]
[eval exp="f.front_hair=0" ][endif]
[dress_pin_set][back_top]

*p_1
;[if exp="f.front_hair==0" ][endif]
[eval exp="f.front_hair=1" ][dress_pin_set][back_top]
*p_2
;[if exp="f.hair_style==0" ][endif]
[eval exp="f.front_hair=2" ][dress_pin_set][back_top]
*p_3
;[if exp="f.hair_style==0" ][endif]
[eval exp="f.front_hair=3" ][dress_pin_set][back_top]

*p_a1
[eval exp="f.pin=1" ][f_hair_select][dress_pin_set][back_top]
*p_a2
[eval exp="f.pin=2" ][f_hair_select][dress_pin_set][back_top]
*p_a3
[eval exp="f.pin=3" ][f_hair_select][dress_pin_set][back_top]
*p_a4
[eval exp="f.pin=4" ][f_hair_select][dress_pin_set][back_top]
*p_a5
[eval exp="f.pin=5" ][f_hair_select][dress_pin_set][back_top]
*p_a6
[eval exp="f.pin=6" ][f_hair_select][dress_pin_set][back_top]
*p_a7
[eval exp="f.pin=7" ][f_hair_select][dress_pin_set][back_top]
*p_a8
[eval exp="f.pin=8" ][f_hair_select][dress_pin_set][back_top]
*p_a9
[eval exp="f.pin=9" ][f_hair_select][dress_pin_set][back_top]

*p_b1
[eval exp="f.pin=11" ][f_hair_select][dress_pin_set][back_top]
*p_b2
[eval exp="f.pin=12" ][f_hair_select][dress_pin_set][back_top]
*p_b3
[eval exp="f.pin=13" ][f_hair_select][dress_pin_set][back_top]
*p_b4
[eval exp="f.pin=14" ][f_hair_select][dress_pin_set][back_top]
*p_b5
[eval exp="f.pin=15" ][f_hair_select][dress_pin_set][back_top]
*p_b6
[eval exp="f.pin=16" ][f_hair_select][dress_pin_set][back_top]
*p_b7
[eval exp="f.pin=17" ][f_hair_select][dress_pin_set][back_top]
*p_b8
[eval exp="f.pin=18" ][f_hair_select][dress_pin_set][back_top]
*p_b9
[eval exp="f.pin=19" ][f_hair_select][dress_pin_set][back_top]

*p_c1
[eval exp="f.pin=21" ][f_hair_select][dress_pin_set][back_top]
*p_c2
[eval exp="f.pin=22" ][f_hair_select][dress_pin_set][back_top]
*p_c3
[eval exp="f.pin=23" ][f_hair_select][dress_pin_set][back_top]
*p_c4
[eval exp="f.pin=24" ][f_hair_select][dress_pin_set][back_top]
*p_c5
[eval exp="f.pin=25" ][f_hair_select][dress_pin_set][back_top]
*p_c6
[eval exp="f.pin=26" ][f_hair_select][dress_pin_set][back_top]
*p_c7
[eval exp="f.pin=27" ][f_hair_select][dress_pin_set][back_top]
*p_c8
[eval exp="f.pin=28" ][f_hair_select][dress_pin_set][back_top]
*p_c9
[eval exp="f.pin=29" ][f_hair_select][dress_pin_set][back_top]

*p_d1
[eval exp="f.pin=31" ][f_hair_select][dress_pin_set][back_top]
*p_d2
[eval exp="f.pin=32" ][f_hair_select][dress_pin_set][back_top]
*p_d3
[eval exp="f.pin=33" ][f_hair_select][dress_pin_set][back_top]


;;頭１---------------------------------------------------------------------------------------------
*dress_head
[cm][eval exp="f.ch_win=7" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[button target="*h_non" graphic="clothe/non.png" x="740" y="118" ]
;耳、角、麦わら、メイドヘッド
[if exp="f.Dh_a[1]==1" ][button target="*h_a1" graphic="clothe/h_ear.png" x="680" y="165" ][endif]
[if exp="f.Dh_a[2]==1" ][button target="*h_a2" graphic="clothe/h_horn.png" x="836" y="165" ][endif]
[if exp="f.Dh_b[1]==1" ][button target="*h_b1" graphic="clothe/h_mugi.png" x="995" y="165" ][endif]
[if exp="f.Dh_b[2]==1" ][button target="*h_b2" graphic="clothe/h_head-d.png" x="1120" y="165" ][endif]
;ナース帽
[if exp="f.Dc_f[0]=='got'" ][button target="*dress_head" graphic="clothe/h_nurse-h.png" x="680" y="210" ][endif]
[if exp="f.Dc_f[1]==1" ][button target="*h_c1" graphic="clothe/bc_white.png" x="835" y="210" ][endif]
[if exp="f.Dc_f[2]==1" ][button target="*h_c2" graphic="clothe/bc_pink.png" x="890" y="210" ][endif]
[if exp="f.Dc_f[3]==1" ][button target="*h_c3" graphic="clothe/bc_black.png" x="945" y="210" ][endif]
;カチューシャ
[if exp="f.Dh_d[0]=='got'" ][button target="*dress_head" graphic="clothe/h_band.png" x="680" y="255" ][endif]
[if exp="f.Dh_d[1]==1" ][button target="*h_d1" graphic="clothe/bc_blue.png" x="830" y="255" ][endif]
[if exp="f.Dh_d[2]==1" ][button target="*h_d2" graphic="clothe/bc_red.png" x="880" y="255" ][endif]
[if exp="f.Dh_d[3]==1" ][button target="*h_d3" graphic="clothe/bc_yellow.png" x="930" y="255" ][endif]
[if exp="f.Dh_d[4]==1" ][button target="*h_d4" graphic="clothe/bc_green.png" x="980" y="255" ][endif]
[if exp="f.Dh_d[5]==1" ][button target="*h_d5" graphic="clothe/bc_purple.png" x="1030" y="255" ][endif]
[if exp="f.Dh_d[6]==1" ][button target="*h_d6" graphic="clothe/bc_orange.png" x="1080" y="255" ][endif]
[if exp="f.Dh_d[7]==1" ][button target="*h_d7" graphic="clothe/bc_white.png" x="1130" y="255" ][endif]
[if exp="f.Dh_d[8]==1" ][button target="*h_d8" graphic="clothe/bc_black.png" x="1180" y="255" ][endif]
[if exp="f.Dh_d[9]==1" ][button target="*h_d9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]
;キャスケット
[if exp="f.Dh_e[0]=='got'" ][button target="*dress_head" graphic="clothe/h_cask.png" x="680" y="300" ][endif]
[if exp="f.Dh_e[1]==1" ][button target="*h_e1" graphic="clothe/bc_white.png" x="835" y="300" ][endif]
[if exp="f.Dh_e[2]==1" ][button target="*h_e2" graphic="clothe/bc_brown.png" x="890" y="300" ][endif]
[if exp="f.Dh_e[3]==1" ][button target="*h_e3" graphic="clothe/bc_black.png" x="945" y="300" ][endif]
[if exp="f.Dh_e[4]==1" ][button target="*h_e4" graphic="clothe/bc_green.png" x="1000" y="300" ][endif]
[if exp="f.Dh_e[5]==1" ][button target="*h_e5" graphic="clothe/bc_red.png" x="1055" y="300" ][endif]
;シルクハット
[if exp="f.Dh_f[0]=='got'" ][button target="*dress_head" graphic="clothe/h_s-hat.png" x="680" y="345" ][endif]
[if exp="f.Dh_f[1]==1" ][button target="*h_f1" graphic="clothe/bc_black.png" x="835" y="345" ][endif]
[if exp="f.Dh_f[2]==1" ][button target="*h_f2" graphic="clothe/bc_white.png" x="890" y="345" ][endif]
[if exp="f.Dh_f[3]==1" ][button target="*h_f3" graphic="clothe/bc_brown.png" x="945" y="345" ][endif]
[if exp="f.Dh_f[4]==1" ][button target="*h_f4" graphic="clothe/bc_blue.png" x="1000" y="345" ][endif]
[if exp="f.Dh_f[5]==1" ][button target="*h_f5" graphic="clothe/bc_red.png" x="1055" y="345" ][endif]
[if exp="f.Dh_f[6]==1" ][button target="*h_f6" graphic="clothe/bc_purple.png" x="1110" y="345" ][endif]
[if exp="f.Dh_f[7]==1" ][button target="*h_f7" graphic="clothe/bc_green.png" x="1165" y="345" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*h_non
[if exp="f.hair>=300" ][else]
[mod_hat st="00.png" ][eval exp="f.hat=0" ][endif][back_top]

*h_a1
[head_check][mod_hat st="s/hat/D/a1.gif" ][eval exp="f.hat=1" ][back_top]
*h_a2
[head_check][mod_hat st="s/hat/D/a2.png" ][eval exp="f.hat=2" ][back_top]
*h_b1
[head_check][mod_hat st="s/hat/D/b1.png" ][eval exp="f.hat=11" ][back_top]
*h_b2
[head_check][mod_hat st="s/hat/D/b2.png" ][eval exp="f.hat=12" ][back_top]

*h_c1
[head_check][mod_hat st="s/hat/D/c1.png" ][eval exp="f.hat=21" ][back_top]
*h_c2
[head_check][mod_hat st="s/hat/D/c2.png" ][eval exp="f.hat=22" ][back_top]
*h_c3
[head_check][mod_hat st="s/hat/D/c3.png" ][eval exp="f.hat=23" ][back_top]4

*h_d1
[head_check][mod_hat st="s/hat/D/d1.png" ][eval exp="f.hat=31" ][back_top]
*h_d2
[head_check][mod_hat st="s/hat/D/d2.png" ][eval exp="f.hat=32" ][back_top]
*h_d3
[head_check][mod_hat st="s/hat/D/d3.png" ][eval exp="f.hat=33" ][back_top]
*h_d4
[head_check][mod_hat st="s/hat/D/d4.png" ][eval exp="f.hat=34" ][back_top]
*h_d5
[head_check][mod_hat st="s/hat/D/d5.png" ][eval exp="f.hat=35" ][back_top]
*h_d6
[head_check][mod_hat st="s/hat/D/d6.png" ][eval exp="f.hat=36" ][back_top]
*h_d7
[head_check][mod_hat st="s/hat/D/d7.png" ][eval exp="f.hat=37" ][back_top]
*h_d8
[head_check][mod_hat st="s/hat/D/d8.png" ][eval exp="f.hat=38" ][back_top]
*h_d9
[head_check][mod_hat st="s/hat/D/d9.png" ][eval exp="f.hat=39" ][back_top]

*h_e1
[head_check][mod_hat st="s/hat/D/e1.png" ][eval exp="f.hat=41" ][back_top]
*h_e2
[head_check][mod_hat st="s/hat/D/e2.png" ][eval exp="f.hat=42" ][back_top]
*h_e3
[head_check][mod_hat st="s/hat/D/e3.png" ][eval exp="f.hat=43" ][back_top]
*h_e4
[head_check][mod_hat st="s/hat/D/e4.png" ][eval exp="f.hat=44" ][back_top]
*h_e5
[head_check][mod_hat st="s/hat/D/e5.png" ][eval exp="f.hat=45" ][back_top]

*h_f1
[head_check][mod_hat st="s/hat/D/f1.png" ][eval exp="f.hat=51" ][back_top]
*h_f2
[head_check][mod_hat st="s/hat/D/f2.png" ][eval exp="f.hat=52" ][back_top]
*h_f3
[head_check][mod_hat st="s/hat/D/f3.png" ][eval exp="f.hat=53" ][back_top]
*h_f4
[head_check][mod_hat st="s/hat/D/f4.png" ][eval exp="f.hat=54" ][back_top]
*h_f5
[head_check][mod_hat st="s/hat/D/f5.png" ][eval exp="f.hat=55" ][back_top]
*h_f6
[head_check][mod_hat st="s/hat/D/f6.png" ][eval exp="f.hat=56" ][back_top]
*h_f7
[head_check][mod_hat st="s/hat/D/f7.png" ][eval exp="f.hat=57" ][back_top]

;;足１---------------------------------------------------------------------------------------------
*dress_leg
[cm][eval exp="f.ch_win=8" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[button target="*s_non" graphic="clothe/non.png" x="740" y="118" ]
[if exp="f.Dc_b[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_short.png" x="680" y="165" ][endif]
[if exp="f.Dc_b[0]=='got'" ][button target="*s_a1" graphic="clothe/bc_white.png" x="830" y="165" ][endif]
[if exp="f.Ds_a[2]==1" ][button target="*s_a2" graphic="clothe/bc_black.png" x="880" y="165" ][endif]
[if exp="f.Ds_a[3]==1" ][button target="*s_a3" graphic="clothe/bc_blue.png" x="930" y="165" ][endif]
[if exp="f.Ds_a[4]==1" ][button target="*s_a4" graphic="clothe/bc_red.png" x="980" y="165" ][endif]
[if exp="f.Ds_a[5]==1" ][button target="*s_a5" graphic="clothe/bc_yellow.png" x="1030" y="165" ][endif]
[if exp="f.Ds_a[6]==1" ][button target="*s_a6" graphic="clothe/bc_green.png" x="1080" y="165" ][endif]
[if exp="f.Ds_a[7]==1" ][button target="*s_a7" graphic="clothe/bc_purple.png" x="1130" y="165" ][endif]
[if exp="f.Ds_a[8]==1" ][button target="*s_a8" graphic="clothe/bc_orange.png" x="1180" y="165" ][endif]
[if exp="f.Ds_a[9]==1" ][button target="*s_a9" graphic="clothe/bc_pink.png" x="1230" y="165" ][endif]

[if exp="f.Ds_c[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_stripe-w.png" x="680" y="210" ][endif]
[if exp="f.Ds_c[1]==1" ][button target="*s_c1" graphic="clothe/bc_gray.png" x="830" y="210" ][endif]
[if exp="f.Ds_c[2]==1" ][button target="*s_c2" graphic="clothe/bc_black.png" x="880" y="210" ][endif]
[if exp="f.Ds_c[3]==1" ][button target="*s_c3" graphic="clothe/bc_blue.png" x="930" y="210" ][endif]
[if exp="f.Ds_c[4]==1" ][button target="*s_c4" graphic="clothe/bc_red.png" x="980" y="210" ][endif]
[if exp="f.Ds_c[5]==1" ][button target="*s_c5" graphic="clothe/bc_yellow.png" x="1030" y="210" ][endif]
[if exp="f.Ds_c[6]==1" ][button target="*s_c6" graphic="clothe/bc_green.png" x="1080" y="210" ][endif]
[if exp="f.Ds_c[7]==1" ][button target="*s_c7" graphic="clothe/bc_purple.png" x="1130" y="210" ][endif]
[if exp="f.Ds_c[8]==1" ][button target="*s_c8" graphic="clothe/bc_orange.png" x="1180" y="210" ][endif]
[if exp="f.Ds_c[9]==1" ][button target="*s_c9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]

[if exp="f.Ds_e[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_stripe-b.png" x="680" y="255" ][endif]
[if exp="f.Ds_e[1]==1" ][button target="*s_e1" graphic="clothe/bc_white.png" x="830" y="255" ][endif]
[if exp="f.Ds_e[2]==1" ][button target="*s_e2" graphic="clothe/bc_gray.png" x="880" y="255" ][endif]
[if exp="f.Ds_e[3]==1" ][button target="*s_e3" graphic="clothe/bc_blue.png" x="930" y="255" ][endif]
[if exp="f.Ds_e[4]==1" ][button target="*s_e4" graphic="clothe/bc_red.png" x="980" y="255" ][endif]
[if exp="f.Ds_e[5]==1" ][button target="*s_e5" graphic="clothe/bc_yellow.png" x="1030" y="255" ][endif]
[if exp="f.Ds_e[6]==1" ][button target="*s_e6" graphic="clothe/bc_green.png" x="1080" y="255" ][endif]
[if exp="f.Ds_e[7]==1" ][button target="*s_e7" graphic="clothe/bc_purple.png" x="1130" y="255" ][endif]
[if exp="f.Ds_e[8]==1" ][button target="*s_e8" graphic="clothe/bc_orange.png" x="1180" y="255" ][endif]
[if exp="f.Ds_e[9]==1" ][button target="*s_e9" graphic="clothe/bc_pink.png" x="1230" y="255" ][endif]

[if exp="f.Ds_b[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_long.png" x="680" y="300" ][endif]
[if exp="f.Ds_b[1]==1" ][button target="*s_b1" graphic="clothe/bc_white.png" x="830" y="300" ][endif]
[if exp="f.Ds_b[2]==1" ][button target="*s_b2" graphic="clothe/bc_black.png" x="880" y="300" ][endif]
[if exp="f.Ds_b[3]==1" ][button target="*s_b3" graphic="clothe/bc_blue.png" x="930" y="300" ][endif]
[if exp="f.Ds_b[4]==1" ][button target="*s_b4" graphic="clothe/bc_red.png" x="980" y="300" ][endif]
[if exp="f.Ds_b[5]==1" ][button target="*s_b5" graphic="clothe/bc_yellow.png" x="1030" y="300" ][endif]
[if exp="f.Ds_b[6]==1" ][button target="*s_b6" graphic="clothe/bc_green.png" x="1080" y="300" ][endif]
[if exp="f.Ds_b[7]==1" ][button target="*s_b7" graphic="clothe/bc_purple.png" x="1130" y="300" ][endif]
[if exp="f.Ds_b[8]==1" ][button target="*s_b8" graphic="clothe/bc_orange.png" x="1180" y="300" ][endif]
[if exp="f.Ds_b[9]==1" ][button target="*s_b9" graphic="clothe/bc_pink.png" x="1230" y="300" ][endif]

[if exp="f.Ds_d[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_stripe-w.png" x="680" y="345" ][endif]
[if exp="f.Ds_d[1]==1" ][button target="*s_d1" graphic="clothe/bc_gray.png" x="830" y="345" ][endif]
[if exp="f.Ds_d[2]==1" ][button target="*s_d2" graphic="clothe/bc_black.png" x="880" y="345" ][endif]
[if exp="f.Ds_d[3]==1" ][button target="*s_d3" graphic="clothe/bc_blue.png" x="930" y="345" ][endif]
[if exp="f.Ds_d[4]==1" ][button target="*s_d4" graphic="clothe/bc_red.png" x="980" y="345" ][endif]
[if exp="f.Ds_d[5]==1" ][button target="*s_d5" graphic="clothe/bc_yellow.png" x="1030" y="345" ][endif]
[if exp="f.Ds_d[6]==1" ][button target="*s_d6" graphic="clothe/bc_green.png" x="1080" y="345" ][endif]
[if exp="f.Ds_d[7]==1" ][button target="*s_d7" graphic="clothe/bc_purple.png" x="1130" y="345" ][endif]
[if exp="f.Ds_d[8]==1" ][button target="*s_d8" graphic="clothe/bc_orange.png" x="1180" y="345" ][endif]
[if exp="f.Ds_d[9]==1" ][button target="*s_d9" graphic="clothe/bc_pink.png" x="1230" y="345" ][endif]

[if exp="f.Ds_f[0]=='got'" ][button target="*dress_leg" graphic="clothe/s_stripe-b.png" x="680" y="390" ][endif]
[if exp="f.Ds_f[1]==1" ][button target="*s_f1" graphic="clothe/bc_white.png" x="830" y="390" ][endif]
[if exp="f.Ds_f[2]==1" ][button target="*s_f2" graphic="clothe/bc_gray.png" x="880" y="390" ][endif]
[if exp="f.Ds_f[3]==1" ][button target="*s_f3" graphic="clothe/bc_blue.png" x="930" y="390" ][endif]
[if exp="f.Ds_f[4]==1" ][button target="*s_f4" graphic="clothe/bc_red.png" x="980" y="390" ][endif]
[if exp="f.Ds_f[5]==1" ][button target="*s_f5" graphic="clothe/bc_yellow.png" x="1030" y="390" ][endif]
[if exp="f.Ds_f[6]==1" ][button target="*s_f6" graphic="clothe/bc_green.png" x="1080" y="390" ][endif]
[if exp="f.Ds_f[7]==1" ][button target="*s_f7" graphic="clothe/bc_purple.png" x="1130" y="390" ][endif]
[if exp="f.Ds_f[8]==1" ][button target="*s_f8" graphic="clothe/bc_orange.png" x="1180" y="390" ][endif]
[if exp="f.Ds_f[9]==1" ][button target="*s_f9" graphic="clothe/bc_pink.png" x="1230" y="390" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*s_non
[mod_socks st="00.png" ][eval exp="f.socks=0" ][back_top]

*s_a1
[mod_socks st="s/socks/D/a1.png" ][eval exp="f.socks=1" ][back_top]
*s_a2
[mod_socks st="s/socks/D/a2.png" ][eval exp="f.socks=2" ][back_top]
*s_a3
[mod_socks st="s/socks/D/a3.png" ][eval exp="f.socks=3" ][back_top]
*s_a4
[mod_socks st="s/socks/D/a4.png" ][eval exp="f.socks=4" ][back_top]
*s_a5
[mod_socks st="s/socks/D/a5.png" ][eval exp="f.socks=5" ][back_top]
*s_a6
[mod_socks st="s/socks/D/a6.png" ][eval exp="f.socks=6" ][back_top]
*s_a7
[mod_socks st="s/socks/D/a7.png" ][eval exp="f.socks=7" ][back_top]
*s_a8
[mod_socks st="s/socks/D/a8.png" ][eval exp="f.socks=8" ][back_top]
*s_a9
[mod_socks st="s/socks/D/a9.png" ][eval exp="f.socks=9" ][back_top]

*s_b1
[mod_socks st="s/socks/D/b1.png" ][eval exp="f.socks=11" ][back_top]
*s_b2
[mod_socks st="s/socks/D/b2.png" ][eval exp="f.socks=12" ][back_top]
*s_b3
[mod_socks st="s/socks/D/b3.png" ][eval exp="f.socks=13" ][back_top]
*s_b4
[mod_socks st="s/socks/D/b4.png" ][eval exp="f.socks=14" ][back_top]
*s_b5
[mod_socks st="s/socks/D/b5.png" ][eval exp="f.socks=15" ][back_top]
*s_b6
[mod_socks st="s/socks/D/b6.png" ][eval exp="f.socks=16" ][back_top]
*s_b7
[mod_socks st="s/socks/D/b7.png" ][eval exp="f.socks=17" ][back_top]
*s_b8
[mod_socks st="s/socks/D/b8.png" ][eval exp="f.socks=18" ][back_top]
*s_b9
[mod_socks st="s/socks/D/b9.png" ][eval exp="f.socks=19" ][back_top]

*s_c1
[mod_socks st="s/socks/D/c1.png" ][eval exp="f.socks=21" ][back_top]
*s_c2
[mod_socks st="s/socks/D/c2.png" ][eval exp="f.socks=22" ][back_top]
*s_c3
[mod_socks st="s/socks/D/c3.png" ][eval exp="f.socks=23" ][back_top]
*s_c4
[mod_socks st="s/socks/D/c4.png" ][eval exp="f.socks=24" ][back_top]
*s_c5
[mod_socks st="s/socks/D/c5.png" ][eval exp="f.socks=25" ][back_top]
*s_c6
[mod_socks st="s/socks/D/c6.png" ][eval exp="f.socks=26" ][back_top]
*s_c7
[mod_socks st="s/socks/D/c7.png" ][eval exp="f.socks=27" ][back_top]
*s_c8
[mod_socks st="s/socks/D/c8.png" ][eval exp="f.socks=28" ][back_top]
*s_c9
[mod_socks st="s/socks/D/c9.png" ][eval exp="f.socks=29" ][back_top]


*s_d1
[mod_socks st="s/socks/D/d1.png" ][eval exp="f.socks=31" ][back_top]
*s_d2
[mod_socks st="s/socks/D/d2.png" ][eval exp="f.socks=32" ][back_top]
*s_d3
[mod_socks st="s/socks/D/d3.png" ][eval exp="f.socks=33" ][back_top]
*s_d4
[mod_socks st="s/socks/D/d4.png" ][eval exp="f.socks=34" ][back_top]
*s_d5
[mod_socks st="s/socks/D/d5.png" ][eval exp="f.socks=35" ][back_top]
*s_d6
[mod_socks st="s/socks/D/d6.png" ][eval exp="f.socks=36" ][back_top]
*s_d7
[mod_socks st="s/socks/D/d7.png" ][eval exp="f.socks=37" ][back_top]
*s_d8
[mod_socks st="s/socks/D/d8.png" ][eval exp="f.socks=38" ][back_top]
*s_d9
[mod_socks st="s/socks/D/d9.png" ][eval exp="f.socks=39" ][back_top]

*s_e1
[mod_socks st="s/socks/D/e1.png" ][eval exp="f.socks=41" ][back_top]
*s_e2
[mod_socks st="s/socks/D/e2.png" ][eval exp="f.socks=42" ][back_top]
*s_e3
[mod_socks st="s/socks/D/e3.png" ][eval exp="f.socks=43" ][back_top]
*s_e4
[mod_socks st="s/socks/D/e4.png" ][eval exp="f.socks=44" ][back_top]
*s_e5
[mod_socks st="s/socks/D/e5.png" ][eval exp="f.socks=45" ][back_top]
*s_e6
[mod_socks st="s/socks/D/e6.png" ][eval exp="f.socks=46" ][back_top]
*s_e7
[mod_socks st="s/socks/D/e7.png" ][eval exp="f.socks=47" ][back_top]
*s_e8
[mod_socks st="s/socks/D/e8.png" ][eval exp="f.socks=48" ][back_top]
*s_e9
[mod_socks st="s/socks/D/e9.png" ][eval exp="f.socks=49" ][back_top]

*s_f1
[mod_socks st="s/socks/D/f1.png" ][eval exp="f.socks=51" ][back_top]
*s_f2
[mod_socks st="s/socks/D/f2.png" ][eval exp="f.socks=52" ][back_top]
*s_f3
[mod_socks st="s/socks/D/f3.png" ][eval exp="f.socks=53" ][back_top]
*s_f4
[mod_socks st="s/socks/D/f4.png" ][eval exp="f.socks=54" ][back_top]
*s_f5
[mod_socks st="s/socks/D/f5.png" ][eval exp="f.socks=55" ][back_top]
*s_f6
[mod_socks st="s/socks/D/f6.png" ][eval exp="f.socks=56" ][back_top]
*s_f7
[mod_socks st="s/socks/D/f7.png" ][eval exp="f.socks=57" ][back_top]
*s_f8
[mod_socks st="s/socks/D/f8.png" ][eval exp="f.socks=58" ][back_top]
*s_f9
[mod_socks st="s/socks/D/f9.png" ][eval exp="f.socks=59" ][back_top]

;;メガネ---------------------------------------------------------------------------------------------
*dress_glasses
[cm][eval exp="f.ch_win=9" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[button target="*g_non" graphic="clothe/non.png" x="740" y="118" ]
[if exp="f.Dg_a[0]=='got'" ][button target="*dress_glasses" graphic="clothe/gl-c.png" x="680" y="210" ][endif]
[if exp="f.Dg_a[1]==1" ][button target="*g_a1" graphic="clothe/bc_blue.png" x="830" y="210" ][endif]
[if exp="f.Dg_a[2]==1" ][button target="*g_a2" graphic="clothe/bc_red.png" x="880" y="210" ][endif]
[if exp="f.Dg_a[3]==1" ][button target="*g_a3" graphic="clothe/bc_yellow.png" x="930" y="210" ][endif]
[if exp="f.Dg_a[4]==1" ][button target="*g_a4" graphic="clothe/bc_green.png" x="980" y="210" ][endif]
[if exp="f.Dg_a[5]==1" ][button target="*g_a5" graphic="clothe/bc_purple.png" x="1030" y="210" ][endif]
[if exp="f.Dg_a[6]==1" ][button target="*g_a6" graphic="clothe/bc_orange.png" x="1080" y="210" ][endif]
[if exp="f.Dg_a[7]==1" ][button target="*g_a7" graphic="clothe/bc_white.png" x="1130" y="210" ][endif]
[if exp="f.Dg_a[8]==1" ][button target="*g_a8" graphic="clothe/bc_black.png" x="1180" y="210" ][endif]
[if exp="f.Dg_a[9]==1" ][button target="*g_a9" graphic="clothe/bc_pink.png" x="1230" y="210" ][endif]

[if exp="f.Dg_b[0]=='got'" ][button target="*dress_glasses" graphic="clothe/gl-s.png" x="680" y="300" ][endif]
[if exp="f.Dg_b[1]==1" ][button target="*g_b1" graphic="clothe/bc_blue.png" x="830" y="300" ][endif]
[if exp="f.Dg_b[2]==1" ][button target="*g_b2" graphic="clothe/bc_red.png" x="880" y="300" ][endif]
[if exp="f.Dg_b[3]==1" ][button target="*g_b3" graphic="clothe/bc_yellow.png" x="930" y="300" ][endif]
[if exp="f.Dg_b[4]==1" ][button target="*g_b4" graphic="clothe/bc_green.png" x="980" y="300" ][endif]
[if exp="f.Dg_b[5]==1" ][button target="*g_b5" graphic="clothe/bc_purple.png" x="1030" y="300" ][endif]
[if exp="f.Dg_b[6]==1" ][button target="*g_b6" graphic="clothe/bc_orange.png" x="1080" y="300" ][endif]
[if exp="f.Dg_b[7]==1" ][button target="*g_b7" graphic="clothe/bc_white.png" x="1130" y="300" ][endif]
[if exp="f.Dg_b[8]==1" ][button target="*g_b8" graphic="clothe/bc_black.png" x="1180" y="300" ][endif]
[if exp="f.Dg_b[9]==1" ][button target="*g_b9" graphic="clothe/bc_pink.png" x="1230" y="300" ][endif]


[if exp="f.Dg_c[0]=='got'" ][button target="*dress_glasses" graphic="clothe/gl-h.png" x="680" y="390" ][endif]
[if exp="f.Dg_c[1]==1" ][button target="*g_c1" graphic="clothe/bc_blue.png" x="830" y="390" ][endif]
[if exp="f.Dg_c[2]==1" ][button target="*g_c2" graphic="clothe/bc_red.png" x="880" y="390" ][endif]
[if exp="f.Dg_c[3]==1" ][button target="*g_c3" graphic="clothe/bc_yellow.png" x="930" y="390" ][endif]
[if exp="f.Dg_c[4]==1" ][button target="*g_c4" graphic="clothe/bc_green.png" x="980" y="390" ][endif]
[if exp="f.Dg_c[5]==1" ][button target="*g_c5" graphic="clothe/bc_purple.png" x="1030" y="390" ][endif]
[if exp="f.Dg_c[6]==1" ][button target="*g_c6" graphic="clothe/bc_orange.png" x="1080" y="390" ][endif]
[if exp="f.Dg_c[7]==1" ][button target="*g_c7" graphic="clothe/bc_white.png" x="1130" y="390" ][endif]
[if exp="f.Dg_c[8]==1" ][button target="*g_c8" graphic="clothe/bc_black.png" x="1180" y="390" ][endif]
[if exp="f.Dg_c[9]==1" ][button target="*g_c9" graphic="clothe/bc_pink.png" x="1230" y="390" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*g_non
[mod_glasses st="00.png" ][eval exp="f.glasses=0" ][back_top]

*g_a1
[mod_glasses st="s/glass/D/a1.png" ][eval exp="f.glasses=1" ][back_top]
*g_a2
[mod_glasses st="s/glass/D/a2.png" ][eval exp="f.glasses=2" ][back_top]
*g_a3
[mod_glasses st="s/glass/D/a3.png" ][eval exp="f.glasses=3" ][back_top]
*g_a4
[mod_glasses st="s/glass/D/a4.png" ][eval exp="f.glasses=4" ][back_top]
*g_a5
[mod_glasses st="s/glass/D/a5.png" ][eval exp="f.glasses=5" ][back_top]
*g_a6
[mod_glasses st="s/glass/D/a6.png" ][eval exp="f.glasses=6" ][back_top]
*g_a7
[mod_glasses st="s/glass/D/a7.png" ][eval exp="f.glasses=7" ][back_top]
*g_a8
[mod_glasses st="s/glass/D/a8.png" ][eval exp="f.glasses=8" ][back_top]
*g_a9
[mod_glasses st="s/glass/D/a9.png" ][eval exp="f.glasses=9" ][back_top]

*g_b1
[mod_glasses st="s/glass/D/b1.png" ][eval exp="f.glasses=11" ][back_top]
*g_b2
[mod_glasses st="s/glass/D/b2.png" ][eval exp="f.glasses=12" ][back_top]
*g_b3
[mod_glasses st="s/glass/D/b3.png" ][eval exp="f.glasses=13" ][back_top]
*g_b4
[mod_glasses st="s/glass/D/b4.png" ][eval exp="f.glasses=14" ][back_top]
*g_b5
[mod_glasses st="s/glass/D/b5.png" ][eval exp="f.glasses=15" ][back_top]
*g_b6
[mod_glasses st="s/glass/D/b6.png" ][eval exp="f.glasses=16" ][back_top]
*g_b7
[mod_glasses st="s/glass/D/b7.png" ][eval exp="f.glasses=17" ][back_top]
*g_b8
[mod_glasses st="s/glass/D/b8.png" ][eval exp="f.glasses=18" ][back_top]
*g_b9
[mod_glasses st="s/glass/D/b9.png" ][eval exp="f.glasses=19" ][back_top]

*g_c1
[mod_glasses st="s/glass/D/c1.png" ][eval exp="f.glasses=21" ][back_top]
*g_c2
[mod_glasses st="s/glass/D/c2.png" ][eval exp="f.glasses=22" ][back_top]
*g_c3
[mod_glasses st="s/glass/D/c3.png" ][eval exp="f.glasses=23" ][back_top]
*g_c4
[mod_glasses st="s/glass/D/c4.png" ][eval exp="f.glasses=24" ][back_top]
*g_c5
[mod_glasses st="s/glass/D/c5.png" ][eval exp="f.glasses=25" ][back_top]
*g_c6
[mod_glasses st="s/glass/D/c6.png" ][eval exp="f.glasses=26" ][back_top]
*g_c7
[mod_glasses st="s/glass/D/c7.png" ][eval exp="f.glasses=27" ][back_top]
*g_c8
[mod_glasses st="s/glass/D/c8.png" ][eval exp="f.glasses=28" ][back_top]
*g_c9
[mod_glasses st="s/glass/D/c9.png" ][eval exp="f.glasses=29" ][back_top]

;;下着１---------------------------------------------------------------------------------------------
*dress_under
[cm][eval exp="f.ch_win=10" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[if exp="f.lust>15" ]
[button target="*ub_non" graphic="clothe/non.png" x="740" y="118" ][endif]

[button target="*dress_under" graphic="clothe/u_b-s.png" x="660" y="165" ]
[button target="*ub_a1" graphic="clothe/bc_white.png" x="918" y="165" ]
[if exp="f.Du_a[2]==1" ][button target="*ub_a2" graphic="clothe/bc_blue.png" x="966" y="165" ][endif]
[if exp="f.Du_a[3]==1" ][button target="*ub_a3" graphic="clothe/bc_pink.png" x="1014" y="165" ][endif]
[if exp="f.Du_a[4]==1" ][button target="*ub_a4" graphic="clothe/bc_yellow.png" x="1062" y="165" ][endif]
[if exp="f.Du_a[5]==1" ][button target="*ub_a5" graphic="clothe/bc_green.png" x="1110" y="165" ][endif]
[if exp="f.Du_a[6]==1" ][button target="*ub_a6" graphic="clothe/bc_orange.png" x="1158" y="165" ][endif]
[if exp="f.Du_a[7]==1" ][button target="*ub_a7" graphic="clothe/bc_black.png" x="1206" y="165" ][endif]

[if exp="f.Du_c[0]=='got'" ][button target="*dress_under" graphic="clothe/u_b-marble.png" x="660" y="210" ][endif]
[if exp="f.Du_c[1]==1" ][button target="*ub_c1" graphic="clothe/bc_white.png" x="918" y="210" ][endif]
[if exp="f.Du_c[2]==1" ][button target="*ub_c2" graphic="clothe/bc_blue.png" x="966" y="210" ][endif]
[if exp="f.Du_c[3]==1" ][button target="*ub_c3" graphic="clothe/bc_pink.png" x="1014" y="210" ][endif]
[if exp="f.Du_c[4]==1" ][button target="*ub_c4" graphic="clothe/bc_yellow.png" x="1062" y="210" ][endif]
[if exp="f.Du_c[5]==1" ][button target="*ub_c5" graphic="clothe/bc_green.png" x="1110" y="210" ][endif]
[if exp="f.Du_c[6]==1" ][button target="*ub_c6" graphic="clothe/bc_orange.png" x="1158" y="210" ][endif]
[if exp="f.Du_c[7]==1" ][button target="*ub_c7" graphic="clothe/bc_black.png" x="1206" y="210" ][endif]

[if exp="f.Du_b[0]=='got'" ][button target="*dress_under" graphic="clothe/u_b-r.png" x="660" y="255" ][endif]
[if exp="f.Du_b[1]==1" ][button target="*ub_b1" graphic="clothe/bc_white.png" x="918" y="255" ][endif]
[if exp="f.Du_b[2]==1" ][button target="*ub_b2" graphic="clothe/bc_blue.png" x="966" y="255" ][endif]
[if exp="f.Du_b[3]==1" ][button target="*ub_b3" graphic="clothe/bc_pink.png" x="1014" y="255" ][endif]
[if exp="f.Du_b[4]==1" ][button target="*ub_b4" graphic="clothe/bc_yellow.png" x="1062" y="255" ][endif]
[if exp="f.Du_b[5]==1" ][button target="*ub_b5" graphic="clothe/bc_green.png" x="1110" y="255" ][endif]
[if exp="f.Du_b[6]==1" ][button target="*ub_b6" graphic="clothe/bc_orange.png" x="1158" y="255" ][endif]
[if exp="f.Du_b[7]==1" ][button target="*ub_b7" graphic="clothe/bc_black.png" x="1206" y="255" ][endif]

[if exp="f.Dc_b[0]=='got' && f.lust>15" ]
[button target="*up_non" graphic="clothe/non.png" x="740" y="345" ][endif]

[button target="*dress_under" graphic="clothe/u_p-s.png" x="660" y="390" ]
[button target="*up_a1" graphic="clothe/bc_white.png" x="918" y="390" ]
[if exp="f.Du_a[2]==1" ][button target="*up_a2" graphic="clothe/bc_blue.png" x="966" y="390" ][endif]
[if exp="f.Du_a[3]==1" ][button target="*up_a3" graphic="clothe/bc_pink.png" x="1014" y="390" ][endif]
[if exp="f.Du_a[4]==1" ][button target="*up_a4" graphic="clothe/bc_yellow.png" x="1062" y="390" ][endif]
[if exp="f.Du_a[5]==1" ][button target="*up_a5" graphic="clothe/bc_green.png" x="1110" y="390" ][endif]
[if exp="f.Du_a[6]==1" ][button target="*up_a6" graphic="clothe/bc_orange.png" x="1158" y="390" ][endif]
[if exp="f.Du_a[7]==1" ][button target="*up_a7" graphic="clothe/bc_black.png" x="1206" y="390" ][endif]

[if exp="f.Du_c[0]=='got'" ][button target="*dress_under" graphic="clothe/u_p-marble.png" x="660" y="435" ][endif]
[if exp="f.Du_c[1]==1" ][button target="*up_c1" graphic="clothe/bc_white.png" x="918" y="435" ][endif]
[if exp="f.Du_c[2]==1" ][button target="*up_c2" graphic="clothe/bc_blue.png" x="966" y="435" ][endif]
[if exp="f.Du_c[3]==1" ][button target="*up_c3" graphic="clothe/bc_pink.png" x="1014" y="435" ][endif]
[if exp="f.Du_c[4]==1" ][button target="*up_c4" graphic="clothe/bc_yellow.png" x="1062" y="435" ][endif]
[if exp="f.Du_c[5]==1" ][button target="*up_c5" graphic="clothe/bc_green.png" x="1110" y="435" ][endif]
[if exp="f.Du_c[6]==1" ][button target="*up_c6" graphic="clothe/bc_orange.png" x="1158" y="435" ][endif]
[if exp="f.Du_c[7]==1" ][button target="*up_c7" graphic="clothe/bc_black.png" x="1206" y="435" ][endif];

[if exp="f.Du_b[0]=='got'" ][button target="*dress_under" graphic="clothe/u_p-r.png" x="660" y="480" ][endif]
[if exp="f.Du_b[1]==1" ][button target="*up_b1" graphic="clothe/bc_white.png" x="918" y="480" ][endif]
[if exp="f.Du_b[2]==1" ][button target="*up_b2" graphic="clothe/bc_blue.png" x="966" y="480" ][endif]
[if exp="f.Du_b[3]==1" ][button target="*up_b3" graphic="clothe/bc_pink.png" x="1014" y="480" ][endif]
[if exp="f.Du_b[4]==1" ][button target="*up_b4" graphic="clothe/bc_yellow.png" x="1062" y="480" ][endif]
[if exp="f.Du_b[5]==1" ][button target="*up_b5" graphic="clothe/bc_green.png" x="1110" y="480" ][endif]
[if exp="f.Du_b[6]==1" ][button target="*up_b6" graphic="clothe/bc_orange.png" x="1158" y="480" ][endif]
[if exp="f.Du_b[7]==1" ][button target="*up_b7" graphic="clothe/bc_black.png" x="1206" y="480" ][endif]

;[if exp="f.Du_xb[0]=='got'" ][button target="*dress_under" graphic="clothe/u_p-little.png" x="660" y="525" ][endif]
;[if exp="f.Du_xb[1]==1" ][button target="*up_xb1" graphic="clothe/bc_white.png" x="918" y="525" ][endif]
;[if exp="f.Du_xb[2]==1" ][button target="*up_xb2" graphic="clothe/bc_blue.png" x="966" y="525" ][endif]
;[if exp="f.Du_xb[3]==1" ][button target="*up_xb3" graphic="clothe/bc_pink.png" x="1014" y="525" ][endif]
;[if exp="f.Du_xb[4]==1" ][button target="*up_xb4" graphic="clothe/bc_yellow.png" x="1062" y="525" ][endif]
;[if exp="f.Du_xb[5]==1" ][button target="*up_xb5" graphic="clothe/bc_green.png" x="1110" y="525" ][endif]
;[if exp="f.Du_xb[6]==1" ][button target="*up_xb6" graphic="clothe/bc_orange.png" x="1158" y="525" ][endif]
;[if exp="f.Du_xb[7]==1" ][button target="*up_xb7" graphic="clothe/bc_black.png" x="1206" y="525" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*ub_non
[mod_under_b st="00.png" ][eval exp="f.under_b=0" ][back_top_h]
*up_non
[mod_under_p st="00.png" ][eval exp="f.under_p=0" ][back_top_h]

*up_a1
[mod_under_p st="s/und_p/D/a1.png" ][eval exp="f.under_p=1" ][back_top]
*up_a2
[mod_under_p st="s/und_p/D/a2.png" ][eval exp="f.under_p=2" ][back_top]
*up_a3
[mod_under_p st="s/und_p/D/a3.png" ][eval exp="f.under_p=3" ][back_top]
*up_a4
[mod_under_p st="s/und_p/D/a4.png" ][eval exp="f.under_p=4" ][back_top]
*up_a5
[mod_under_p st="s/und_p/D/a5.png" ][eval exp="f.under_p=5" ][back_top]
*up_a6
[mod_under_p st="s/und_p/D/a6.png" ][eval exp="f.under_p=6" ][back_top]
*up_a7
[mod_under_p st="s/und_p/D/a7.png" ][eval exp="f.under_p=7" ][back_top]

*up_b1
[mod_under_p st="s/und_p/D/b1.png" ][eval exp="f.under_p=11" ][back_top]
*up_b2
[mod_under_p st="s/und_p/D/b2.png" ][eval exp="f.under_p=12" ][back_top]
*up_b3
[mod_under_p st="s/und_p/D/b3.png" ][eval exp="f.under_p=13" ][back_top]
*up_b4
[mod_under_p st="s/und_p/D/b4.png" ][eval exp="f.under_p=14" ][back_top]
*up_b5
[mod_under_p st="s/und_p/D/b5.png" ][eval exp="f.under_p=15" ][back_top]
*up_b6
[mod_under_p st="s/und_p/D/b6.png" ][eval exp="f.under_p=16" ][back_top]
*up_b7
[mod_under_p st="s/und_p/D/b7.png" ][eval exp="f.under_p=17" ][back_top]

*up_c1
[mod_under_p st="s/und_p/D/c1.png" ][eval exp="f.under_p=21" ][back_top]
*up_c2
[mod_under_p st="s/und_p/D/c2.png" ][eval exp="f.under_p=22" ][back_top]
*up_c3
[mod_under_p st="s/und_p/D/c3.png" ][eval exp="f.under_p=23" ][back_top]
*up_c4
[mod_under_p st="s/und_p/D/c4.png" ][eval exp="f.under_p=24" ][back_top]
*up_c5
[mod_under_p st="s/und_p/D/c5.png" ][eval exp="f.under_p=25" ][back_top]
*up_c6
[mod_under_p st="s/und_p/D/c6.png" ][eval exp="f.under_p=26" ][back_top]
*up_c7
[mod_under_p st="s/und_p/D/c7.png" ][eval exp="f.under_p=27" ][back_top]



*ub_a1
[mod_under_b st="s/und_b/D/a1.png" ][eval exp="f.under_b=1" ][back_top]
*ub_a2
[mod_under_b st="s/und_b/D/a2.png" ][eval exp="f.under_b=2" ][back_top]
*ub_a3
[mod_under_b st="s/und_b/D/a3.png" ][eval exp="f.under_b=3" ][back_top]
*ub_a4
[mod_under_b st="s/und_b/D/a4.png" ][eval exp="f.under_b=4" ][back_top]
*ub_a5
[mod_under_b st="s/und_b/D/a5.png" ][eval exp="f.under_b=5" ][back_top]
*ub_a6
[mod_under_b st="s/und_b/D/a6.png" ][eval exp="f.under_b=6" ][back_top]
*ub_a7
[mod_under_b st="s/und_b/D/a7.png" ][eval exp="f.under_b=7" ][back_top]

*ub_b1
[mod_under_b st="s/und_b/D/b1.png" ][eval exp="f.under_b=11" ][back_top]
*ub_b2
[mod_under_b st="s/und_b/D/b2.png" ][eval exp="f.under_b=12" ][back_top]
*ub_b3
[mod_under_b st="s/und_b/D/b3.png" ][eval exp="f.under_b=13" ][back_top]
*ub_b4
[mod_under_b st="s/und_b/D/b4.png" ][eval exp="f.under_b=14" ][back_top]
*ub_b5
[mod_under_b st="s/und_b/D/b5.png" ][eval exp="f.under_b=15" ][back_top]
*ub_b6
[mod_under_b st="s/und_b/D/b6.png" ][eval exp="f.under_b=16" ][back_top]
*ub_b7
[mod_under_b st="s/und_b/D/b7.png" ][eval exp="f.under_b=17" ][back_top]

*ub_c1
[mod_under_b st="s/und_b/D/c1.png" ][eval exp="f.under_b=21" ][back_top]
*ub_c2
[mod_under_b st="s/und_b/D/c2.png" ][eval exp="f.under_b=22" ][back_top]
*ub_c3
[mod_under_b st="s/und_b/D/c3.png" ][eval exp="f.under_b=23" ][back_top]
*ub_c4
[mod_under_b st="s/und_b/D/c4.png" ][eval exp="f.under_b=24" ][back_top]
*ub_c5
[mod_under_b st="s/und_b/D/c5.png" ][eval exp="f.under_b=25" ][back_top]
*ub_c6
[mod_under_b st="s/und_b/D/c6.png" ][eval exp="f.under_b=26" ][back_top]
*ub_c7
[mod_under_b st="s/und_b/D/c7.png" ][eval exp="f.under_b=27" ][back_top]

;;下着２---------------------------------------------------------------------------------------------
*dress_under2
[cm][eval exp="f.ch_win=11" ][call storage="sys/dress_ex.ks" target="*menu_button" ]

[button target="*ub_non" graphic="clothe/non.png" x="740" y="118" ]

;[if exp="f.Du_xa[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_b-little.png" x="680" y="165" ][endif]
;[if exp="f.Du_xa[1]==1" ][button target="*ub_xa1" graphic="clothe/bc_white.png" x="918" y="165" ][endif]
;[if exp="f.Du_xa[2]==1" ][button target="*ub_xa2" graphic="clothe/bc_blue.png" x="966" y="165" ][endif]
;[if exp="f.Du_xa[3]==1" ][button target="*ub_xa3" graphic="clothe/bc_pink.png" x="1014" y="165" ][endif]
;[if exp="f.Du_xa[4]==1" ][button target="*ub_xa4" graphic="clothe/bc_yellow.png" x="1062" y="165" ][endif]
;[if exp="f.Du_xa[5]==1" ][button target="*ub_xa5" graphic="clothe/bc_green.png" x="1110" y="165" ][endif]
;[if exp="f.Du_xa[6]==1" ][button target="*ub_xa6" graphic="clothe/bc_orange.png" x="1158" y="165" ][endif]
;[if exp="f.Du_xa[7]==1" ][button target="*ub_xa7" graphic="clothe/bc_black.png" x="1206" y="165" ][endif]

[if exp="f.Du_xb[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_br-little.png" x="680" y="210" ][endif]
[if exp="f.Du_xb[1]==1" ][button target="*ub_xb1" graphic="clothe/bc_white.png" x="918" y="210" ][endif]
[if exp="f.Du_xb[2]==1" ][button target="*ub_xb2" graphic="clothe/bc_blue.png" x="966" y="210" ][endif]
[if exp="f.Du_xb[3]==1" ][button target="*ub_xb3" graphic="clothe/bc_pink.png" x="1014" y="210" ][endif]
[if exp="f.Du_xb[4]==1" ][button target="*ub_xb4" graphic="clothe/bc_yellow.png" x="1062" y="210" ][endif]
[if exp="f.Du_xb[5]==1" ][button target="*ub_xb5" graphic="clothe/bc_green.png" x="1110" y="210" ][endif]
[if exp="f.Du_xb[6]==1" ][button target="*ub_xb6" graphic="clothe/bc_orange.png" x="1158" y="210" ][endif]
[if exp="f.Du_xb[7]==1" ][button target="*ub_xb7" graphic="clothe/bc_black.png" x="1206" y="210" ][endif]

[if exp="f.Du_xc[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_b-hole.png" x="680" y="255" ][endif]
[if exp="f.Du_xc[1]==1" ][button target="*ub_xc1" graphic="clothe/bc_white.png" x="918" y="255" ][endif]
[if exp="f.Du_xc[2]==1" ][button target="*ub_xc2" graphic="clothe/bc_blue.png" x="966" y="255" ][endif]
[if exp="f.Du_xc[3]==1" ][button target="*ub_xc3" graphic="clothe/bc_pink.png" x="1014" y="255" ][endif]
[if exp="f.Du_xc[4]==1" ][button target="*ub_xc4" graphic="clothe/bc_yellow.png" x="1062" y="255" ][endif]
[if exp="f.Du_xc[5]==1" ][button target="*ub_xc5" graphic="clothe/bc_green.png" x="1110" y="255" ][endif]
[if exp="f.Du_xc[6]==1" ][button target="*ub_xc6" graphic="clothe/bc_orange.png" x="1158" y="255" ][endif]
[if exp="f.Du_xc[7]==1" ][button target="*ub_xc7" graphic="clothe/bc_black.png" x="1206" y="255" ][endif]


[button target="*up_non" graphic="clothe/non.png" x="740" y="345" ]

;[if exp="f.Du_xa[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_p-little.png" x="680" y="390" ][endif]
;[if exp="f.Du_xa[1]==1" ][button target="*up_xa1" graphic="clothe/bc_white.png" x="918" y="390" ][endif]
;[if exp="f.Du_xa[2]==1" ][button target="*up_xa2" graphic="clothe/bc_blue.png" x="966" y="390" ][endif]
;[if exp="f.Du_xa[3]==1" ][button target="*up_xa3" graphic="clothe/bc_pink.png" x="1014" y="390" ][endif]
;[if exp="f.Du_xa[4]==1" ][button target="*up_xa4" graphic="clothe/bc_yellow.png" x="1062" y="390" ][endif]
;[if exp="f.Du_xa[5]==1" ][button target="*up_xa5" graphic="clothe/bc_green.png" x="1110" y="390" ][endif]
;[if exp="f.Du_xa[6]==1" ][button target="*up_xa6" graphic="clothe/bc_orange.png" x="1158" y="390" ][endif]
;[if exp="f.Du_xa[7]==1" ][button target="*up_xa7" graphic="clothe/bc_black.png" x="1206" y="390" ][endif]

[if exp="f.Du_xb[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_pr-little.png" x="680" y="435" ][endif]
[if exp="f.Du_xb[1]==1" ][button target="*up_xb1" graphic="clothe/bc_white.png" x="918" y="435" ][endif]
[if exp="f.Du_xb[2]==1" ][button target="*up_xb2" graphic="clothe/bc_blue.png" x="966" y="435" ][endif]
[if exp="f.Du_xb[3]==1" ][button target="*up_xb3" graphic="clothe/bc_pink.png" x="1014" y="435" ][endif]
[if exp="f.Du_xb[4]==1" ][button target="*up_xb4" graphic="clothe/bc_yellow.png" x="1062" y="435" ][endif]
[if exp="f.Du_xb[5]==1" ][button target="*up_xb5" graphic="clothe/bc_green.png" x="1110" y="435" ][endif]
[if exp="f.Du_xb[6]==1" ][button target="*up_xb6" graphic="clothe/bc_orange.png" x="1158" y="435" ][endif]
[if exp="f.Du_xb[7]==1" ][button target="*up_xb7" graphic="clothe/bc_black.png" x="1206" y="435" ][endif]

[if exp="f.Du_xc[0]=='got'" ][button target="*dress_under2" graphic="clothe/u_p-hole.png" x="680" y="480" ][endif]
[if exp="f.Du_xc[1]==1" ][button target="*up_xc1" graphic="clothe/bc_white.png" x="918" y="480" ][endif]
[if exp="f.Du_xc[2]==1" ][button target="*up_xc2" graphic="clothe/bc_blue.png" x="966" y="480" ][endif]
[if exp="f.Du_xc[3]==1" ][button target="*up_xc3" graphic="clothe/bc_pink.png" x="1014" y="480" ][endif]
[if exp="f.Du_xc[4]==1" ][button target="*up_xc4" graphic="clothe/bc_yellow.png" x="1062" y="480" ][endif]
[if exp="f.Du_xc[5]==1" ][button target="*up_xc5" graphic="clothe/bc_green.png" x="1110" y="480" ][endif]
[if exp="f.Du_xc[6]==1" ][button target="*up_xc6" graphic="clothe/bc_orange.png" x="1158" y="480" ][endif]
[if exp="f.Du_xc[7]==1" ][button target="*up_xc7" graphic="clothe/bc_black.png" x="1206" y="480" ][endif]
[if exp="f.roof=='yet'"] [button target="*und_sm" graphic="clothe/und_sm.png" x="680" y="525" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*ub_non
[mod_under_b st="00.png" ][eval exp="f.under_b=0" ][back_top_h]
*up_non
[mod_under_p st="00.png" ][eval exp="f.under_p=0" ][back_top_h]

*und_sm
[mod_under_p st="00.png" ]
[mod_under_b st="s/und_b/D/shi.png" ][eval exp="f.under_b=1000" ][back_top_h]

*up_xa1
[mod_under_p st="s/und_p/D/xa1.png" ][eval exp="f.under_p=1001" ][back_top_h]
*up_xa2
[mod_under_p st="s/und_p/D/xa2.png" ][eval exp="f.under_p=1002" ][back_top_h]
*up_xa3
[mod_under_p st="s/und_p/D/xa3.png" ][eval exp="f.under_p=1003" ][back_top_h]
*up_xa4
[mod_under_p st="s/und_p/D/xa4.png" ][eval exp="f.under_p=1004" ][back_top_h]
*up_xa5
[mod_under_p st="s/und_p/D/xa5.png" ][eval exp="f.under_p=1005" ][back_top_h]
*up_xa6
[mod_under_p st="s/und_p/D/xa6.png" ][eval exp="f.under_p=1006" ][back_top_h]
*up_xa7
[mod_under_p st="s/und_p/D/xa7.png" ][eval exp="f.under_p=1007" ][back_top_h]

*up_xb1
[mod_under_p st="s/und_p/D/xb1.png" ][eval exp="f.under_p=1011" ][back_top_h]
*up_xb2
[mod_under_p st="s/und_p/D/xb2.png" ][eval exp="f.under_p=1012" ][back_top_h]
*up_xb3
[mod_under_p st="s/und_p/D/xb3.png" ][eval exp="f.under_p=1013" ][back_top_h]
*up_xb4
[mod_under_p st="s/und_p/D/xb4.png" ][eval exp="f.under_p=1014" ][back_top_h]
*up_xb5
[mod_under_p st="s/und_p/D/xb5.png" ][eval exp="f.under_p=1015" ][back_top_h]
*up_xb6
[mod_under_p st="s/und_p/D/xb6.png" ][eval exp="f.under_p=1016" ][back_top_h]
*up_xb7
[mod_under_p st="s/und_p/D/xb7.png" ][eval exp="f.under_p=1017" ][back_top_h]

*up_xc1
[mod_under_p st="s/und_p/D/xc1.png" ][eval exp="f.under_p=1021" ][back_top_h]
*up_xc2
[mod_under_p st="s/und_p/D/xc2.png" ][eval exp="f.under_p=1022" ][back_top_h]
*up_xc3
[mod_under_p st="s/und_p/D/xc3.png" ][eval exp="f.under_p=1023" ][back_top_h]
*up_xc4
[mod_under_p st="s/und_p/D/xc4.png" ][eval exp="f.under_p=1024" ][back_top_h]
*up_xc5
[mod_under_p st="s/und_p/D/xc5.png" ][eval exp="f.under_p=1025" ][back_top_h]
*up_xc6
[mod_under_p st="s/und_p/D/xc6.png" ][eval exp="f.under_p=1026" ][back_top_h]
*up_xc7
[mod_under_p st="s/und_p/D/xc7.png" ][eval exp="f.under_p=1027" ][back_top_h]


*ub_xa1
[mod_under_b st="s/und_b/D/xa1.png" ][eval exp="f.under_b=1001" ][back_top_h]
*ub_xa2
[mod_under_b st="s/und_b/D/xa2.png" ][eval exp="f.under_b=1002" ][back_top_h]
*ub_xa3
[mod_under_b st="s/und_b/D/xa3.png" ][eval exp="f.under_b=1003" ][back_top_h]
*ub_xa4
[mod_under_b st="s/und_b/D/xa4.png" ][eval exp="f.under_b=1004" ][back_top_h]
*ub_xa5
[mod_under_b st="s/und_b/D/xa5.png" ][eval exp="f.under_b=1005" ][back_top_h]
*ub_xa6
[mod_under_b st="s/und_b/D/xa6.png" ][eval exp="f.under_b=1006" ][back_top_h]
*ub_xa7
[mod_under_b st="s/und_b/D/xa7.png" ][eval exp="f.under_b=1007" ][back_top_h]

*ub_xb1
[mod_under_b st="s/und_b/D/xb1.png" ][eval exp="f.under_b=1011" ][back_top_h]
*ub_xb2
[mod_under_b st="s/und_b/D/xb2.png" ][eval exp="f.under_b=1012" ][back_top_h]
*ub_xb3
[mod_under_b st="s/und_b/D/xb3.png" ][eval exp="f.under_b=1013" ][back_top_h]
*ub_xb4
[mod_under_b st="s/und_b/D/xb4.png" ][eval exp="f.under_b=1014" ][back_top_h]
*ub_xb5
[mod_under_b st="s/und_b/D/xb5.png" ][eval exp="f.under_b=1015" ][back_top_h]
*ub_xb6
[mod_under_b st="s/und_b/D/xb6.png" ][eval exp="f.under_b=1016" ][back_top_h]
*ub_xb7
[mod_under_b st="s/und_b/D/xb7.png" ][eval exp="f.under_b=1017" ][back_top_h]

*ub_xc1
[mod_under_b st="s/und_b/D/xc1.png" ][eval exp="f.under_b=1021" ][back_top_h]
*ub_xc2
[mod_under_b st="s/und_b/D/xc2.png" ][eval exp="f.under_b=1022" ][back_top_h]
*ub_xc3
[mod_under_b st="s/und_b/D/xc3.png" ][eval exp="f.under_b=1023" ][back_top_h]
*ub_xc4
[mod_under_b st="s/und_b/D/xc4.png" ][eval exp="f.under_b=1024" ][back_top_h]
*ub_xc5
[mod_under_b st="s/und_b/D/xc5.png" ][eval exp="f.under_b=1025" ][back_top_h]
*ub_xc6
[mod_under_b st="s/und_b/D/xc6.png" ][eval exp="f.under_b=1026" ][back_top_h]
*ub_xc7
[mod_under_b st="s/und_b/D/xc7.png" ][eval exp="f.under_b=1027" ][back_top_h]

;;腕---------------------------------------------------------------------------------------------
*dress_arm
[cm][eval exp="f.ch_win=12" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[button target="*a_non" graphic="clothe/non.png" x="730" y="118" ]
[if exp="f.Dc_o[0]=='got'" ][button target="*dress_arm" graphic="clothe/a_belt-a.png" x="680" y="165" ][endif]
[if exp="f.Dc_o[1]==1" ][button target="*a_zo1" graphic="clothe/bc_black.png" x="890" y="165" ][endif]
[if exp="f.Dc_o[2]==1" ][button target="*a_zo2" graphic="clothe/bc_brown.png" x="940" y="165" ][endif]
[if exp="f.Dc_o[3]==1" ][button target="*a_zo3" graphic="clothe/bc_blue.png" x="990" y="165" ][endif]
[if exp="f.Dc_o[4]==1" ][button target="*a_zo4" graphic="clothe/bc_purple.png" x="1040" y="165" ][endif]
[if exp="f.Dc_o[5]==1" ][button target="*a_zo5" graphic="clothe/bc_red.png" x="1090" y="165" ][endif]
[if exp="f.Dc_o[6]==1" ][button target="*a_zo6" graphic="clothe/bc_green.png" x="1140" y="165" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

;[if exp="f.a_a[1]==1" ][button target="*a_a1" graphic="clothe/hand.png" x="680" y="310" ][endif]
;[if exp="f.a_a[2]==1" ][button target="*a_a2" graphic="clothe/bc_white.png" x="840" y="310" ][endif]
;[if exp="f.a_a[3]==1" ][button target="*a_a3" graphic="clothe/race-b.png" x="890" y="310" ][endif]
;[if exp="f.a_a[4]==1" ][button target="*a_a4" graphic="clothe/race-w.png" x="975" y="310" ][endif]


*a_non
[mod_gloves st="00.png" ][eval exp="f.gloves=0" ][back_top]

*a_zo1
[mod_gloves st="s/gloves/D/zo1.png" ][eval exp="f.gloves=1001" ][back_top]
*a_zo2
[mod_gloves st="s/gloves/D/zo2.png" ][eval exp="f.gloves=1002" ][back_top]
*a_zo3
[mod_gloves st="s/gloves/D/zo3.png" ][eval exp="f.gloves=1003" ][back_top]
*a_zo4
[mod_gloves st="s/gloves/D/zo4.png" ][eval exp="f.gloves=1004" ][back_top]
*a_zo5
[mod_gloves st="s/gloves/D/zo5.png" ][eval exp="f.gloves=1005" ][back_top]
*a_zo6
[mod_gloves st="s/gloves/D/zo6.png" ][eval exp="f.gloves=1006" ][back_top]


;;他---------------------------------------------------------------------------------------------
*dress_other
[cm][eval exp="f.ch_win=13" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
;マフラー
[if exp="f.Dne_a[0]=='got' || "f.Dne_b[0]=='got'" ]
[button target="*ne_non" graphic="clothe/non.png" x="730" y="118" ][endif]
[if exp="f.Dne_a[0]=='got'" ][button target="*dress_other" graphic="clothe/n_maf.png" x="680" y="165" ][endif]
[if exp="f.Dne_a[1]==1" ][button target="*ne_a1" graphic="clothe/bc_brown.png" x="835" y="165" ][endif]
[if exp="f.Dne_a[2]==1" ][button target="*ne_a2" graphic="clothe/bc_blue.png" x="890" y="165" ][endif]
[if exp="f.Dne_a[3]==1" ][button target="*ne_a3" graphic="clothe/bc_red.png" x="945" y="165" ][endif]
[if exp="f.Dne_a[4]==1" ][button target="*ne_a4" graphic="clothe/bc_green.png" x="1000" y="165" ][endif]
[if exp="f.Dne_a[5]==1" ][button target="*ne_a5" graphic="clothe/bc_purple.png" x="1055" y="165" ][endif]
[if exp="f.Dne_a[6]==1" ][button target="*ne_a6" graphic="clothe/bc_pink.png" x="1110" y="165" ][endif]
[if exp="f.Dne_a[7]==1" ][button target="*ne_a7" graphic="clothe/bc_white.png" x="1165" y="165" ][endif]
[if exp="f.Dne_a[8]==1" ][button target="*ne_a8" graphic="clothe/bc_black.png" x="1220" y="165" ][endif]

[if exp="f.Dne_c[0]=='got'" ][button target="*dress_other" graphic="clothe/n_maf-c.png" x="680" y="210" ][endif]
[if exp="f.Dne_c[1]==1" ][button target="*ne_c1" graphic="clothe/bc_brown.png" x="835" y="210" ][endif]
[if exp="f.Dne_c[2]==1" ][button target="*ne_c2" graphic="clothe/bc_blue.png" x="890" y="210" ][endif]
[if exp="f.Dne_c[3]==1" ][button target="*ne_c3" graphic="clothe/bc_red.png" x="945" y="210" ][endif]
[if exp="f.Dne_c[4]==1" ][button target="*ne_c4" graphic="clothe/bc_green.png" x="1000" y="210" ][endif]
[if exp="f.Dne_c[5]==1" ][button target="*ne_c5" graphic="clothe/bc_purple.png" x="1055" y="210" ][endif]
[if exp="f.Dne_c[6]==1" ][button target="*ne_c6" graphic="clothe/bc_pink.png" x="1110" y="210" ][endif]
[if exp="f.Dne_c[7]==1" ][button target="*ne_c7" graphic="clothe/bc_white.png" x="1165" y="210" ][endif]
[if exp="f.Dne_c[8]==1" ][button target="*ne_c8" graphic="clothe/bc_black.png" x="1220" y="210" ][endif]

;エプロン
[if exp="f.Dne_b[0]=='got'" ][button target="*dress_other" graphic="clothe/n_ep.png" x="680" y="255" ][endif]
[if exp="f.Dne_b[1]==1" ][button target="*ne_b1" graphic="clothe/bc_white.png" x="835" y="255" ][endif]
[if exp="f.Dne_b[2]==1" ][button target="*ne_b2" graphic="clothe/bc_blue.png" x="890" y="255" ][endif]
[if exp="f.Dne_b[3]==1" ][button target="*ne_b3" graphic="clothe/bc_pink.png" x="945" y="255" ][endif]
[if exp="f.Dne_b[4]==1" ][button target="*ne_b4" graphic="clothe/bc_black.png" x="1000" y="255" ][endif]

;ピアス
[if exp="f.lust>=50" ][button target="*ri_non" graphic="clothe/non.png" x="680" y="300" ][endif]
[if exp="f.lust>=50" ][button target="*ri_a1" graphic="clothe/ac_bandaid.png" height="34" x="680" y="345" ][endif]
[if exp="f.Dac_b[1]==1 && f.lust>=50" ][button target="*ri_b1" graphic="clothe/ac_gold-a.png" x="680" y="390" ][endif]
[if exp="f.Dac_c[1]==1 && f.lust>=50" ][button target="*ri_c1" graphic="clothe/ac_ring-x.png" x="975" y="390" ][endif]
[if exp="f.Dac_d[1]==1 && f.lust>=50" ][button target="*ri_d1" graphic="clothe/ac_ring-ch.png" x="1075" y="390" ][endif]
[if exp="f.Dac_b[2]==1 && f.lust>=50" ][button target="*ri_b2" graphic="clothe/ac_sil-a.png" x="680" y="436" ][endif]
[if exp="f.Dac_c[2]==1 && f.lust>=50" ][button target="*ri_c2" graphic="clothe/ac_ring-x.png" x="975" y="436" ][endif]
[if exp="f.Dac_d[2]==1 && f.lust>=50" ][button target="*ri_d2" graphic="clothe/ac_ring-ch.png" x="1075" y="436" ][endif]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]


*ri_non
[mod_b_acc st="00.png" ][eval exp="f.b_acc=0" ][back_top]
*ri_a1
[mod_b_acc st="s/b_acc/D/a1.png" ][eval exp="f.b_acc=11" ][back_top_h]

*ri_b1
[mod_b_acc st="s/b_acc/D/b1.png" ][eval exp="f.b_acc=21" ][back_top_h]
*ri_b2
[mod_b_acc st="s/b_acc/D/b2.png" ][eval exp="f.b_acc=22" ][back_top_h]

*ri_c1
[mod_b_acc st="s/b_acc/D/c1.png" ][eval exp="f.b_acc=31" ][back_top_h]
*ri_c2
[mod_b_acc st="s/b_acc/D/c2.png" ][eval exp="f.b_acc=32" ][back_top_h]

*ri_d1
[mod_b_acc st="s/b_acc/D/d1.png" ][eval exp="f.b_acc=41" ][back_top_h]
*ri_d2
[mod_b_acc st="s/b_acc/D/d2.png" ][eval exp="f.b_acc=42" ][back_top_h]


*ne_non
[mod_neck st="00.png" ][eval exp="f.neck=0" ][back_top]

*ne_a1
[mod_neck st="s/neck/D/a1.png" ][eval exp="f.neck=1" ][back_top]
*ne_a2
[mod_neck st="s/neck/D/a2.png" ][eval exp="f.neck=2" ][back_top]
*ne_a3
[mod_neck st="s/neck/D/a3.png" ][eval exp="f.neck=3" ][back_top]
*ne_a4
[mod_neck st="s/neck/D/a4.png" ][eval exp="f.neck=4" ][back_top]
*ne_a5
[mod_neck st="s/neck/D/a5.png" ][eval exp="f.neck=5" ][back_top]
*ne_a6
[mod_neck st="s/neck/D/a6.png" ][eval exp="f.neck=6" ][back_top]
*ne_a7
[mod_neck st="s/neck/D/a7.png" ][eval exp="f.neck=7" ][back_top]
*ne_a8
[mod_neck st="s/neck/D/a8.png" ][eval exp="f.neck=8" ][back_top]

*ne_b1
[mod_neck st="s/neck/D/b1.png" ][eval exp="f.neck=11" ][back_top]
*ne_b2
[mod_neck st="s/neck/D/b2.png" ][eval exp="f.neck=12" ][back_top]
*ne_b3
[mod_neck st="s/neck/D/b3.png" ][eval exp="f.neck=13" ][back_top]
*ne_b4
[mod_neck st="s/neck/D/b4.png" ][eval exp="f.neck=14" ][back_top]

*ne_c1
[mod_neck st="s/neck/D/c1.png" ][eval exp="f.neck=21" ][back_top]
*ne_c2
[mod_neck st="s/neck/D/c2.png" ][eval exp="f.neck=22" ][back_top]
*ne_c3
[mod_neck st="s/neck/D/c3.png" ][eval exp="f.neck=23" ][back_top]
*ne_c4
[mod_neck st="s/neck/D/c4.png" ][eval exp="f.neck=24" ][back_top]
*ne_c5
[mod_neck st="s/neck/D/c5.png" ][eval exp="f.neck=25" ][back_top]
*ne_c6
[mod_neck st="s/neck/D/c6.png" ][eval exp="f.neck=26" ][back_top]
*ne_c7
[mod_neck st="s/neck/D/c7.png" ][eval exp="f.neck=27" ][back_top]
*ne_c8
[mod_neck st="s/neck/D/c8.png" ][eval exp="f.neck=28" ][back_top]


;;オリジナル衣装---------------------------------------------------------------------------------------------
*dress_original
[cm][eval exp="f.ch_win=14" ][call storage="sys/dress_ex.ks" target="*menu_button" ]
[if exp="f.Dc_b[1]==1"][button target="*ori_c1" graphic="number/ori_clothe.png" height="36" x="673" y="165" ][endif]
[if exp="f.D_cosplay[2]==1"][button target="*ori_c2" graphic="number/ori/D_v2.png" height="36" x="725" y="165" ][endif]
[if exp="f.D_cosplay[3]==1"][button target="*ori_c3" graphic="number/ori/D_v3.png" height="36" x="770" y="165" ][endif]
[if exp="f.D_cosplay[4]==1"][button target="*ori_c4" graphic="number/ori/D_v4.png" height="36" x="815" y="165" ][endif]
[if exp="f.D_cosplay[5]==1"][button target="*ori_c5" graphic="number/ori/D_v5.png" height="36" x="860" y="165" ][endif]
[if exp="f.D_cosplay[6]==1"][button target="*ori_c6" graphic="number/ori/D_v6.png" height="36" x="905" y="165" ][endif]
[if exp="f.D_cosplay[7]==1"][button target="*ori_c7" graphic="number/ori/ri_.png" height="36" x="950" y="165" ][endif]
[if exp="f.D_cosplay[8]==1"][button target="*ori_c8" graphic="number/ori/ri_.png" height="36" x="995" y="165" ][endif]
[if exp="f.D_cosplay[9]==1"][button target="*ori_c9" graphic="number/ori/ri_.png" height="36" x="1040" y="165" ][endif]
[if exp="f.D_cosplay[10]==1"][button target="*ori_c10" graphic="number/ori/ri_.png" height="36" x="1085" y="165" ][endif]
[if exp="f.lust>=5" ][button target="*c_non" graphic="clothe/non.png" height="36" x="1150" y="165" ][endif]

[if exp="f.Dc_b[1]==1"][button target="*ori_p1" graphic="number/ori_pin.png" height="36" x="673" y="210" ][endif]
[if exp="f.D_cosplay[2]==1"][button target="*ori_p2" graphic="number/ori/pin.png" height="36" x="725" y="210" ][endif]
[if exp="f.D_cosplay[3]==1"][button target="*ori_p3" graphic="number/ori/pin.png" height="36" x="770" y="210" ][endif]
[if exp="f.D_cosplay[4]==1"][button target="*ori_p4" graphic="number/ori/pin_.png" height="36" x="815" y="210" ][endif]
[if exp="f.D_cosplay[5]==1"][button target="*ori_p5" graphic="number/ori/pin_.png" height="36" x="860" y="210" ][endif]
[if exp="f.D_cosplay[6]==1"][button target="*ori_p6" graphic="number/ori/pin.png" height="36" x="905" y="210" ][endif]
[if exp="f.D_cosplay[7]==1"][button target="*ori_p7" graphic="number/ori/pin.png" height="36" x="950" y="210" ][endif]
[if exp="f.D_cosplay[8]==1"][button target="*ori_p8" graphic="number/ori/pin.png" height="36" x="995" y="210" ][endif]
[if exp="f.D_cosplay[9]==1"][button target="*ori_p9" graphic="number/ori/pin.png" height="36" x="1040" y="210" ][endif]
[if exp="f.D_cosplay[10]==1"][button target="*ori_p10" graphic="number/ori/pin.png" height="36" x="1085" y="210" ][endif]
[button target="*p_non" graphic="clothe/non.png" height="36" x="1150" y="210" ]

[if exp="f.Dc_b[1]==1"][button target="*ori_h1" graphic="number/ori_head.png" height="36" x="673" y="255" ][endif]
[if exp="f.D_cosplay[2]==1"][button target="*ori_h2" graphic="number/ori/hat.png" height="36" x="725" y="255" ][endif]
[if exp="f.D_cosplay[3]==1"][button target="*ori_h3" graphic="number/ori/hat.png" height="36" x="770" y="255" ][endif]
[if exp="f.D_cosplay[4]==1"][button target="*ori_h4" graphic="number/ori/hat.png" height="36" x="815" y="255" ][endif]
[if exp="f.D_cosplay[5]==1"][button target="*ori_h5" graphic="number/ori/hat.png" height="36" x="860" y="255" ][endif]
[if exp="f.D_cosplay[6]==1"][button target="*ori_h6" graphic="number/ori/hat.png" height="36" x="905" y="255" ][endif]
[if exp="f.D_cosplay[7]==1"][button target="*ori_h7" graphic="number/ori/hat.png" height="36" x="950" y="255" ][endif]
[if exp="f.D_cosplay[8]==1"][button target="*ori_h8" graphic="number/ori/hat.png" height="36" x="995" y="255" ][endif]
[if exp="f.D_cosplay[9]==1"][button target="*ori_h9" graphic="number/ori/hat.png" height="36" x="1040" y="255" ][endif]
[if exp="f.D_cosplay[10]==1"][button target="*ori_h10" graphic="number/ori/hat.png" height="36" x="1085" y="255" ][endif]
[button target="*h_non" graphic="clothe/non.png" height="36" x="1150" y="255" ]

[if exp="f.Dc_b[1]==1"][button target="*ori_n1" graphic="number/ori_neck.png" height="36" x="673" y="300" ][endif]
[if exp="f.D_cosplay[2]==1"][button target="*ori_n2" graphic="number/ori/neck_.png" height="36" x="725" y="300" ][endif]
[if exp="f.D_cosplay[3]==1"][button target="*ori_n3" graphic="number/ori/neck_.png" height="36" x="770" y="300" ][endif]
[if exp="f.D_cosplay[4]==1"][button target="*ori_n4" graphic="number/ori/neck_.png" height="36" x="815" y="300" ][endif]
[if exp="f.D_cosplay[5]==1"][button target="*ori_n5" graphic="number/ori/neck_.png" height="36" x="860" y="300" ][endif]
[if exp="f.D_cosplay[6]==1"][button target="*ori_n6" graphic="number/ori/neck.png" height="36" x="905" y="300" ][endif]
[if exp="f.D_cosplay[7]==1"][button target="*ori_n7" graphic="number/ori/neck_.png" height="36" x="950" y="300" ][endif]
[if exp="f.D_cosplay[8]==1"][button target="*ori_n8" graphic="number/ori/neck_.png" height="36" x="995" y="300" ][endif]
[if exp="f.D_cosplay[9]==1"][button target="*ori_n9" graphic="number/ori/neck_.png" height="36" x="1040" y="300" ][endif]
[if exp="f.D_cosplay[10]==1"][button target="*ori_n10" graphic="number/ori/neck_.png" height="36" x="1085" y="300" ][endif]
[button target="*ne_non" graphic="clothe/non.png" height="36" x="1150" y="300" ]

[if exp="f.Dc_b[1]==1"][button target="*ori_s1" graphic="number/ori_socks.png" height="36" x="673" y="345" ][endif]
[if exp="f.D_cosplay[2]==1"][button target="*ori_s2" graphic="number/ori/socks_.png" height="36" x="725" y="345" ][endif]
[if exp="f.D_cosplay[3]==1"][button target="*ori_s3" graphic="number/ori/socks_.png" height="36" x="770" y="345" ][endif]
[if exp="f.D_cosplay[4]==1"][button target="*ori_s4" graphic="number/ori/socks_.png" height="36" x="815" y="345" ][endif]
[if exp="f.D_cosplay[5]==1"][button target="*ori_s5" graphic="number/ori/socks_.png" height="36" x="860" y="345" ][endif]
[if exp="f.D_cosplay[6]==1"][button target="*ori_s6" graphic="number/ori/socks_.png" height="36" x="905" y="345" ][endif]
[if exp="f.D_cosplay[7]==1"][button target="*ori_s7" graphic="number/ori/socks_.png" height="36" x="950" y="345" ][endif]
[if exp="f.D_cosplay[8]==1"][button target="*ori_s8" graphic="number/ori/socks_.png" height="36" x="995" y="345" ][endif]
[if exp="f.D_cosplay[9]==1"][button target="*ori_s9" graphic="number/ori/socks_.png" height="36" x="1040" y="345" ][endif]
[if exp="f.D_cosplay[10]==1"][button target="*ori_s10" graphic="number/ori/socks_.png" height="36" x="1085" y="345" ][endif]
[button target="*s_non" graphic="clothe/non.png" height="36" x="1150" y="345" ]

[if exp="f.Dc_b[1]==1"][button target="*ori_ri1" graphic="number/ori_body.png" height="36" x="673" y="390" ][endif]
[if exp="f.D_cosplay[2]==1"][button target="*ori_ri2" graphic="number/ori/ri_.png" height="36" x="725" y="390" ][endif]
[if exp="f.D_cosplay[3]==1"][button target="*ori_ri3" graphic="number/ori/ri_.png" height="36" x="770" y="390" ][endif]
[if exp="f.D_cosplay[4]==1"][button target="*ori_ri4" graphic="number/ori/ri_.png" height="36" x="815" y="390" ][endif]
[if exp="f.D_cosplay[5]==1"][button target="*ori_ri5" graphic="number/ori/ri_.png" height="36" x="860" y="390" ][endif]
[if exp="f.D_cosplay[6]==1"][button target="*ori_ri6" graphic="number/ori/ri_.png" height="36" x="905" y="390" ][endif]
[if exp="f.D_cosplay[7]==1"][button target="*ori_ri7" graphic="number/ori/ri_.png" height="36" x="950" y="390" ][endif]
[if exp="f.D_cosplay[8]==1"][button target="*ori_ri8" graphic="number/ori/ri_.png" height="36" x="995" y="390" ][endif]
[if exp="f.D_cosplay[9]==1"][button target="*ori_ri9" graphic="number/ori/ri_.png" height="36" x="1040" y="390" ][endif]
[if exp="f.D_cosplay[10]==1"][button target="*ori_ri10" graphic="number/ori/ri_.png" height="36" x="1085" y="390" ][endif]
[button target="*ri_non" graphic="clothe/non.png" height="36" x="1150" y="390" ]
[cancelskip][if exp="f.lust>=50"][call target="*click"][else][s][endif]

*ori_c1
[mod_dress st="original/dress/D_v1.png" ][eval exp="f.dress=9001" ][back_top]
*ori_c2
[mod_dress st="original/dress/D_v2.png" ][eval exp="f.dress=9002" ][back_top]
*ori_c3
[mod_dress st="original/dress/D_v3.png" ][eval exp="f.dress=9003" ][back_top]
*ori_c4
[mod_dress st="original/dress/D_v4.png" ][eval exp="f.dress=9004" ][back_top]
*ori_c5
[mod_dress st="original/dress/D_v5.png" ][eval exp="f.dress=9005" ][back_top]
*ori_c6
[mod_dress st="original/dress/D_v6.png" ][eval exp="f.dress=9006" ][back_top]
*ori_c7
[mod_dress st="original/dress/D_v7.png" ][eval exp="f.dress=9007" ][back_top]
*ori_c8
[mod_dress st="original/dress/D_v8.png" ][eval exp="f.dress=9008" ][back_top]
*ori_c9
[mod_dress st="original/dress/D_v9.png" ][eval exp="f.dress=9009" ][back_top]
*ori_c10
[mod_dress st="original/dress/D_v10.png" ][eval exp="f.dress=9010" ][back_top]

*ori_p1
[eval exp="f.pin=9001" ][dress_pin_set][back_top]
*ori_p2
[eval exp="f.pin=9002" ][dress_pin_set][back_top]
*ori_p3
[eval exp="f.pin=9003" ][dress_pin_set][back_top]
*ori_p4
;[eval exp="f.pin=9004" ][dress_pin_set]
[back_top]
*ori_p5
;[eval exp="f.pin=9005" ][dress_pin_set]
[back_top]
*ori_p6
[eval exp="f.pin=9006" ][dress_pin_set][back_top]
*ori_p7
[eval exp="f.pin=9007" ][dress_pin_set][back_top]
*ori_p8
[eval exp="f.pin=9008" ][dress_pin_set][back_top]
*ori_p9
[eval exp="f.pin=9009" ][dress_pin_set][back_top]
*ori_p10
[eval exp="f.pin=9010" ][dress_pin_set][back_top]

*ori_h1
[mod_hat st="original/hat/D_v1.png" ][eval exp="f.hat=9001" ][back_top]
*ori_h2
[mod_hat st="original/hat/D_v2.png" ][eval exp="f.hat=9002" ][back_top]
*ori_h3
[mod_hat st="original/hat/D_v3.png" ][eval exp="f.hat=9003" ][back_top]
*ori_h4
[mod_hat st="original/hat/D_v4.png" ][eval exp="f.hat=9004" ][back_top]
*ori_h5
[mod_hat st="original/hat/D_v5.png" ][eval exp="f.hat=9005" ][back_top]
*ori_h6
[mod_hat st="original/hat/D_v6.png" ][eval exp="f.hat=9006" ][back_top]
*ori_h7
[mod_hat st="original/hat/D_v7.png" ][eval exp="f.hat=9007" ][back_top]
*ori_h8
[mod_hat st="original/hat/D_v8.png" ][eval exp="f.hat=9008" ][back_top]
*ori_h9
[mod_hat st="original/hat/D_v9.png" ][eval exp="f.hat=9009" ][back_top]
*ori_h10
[mod_hat st="original/hat/D_v10.png" ][eval exp="f.hat=9010" ][back_top]

*ori_n1
;[mod_neck st="original/neck/D_v1.png" ][eval exp="f.neck=9001" ]
[back_top]
*ori_n2
;[mod_neck st="original/neck/D_v2.png" ][eval exp="f.neck=9002" ]
[back_top]
*ori_n3
;[mod_neck st="original/neck/D_v3.png" ][eval exp="f.neck=9003" ]
[back_top]
*ori_n4
;[mod_neck st="original/neck/D_v4.png" ][eval exp="f.neck=9004" ]
[back_top]
*ori_n5
;[mod_neck st="original/neck/D_v5.png" ][eval exp="f.neck=9005" ]
[back_top]
*ori_n6
[mod_neck st="original/neck/D_v6.png" ][eval exp="f.neck=9006" ][back_top]
*ori_n7
;[mod_neck st="original/neck/D_v7.png" ][eval exp="f.neck=9007" ]
[back_top]
*ori_n8
;[mod_neck st="original/neck/D_v8.png" ][eval exp="f.neck=9008" ]
[back_top]
*ori_n9
;[mod_neck st="original/neck/D_v9.png" ][eval exp="f.neck=9009" ]
[back_top]
*ori_n10
;[mod_neck st="original/neck/D_v10.png" ][eval exp="f.neck=9010" ]
[back_top]

*ori_s1
;[mod_socks st="original/socks/D_v1.png" ][eval exp="f.socks=9001" ]
[back_top]
*ori_s2
;[mod_socks st="original/socks/D_v2.png" ][eval exp="f.socks=9002" ]
[back_top]
*ori_s3
;[mod_socks st="original/socks/D_v3.png" ][eval exp="f.socks=9003" ]
[back_top]
*ori_s4
;[mod_socks st="original/socks/D_v4.png" ][eval exp="f.socks=9004" ]
[back_top]
*ori_s5
;[mod_socks st="original/socks/D_v5.png" ][eval exp="f.socks=9005" ]
[back_top]
*ori_s6
;[mod_socks st="original/socks/D_v6.png" ][eval exp="f.socks=9006" ]
[back_top]
*ori_s7
;[mod_socks st="original/socks/D_v7.png" ][eval exp="f.socks=9007" ]
[back_top]
*ori_s8
;[mod_socks st="original/socks/D_v8.png" ][eval exp="f.socks=9008" ]
[back_top]
*ori_s9
;[mod_socks st="original/socks/D_v9.png" ][eval exp="f.socks=9009" ]
[back_top]
*ori_s10
;[mod_socks st="original/socks/D_v10.png" ][eval exp="f.socks=9010" ]
[back_top]

*ori_ri1
;[mod_b_acc st="original/b_acc/D_v1.png" ][eval exp="f.b_acc=9001" ]
[back_top]
*ori_ri2
;[mod_b_acc st="original/b_acc/D_v2.png" ][eval exp="f.b_acc=9002" ]
[back_top]
*ori_ri3
;[mod_b_acc st="original/b_acc/D_v3.png" ][eval exp="f.b_acc=9003" ]
[back_top]
*ori_ri4
;[mod_b_acc st="original/b_acc/D_v4.png" ][eval exp="f.b_acc=9004" ]
[back_top]
*ori_ri5
;[mod_b_acc st="original/b_acc/D_v5.png" ][eval exp="f.b_acc=9005" ]
[back_top]
*ori_ri6
;[mod_b_acc st="original/b_acc/D_v6.png" ][eval exp="f.b_acc=9006" ]
[back_top]
*ori_ri7
;[mod_b_acc st="original/b_acc/D_v7.png" ][eval exp="f.b_acc=9007" ]
[back_top]
*ori_ri8
;[mod_b_acc st="original/b_acc/D_v8.png" ][eval exp="f.b_acc=9008" ]
[back_top]
*ori_ri9
;[mod_b_acc st="original/b_acc/D_v9.png" ][eval exp="f.b_acc=9009" ]
[back_top]
*ori_ri10
;[mod_b_acc st="original/b_acc/D_v10.png" ][eval exp="f.b_acc=9010" ]
[back_top]


*take_all
[if exp="f.hair_style!=0" ][chara_mod name="head" time="0" storage="s/body/dress_h1.png" ]
[mod_hair st="s/hair/D/nr.png" ][mod_hat st="00.png" ][chara_mod name="ribbon" time="0" storage="00.png" ][chara_mod name="ribbon_b" time="0" storage="00.png" ]
[eval exp="f.hair_style=0" ][eval exp="f.hair_band=0" ][endif]
[if exp="f.glasses!=0" ][chara_mod name="glasses" time="0" storage="00.png" ][eval exp="f.glasses=0" ][endif]
[if exp="f.hat!=0" ][chara_mod name="hat" time="0" storage="00.png" ][eval exp="f.hat=0" ][endif]
[if exp="f.front_hair!=0" ][chara_mod name="pin" time="0" storage="00.png" ][chara_mod name="hair_f" time="0" storage="s/body/dress_fh.png" ][eval exp="f.pin=0" ][eval exp="f.front_hair=0" ][endif]
[if exp="f.b_acc!=0" ][chara_mod name="b_acc" time="0" storage="00.png" ][eval exp="f.b_acc=0" ][endif]
[if exp="f.neck!=0" ][chara_mod name="neck" time="0" storage="00.png" ][eval exp="f.neck=0" ][endif]
[if exp="f.socks!=0" ][chara_mod name="socks" time="0" storage="00.png" ][eval exp="f.socks=0" ][endif]
[if exp="f.gloves!=0" ][chara_mod name="gloves" time="0" storage="00.png" ][eval exp="f.gloves=0" ][endif]
[if exp="f.lust>=5" ][chara_mod name="dress" time="0" storage="00.png" ][eval exp="f.dress=0" ][endif]
[if exp="f.lust>=15" ][chara_mod name="under_b" time="0" storage="00.png" ][eval exp="f.under_b=0" ][f/clp_nt][endif]
[if exp="f.lust>=15" ][chara_mod name="under_p" time="0" storage="00.png" ][eval exp="f.under_p=0" ][d_face_h][endif]
[back_top]

;*no_hat
;[if exp="f.hat>=30 && f.hat<39" ][endif]



;;mo rong-------------------------------------------------------------------------------------------------------
*next_1
[current layer="message1" ][layopt layer="message1" visible=true]
[chara_show name="h" time="0" wait="true" left=" 0.1" zindex="130" ]
[chara_show name="hand_R" time="0" wait="true" left=" 0.1" zindex="140" ]
[chara_show name="breath" time="0" wait="true" left=" 0.1" zindex="160" ]
[button target="*return_sks" graphic="m/off_hand.png" x="650" y="840" ]
[if exp="f.mlem=='h'"]
[button target="*hand" graphic="m/hand.png" x="740" y="840" ]
[else][button target="*hand" graphic="m/hand_.png" x="740" y="840" ][endif]
[if exp="f.mlem=='l'"]
[button target="*lick" graphic="m/lick.png" x="830" y="840" ]
[else][button target="*lick" graphic="m/lick_.png" x="830" y="840" ][endif]
[call target="*click"]

*click
[clickable width="45" height="45" x="358" y="240" storage="sys/dress.ks" target="*kiss" border="" ]
[clickable width="146" height="130" x="314" y="31" storage="sys/dress.ks" target="*xoa_dau" border="" ]
[clickable width="90" height="90" x="260" y="330" storage="sys/dress.ks" target="*nguc_trai" border="" ]
[clickable width="90" height="90" x="400" y="333" storage="sys/dress.ks" target="*nguc_phai" border="" ]
[clickable width="130" height="130" x="305" y="518" storage="sys/dress.ks" target="*bung" border="" ]


[if exp="f.dress<=0 || f.dress==5 || f.dress==6 || f.dress==2002 || f.dress==1111 || f.dress==1112"][eval exp="f.dress_sks=0"]
[elsif exp="f.dress<=1020 && f.dress>=1000][eval exp="f.dress_sks=0"]
[elsif exp="f.dress<=1060 && f.dress>=1030][eval exp="f.dress_sks=0"]
[else][eval exp="f.dress_sks=1"][endif]

[if exp="f.under_p<=0"][eval exp="f.under_p_sks=0"]
[elsif exp="f.under_p>=1010 && f.under_p<=1030"][eval exp="f.under_p_sks=0"]
[else][eval exp="f.under_p_sks=1"][endif]

[if exp="f.dress_sks==0"]
[clickable width="95" height="55" x="326" y="696" storage="sys/dress.ks" target="*pus_up" border="" ][endif]

[if exp="f.wet<=30"]
[elsif exp="f.dress_sks==0 && f.under_p_sks==0]
[clickable width="95" height="30" x="326" y="751" storage="sys/dress.ks" target="*pus_down" border="" ]
[endif]
[clickable width="127" height="181" x="226" y="686" storage="sys/dress.ks" target="*chan_trai" border="" ]
[clickable width="127" height="181" x="406" y="657" storage="sys/dress.ks" target="*chan_phai" border="" ]
[s ][return]

*hand
[cm]
;[chara_mod name="breath" time="0" storage="mod/hand/00.png" ]
[eval exp="f.mlem='h'"]
[jump target="*next_1"]

*lick
[cm][if exp="f.dress<=0 || f.dress>=1001 && f.dress<=1029 || f.dress>=1031 && f.dress<=1049 || f.dress==2002|| f.dress==1111|| f.dress==1112 || f.dress==5 || f.dress==6 || f.dress>=1081 && f.dress<=1089 || f.dress>=1081 && f.dress<=1109"]
[eval exp="f.mlem='l'"][endif][jump target="*next_1"]

*kiss
[eval exp="f.wet=f.wet+7"]
[cm ]
[iscript]
f.talk=Math.floor(Math.random() * 16 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*kiss1"]
[elsif exp="f.talk==2"][jump target="*kiss2"]
[elsif exp="f.talk==3"][jump target="*kiss3"]
[elsif exp="f.talk==4"][jump target="*kiss4"]
[elsif exp="f.talk==5"][jump target="*kiss5"]
[elsif exp="f.talk==6"][jump target="*kiss6"]
[elsif exp="f.talk==7"][jump target="*kiss7"]
[elsif exp="f.talk==8"][jump target="*kiss8"]
[elsif exp="f.talk==9"][jump target="*kiss9"]
[elsif exp="f.talk==10"][jump target="*kiss10"]
[elsif exp="f.talk==11"][jump target="*kiss11"]
[elsif exp="f.talk==12"][jump target="*kiss12"]
[elsif exp="f.talk==13"][jump target="*kiss13"]
[elsif exp="f.talk==14"][jump target="*kiss14"]
[elsif exp="f.talk==15"][jump target="*kiss15"]
[else][jump target="*kiss16"][endif]
*xoa_dau
[cm ]
[eval exp="f.wet=f.wet+2"]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_head.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*nade1"]
[elsif exp="f.talk==2"][jump target="*nade2"]
[elsif exp="f.talk==3"][jump target="*nade3"]
[elsif exp="f.talk==4"][jump target="*nade4"]
[elsif exp="f.talk==5"][jump target="*nade5"]
[elsif exp="f.talk==6"][jump target="*nade6"]
[elsif exp="f.talk==7"][jump target="*nade7"]
[elsif exp="f.talk==8"][jump target="*nade8"]
[elsif exp="f.talk==9"][jump target="*nade9"]
[else][jump target="*nade10"][endif]

*nguc_trai
[cm ][if exp="f.mlem=='h'"][jump target="*nguc_trai_h"]
[elsif exp="f.mlem=='l'"][jump target="*nguc_trai_l"][endif]

*nguc_trai_l
[cm ]
[if exp="f.hp_mlem=='n' || f.ht_mlem=='b' || f.hp_mlem=='pu' || f.hp_mlem=='pd'"][else][chara_mod name="hand_R" time="0" storage="00.png" ][chara_mod name="h" time="0" storage="00.png" ][endif]
[if exp="f.ht_mlem=='n'"][chara_mod name="h" time="0" storage="00.png" ][endif]
[eval exp="f.l_mlem='nt'"]
[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_b<=0 || f.bra_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
;[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[if exp="f.dress<=0 && f.under_b<=0 || f.dress<=1076 && f.dress>=1061 && f.under_b<=0"]
[chara_mod name="breath" time="0" storage="mod/hand/lick_vt.png" ]
[else][chara_mod name="breath" time="0" storage="mod/hand/lick_vt.png" ][endif]
[iscript]
f.talk=Math.floor(Math.random() * 12 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*oppai1"]
[elsif exp="f.talk==2"][jump target="*oppai2"]
[elsif exp="f.talk==3"][jump target="*oppai3"]
[elsif exp="f.talk==4"][jump target="*oppai4"]
[elsif exp="f.talk==5"][jump target="*oppai5"]
[elsif exp="f.talk==6"][jump target="*oppai6"]
[elsif exp="f.talk==7"][jump target="*oppai7"]
[elsif exp="f.talk==8"][jump target="*oppai8"]
[elsif exp="f.talk==9"][jump target="*oppai9"]
[elsif exp="f.talk==10"][jump target="*oppai10"]
[elsif exp="f.talk==11"][jump target="*oppai11"]
[else][jump target="*oppai12"][endif]

*nguc_trai_h
[cm ]
[if exp="f.hp_mlem=='n'"][else][chara_mod name="hand_R" time="0" storage="00.png" ][endif]
[if exp="f.l_mlem=='nt'"][chara_mod name="breath" time="0" storage="00.png" ][endif]
[eval exp="f.ht_mlem='n'"]
[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_b<=0 || f.bra_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
;[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[if exp="f.dress<=0 && f.under_b<=0 || f.dress<=1076 && f.dress>=1061 && f.under_b<=0"]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_oppai_left.png" ]
[else][chara_mod name="h" time="0" storage="mod/hand/dress_h_oppai_left_.png" ][endif]
[iscript]
f.talk=Math.floor(Math.random() * 12 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*oppai1"]
[elsif exp="f.talk==2"][jump target="*oppai2"]
[elsif exp="f.talk==3"][jump target="*oppai3"]
[elsif exp="f.talk==4"][jump target="*oppai4"]
[elsif exp="f.talk==5"][jump target="*oppai5"]
[elsif exp="f.talk==6"][jump target="*oppai6"]
[elsif exp="f.talk==7"][jump target="*oppai7"]
[elsif exp="f.talk==8"][jump target="*oppai8"]
[elsif exp="f.talk==9"][jump target="*oppai9"]
[elsif exp="f.talk==10"][jump target="*oppai10"]
[elsif exp="f.talk==11"][jump target="*oppai11"]
[else][jump target="*oppai12"][endif]



*nguc_phai
[cm ][if exp="f.mlem=='h'"][jump target="*nguc_phai_h"]
[elsif exp="f.mlem=='l'"][jump target="*nguc_phai_l"][endif]

*nguc_phai_l
[cm ]
[if exp="f.ht_mlem=='n' || f.ht_mlem=='b' || f.hp_mlem=='pu' || f.hp_mlem=='pd'"][else][chara_mod name="hand_R" time="0" storage="00.png" ][chara_mod name="h" time="0" storage="00.png" ][endif]
[if exp="f.hp_mlem=='n'"][chara_mod name="hand_R" time="0" storage="00.png" ][endif]
[eval exp="f.l_mlem='np'"]
[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_b<=0 || f.bra_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
;[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[if exp="f.dress<=0 && f.under_b<=0 || f.dress<=1076 && f.dress>=1061 && f.under_b<=0"]
[chara_mod name="breath" time="0" storage="mod/hand/lick_vp.png" ]
[else][chara_mod name="breath" time="0" storage="mod/hand/lick_vp.png" ][endif]
[iscript]
f.talk=Math.floor(Math.random() * 12 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*oppai1"]
[elsif exp="f.talk==2"][jump target="*oppai2"]
[elsif exp="f.talk==3"][jump target="*oppai3"]
[elsif exp="f.talk==4"][jump target="*oppai4"]
[elsif exp="f.talk==5"][jump target="*oppai5"]
[elsif exp="f.talk==6"][jump target="*oppai6"]
[elsif exp="f.talk==7"][jump target="*oppai7"]
[elsif exp="f.talk==8"][jump target="*oppai8"]
[elsif exp="f.talk==9"][jump target="*oppai9"]
[elsif exp="f.talk==10"][jump target="*oppai10"]
[elsif exp="f.talk==11"][jump target="*oppai11"]
[else][jump target="*oppai12"][endif]

*nguc_phai_h
[if exp="f.ht_mlem=='n'"][else][chara_mod name="h" time="0" storage="00.png" ][endif]
[if exp="f.l_mlem=='np'"][chara_mod name="breath" time="0" storage="00.png" ][endif]
[eval exp="f.hp_mlem='n'"]
[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_b<=0 || f.bra_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[if exp="f.dress<=0 && f.under_b<=0 || f.dress<=1076 && f.dress>=1061 && f.under_b<=0"]
[chara_mod name="hand_R" time="0" storage="mod/hand/dress_h_oppai_right.png" ]
[else][chara_mod name="hand_R" time="0" storage="mod/hand/dress_h_oppai_right_.png" ][endif]
[iscript]
f.talk=Math.floor(Math.random() * 12 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*oppai1"]
[elsif exp="f.talk==2"][jump target="*oppai2"]
[elsif exp="f.talk==3"][jump target="*oppai3"]
[elsif exp="f.talk==4"][jump target="*oppai4"]
[elsif exp="f.talk==5"][jump target="*oppai5"]
[elsif exp="f.talk==6"][jump target="*oppai6"]
[elsif exp="f.talk==7"][jump target="*oppai7"]
[elsif exp="f.talk==8"][jump target="*oppai8"]
[elsif exp="f.talk==9"][jump target="*oppai9"]
[elsif exp="f.talk==10"][jump target="*oppai10"]
[elsif exp="f.talk==11"][jump target="*oppai11"]
[else][jump target="*oppai12"][endif]

*bung
[cm ][if exp="f.mlem=='h'"][jump target="*bung_h"]
[elsif exp="f.mlem=='l'"][jump target="*bung_l"][endif] 

*bung_l
[cm][if exp="f.ht_mlem=='n' || f.hp_mlem=='n' || f.hp_mlem=='pd'"][else][chara_mod name="h" time="0" storage="00.png" ][chara_mod name="h" time="0" storage="00.png" ][endif]
[if exp="f.ht_mlem=='b' || f.hp_mlem=='pu'"][chara_mod name="h" time="0" storage="00.png" ]
[chara_mod name="hand_R" time="0" storage="00.png" ]
[endif]
[eval exp="f.l_mlem='b'"]

[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.dress<=0"]
[chara_mod name="breath" time="0" storage="mod/hand/lick_bung.png" ]
[else]
[chara_mod name="breath" time="0" storage="mod/hand/lick_bung.png" ][endif]
;[chara_mod name="hand_R" time="0" storage="00.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 8 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*hara1"]
[elsif exp="f.talk==2"][jump target="*hara2"]
[elsif exp="f.talk==3"][jump target="*hara3"]
[elsif exp="f.talk==4"][jump target="*hara4"]
[elsif exp="f.talk==5"][jump target="*hara5"]
[elsif exp="f.talk==6"][jump target="*hara6"]
[elsif exp="f.talk==7"][jump target="*hara7"]
[else][jump target="*hara8"][endif]

*bung_h
[cm ]
[if exp="f.l_mlem=='b'"][chara_mod name="breath" time="0" storage="00.png" ][endif]
[eval exp="f.ht_mlem='b'"]
[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.dress<=0 && f.under_p<=0"]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_bung.png" ]
[else]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_bung_.png" ][endif]
[chara_mod name="hand_R" time="0" storage="00.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 8 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*hara1"]
[elsif exp="f.talk==2"][jump target="*hara2"]
[elsif exp="f.talk==3"][jump target="*hara3"]
[elsif exp="f.talk==4"][jump target="*hara4"]
[elsif exp="f.talk==5"][jump target="*hara5"]
[elsif exp="f.talk==6"][jump target="*hara6"]
[elsif exp="f.talk==7"][jump target="*hara7"]
[else][jump target="*hara8"][endif]

*pus_up
[if exp="f.mlem=='h'"][jump target="*pus_up_h"]
[elsif exp="f.mlem=='l'"][jump target="*pus_up_l"][endif] 

*pus_up_l
[cm][if exp="f.ht_mlem=='n' || f.hp_mlem=='n' || f.ht_mlem=='b'"][else][chara_mod name="hand_R" time="0" storage="00.png" ][chara_mod name="hand_R" time="0" storage="00.png" ][endif]
[if exp="f.hp_mlem=='pu'"][chara_mod name="hand_R" time="0" storage="00.png" ][endif]
[eval exp="f.l_mlem='pu'"]
[random_10]
[eval exp="f.wet=f.wet+5+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_p<=0 || f.pants_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.dress<=0 || f.dress>=1001 && f.dress<=1029 || f.dress>=1031 && f.dress<=1049 || f.dress==2002|| f.dress==1111|| f.dress==1112 || f.dress==5 || f.dress==6 || f.dress>=1081 && f.dress<=1089 || f.dress>=1081 && f.dress<=1109"]
[chara_mod name="breath" time="0" storage="mod/hand/lick_manko.png" ]
[else][jump target="*next_1"][endif]
;[chara_mod name="hand_R" time="0" storage="00.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*manko1"]
[elsif exp="f.talk==2"][jump target="*manko2"]
[elsif exp="f.talk==3"][jump target="*manko3"]
[elsif exp="f.talk==4"][jump target="*manko4"]
[elsif exp="f.talk==5"][jump target="*manko5"]
[elsif exp="f.talk==6"][jump target="*manko6"]
[elsif exp="f.talk==7"][jump target="*manko7"]
[elsif exp="f.talk==8"][jump target="*manko8"]
[elsif exp="f.talk==9"][jump target="*manko9"]
[else][jump target="*manko10"][endif]

*pus_up_h
[cm ]
[if exp="f.l_mlem=='cp' || f.l_mlem=='ct' || f.l_mlem=='pu' || f.l_mlem=='pd' || f.l_mlem=='b'"][chara_mod name="breath" time="0" storage="00.png" ][endif]
[eval exp="f.hp_mlem='pu'"]
[random_10]
[eval exp="f.wet=f.wet+5+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_p<=0 || f.pants_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.dress<=0 && f.under_p<=0"]
[chara_mod name="hand_R" time="0" storage="mod/hand/dress_h_manko_up.png" ]
[else][chara_mod name="hand_R" time="0" storage="mod/hand/dress_h_manko_up_.png" ][endif]
[chara_mod name="h" time="0" storage="00.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*manko1"]
[elsif exp="f.talk==2"][jump target="*manko2"]
[elsif exp="f.talk==3"][jump target="*manko3"]
[elsif exp="f.talk==4"][jump target="*manko4"]
[elsif exp="f.talk==5"][jump target="*manko5"]
[elsif exp="f.talk==6"][jump target="*manko6"]
[elsif exp="f.talk==7"][jump target="*manko7"]
[elsif exp="f.talk==8"][jump target="*manko8"]
[elsif exp="f.talk==9"][jump target="*manko9"]
[else][jump target="*manko10"][endif]

*pus_down
[cm][if exp="f.mlem=='h'"][jump target="*pus_down_h"]
[elsif exp="f.mlem=='l'"][jump target="*pus_down_l"][endif] 

*pus_down_l
[cm ]
[if exp="f.ht_mlem=='n' || f.hp_mlem=='n' || f.ht_mlem=='b'"][else][chara_mod name="hand_R" time="0" storage="00.png" ][chara_mod name="h" time="0" storage="00.png" ][endif]
[if exp="f.hp_mlem=='pd'"][chara_mod name="hand_R" time="0" storage="00.png" ][endif]
[eval exp="f.l_mlem='pd'"]
[random_10]
[eval exp="f.wet=f.wet+10+f.r"]
[if exp="f.dress<=0 || f.dress>=1001 && f.dress<=1029 || f.dress>=1031 && f.dress<=1049 || f.dress==2002|| f.dress==1111|| f.dress==1112 || f.dress==5 || f.dress==6 || f.dress>=1081 && f.dress<=1089 || f.dress>=1081 && f.dress<=1109"]
[chara_mod name="breath" time="0" storage="mod/hand/lick_manko_d.png" ]
[else][jump target="*next_1"][endif]
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*mankox1"]
[elsif exp="f.talk==2"][jump target="*mankox2"]
[elsif exp="f.talk==3"][jump target="*mankox3"]
[elsif exp="f.talk==4"][jump target="*mankox4"]
[elsif exp="f.talk==5"][jump target="*mankox5"]
[elsif exp="f.talk==6"][jump target="*mankox6"]
[elsif exp="f.talk==7"][jump target="*mankox7"]
[elsif exp="f.talk==8"][jump target="*mankox8"]
[elsif exp="f.talk==9"][jump target="*mankox9"]
[else][jump target="*mankox10"][endif]

*pus_down_h
[cm ]
[if exp="f.l_mlem=='cp' || f.l_mlem=='ct' || f.l_mlem=='pd' || f.l_mlem=='pu' || f.l_mlem=='b'"][chara_mod name="breath" time="0" storage="00.png" ][endif]
[eval exp="f.hp_mlem='pd'"]
[random_10]
[eval exp="f.wet=f.wet+10+f.r"]
[if exp="f.under_b<=0 || f.bra_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="h" time="0" storage="00.png" ]
[chara_mod name="hand_R" time="0" storage="mod/hand/dress_h_manko_down.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*mankox1"]
[elsif exp="f.talk==2"][jump target="*mankox2"]
[elsif exp="f.talk==3"][jump target="*mankox3"]
[elsif exp="f.talk==4"][jump target="*mankox4"]
[elsif exp="f.talk==5"][jump target="*mankox5"]
[elsif exp="f.talk==6"][jump target="*mankox6"]
[elsif exp="f.talk==7"][jump target="*mankox7"]
[elsif exp="f.talk==8"][jump target="*mankox8"]
[elsif exp="f.talk==9"][jump target="*mankox9"]
[else][jump target="*mankox10"][endif]

*chan_trai
[cm][if exp="f.mlem=='h'"][jump target="*chan_trai_h"]
[elsif exp="f.mlem=='l'"][jump target="*chan_trai_l"][endif] 
*chan_trai_l
[cm][if exp="f.ht_mlem=='c' || f.hp_mlem=='c'"][chara_mod name="h" time="0" storage="00.png" ][chara_mod name="hand_R" time="0" storage="00.png" ][endif]
[if exp="f.hp_mlem=='pu' || f.hp_mlem=='pd'"][chara_mod name="hand_R" time="0" storage="00.png" ][endif]
[eval exp="f.l_mlem='ct'"]
[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_p<=0 || f.pants_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="breath" time="0" storage="mod/hand/lick_ct.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*ashi1"]
[elsif exp="f.talk==2"][jump target="*ashi2"]
[elsif exp="f.talk==3"][jump target="*ashi3"]
[elsif exp="f.talk==4"][jump target="*ashi4"]
[elsif exp="f.talk==5"][jump target="*ashi5"]
[elsif exp="f.talk==6"][jump target="*ashi6"]
[elsif exp="f.talk==7"][jump target="*ashi7"]
[else][jump target="*ashi8"][endif]

*chan_trai_h
[cm ]
[chara_mod name="breath" time="0" storage="00.png" ]
[if exp="f.hp_mlem=='c'"][else][chara_mod name="hand_R" time="0" storage="00.png" ][endif]
[eval exp="f.ht_mlem='c'"]
[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_p<=0 || f.pants_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_chan_trai.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*ashi1"]
[elsif exp="f.talk==2"][jump target="*ashi2"]
[elsif exp="f.talk==3"][jump target="*ashi3"]
[elsif exp="f.talk==4"][jump target="*ashi4"]
[elsif exp="f.talk==5"][jump target="*ashi5"]
[elsif exp="f.talk==6"][jump target="*ashi6"]
[elsif exp="f.talk==7"][jump target="*ashi7"]
[else][jump target="*ashi8"][endif]

*chan_phai
[cm][if exp="f.mlem=='h'"][jump target="*chan_phai_h"]
[elsif exp="f.mlem=='l'"][jump target="*chan_phai_l"][endif] 

*chan_phai_l
[cm][if exp="f.ht_mlem=='c' || f.hp_mlem=='c'"][chara_mod name="hand_R" time="0" storage="00.png" ][chara_mod name="h" time="0" storage="00.png" ][endif]
[if exp="f.hp_mlem=='pu' || f.hp_mlem=='pd'"][chara_mod name="hand_R" time="0" storage="00.png" ][endif]
[eval exp="f.l_mlem='cp'"]
[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_p<=0 || f.pants_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="breath" time="0" storage="mod/hand/lick_cp.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*ashi1"]
[elsif exp="f.talk==2"][jump target="*ashi2"]
[elsif exp="f.talk==3"][jump target="*ashi3"]
[elsif exp="f.talk==4"][jump target="*ashi4"]
[elsif exp="f.talk==5"][jump target="*ashi5"]
[elsif exp="f.talk==6"][jump target="*ashi6"]
[elsif exp="f.talk==7"][jump target="*ashi7"]
[else][jump target="*ashi8"][endif]

*chan_phai_h
[cm ][chara_mod name="breath" time="0" storage="00.png" ]
[if exp="f.ht_mlem=='c'"][else][chara_mod name="h" time="0" storage="00.png" ][endif]
[eval exp="f.hp_mlem='c'"]
[random_10]
[eval exp="f.wet=f.wet+3+f.r"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_p<=0 || f.pants_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="hand_R" time="0" storage="mod/hand/dress_h_chan_phai.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*ashi1"]
[elsif exp="f.talk==2"][jump target="*ashi2"]
[elsif exp="f.talk==3"][jump target="*ashi3"]
[elsif exp="f.talk==4"][jump target="*ashi4"]
[elsif exp="f.talk==5"][jump target="*ashi5"]
[elsif exp="f.talk==6"][jump target="*ashi6"]
[elsif exp="f.talk==7"][jump target="*ashi7"]
[else][jump target="*ashi8"][endif]




*H_wet
[cm ]
[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[f/sclcp_nt]
[name] À~♥♥♥! Chúng ta cùng làm như mọi khi nhé![lr][f/sq_nt]
Với em thì lúc nào cũng được hết~♥♥♥[p]
[f/clp_nt]
[button  target="*H"  graphic="s_ch/dress_ok.png"  x="650"  y="180" ]
[button target="*no_h"  graphic="s_ch/dress_remiddle.png"  x="650"  y="300" ]
[s ]
*H
[cm_t][layopt layer="message0" visible=true]
[black][stop_bgm]
[eval exp="f.wet=f.wet+f.wet_owe"][eval exp="f.wet_owe=0"]
[jump storage="H/before.ks"  target="*bed" ]
*no_h
[cm ]
[eval exp="f.wet_owe=f.wet_owe+f.wet"]
[eval exp="f.wet=0"]
[eval exp="f.lust=f.lust+2"]
[jump target="*next_1"]

*return_sks
[cm_t]
[eval exp="f.h_bung=0"]
[eval exp="f.h_trai=0"]
[eval exp="f.h_phai=0"]
[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[jump target="*change_dress"]

*return_out_sks
[cm_t][layopt layer="message0" visible=true]
[eval exp="f.lust=f.lust+5"][eval exp="f.act='non'"]
[black][stop_bgm]…[p][day_end]
;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;kiss
*kiss1
[f/sclp_nt][k_01]~*kiss*[r]
Humm~um[lr]
...[p][f/cp_nt][stopse]
[jump target="*next_1"]
*kiss2
[f/sclp_nt][k_02]~*kiss*[r]
Humm~um[lr]
...[name]♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss3
[f/sclcp_nt][k_03]
~*kiss*[r]Humm~um[lr]
...[name_h]...Em...tuyệt quá...♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss4
[f/clp_nt][k_04]~*kiss*[r]
Humm~um[lr]
...[name]...em...muốn...nữa♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss5
[f/clp_nt][k_05]~*kiss*[r]Humm~um[lr]
...[name_h]...[lr]
[f/cp_nt][name_h]...Hãy yêu em nhiều hơn nữa đi...♥♥♥[p][f/sclp_nt][stopse]
[jump target="*next_1"]
*kiss6
[f/clp_nt][k_06]~*kiss*[r]
Humm~um[lr]
[name_h][lr]
[f/cp_nt]Nó thật tuyệt... nhưng... Anh có thể làm hơn nữa~♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*kiss7
[f/clcp_nt][k_07]~*kiss*[r]
Humm~um[lr]
...[name_h][p][f/sclp_nt][stopse]
[jump target="*next_1"]
*kiss8
[f/clcp_nt][k_08]~*kiss*[r]
Humm~um[lr]
...Ah~hah~♥♥♥~[name_h][p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss9
[f/clcp_nt][k_09]~*kiss*[r]
Humm~um[lr]
...[name_h]~~♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss10
[f/clcp_nt][k_10]~*kiss*[r]
Humm~um[lr]
♥♥♥...[name_h]~ ah[p][f/sclp_nt][stopse]
[jump target="*next_1"]
*kiss11
[f/clcp_nt][k_11]~*kiss*[r]
Umm~um[lr]
...[name]~ ah, thật tuyệt... Em muốn nhiều hơn nữa~♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss12
[f/clcp_nt][k_12]~*kiss*[r]
Humm~um[lr]
...[name]~ ah[p][f/sclp_nt][stopse]
[jump target="*next_1"]
*kiss13
[f/clcp_nt][k_13]~*kiss*[r]
Humm~um[lr]
...[name_h]~♥♥♥ [p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss14
[f/clcp_nt][k_14]~*kiss*[r]
Humm~um~[lr]
...[name]~ ah[p][f/sq_nt][stopse]
[jump target="*next_1"]
*kiss15
[f/clcp_nt][k_15]~*kiss**~Humm~hum[lr]
...[name]~ ah ~ [name_h] thật tốt với em...♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*kiss16
[f/clcp_nt][k_10]~*kiss*[r]
Humm~um[lr]
...[name]~ ah~~♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]


;;Nade
*nade1
[f/sclcp_nt][um_01]Umm~[lr]
[name_h][p][f/sp_nt][stopse]
[jump target="*next_1"]
*nade2
[f/sclcp_nt][um_05]Umm~[lr][f/ss_nt]
[name_h]...♥♥♥[p][stopse]
[jump target="*next_1"]
*nade3
[f/ss_nt][um_01]Umm~[lr]
....♥♥♥[p][f/sclp_nt][stopse]
[jump target="*next_1"]
*nade4
[f/sclcp_nt][um_05]Umm~[lr]
....♥♥♥...tay của [name_h][p][f/sp_nt][stopse]
[jump target="*next_1"]
*nade5
[f/sclcp_nt][um_10]Umm~[lr]
....♥♥♥.. [name_h]... thật ấm áp[p][f/sp_nt][stopse]
[jump target="*next_1"]
*nade6
[f/ss_nt][sm_09]hmm~[lr]
....♥♥♥.. [name_h][p][f/s_nt][stopse]
[jump target="*next_1"]
*nade7
[f/sclp_nt][sm_09]hmm~[lr]
....♥♥♥.. [name_h] thật tốt...[p][f/sp_nt][stopse]
[jump target="*next_1"]
*nade8
[f/sclp_nt][sm_05]
hmm~[lr]
....♥♥♥.. [name_h] hãy chạm vào em nhiều hơn nữa...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*nade9
[f/sclp_nt][um_10]Umm~[lr]
....♥♥♥.. [name_h] hãy chạm vào em đi~♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*nade10
[f/sclp_nt][um_01]♥♥♥...Em muốn nhiều hơn nữa...♥♥♥[p][f/ss_nt][stopse]
[jump target="*next_1"]



;;oppai
*oppai1
[f/clp_nt][u_01]Umm~[lr] 
[name_h]...♥♥♥[p]
[f/sp_nt]Anh hãy làm bất cứ điều gì anh muốn với cơ thể em. ♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai2
[f/clp_nt][u_02]...[lr][f/sclp_nt]
[name_h]~♥♥♥~ Cơ thể em...[kimochi_ii_1]Cảm thấy thật tuyệt...♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai3
[f/clp_nt][u_03]Umm~...[lr][f/sclp_nt]
[if exp="f.mlem=='l'"]
Lưỡi của [name_h]~♥♥♥~ liếm ngực em...[kimochi_ii_1]...thật tuyệt...♥♥♥[p][f/sq_nt][stopse][else]
[name_h]~♥♥♥~ chạm vào cơ thể em...[kimochi_ii_1]...thật tuyệt...♥♥♥[p][f/sq_nt][stopse][endif]
[jump target="*next_1"]
*oppai4
[f/sclp_nt][u_04]Umm~[l][f/sclcp_nt][motto_2]
[if exp="f.mlem=='l'"]
♥♥♥....lưỡi của [name_h]..mạnh hơn nữa đi...[p][f/sq_nt][stopse]
[jump target="*next_1"]
[endif]
♥♥♥....Chạm vào em nữa đi...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai5
[f/clp_nt][u_07]Umm~♥♥♥[l][f/sclp_nt][motto_2]
[if exp="f.mlem=='l'"]
~♥♥♥....lưỡi của [name_h] chạm vào em nhiều hơn nữa đi...[p][f/sq_nt][stopse]
[jump target="*next_1"]
[endif]
~♥♥♥....Chạm vào em nhiều hơn nữa đi...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai6
[f/sclp_nt][u_09]Umm~♥♥♥[l][f/sclp_nt][kimochii_1]~♥♥♥....Em thấy thật hạnh phúc...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai7
[if exp="f.mlem=='l'"]
[f/sclp_nt][u_10]Umm~♥♥♥[l][ii_1]♥♥♥....Ngực của em~♥♥♥...mùi vị... ổn với anh chứ...?~♥♥♥...[p][f/sq_nt][stopse][else]
[f/sclp_nt][u_10]Umm~♥♥♥[l][ii_1]♥♥♥....Ngực của em~♥♥♥...nó ổn với anh chứ...?~♥♥♥...[p][f/sq_nt][stopse][endif]
[jump target="*next_1"]
*oppai8
[f/clp_nt][u_08]Umm~♥[p][f/sclp_nt][ii_1]Em không thấy khó chịu hay gì đâu~♥♥♥[l]
[if exp="f.mlem=='l'"]
[motto_2]...Nên anh cứ thưởng thức tiếp đi~♥♥♥...[p][f/sq_nt][stopse]
[jump target="*next_1"]
[endif]
[motto_2]...Anh có thể làm mạnh hơn chút nữa được đó~♥♥♥...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai9
[f/clp_nt][u_11]Umm~♥♥[p][f/sclp_nt][ii_1]Nó không hề khó chịu hay gì đâu~♥♥♥[lr]
[if exp="f.mlem=='l'"]
Lưỡi của [name_h] cuốn lấy em...em cảm thấy rất tuyệt~♥♥♥...[p][f/sq_nt][stopse]
[jump target="*next_1"]
[endif]
Được [name_h] chạm vào em cảm thấy rất tuyệt~♥♥♥...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai10
[f/clp_nt][u_13]Umm~♥♥♥♥[p][f/sclp_nt][ii_1]Em không cảm thấy khó chịu chút nào cả~♥♥♥[l]
Vì em luôn tin tưởng [name_h] mà!~♥♥♥...[p][f/ss_nt][stopse]
[jump target="*next_1"]
*oppai11
[u_05][f/clcp_nt]....[name]...♥♥♥~[l][f/sclp_nt]
[if exp="f.mlem=='l'"]
[motto_2]Hãy mút nó nhiều hơn nữa...♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
[endif]
[motto_2]Hãy chăm sóc em nhiều hơn nữa...♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai12
[u_06][f/p_nt]......♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]


;;Hara
*hara1
[f/sclcp_nt][um_01]Umm~[lr][f/ss_nt]
~♥♥♥~ Nhột quá!~ [sm_05][name_h] thật là...[p][f/sp_nt]
[jump target="*next_1"]
*hara2
[f/sclcp_nt][um_01]Umm~[lr][f/ss_nt]
~♥♥♥~ Cảm giác thật kì cục!~ [sm_05][name_h] thật là...[p][f/sp_nt]
[jump target="*next_1"]
*hara3
[f/sclcp_nt][um_02]Umm~[lr]
~♥♥♥...[name_h]~Cảm giác này...Có chút kì kì![lr]
[f/clcp_nt]
[name_h] Làm vậy là có ý gì...♥♥♥?[p][f/sp_nt]
[jump target="*next_1"]
*hara4
[f/sclcp_nt][um_03]Umm~♥♥♥[lr]
[if exp="f.mlem=='l'"]
~♥♥♥....Bụng em...[kimochi_ii_1]dù bất cứ chỗ nào được lưỡi của [name_h] chạm tới cũng đều rất tuyệt...![p][f/sp_nt]
[jump target="*next_1"]
[endif]
~♥♥♥....Bụng em...[kimochi_ii_1]dù bất cứ chỗ nào được [name_h] chạm tới cũng đều rất tuyệt...![p][f/sp_nt]
[jump target="*next_1"]
*hara5
[f/sclp_nt][um_04]Umm~♥♥♥[lr]
....[name_h]♥♥♥...thôi mà...♥♥♥[p][f/sq_nt]
[jump target="*next_1"]
*hara6
[f/clcp_nt][um_05]Umm~♥♥♥[lr]
[sm_05]......♥♥♥[p][f/q_nt]
[jump target="*next_1"]
*hara7
[f/clcp_nt][um_06]Hah~~~♥♥♥[lr]
[sm_09]...[name_h] kì ghê...♥♥♥[p][f/q_nt]
[jump target="*next_1"]
*hara8
[f/clcp_nt][um_14]Hah~~~♥♥♥[lr]
[name_h]...♥♥♥[p][f/q_nt]
[jump target="*next_1"]


;;Manko
*manko1
[f/clcp_nt][u_05]Umm~♥♥♥[l] [name_h]~♥♥♥[[lr][f/clcp_nt]
[if exp="f.mlem=='l'"]
[kore_1]Liếm chỗ đó...có ổn không...[p][f/sq_nt]
[jump target="*next_1"]
[endif]
[kore_1]Chỗ đó...em thấy lạ quá...[p][f/sq_nt]
[jump target="*next_1"]
*manko2
[f/clcp_nt][u_01]Un~!♥♥♥ [l][f/sclcp_nt]
Em không sao đâu~♥♥♥..[lr]
Nên anh có thể...mạnh hơn chút nữa~~♥♥♥[p][sm_05][f/sq_nt]
[jump target="*next_1"]
*manko3
[f/clcp_nt][u_03]♥♥♥.....[lr]
[kimochi_ii_1]Thật tuyệt ♥♥♥~ [l]Dù có hơi xấu hổ~~♥♥♥[p][f/sq_nt]
Anh có thể làm hơn nữa được mà...♥♥♥...[name_h][p]
[jump target="*next_1"]
*manko4
[f/clcp_nt][u_02]♥♥♥...[lr][f/sq_nt]
Anh có muốn nữa không?♥♥♥[p]
[jump target="*next_1"]
*manko5
[f/clcp_nt][u_04]Umm~~~♥♥♥.....[l]
[manko_1]chỗ đó của em~~♥♥♥[l][f/q_nt]
...Em sắp không chịu được nữa rồi...[name_h]~♥♥♥[p][f/sq_nt]
[jump target="*next_1"]
*manko6
[f/clcp_nt][u_05]Umm~~♥♥♥.....[lr]
Cơ thể em~~♥♥♥[p][u_06]
Uh!...Em sắp không chịu được nữa rồi...[name_h]~♥♥♥[p][f/sp_nt]
[jump target="*next_1"]
*manko7
[f/clcp_nt][u_07]Umm~huh~♥♥♥.....[l]
Cơ thể em~~♥♥♥[l]
[if exp="f.mlem=='l'"]
Lưỡi của~
[endif][name_h]~♥♥♥~ Làm ơn...[lr]
[motto_2]Hãy "YÊU" em nhiều hơn nữa đi...♥♥♥[p][f/sp_nt]
[jump target="*next_1"]
*manko8
[f/clcp_nt][u_08]Umm~uh~♥♥♥.....[l]
[manko_de_1]Chỗ đó của em~~♥♥♥~[l]
như đang...[l][hora_1] [name_h]~♥♥♥~ Làm ơn...[p]
Hãy chiếm lấy cơ thể em...♥♥♥[f/cp_nt]
[jump target="*next_1"]
*manko9
[f/clcp_nt][u_09]Umm~uh~♥♥♥.....[l][f/sclcp_nt]
[kore_1]Chỗ đó của em~~♥♥♥[lr]
như đang...[l]muốn cùng [name_h]~♥♥♥~ [p][f/sq_nt]
[jump target="*next_1"]
*manko10
[f/clcp_nt][u_10]Umm~♥♥♥.....[p][f/sp_nt]
[manko_ga_1]Chỗ đó của em~~♥♥♥[l]
Cảm thấy rất tuyệt khi [name_h] chạm vào~♥♥♥~ [sm_09][p][f/sq_nt]
[jump target="*next_1"]


;Mankox
*mankox1
[f/clcp_nt][wet_0][u_07]Umm~♥♥♥[l] 
[if exp="f.mlem=='l'"]
Lưỡi của [name_h][lr][f/clcp_nt]
Chỗ đó...[ii_1]thật tuyệt~♥♥♥[p][f/sq_nt]
[jump target="*next_1"]
[endif]
[name_h][lr][f/clcp_nt]
Chỗ đó...[ii_1]thật tuyệt~♥♥♥[p][f/sq_nt]
[jump target="*next_1"]
*mankox2
[f/clcp_nt][wet_0][u_05]Un~!♥♥♥ [lr][f/clcp_nt][sugoi_3]
Em sắp...không chịu nổi nữa rồi...♥♥♥[p]
[f/sq_nt]
[jump target="*next_1"]
*mankox3
[wet_0][f/clcp_nt][u_04]
~♥♥♥[lr]
[f/q_nt]
[if exp="f.mlem=='l'"]
Lưỡi của [name_h][oku_ni_1]~~ liếm nó đi~♥♥♥~~làm ơn~♥♥♥[p]
[jump target="*next_1"]
[endif]
[name_h][oku_ni_1]~~ Chạm vào em đi~♥♥♥~~làm ơn~♥♥♥[p]
[jump target="*next_1"]
*mankox4
[wet_0][f/clcp_nt][u_02]Uh~♥♥♥...[lr][f/q_nt]
Em muốn...[motto_2]hơn nữa...♥♥♥?[p][f/sq_nt]
[jump target="*next_1"]
*mankox5
[wet_1][f/clcp_nt][U_03]Uh~♥♥♥...[l][f/sq_nt]
[if exp="f.mlem=='l'"]
Lưỡi của [name_h][naka_1] Đang vào bên trong em~♥♥♥[lr][f/q_nt]
Em muốn...[motto_2]hơn nữa...♥♥♥?[p][f/sq_nt]
[jump target="*next_1"]
[endif]
[name_h][naka_1] Đang chạm vào bên trong em~♥♥♥[lr][f/q_nt]
Em muốn...[motto_2]hơn nữa...♥♥♥?[p][f/sq_nt]
[jump target="*next_1"]
*mankox6
[wet_1][f/clcp_nt][U_06]Uh~♥♥♥...[l][f/sq_nt]
[name_h][sugoi_wa_1]~♥♥♥ Đang chạm vào bên trong em~♥♥♥[lr][f/q_nt]
Dù cách chúng ta tiếp xúc như vậy không đẹp cho lắm~~♥♥♥?[p][f/sq_nt]
[jump target="*next_1"]
*mankox7
[wet_1][f/clcp_nt][U_08]Uh~♥♥♥...[lr][f/q_nt]
[if exp="f.mlem=='l'"]
Lưỡi của~
[endif]
[name_h][motto_2]~♥♥♥~có thể~♥♥♥~sâu hơn một chút~♥♥♥[lr][f/cp_nt]
Cảm giác này~~♥♥♥~ thật tuyệt~[p][f/sq_nt]
[jump target="*next_1"]
*mankox8
[wet_1][f/clcp_nt][U_09]Uh~♥♥♥...[lr][f/q_nt]
[if exp="f.mlem=='l'"]
Lưỡi của~
[endif]
[name_h]~♥♥♥~[manko_1]chỗ đó~♥♥♥~~♥♥♥[lr][f/cp_nt]
Em có thể cảm thấy anh~~♥♥♥~~[p][f/sq_nt]
[jump target="*next_1"]
*mankox9
[wet_1][f/clcp_nt][U_11]Uh~♥♥♥...[lr][f/p_nt]
[if exp="f.mlem=='l'"]
Lưỡi của~
[endif]
[name_h]~♥♥♥~[naka_de_1]chỗ đó~♥♥♥~~♥♥♥[lr][f/cp_nt]
cơ thể em như muốn tan chảy~~♥♥♥~~[p][f/sq_nt]
[jump target="*next_1"]

;;Ashi
*ashi1
[f/clp_nt][u_01]Umm~[lr][f/q_nt][hora_1]
Anh làm vậy thật kì quá [name_h]~♥♥♥[p]
[jump target="*next_1"]
*ashi2
[f/clcp_nt][u_02]...♥♥♥[lr][f/sp_nt]
[ii_1]Cảm giác cũng không khó chịu gì cả[p]
[jump target="*next_1"]
*ashi3
[f/clcp_nt][u_03]....♥♥♥[p][f/sp_nt]
[jump target="*next_1"]
*ashi4
[f/clcp_nt][u_06]....[name_h]...♥♥♥[p][f/q_nt]
[jump target="*next_1"]
*ashi5
[f/clcp_nt][u_07]......♥♥♥[p][f/sq_nt]
[jump target="*next_1"]
*ashi6
[f/clcp_nt][u_04]Umm~♥♥♥[lr][f/sclcp_nt]
[na_1]Chân em có gì hấp dẫn anh đến vậy?[p][f/sq_nt]
[jump target="*next_1"]
*ashi7
[f/clcp_nt][u_08]Umm~♥♥♥[lr][f/sclcp_nt]
[ii_1]Em không cảm thấy khó chịu gì đâu[p][f/ssc_nt]
[sm_09]Nên anh cứ tiếp tục đi[p]
[jump target="*next_1"]
*ashi8
[f/clcp_nt][u_09]Umm~♥♥♥[lr][f/ssc_nt]
[motto_2]Em muốn được [name_h] chạm vào nhiều hơn nữa[p][sm_05]
[jump target="*next_1"]
