;;リターン/ジャンプ

*top
[eval exp="f.talk=f.talk+1"]
[random_3]
[if exp="f.r>=2 && f.talk>=9"]
[jump storage="H/dress_talk.ks" target="*dress_talk"][endif]
[if exp="f.dress==0 || f.dress>=1000 && f.dress<=1029" ]
[chara_mod name="ef2" time="0" storage="s/body/dress_hide_bed.png" ]
[else][chara_mod name="ef2" time="0" storage="00.png" ][endif]

[if exp="f.ch_win==1" ][jump target="*dress_up" ][elsif exp="f.ch_win==2" ][jump target="*dress_up2" ]
[elsif exp="f.ch_win==3" ][jump target="*dress_up3" ][elsif exp="f.ch_win==4" ][jump target="*dress_up4" ]
[elsif exp="f.ch_win==5" ][jump target="*dress_hair" ][elsif exp="f.ch_win==6" ][jump target="*dress_pin" ]
[elsif exp="f.ch_win==7" ][jump target="*dress_head" ][elsif exp="f.ch_win==8" ][jump target="*dress_leg" ]
[elsif exp="f.ch_win==9" ][jump target="*dress_glasses" ][elsif exp="f.ch_win==10" ][jump target="*dress_under" ]
[elsif exp="f.ch_win==11" ][jump target="*dress_under2" ][elsif exp="f.ch_win==12" ][jump target="*dress_arm" ]
[elsif exp="f.ch_win==13" ][jump target="*dress_other" ][elsif exp="f.ch_win==14" ][jump target="*dress_original" ][endif]

*top_
;[cm]
[if exp="f.dress==0 || f.dress>=1000 && f.dress<=1029" ]
[chara_mod name="ef2" time="0" storage="s/body/dress_hide_bed.png" ]
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
[cm][hide_role][nolog][hide_message_w]
;[set_dress]
;[if exp="f.step==6" ][eval exp="f.dress_save=f.dress" ][eval exp="f.last_act='before_bed'" ][endif]
[mod_win st="o/win/dress-win_.png" ]
;[show_dress]
[-]

;;服１---------------------------------------------------------------------------------------------
*dress_up
[cm][eval exp="f.ch_win=1" ][call storage="H/dress_ex.ks" target="*menu_button" ]
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
[cancelskip][s]

*ks2
[if exp="f.codex==4485 && f.codey==1123"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==4372 && f.codey==6562"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==7275 && f.codey==6354"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==2145 && f.codey==3658"]
[eval exp="f.code_ss='ful'"][endif][return]

*c_non
[dress_face_r]
[mod_dress st="00.png" time="700"][eval exp="f.dress=0" ][jump storage="H/dress.ks" target="*top" ]
*c_a
[dress_face_r]
[if exp="f.dress==1"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/a.png" time="700"][eval exp="f.dress=1" ][jump storage="H/dress.ks" target="*top" ]

*c_b1
[dress_face_r]
[if exp="f.dress==11"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/b1.png" time="700" ]
[eval exp="f.dress=11" ][jump storage="H/dress.ks" target="*top" ]
*c_b2
[dress_face_r]
[if exp="f.dress==12"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/b2.png" time="700"][eval exp="f.dress=12" ][jump storage="H/dress.ks" target="*top" ]
*c_b3
[dress_face_r]
[if exp="f.dress==13"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/b3.png" time="700"][eval exp="f.dress=13" ][jump storage="H/dress.ks" target="*top" ]
*c_b4
[dress_face_r]
[if exp="f.dress==14"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/b4.png" time="700"][eval exp="f.dress=14" ][jump storage="H/dress.ks" target="*top" ]
*c_b5
[dress_face_r]
[if exp="f.dress==115"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/b5.png" time="700"][eval exp="f.dress=15" ][jump storage="H/dress.ks" target="*top" ]
*c_b6
[dress_face_r]
[if exp="f.dress==16"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/b6.png" time="700"][eval exp="f.dress=16" ][jump storage="H/dress.ks" target="*top" ]

*c_c1
[dress_face_r]
[if exp="f.dress==21"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/c1.png" time="700"][eval exp="f.dress=21" ][jump storage="H/dress.ks" target="*top" ]
*c_c2
[dress_face_r]
[if exp="f.dress==22"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/c2.png" time="700"][eval exp="f.dress=22" ][jump storage="H/dress.ks" target="*top" ]
*c_c3
[dress_face_r]
[if exp="f.dress==23"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="s/dress/D/c3.png" time="700"][eval exp="f.dress=23" ][jump storage="H/dress.ks" target="*top" ]
*c_c4
[dress_face_r]
[if exp="f.dress==24"][else]
[chara_mod name="dress" time="800" storage="00.png" ][endif]
[mod_dress st="s/dress/D/c4.png" time="700"][eval exp="f.dress=24" ][jump storage="H/dress.ks" target="*top" ]
*c_c5
[dress_face_r]
[if exp="f.dress==25"][else]
[chara_mod name="dress" time="800" storage="00.png" ][endif]
[mod_dress st="s/dress/D/c5.png" time="700"][eval exp="f.dress=25" ][jump storage="H/dress.ks" target="*top" ]
*c_c6
[dress_face_r]
[if exp="f.dress==26"][else]
[chara_mod name="dress" time="800" storage="00.png" ][endif]
[mod_dress st="s/dress/D/c6.png" time="700"][eval exp="f.dress=26" ][jump storage="H/dress.ks" target="*top" ]
*c_c7
[dress_face_r]
[if exp="f.dress==27"][else]
[chara_mod name="dress" time="800" storage="00.png" ][endif]
[mod_dress st="s/dress/D/c7.png" time="700"][eval exp="f.dress=27" ][jump storage="H/dress.ks" target="*top" ]

*c_e1
[dress_face_r]
[if exp="f.dress==41"][else]
[chara_mod name="dress" time="800" storage="00.png" ][endif]
[mod_dress st="s/dress/D/e1.png" time="700"][eval exp="f.dress=41" ][jump storage="H/dress.ks" target="*top" ]
*c_e2
[dress_face_r]
[if exp="f.dress==42"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/e2.png" time="700"][eval exp="f.dress=42" ][jump storage="H/dress.ks" target="*top" ]
*c_e3
[dress_face_r]
[if exp="f.dress==43"][else]
[chara_mod name="dress" time="800" storage="00.png" ][endif]
[mod_dress st="s/dress/D/e3.png" time="700"][eval exp="f.dress=43" ][jump storage="H/dress.ks" target="*top" ]
*c_e4
[dress_face_r]
[if exp="f.dress==44"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/e4.png" time="700"][eval exp="f.dress=44" ][jump storage="H/dress.ks" target="*top" ]
*c_e5
[dress_face_r]
[if exp="f.dress==45"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/e5.png" time="700"][eval exp="f.dress=45" ][jump storage="H/dress.ks" target="*top" ]
*c_e6
[dress_face_r]
[if exp="f.dress==46"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/e6.png" time="700"][eval exp="f.dress=46" ][jump storage="H/dress.ks" target="*top" ]


*c_f1
[dress_face_r]
[if exp="f.dress==51"][else]
[chara_mod name="dress" time="800" storage="00.png" ][endif]
[mod_dress st="s/dress/D/f1.png" time="700"][eval exp="f.dress=51" ][jump storage="H/dress.ks" target="*top" ]
*c_f2
[dress_face_r]
[if exp="f.dress==52"][else]
[chara_mod name="dress" time="800" storage="00.png" ][endif]
[mod_dress st="s/dress/D/f2.png" time="700"][eval exp="f.dress=52" ][jump storage="H/dress.ks" target="*top" ]
*c_f3
[dress_face_r]
[if exp="f.dress==53"][else]
[chara_mod name="dress" time="800" storage="00.png" ][endif]
[mod_dress st="s/dress/D/f3.png" time="700"][eval exp="f.dress=53" ][jump storage="H/dress.ks" target="*top" ]

*c_g1
[dress_face_r]
[if exp="f.dress==61"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/g1.png" time="700"][eval exp="f.dress=61" ][jump storage="H/dress.ks" target="*top" ]
*c_g2
[dress_face_r]
[if exp="f.dress==62"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/g2.png" time="700"][eval exp="f.dress=62" ][jump storage="H/dress.ks" target="*top" ]
*c_g3
[dress_face_r]
[if exp="f.dress==63"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/g3.png" time="700"][eval exp="f.dress=63" ][jump storage="H/dress.ks" target="*top" ]
*c_g4
[dress_face_r]
[if exp="f.dress==64"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/g4.png" time="700"][eval exp="f.dress=64" ][jump storage="H/dress.ks" target="*top" ]
*c_g5
[dress_face_r]
[if exp="f.dress==65"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/g5.png" time="700"][eval exp="f.dress=65" ][jump storage="H/dress.ks" target="*top" ]
*c_g6
[dress_face_r]
[if exp="f.dress==66"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/g6.png" time="700"][eval exp="f.dress=66" ][jump storage="H/dress.ks" target="*top" ]

*c_h1
[dress_face_r]
[if exp="f.dress==71"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/h1.png" time="700"][eval exp="f.dress=71" ][jump storage="H/dress.ks" target="*top" ]
*c_h2
[dress_face_r]
[if exp="f.dress==72"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/h2.png" time="700"][eval exp="f.dress=72" ][jump storage="H/dress.ks" target="*top" ]
*c_h3
[dress_face_r]
[if exp="f.dress==73"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/h3.png" time="700"][eval exp="f.dress=73" ][jump storage="H/dress.ks" target="*top" ]
*c_h4
[dress_face_r]
[if exp="f.dress==74"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/h4.png" time="700"][eval exp="f.dress=74" ][jump storage="H/dress.ks" target="*top" ]

*c_i1
[dress_face_r]
[if exp="f.dress==81"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/i1.png" time="700"][eval exp="f.dress=81" ][jump storage="H/dress.ks" target="*top" ]
*c_i2
[dress_face_r]
[if exp="f.dress==82"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/i2.png" time="700"][eval exp="f.dress=82" ][jump storage="H/dress.ks" target="*top" ]
*c_i3
[dress_face_r]
[if exp="f.dress==83"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/i3.png" time="700"][eval exp="f.dress=83" ][jump storage="H/dress.ks" target="*top" ]
*c_i4
[dress_face_r]
[if exp="f.dress==84"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/i4.png" time="700"][eval exp="f.dress=84" ][jump storage="H/dress.ks" target="*top" ]
*c_i5
[dress_face_r]
[if exp="f.dress==85"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/i5.png" ][eval exp="f.dress=85" ][jump storage="H/dress.ks" target="*top" ]
*c_i6
[dress_face_r]
[if exp="f.dress==86"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/i6.png" time="700"][eval exp="f.dress=86" ][jump storage="H/dress.ks" target="*top" ]

*c_j1
[dress_face_r]
[if exp="f.dress==91"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/j1.png" time="700"][eval exp="f.dress=91" ][jump storage="H/dress.ks" target="*top" ]
*c_j2
[dress_face_r]
[if exp="f.dress==92"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/j2.png" time="700"][eval exp="f.dress=92" ][jump storage="H/dress.ks" target="*top" ]
*c_j3
[dress_face_r]
[if exp="f.dress==93"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/j3.png" time="700"][eval exp="f.dress=93" ][jump storage="H/dress.ks" target="*top" ]
*c_j4
[dress_face_r]
[if exp="f.dress==94"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/j4.png" time="700"][eval exp="f.dress=94" ][jump storage="H/dress.ks" target="*top" ]
*c_j5
[dress_face_r]
[if exp="f.dress==95"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/j5.png" time="700"][eval exp="f.dress=95" ][jump storage="H/dress.ks" target="*top" ]

*c_k1
[dress_face_r]
[if exp="f.dress==101"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/k1.png" time="700"][eval exp="f.dress=101" ][jump storage="H/dress.ks" target="*top" ]
*c_k2
[dress_face_r]
[if exp="f.dress==102"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/k2.png" time="700"][eval exp="f.dress=102" ][jump storage="H/dress.ks" target="*top" ]
*c_k3
[dress_face_r]
[if exp="f.dress==103"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/k3.png" time="700"][eval exp="f.dress=103" ][jump storage="H/dress.ks" target="*top" ]
*c_k4
[dress_face_r]
[if exp="f.dress==104"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/k4.png" time="700"][eval exp="f.dress=104" ][jump storage="H/dress.ks" target="*top" ]
*c_k5
[dress_face_r]
[if exp="f.dress==105"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/k5.png" time="700"][eval exp="f.dress=105" ][jump storage="H/dress.ks" target="*top" ]
*c_k6
[dress_face_r]
[if exp="f.dress==106"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/k6.png" time="700"][eval exp="f.dress=106" ][jump storage="H/dress.ks" target="*top" ]

;;服２---------------------------------------------------------------------------------------------
*dress_up2
[cm][eval exp="f.ch_win=2" ][call storage="H/dress_ex.ks" target="*menu_button" ]

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
[cancelskip][s]

*c_l1
[dress_face_r]
[if exp="f.dress==111"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/l1.png" time="700"][eval exp="f.dress=111" ][jump storage="H/dress.ks" target="*top" ]
*c_l2
[dress_face_r]
[if exp="f.dress==112"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/l2.png" time="700"][eval exp="f.dress=112" ][jump storage="H/dress.ks" target="*top" ]
*c_l3
[dress_face_r]
[if exp="f.dress==113"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/l3.png" time="700"][eval exp="f.dress=113" ][jump storage="H/dress.ks" target="*top" ]
*c_l4
[dress_face_r]
[if exp="f.dress==114"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/l4.png" time="700"][eval exp="f.dress=114" ][jump storage="H/dress.ks" target="*top" ]
*c_l5
[dress_face_r]
[if exp="f.dress==115"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/l5.png" time="700"][eval exp="f.dress=115" ][jump storage="H/dress.ks" target="*top" ]

*c_m1
[dress_face_r]
[if exp="f.dress==121"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/m1.png" time="700"][eval exp="f.dress=121" ][jump storage="H/dress.ks" target="*top" ]
*c_m2
[dress_face_r]
[if exp="f.dress==122"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/m2.png" time="700"][eval exp="f.dress=122" ][jump storage="H/dress.ks" target="*top" ]
*c_m3
[dress_face_r]
[if exp="f.dress==122"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/m3.png" time="700"][eval exp="f.dress=123" ][jump storage="H/dress.ks" target="*top" ]
*c_m4
[dress_face_r]
[if exp="f.dress==123"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/m4.png" time="700"][eval exp="f.dress=124" ][jump storage="H/dress.ks" target="*top" ]
*c_m5
[dress_face_r]
[if exp="f.dress==123"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/m5.png" time="700"][eval exp="f.dress=125" ][jump storage="H/dress.ks" target="*top" ]

*c_n1
[dress_face_r]
[if exp="f.dress==131"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/n1.png" time="700"][eval exp="f.dress=131" ][jump storage="H/dress.ks" target="*top" ]
*c_n2
[dress_face_r]
[if exp="f.dress==132"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/n2.png" time="700"][eval exp="f.dress=132" ][jump storage="H/dress.ks" target="*top" ]
*c_n3
[dress_face_r]
[if exp="f.dress==133"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/n3.png" time="700"][eval exp="f.dress=133" ][jump storage="H/dress.ks" target="*top" ]
*c_n4
[dress_face_r]
[if exp="f.dress==134"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/n4.png" time="700"][eval exp="f.dress=134" ][jump storage="H/dress.ks" target="*top" ]
*c_n5
[dress_face_r]
[if exp="f.dress==135"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/n5.png" time="700"][eval exp="f.dress=135" ][jump storage="H/dress.ks" target="*top" ]
*c_n6
[dress_face_r]
[if exp="f.dress==136"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/n6.png" time="700"][eval exp="f.dress=136" ][jump storage="H/dress.ks" target="*top" ]
*c_n7
[dress_face_r]
[if exp="f.dress==137"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/n7.png" time="700"][eval exp="f.dress=137" ][jump storage="H/dress.ks" target="*top" ]

*c_o1
[dress_face_r]
[if exp="f.dress==141"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/o1.png" time="700"][eval exp="f.dress=141" ][jump storage="H/dress.ks" target="*top" ]
*c_o2
[dress_face_r]
[if exp="f.dress==142"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/o2.png" time="700"][eval exp="f.dress=142" ][jump storage="H/dress.ks" target="*top" ]
*c_o3
[dress_face_r]
[if exp="f.dress==143"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/o3.png" time="700"][eval exp="f.dress=143" ][jump storage="H/dress.ks" target="*top" ]
*c_o4
[dress_face_r]
[if exp="f.dress==144"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/o4.png" time="700"][eval exp="f.dress=144" ][jump storage="H/dress.ks" target="*top" ]
*c_o5
[dress_face_r]
[if exp="f.dress==145"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/o5.png" time="700"][eval exp="f.dress=145" ][jump storage="H/dress.ks" target="*top" ]
*c_o6
[dress_face_r]
[if exp="f.dress==146"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/o6.png" time="700"][eval exp="f.dress=146" ][jump storage="H/dress.ks" target="*top" ]

*c_p1
[dress_face_r]
[if exp="f.dress==151"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/p1.png" time="700"][eval exp="f.dress=151" ][jump storage="H/dress.ks" target="*top" ]
*c_p2
[dress_face_r]
[if exp="f.dress==152"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/p2.png" time="700"][eval exp="f.dress=152" ][jump storage="H/dress.ks" target="*top" ]
*c_p3
[dress_face_r]
[if exp="f.dress==153"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/p3.png" time="700"][eval exp="f.dress=153" ][jump storage="H/dress.ks" target="*top" ]
*c_p4
[dress_face_r]
[if exp="f.dress==154"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/p4.png" time="700"][eval exp="f.dress=154" ][jump storage="H/dress.ks" target="*top" ]
*c_p5
[dress_face_r]
[if exp="f.dress==155"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/p5.png" time="700"][eval exp="f.dress=155" ][jump storage="H/dress.ks" target="*top" ]
*c_p6
[dress_face_r]
[if exp="f.dress==156"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/p6.png" time="700"][eval exp="f.dress=156" ][jump storage="H/dress.ks" target="*top" ]

*c_q1
[dress_face_r]
[if exp="f.dress==161"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/q1.png" time="700"][eval exp="f.dress=161" ][jump storage="H/dress.ks" target="*top" ]
*c_q2
[dress_face_r]
[if exp="f.dress==162"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/q2.png" time="700"][eval exp="f.dress=162" ][jump storage="H/dress.ks" target="*top" ]
*c_q3
[dress_face_r]
[if exp="f.dress==163"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/q3.png" time="700"][eval exp="f.dress=163" ][jump storage="H/dress.ks" target="*top" ]
*c_q4
[dress_face_r]
[if exp="f.dress==164"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/q4.png" time="700"][eval exp="f.dress=164" ][jump storage="H/dress.ks" target="*top" ]
*c_q5
[dress_face_r]
[if exp="f.dress==165"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/q5.png" time="700"][eval exp="f.dress=165" ][jump storage="H/dress.ks" target="*top" ]
*c_q6
[dress_face_r]
[if exp="f.dress==166"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/q6.png" time="700"][eval exp="f.dress=166" ][jump storage="H/dress.ks" target="*top" ]

;;服３---------------------------------------------------------------------------------------------
*dress_up3
[cm][eval exp="f.ch_win=3" ][call storage="H/dress_ex.ks" target="*menu_button" ]
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
[cancelskip][s]

*c_man
[dress_face_r]
[if exp="f.dress==5"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/man.png" time="700"][eval exp="f.dress=5" ][jump storage="H/dress.ks" target="*top"]
*c_man_
[dress_face_r]
[if exp="f.dress==6"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/man-.png" time="700"][eval exp="f.dress=6" ][jump storage="H/dress.ks" target="*top"]

*c_xa1
[dress_face_r]
[if exp="f.dress==1001"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xa1.png" time="700"][eval exp="f.dress=1001" ][jump storage="H/dress.ks" target="*top"]
*c_xa2
[dress_face_r]
[if exp="f.dress==1002"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xa2.png" time="700"][eval exp="f.dress=1002" ][jump storage="H/dress.ks" target="*top"]
*c_xa3
[dress_face_r]
[if exp="f.dress==1003"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xa3.png" time="700"][eval exp="f.dress=1003" ][jump storage="H/dress.ks" target="*top"]
*c_xa4
[dress_face_r]
[if exp="f.dress==1004"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xa4.png" time="700"][eval exp="f.dress=1004" ][jump storage="H/dress.ks" target="*top"]
*c_xa5
[dress_face_r]
[if exp="f.dress==1005"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xa5.png" time="700"][eval exp="f.dress=1005" ][jump storage="H/dress.ks" target="*top"]
*c_xa6
[dress_face_r]
[if exp="f.dress==1006"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xa6.png" time="700"][eval exp="f.dress=1006" ][jump storage="H/dress.ks" target="*top"]
*c_xa7
[dress_face_r]
[if exp="f.dress==1007"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xa7.png" time="700"][eval exp="f.dress=1007" ][jump storage="H/dress.ks" target="*top"]

*c_xb1
[dress_face_r]
[if exp="f.dress==1011"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xb1.png" time="700"][eval exp="f.dress=1011" ][jump storage="H/dress.ks" target="*top"]
*c_xb2
[dress_face_r]
[if exp="f.dress==1012"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xb2.png" time="700"][eval exp="f.dress=1012" ][jump storage="H/dress.ks" target="*top"]
*c_xb3
[dress_face_r]
[if exp="f.dress==1013"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xb3.png" time="700"][eval exp="f.dress=1013" ][jump storage="H/dress.ks" target="*top"]
*c_xb4
[dress_face_r]
[if exp="f.dress==1014"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xb4.png" time="700"][eval exp="f.dress=1014" ][jump storage="H/dress.ks" target="*top"]
*c_xb5
[dress_face_r]
[if exp="f.dress==1015"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xb5.png" time="700"][eval exp="f.dress=1015" ][jump storage="H/dress.ks" target="*top"]
*c_xb6
[dress_face_r]
[if exp="f.dress==1016"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xb6.png" time="700"][eval exp="f.dress=1016" ][jump storage="H/dress.ks" target="*top"]
*c_xb7
[dress_face_r]
[if exp="f.dress==1017"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xb7.png" time="700"][eval exp="f.dress=1017" ][jump storage="H/dress.ks" target="*top"]

*c_xc1
[dress_face_r]
[if exp="f.dress==1021"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xc1.png" time="700"][eval exp="f.dress=1021" ][jump storage="H/dress.ks" target="*top"]
*c_xc2
[dress_face_r]
[if exp="f.dress==1022"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xc2.png" time="700"][eval exp="f.dress=1022" ][jump storage="H/dress.ks" target="*top"]
*c_xc3
[dress_face_r]
[if exp="f.dress==1023"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xc3.png" time="700"][eval exp="f.dress=1023" ][jump storage="H/dress.ks" target="*top"]
*c_xc4
[dress_face_r]
[if exp="f.dress==1024"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xc4.png" time="700"][eval exp="f.dress=1024" ][jump storage="H/dress.ks" target="*top"]
*c_xc5
[dress_face_r]
[if exp="f.dress==1025"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xc5.png" time="700"][eval exp="f.dress=1025" ][jump storage="H/dress.ks" target="*top"]
*c_xc6
[dress_face_r]
[if exp="f.dress==1026"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xc6.png" time="700"][eval exp="f.dress=1026" ][jump storage="H/dress.ks" target="*top"]

;;服4---------------------------------------------------------------------------------------------
*dress_up4
[cm][eval exp="f.ch_win=4" ][call storage="H/dress_ex.ks" target="*menu_button" ]
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

[cancelskip][s]

*c_nx
[dress_face_r]
[if exp="f.dress==2002"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/nx.png" time="700"][eval exp="f.dress=2002" ][jump storage="H/dress.ks" target="*top"]

*c_kx1
[dress_face_r]
[if exp="f.dress==2031"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/kx1.png" time="700"][eval exp="f.dress=1031" ][jump storage="H/dress.ks" target="*top"]
*c_kx2
[dress_face_r]
[if exp="f.dress==2032"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/kx2.png" time="700"][eval exp="f.dress=1032" ][jump storage="H/dress.ks" target="*top"]
*c_kx3
[dress_face_r]
[if exp="f.dress==2033"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/kx3.png" time="700"][eval exp="f.dress=1033" ][jump storage="H/dress.ks" target="*top"]
*c_kx4
[dress_face_r]
[if exp="f.dress==2034"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/kx4.png" time="700"][eval exp="f.dress=1034" ][jump storage="H/dress.ks" target="*top"]
*c_kx5
[dress_face_r]
[if exp="f.dress==2035"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/kx5.png" time="700"][eval exp="f.dress=1035" ][jump storage="H/dress.ks" target="*top"]
*c_kx6
[dress_face_r]
[if exp="f.dress==2036"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/kx6.png" time="700"][eval exp="f.dress=1036" ][jump storage="H/dress.ks" target="*top"]

*c_hx1
[dress_face_r]
[if exp="f.dress==2041"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/hx1.png" time="700"][eval exp="f.dress=1041" ][jump storage="H/dress.ks" target="*top"]
*c_hx2
[dress_face_r]
[if exp="f.dress==2042"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/hx2.png" time="700"][eval exp="f.dress=1042" ][jump storage="H/dress.ks" target="*top"]
*c_hx3
[dress_face_r]
[if exp="f.dress==2043"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/hx3.png" time="700"][eval exp="f.dress=1043" ][jump storage="H/dress.ks" target="*top"]
*c_hx4
[dress_face_r]
[if exp="f.dress==2044"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/hx4.png" time="700"][eval exp="f.dress=1044" ][jump storage="H/dress.ks" target="*top"]

*c_xd1
[dress_face_r]
[if exp="f.dress==1111"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xd1.png" time="700"][eval exp="f.dress=1111" ][jump storage="H/dress.ks" target="*top"]
*c_xd2
[dress_face_r]
[if exp="f.dress==1112"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xd2.png" time="700"][eval exp="f.dress=1112" ][jump storage="H/dress.ks" target="*top"]
*c_xd3
[dress_face_r]
[if exp="f.dress==1113"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xd3.png" time="700"][eval exp="f.dress=1113" ][jump storage="H/dress.ks" target="*top"]
*c_xd4
[dress_face_r]
[if exp="f.dress==1114"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xd4.png" time="700"][eval exp="f.dress=1114" ][jump storage="H/dress.ks" target="*top"]
*c_xd5
[dress_face_r]
[if exp="f.dress==1115"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xd5.png" time="700"][eval exp="f.dress=1115" ][jump storage="H/dress.ks" target="*top"]
*c_xd6
[dress_face_r]
[if exp="f.dress==1116"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/xd6.png" time="700"][eval exp="f.dress=1116" ][jump storage="H/dress.ks" target="*top"]

*c_jx1
[dress_face_r]
[if exp="f.dress==2051"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/jx1.png" time="700"][eval exp="f.dress=1051" ][jump storage="H/dress.ks" target="*top"]
*c_jx2
[dress_face_r]
[if exp="f.dress==2052"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/jx2.png" time="700"][eval exp="f.dress=1052" ][jump storage="H/dress.ks" target="*top"]
*c_jx3
[dress_face_r]
[if exp="f.dress==2053"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/jx3.png" time="700"][eval exp="f.dress=1053" ][jump storage="H/dress.ks" target="*top"]
*c_jx4
[dress_face_r]
[if exp="f.dress==2054"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/jx4.png" time="700"][eval exp="f.dress=1054" ][jump storage="H/dress.ks" target="*top"]

*c_ssx1
[dress_face_r]
[if exp="f.dress==2061"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ssx1.png" time="700"][eval exp="f.dress=1061" ][jump storage="H/dress.ks" target="*top"]
*c_ssx2
[dress_face_r]
[if exp="f.dress==2062"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ssx2.png" time="700"][eval exp="f.dress=1062" ][jump storage="H/dress.ks" target="*top"]
*c_ssx3
[dress_face_r]
[if exp="f.dress==2063"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ssx3.png" time="700"][eval exp="f.dress=1063" ][jump storage="H/dress.ks" target="*top"]
*c_ssx4
[dress_face_r]
[if exp="f.dress==2064"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ssx4.png" time="700"][eval exp="f.dress=1064" ][jump storage="H/dress.ks" target="*top"]
*c_ssx5
[dress_face_r]
[if exp="f.dress==2065"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ssx5.png" time="700"][eval exp="f.dress=1065" ][jump storage="H/dress.ks" target="*top"]
*c_ssx6
[dress_face_r]
[if exp="f.dress==2066"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ssx6.png" time="700"][eval exp="f.dress=1066" ][jump storage="H/dress.ks" target="*top"]
*c_ssx7
[dress_face_r]
[if exp="f.dress==2067"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ssx7.png" time="700"][eval exp="f.dress=1067" ][jump storage="H/dress.ks" target="*top"]

*c_slx1
[dress_face_r]
[if exp="f.dress==2071"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/slx1.png" time="700"][eval exp="f.dress=1071" ][jump storage="H/dress.ks" target="*top"]
*c_slx2
[dress_face_r]
[if exp="f.dress==2072"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/slx2.png" time="700"][eval exp="f.dress=1072" ][jump storage="H/dress.ks" target="*top"]
*c_slx3
[dress_face_r]
[if exp="f.dress==2073"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/slx3.png" time="700"][eval exp="f.dress=1073" ][jump storage="H/dress.ks" target="*top"]
*c_slx4
[dress_face_r]
[if exp="f.dress==2074"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/slx4.png" time="700"][eval exp="f.dress=1074" ][jump storage="H/dress.ks" target="*top"]
*c_slx5
[dress_face_r]
[if exp="f.dress==2075"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/slx5.png" time="700"][eval exp="f.dress=1075" ][jump storage="H/dress.ks" target="*top"]
*c_slx6
[dress_face_r]
[if exp="f.dress==2076"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/slx6.png" time="700"][eval exp="f.dress=1076" ][jump storage="H/dress.ks" target="*top"]

*c_mx1
[dress_face_r]
[if exp="f.dress==2081"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/mx1.png" time="700"][eval exp="f.dress=1081" ][jump storage="H/dress.ks" target="*top"]
*c_mx2
[dress_face_r]
[if exp="f.dress==2082"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/mx2.png" time="700"][eval exp="f.dress=1082" ][jump storage="H/dress.ks" target="*top"]
*c_mx3
[dress_face_r]
[if exp="f.dress==2083"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/mx3.png" time="700"][eval exp="f.dress=1083" ][jump storage="H/dress.ks" target="*top"]
*c_mx4
[dress_face_r]
[if exp="f.dress==2084"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/mx4.png" time="700"][eval exp="f.dress=1084" ][jump storage="H/dress.ks" target="*top"]
*c_mx5
[dress_face_r]
[if exp="f.dress==2085"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/mx5.png" time="700"][eval exp="f.dress=1085" ][jump storage="H/dress.ks" target="*top"]

*c_ox1
[dress_face_r]
[if exp="f.dress==2091"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ox1.png" time="700"][eval exp="f.dress=1091" ][jump storage="H/dress.ks" target="*top"]
*c_ox2
[dress_face_r]
[if exp="f.dress==2092"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ox2.png" time="700"][eval exp="f.dress=1092" ][jump storage="H/dress.ks" target="*top"]
*c_ox3
[dress_face_r]
[if exp="f.dress==2093"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ox3.png" time="700"][eval exp="f.dress=1093" ][jump storage="H/dress.ks" target="*top"]
*c_ox4
[dress_face_r]
[if exp="f.dress==2094"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ox4.png" time="700"][eval exp="f.dress=1094" ][jump storage="H/dress.ks" target="*top"]
*c_ox5
[dress_face_r]
[if exp="f.dress==2095"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ox5.png" time="700"][eval exp="f.dress=1095" ][jump storage="H/dress.ks" target="*top"]
*c_ox6
[dress_face_r]
[if exp="f.dress==2096"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/ox6.png" time="700"][eval exp="f.dress=1096" ][jump storage="H/dress.ks" target="*top"]

*c_px1
[dress_face_r]
[if exp="f.dress==2101"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/px1.png" time="700"][eval exp="f.dress=1101" ][jump storage="H/dress.ks" target="*top"]
*c_px2
[dress_face_r]
[if exp="f.dress==2102"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/px2.png" time="700"][eval exp="f.dress=1102" ][jump storage="H/dress.ks" target="*top"]
*c_px3
[dress_face_r]
[if exp="f.dress==2103"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/px3.png" time="700"][eval exp="f.dress=1103" ][jump storage="H/dress.ks" target="*top"]
*c_px4
[dress_face_r]
[if exp="f.dress==2104"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/px4.png" time="700"][eval exp="f.dress=1104" ][jump storage="H/dress.ks" target="*top"]
*c_px5
[dress_face_r]
[if exp="f.dress==2105"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/px5.png" time="700"][eval exp="f.dress=1105" ][jump storage="H/dress.ks" target="*top"]
*c_px6
[dress_face_r]
[if exp="f.dress==2106"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="s/dress/D/px6.png" time="700"][eval exp="f.dress=1106" ][jump storage="H/dress.ks" target="*top"]

;;髪型１---------------------------------------------------------------------------------------------
*dress_hair
[cm][eval exp="f.ch_win=5" ][call storage="H/dress_ex.ks" target="*menu_button" ]
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
[cancelskip][s]

*r_non
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_band=0" ][eval exp="f.hair_style=0" ][dress_hair_set][jump storage="H/dress.ks" target="*top"]

*r_a
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_style=1" ][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_b
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_style=2" ][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_c
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[eval exp="f.hair_style=3" ][dress_hair_set][eval exp="f.hat=0" ][chara_mod name="hair_b" time="0" storage="00.png" ][jump storage="H/dress.ks" target="*top"]
*r_d
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_style=4" ][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_e
[if exp="f.hair_style==0 || f.hair_style==6" ][eval exp="f.hair_band=11" ][endif]
[eval exp="f.hair_style=5" ][dress_hair_set][eval exp="f.hat=0" ][chara_mod name="hair_b" time="0" storage="00.png" ][jump storage="H/dress.ks" target="*top"]


*r_11
[eval exp="f.hair_band=11" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_12
[eval exp="f.hair_band=12" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_13
[eval exp="f.hair_band=13" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_14
[eval exp="f.hair_band=14" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_15
[eval exp="f.hair_band=15" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_16
[eval exp="f.hair_band=16" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_17
[eval exp="f.hair_band=17" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_18
[eval exp="f.hair_band=18" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_19
[eval exp="f.hair_band=19" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_21
[eval exp="f.hair_band=21" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_22
[eval exp="f.hair_band=22" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_23
[eval exp="f.hair_band=23" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_24
[eval exp="f.hair_band=24" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_25
[eval exp="f.hair_band=25" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_26
[eval exp="f.hair_band=26" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_27
[eval exp="f.hair_band=27" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_28
[eval exp="f.hair_band=28" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_29
[eval exp="f.hair_band=29" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]

*r_31
[eval exp="f.hair_band=31" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_32
[eval exp="f.hair_band=32" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_33
[eval exp="f.hair_band=33" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_34
[eval exp="f.hair_band=34" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_35
[eval exp="f.hair_band=35" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_36
[eval exp="f.hair_band=36" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_37
[eval exp="f.hair_band=37" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_38
[eval exp="f.hair_band=38" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_39
[eval exp="f.hair_band=39" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_41
[eval exp="f.hair_band=41" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_42
[eval exp="f.hair_band=42" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_43
[eval exp="f.hair_band=43" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_44
[eval exp="f.hair_band=44" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_45
[eval exp="f.hair_band=45" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_46
[eval exp="f.hair_band=46" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_47
[eval exp="f.hair_band=47" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_48
[eval exp="f.hair_band=48" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_49
[eval exp="f.hair_band=49" ][hair_select][dress_hair_set][jump storage="H/dress.ks" target="*top"]


*r_c1
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_band=51" ][eval exp="f.hair_style=6" ][dress_hair_set][jump storage="H/dress.ks" target="*top"]
*r_c2
[if exp="f.hair_style==3 || f.hair_style==5" ][mod_hat st="00.png" ][endif]
[eval exp="f.hair_band=52" ][eval exp="f.hair_style=6" ][dress_hair_set][jump storage="H/dress.ks" target="*top"]

;;前髪---------------------------------------------------------------------------------------------
*dress_pin
[cm][eval exp="f.ch_win=6" ][call storage="H/dress_ex.ks" target="*menu_button" ]
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
[cancelskip][s]

*p_non
[eval exp="f.pin=0" ][eval exp="f.front_hair=0" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]

*p_1
;[if exp="f.front_hair==0" ][endif]
[eval exp="f.front_hair=1" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_2
;[if exp="f.hair_style==0" ][endif]
[eval exp="f.front_hair=2" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_3
;[if exp="f.hair_style==0" ][endif]
[eval exp="f.front_hair=3" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]

*p_a1
[eval exp="f.pin=1" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_a2
[eval exp="f.pin=2" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_a3
[eval exp="f.pin=3" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_a4
[eval exp="f.pin=4" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_a5
[eval exp="f.pin=5" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_a6
[eval exp="f.pin=6" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_a7
[eval exp="f.pin=7" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_a8
[eval exp="f.pin=8" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_a9
[eval exp="f.pin=9" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]

*p_b1
[eval exp="f.pin=11" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_b2
[eval exp="f.pin=12" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_b3
[eval exp="f.pin=13" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_b4
[eval exp="f.pin=14" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_b5
[eval exp="f.pin=15" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_b6
[eval exp="f.pin=16" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_b7
[eval exp="f.pin=17" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_b8
[eval exp="f.pin=18" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_b9
[eval exp="f.pin=19" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]

*p_c1
[eval exp="f.pin=21" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_c2
[eval exp="f.pin=22" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_c3
[eval exp="f.pin=23" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_c4
[eval exp="f.pin=24" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_c5
[eval exp="f.pin=25" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_c6
[eval exp="f.pin=26" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_c7
[eval exp="f.pin=27" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_c8
[eval exp="f.pin=28" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_c9
[eval exp="f.pin=29" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]

*p_d1
[eval exp="f.pin=31" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_d2
[eval exp="f.pin=32" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*p_d3
[eval exp="f.pin=33" ][f_hair_select][dress_pin_set][jump storage="H/dress.ks" target="*top"]


;;頭１---------------------------------------------------------------------------------------------
*dress_head
[cm][eval exp="f.ch_win=7" ][call storage="H/dress_ex.ks" target="*menu_button" ]

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
[cancelskip][s]

*h_non
[if exp="f.hair>=300" ][else]
[mod_hat st="00.png" ][eval exp="f.hat=0" ][endif][jump storage="H/dress.ks" target="*top"]

*h_a1
[head_check][mod_hat st="s/hat/D/a1.png" ][eval exp="f.hat=1" ][jump storage="H/dress.ks" target="*top"]
*h_a2
[head_check][mod_hat st="s/hat/D/a2.png" ][eval exp="f.hat=2" ][jump storage="H/dress.ks" target="*top"]
*h_b1
[head_check][mod_hat st="s/hat/D/b1.png" ][eval exp="f.hat=11" ][jump storage="H/dress.ks" target="*top"]
*h_b2
[head_check][mod_hat st="s/hat/D/b2.png" ][eval exp="f.hat=12" ][jump storage="H/dress.ks" target="*top"]

*h_c1
[head_check][mod_hat st="s/hat/D/c1.png" ][eval exp="f.hat=21" ][jump storage="H/dress.ks" target="*top"]
*h_c2
[head_check][mod_hat st="s/hat/D/c2.png" ][eval exp="f.hat=22" ][jump storage="H/dress.ks" target="*top"]
*h_c3
[head_check][mod_hat st="s/hat/D/c3.png" ][eval exp="f.hat=23" ][jump storage="H/dress.ks" target="*top"]

*h_d1
[head_check][mod_hat st="s/hat/D/d1.png" ][eval exp="f.hat=31" ][jump storage="H/dress.ks" target="*top"]
*h_d2
[head_check][mod_hat st="s/hat/D/d2.png" ][eval exp="f.hat=32" ][jump storage="H/dress.ks" target="*top"]
*h_d3
[head_check][mod_hat st="s/hat/D/d3.png" ][eval exp="f.hat=33" ][jump storage="H/dress.ks" target="*top"]
*h_d4
[head_check][mod_hat st="s/hat/D/d4.png" ][eval exp="f.hat=34" ][jump storage="H/dress.ks" target="*top"]
*h_d5
[head_check][mod_hat st="s/hat/D/d5.png" ][eval exp="f.hat=35" ][jump storage="H/dress.ks" target="*top"]
*h_d6
[head_check][mod_hat st="s/hat/D/d6.png" ][eval exp="f.hat=36" ][jump storage="H/dress.ks" target="*top"]
*h_d7
[head_check][mod_hat st="s/hat/D/d7.png" ][eval exp="f.hat=37" ][jump storage="H/dress.ks" target="*top"]
*h_d8
[head_check][mod_hat st="s/hat/D/d8.png" ][eval exp="f.hat=38" ][jump storage="H/dress.ks" target="*top"]
*h_d9
[head_check][mod_hat st="s/hat/D/d9.png" ][eval exp="f.hat=39" ][jump storage="H/dress.ks" target="*top"]

*h_e1
[head_check][mod_hat st="s/hat/D/e1.png" ][eval exp="f.hat=41" ][jump storage="H/dress.ks" target="*top"]
*h_e2
[head_check][mod_hat st="s/hat/D/e2.png" ][eval exp="f.hat=42" ][jump storage="H/dress.ks" target="*top"]
*h_e3
[head_check][mod_hat st="s/hat/D/e3.png" ][eval exp="f.hat=43" ][jump storage="H/dress.ks" target="*top"]
*h_e4
[head_check][mod_hat st="s/hat/D/e4.png" ][eval exp="f.hat=44" ][jump storage="H/dress.ks" target="*top"]
*h_e5
[head_check][mod_hat st="s/hat/D/e5.png" ][eval exp="f.hat=45" ][jump storage="H/dress.ks" target="*top"]

*h_f1
[head_check][mod_hat st="s/hat/D/f1.png" ][eval exp="f.hat=51" ][jump storage="H/dress.ks" target="*top"]
*h_f2
[head_check][mod_hat st="s/hat/D/f2.png" ][eval exp="f.hat=52" ][jump storage="H/dress.ks" target="*top"]
*h_f3
[head_check][mod_hat st="s/hat/D/f3.png" ][eval exp="f.hat=53" ][jump storage="H/dress.ks" target="*top"]
*h_f4
[head_check][mod_hat st="s/hat/D/f4.png" ][eval exp="f.hat=54" ][jump storage="H/dress.ks" target="*top"]
*h_f5
[head_check][mod_hat st="s/hat/D/f5.png" ][eval exp="f.hat=55" ][jump storage="H/dress.ks" target="*top"]
*h_f6
[head_check][mod_hat st="s/hat/D/f6.png" ][eval exp="f.hat=56" ][jump storage="H/dress.ks" target="*top"]
*h_f7
[head_check][mod_hat st="s/hat/D/f7.png" ][eval exp="f.hat=57" ][jump storage="H/dress.ks" target="*top"]

;;足１---------------------------------------------------------------------------------------------
*dress_leg
[cm][eval exp="f.ch_win=8" ][call storage="H/dress_ex.ks" target="*menu_button" ]

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
[cancelskip][s]

*s_non
[mod_socks st="00.png" ][eval exp="f.socks=0" ][jump storage="H/dress.ks" target="*top"]

*s_a1
[mod_socks st="s/socks/D/a1.png" time="700"][eval exp="f.socks=1" ][jump storage="H/dress.ks" target="*top"]
*s_a2
[mod_socks st="s/socks/D/a2.png" time="700"][eval exp="f.socks=2" ][jump storage="H/dress.ks" target="*top"]
*s_a3
[mod_socks st="s/socks/D/a3.png" time="700"][eval exp="f.socks=3" ][jump storage="H/dress.ks" target="*top"]
*s_a4
[mod_socks st="s/socks/D/a4.png" time="700"][eval exp="f.socks=4" ][jump storage="H/dress.ks" target="*top"]
*s_a5
[mod_socks st="s/socks/D/a5.png" time="700"][eval exp="f.socks=5" ][jump storage="H/dress.ks" target="*top"]
*s_a6
[mod_socks st="s/socks/D/a6.png" time="700"][eval exp="f.socks=6" ][jump storage="H/dress.ks" target="*top"]
*s_a7
[mod_socks st="s/socks/D/a7.png" time="700"][eval exp="f.socks=7" ][jump storage="H/dress.ks" target="*top"]
*s_a8
[mod_socks st="s/socks/D/a8.png" time="700"][eval exp="f.socks=8" ][jump storage="H/dress.ks" target="*top"]
*s_a9
[mod_socks st="s/socks/D/a9.png" time="700"][eval exp="f.socks=9" ][jump storage="H/dress.ks" target="*top"]

*s_b1
[mod_socks st="s/socks/D/b1.png" time="700"][eval exp="f.socks=11" ][jump storage="H/dress.ks" target="*top"]
*s_b2
[mod_socks st="s/socks/D/b2.png" time="700"][eval exp="f.socks=12" ][jump storage="H/dress.ks" target="*top"]
*s_b3
[mod_socks st="s/socks/D/b3.png" time="700"][eval exp="f.socks=13" ][jump storage="H/dress.ks" target="*top"]
*s_b4
[mod_socks st="s/socks/D/b4.png" time="700"][eval exp="f.socks=14" ][jump storage="H/dress.ks" target="*top"]
*s_b5
[mod_socks st="s/socks/D/b5.png" time="700"][eval exp="f.socks=15" ][jump storage="H/dress.ks" target="*top"]
*s_b6
[mod_socks st="s/socks/D/b6.png" time="700"][eval exp="f.socks=16" ][jump storage="H/dress.ks" target="*top"]
*s_b7
[mod_socks st="s/socks/D/b7.png" time="700"][eval exp="f.socks=17" ][jump storage="H/dress.ks" target="*top"]
*s_b8
[mod_socks st="s/socks/D/b8.png" time="700"][eval exp="f.socks=18" ][jump storage="H/dress.ks" target="*top"]
*s_b9
[mod_socks st="s/socks/D/b9.png" time="700"][eval exp="f.socks=19" ][jump storage="H/dress.ks" target="*top"]

*s_c1
[mod_socks st="s/socks/D/c1.png" time="700"][eval exp="f.socks=21" ][jump storage="H/dress.ks" target="*top"]
*s_c2
[mod_socks st="s/socks/D/c2.png" time="700"][eval exp="f.socks=22" ][jump storage="H/dress.ks" target="*top"]
*s_c3
[mod_socks st="s/socks/D/c3.png" time="700"][eval exp="f.socks=23" ][jump storage="H/dress.ks" target="*top"]
*s_c4
[mod_socks st="s/socks/D/c4.png" time="700"][eval exp="f.socks=24" ][jump storage="H/dress.ks" target="*top"]
*s_c5
[mod_socks st="s/socks/D/c5.png" time="700"][eval exp="f.socks=25" ][jump storage="H/dress.ks" target="*top"]
*s_c6
[mod_socks st="s/socks/D/c6.png" time="700"][eval exp="f.socks=26" ][jump storage="H/dress.ks" target="*top"]
*s_c7
[mod_socks st="s/socks/D/c7.png" time="700"][eval exp="f.socks=27" ][jump storage="H/dress.ks" target="*top"]
*s_c8
[mod_socks st="s/socks/D/c8.png" time="700"][eval exp="f.socks=28" ][jump storage="H/dress.ks" target="*top"]
*s_c9
[mod_socks st="s/socks/D/c9.png" time="700"][eval exp="f.socks=29" ][jump storage="H/dress.ks" target="*top"]


*s_d1
[mod_socks st="s/socks/D/d1.png" time="700"][eval exp="f.socks=31" ][jump storage="H/dress.ks" target="*top"]
*s_d2
[mod_socks st="s/socks/D/d2.png" time="700"][eval exp="f.socks=32" ][jump storage="H/dress.ks" target="*top"]
*s_d3
[mod_socks st="s/socks/D/d3.png" time="700"][eval exp="f.socks=33" ][jump storage="H/dress.ks" target="*top"]
*s_d4
[mod_socks st="s/socks/D/d4.png" time="700"][eval exp="f.socks=34" ][jump storage="H/dress.ks" target="*top"]
*s_d5
[mod_socks st="s/socks/D/d5.png" time="700"][eval exp="f.socks=35" ][jump storage="H/dress.ks" target="*top"]
*s_d6
[mod_socks st="s/socks/D/d6.png" time="700"][eval exp="f.socks=36" ][jump storage="H/dress.ks" target="*top"]
*s_d7
[mod_socks st="s/socks/D/d7.png" time="700"][eval exp="f.socks=37" ][jump storage="H/dress.ks" target="*top"]
*s_d8
[mod_socks st="s/socks/D/d8.png" time="700"][eval exp="f.socks=38" ][jump storage="H/dress.ks" target="*top"]
*s_d9
[mod_socks st="s/socks/D/d9.png" time="700"][eval exp="f.socks=39" ][jump storage="H/dress.ks" target="*top"]

*s_e1
[mod_socks st="s/socks/D/e1.png" time="700"][eval exp="f.socks=41" ][jump storage="H/dress.ks" target="*top"]
*s_e2
[mod_socks st="s/socks/D/e2.png" time="700"][eval exp="f.socks=42" ][jump storage="H/dress.ks" target="*top"]
*s_e3
[mod_socks st="s/socks/D/e3.png" time="700"][eval exp="f.socks=43" ][jump storage="H/dress.ks" target="*top"]
*s_e4
[mod_socks st="s/socks/D/e4.png" time="700"][eval exp="f.socks=44" ][jump storage="H/dress.ks" target="*top"]
*s_e5
[mod_socks st="s/socks/D/e5.png" time="700"][eval exp="f.socks=45" ][jump storage="H/dress.ks" target="*top"]
*s_e6
[mod_socks st="s/socks/D/e6.png" time="700"][eval exp="f.socks=46" ][jump storage="H/dress.ks" target="*top"]
*s_e7
[mod_socks st="s/socks/D/e7.png" time="700"][eval exp="f.socks=47" ][jump storage="H/dress.ks" target="*top"]
*s_e8
[mod_socks st="s/socks/D/e8.png" time="700"][eval exp="f.socks=48" ][jump storage="H/dress.ks" target="*top"]
*s_e9
[mod_socks st="s/socks/D/e9.png" time="700"][eval exp="f.socks=49" ][jump storage="H/dress.ks" target="*top"]

*s_f1
[mod_socks st="s/socks/D/f1.png" time="700"][eval exp="f.socks=51" ][jump storage="H/dress.ks" target="*top"]
*s_f2
[mod_socks st="s/socks/D/f2.png" time="700"][eval exp="f.socks=52" ][jump storage="H/dress.ks" target="*top"]
*s_f3
[mod_socks st="s/socks/D/f3.png" time="700"][eval exp="f.socks=53" ][jump storage="H/dress.ks" target="*top"]
*s_f4
[mod_socks st="s/socks/D/f4.png" time="700"][eval exp="f.socks=54" ][jump storage="H/dress.ks" target="*top"]
*s_f5
[mod_socks st="s/socks/D/f5.png" time="700"][eval exp="f.socks=55" ][jump storage="H/dress.ks" target="*top"]
*s_f6
[mod_socks st="s/socks/D/f6.png" time="700"][eval exp="f.socks=56" ][jump storage="H/dress.ks" target="*top"]
*s_f7
[mod_socks st="s/socks/D/f7.png" time="700"][eval exp="f.socks=57" ][jump storage="H/dress.ks" target="*top"]
*s_f8
[mod_socks st="s/socks/D/f8.png" time="700"][eval exp="f.socks=58" ][jump storage="H/dress.ks" target="*top"]
*s_f9
[mod_socks st="s/socks/D/f9.png" time="700"][eval exp="f.socks=59" ][jump storage="H/dress.ks" target="*top"]

;;メガネ---------------------------------------------------------------------------------------------
*dress_glasses
[cm][eval exp="f.ch_win=9" ][call storage="H/dress_ex.ks" target="*menu_button" ]

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
[cancelskip][s]

*g_non
[mod_glasses st="00.png" time="700"][eval exp="f.glasses=0" ][jump storage="H/dress.ks" target="*top"]

*g_a1
[mod_glasses st="s/glass/D/a1.png" time="700"][eval exp="f.glasses=1" ][jump storage="H/dress.ks" target="*top"]
*g_a2
[mod_glasses st="s/glass/D/a2.png" time="700"][eval exp="f.glasses=2" ][jump storage="H/dress.ks" target="*top"]
*g_a3
[mod_glasses st="s/glass/D/a3.png" time="700"][eval exp="f.glasses=3" ][jump storage="H/dress.ks" target="*top"]
*g_a4
[mod_glasses st="s/glass/D/a4.png" time="700"][eval exp="f.glasses=4" ][jump storage="H/dress.ks" target="*top"]
*g_a5
[mod_glasses st="s/glass/D/a5.png" time="700"][eval exp="f.glasses=5" ][jump storage="H/dress.ks" target="*top"]
*g_a6
[mod_glasses st="s/glass/D/a6.png" time="700"][eval exp="f.glasses=6" ][jump storage="H/dress.ks" target="*top"]
*g_a7
[mod_glasses st="s/glass/D/a7.png" time="700"][eval exp="f.glasses=7" ][jump storage="H/dress.ks" target="*top"]
*g_a8
[mod_glasses st="s/glass/D/a8.png" time="700"][eval exp="f.glasses=8" ][jump storage="H/dress.ks" target="*top"]
*g_a9
[mod_glasses st="s/glass/D/a9.png" time="700"][eval exp="f.glasses=9" ][jump storage="H/dress.ks" target="*top"]

*g_b1
[mod_glasses st="s/glass/D/b1.png" time="700"][eval exp="f.glasses=11" ][jump storage="H/dress.ks" target="*top"]
*g_b2
[mod_glasses st="s/glass/D/b2.png" time="700"][eval exp="f.glasses=12" ][jump storage="H/dress.ks" target="*top"]
*g_b3
[mod_glasses st="s/glass/D/b3.png" time="700"][eval exp="f.glasses=13" ][jump storage="H/dress.ks" target="*top"]
*g_b4
[mod_glasses st="s/glass/D/b4.png" time="700"][eval exp="f.glasses=14" ][jump storage="H/dress.ks" target="*top"]
*g_b5
[mod_glasses st="s/glass/D/b5.png" time="700"][eval exp="f.glasses=15" ][jump storage="H/dress.ks" target="*top"]
*g_b6
[mod_glasses st="s/glass/D/b6.png" time="700"][eval exp="f.glasses=16" ][jump storage="H/dress.ks" target="*top"]
*g_b7
[mod_glasses st="s/glass/D/b7.png" time="700"][eval exp="f.glasses=17" ][jump storage="H/dress.ks" target="*top"]
*g_b8
[mod_glasses st="s/glass/D/b8.png" time="700"][eval exp="f.glasses=18" ][jump storage="H/dress.ks" target="*top"]
*g_b9
[mod_glasses st="s/glass/D/b9.png" time="700"][eval exp="f.glasses=19" ][jump storage="H/dress.ks" target="*top"]

*g_c1
[mod_glasses st="s/glass/D/c1.png" time="700"][eval exp="f.glasses=21" ][jump storage="H/dress.ks" target="*top"]
*g_c2
[mod_glasses st="s/glass/D/c2.png" time="700"][eval exp="f.glasses=22" ][jump storage="H/dress.ks" target="*top"]
*g_c3
[mod_glasses st="s/glass/D/c3.png" time="700"][eval exp="f.glasses=23" ][jump storage="H/dress.ks" target="*top"]
*g_c4
[mod_glasses st="s/glass/D/c4.png" time="700"][eval exp="f.glasses=24" ][jump storage="H/dress.ks" target="*top"]
*g_c5
[mod_glasses st="s/glass/D/c5.png" time="700"][eval exp="f.glasses=25" ][jump storage="H/dress.ks" target="*top"]
*g_c6
[mod_glasses st="s/glass/D/c6.png" time="700"][eval exp="f.glasses=26" ][jump storage="H/dress.ks" target="*top"]
*g_c7
[mod_glasses st="s/glass/D/c7.png" time="700"][eval exp="f.glasses=27" ][jump storage="H/dress.ks" target="*top"]
*g_c8
[mod_glasses st="s/glass/D/c8.png" time="700"][eval exp="f.glasses=28" ][jump storage="H/dress.ks" target="*top"]
*g_c9
[mod_glasses st="s/glass/D/c9.png" time="700"][eval exp="f.glasses=29" ][jump storage="H/dress.ks" target="*top"]

;;下着１---------------------------------------------------------------------------------------------
*dress_under
[cm][eval exp="f.ch_win=10" ][call storage="H/dress_ex.ks" target="*menu_button" ]

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
[cancelskip][s]

*ub_non
[dress_face_r]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ]
[mod_under_b st="00.png" time="700" wait="true"][eval exp="f.under_b=0" ]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[jump storage="H/dress.ks" target="*top" ]

*up_non
[dress_face_r]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="00.png" time="700"][eval exp="f.under_p=0" ]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[jump storage="H/dress.ks" target="*top" ]

*up_a1
[dress_face_r]
[if exp="f.under_p==1"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/a1.png" time="700" wait="true"][eval exp="f.under_p=1" ]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[jump storage="H/dress.ks" target="*top"]

*up_a2
[dress_face_r]
[if exp="f.under_p==2"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/a2.png" time="700" wait="true"][eval exp="f.under_p=2" ]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[jump storage="H/dress.ks" target="*top"]

*up_a3
[dress_face_r]
[if exp="f.under_p==3"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/a3.png" time="700" wait="true"][eval exp="f.under_p=3" ]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[jump storage="H/dress.ks" target="*top"]

*up_a4
[dress_face_r]
[if exp="f.under_p==4"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/a4.png" time="700" wait="true"][eval exp="f.under_p=4" ]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[jump storage="H/dress.ks" target="*top"]

*up_a5
[dress_face_r]
[if exp="f.under_p==5"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/a5.png" time="700" wait="true"][eval exp="f.under_p=5" ]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[jump storage="H/dress.ks" target="*top"]

*up_a6
[dress_face_r]
[if exp="f.under_p==6"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/a6.png" time="700" wait="true"][eval exp="f.under_p=6" ]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[jump storage="H/dress.ks" target="*top"]

*up_a7
[dress_face_r]
[if exp="f.under_p==7"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/a7.png" time="700" wait="true"][eval exp="f.under_p=7" ]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[jump storage="H/dress.ks" target="*top"]

*up_b1
[dress_face_r]
[if exp="f.under_p==11"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/b1.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=11" ][jump storage="H/dress.ks" target="*top"]
*up_b2
[dress_face_r]
[if exp="f.under_p==12"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/b2.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=12" ][jump storage="H/dress.ks" target="*top"]
*up_b3
[dress_face_r]
[if exp="f.under_p==13"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/b3.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=13" ][jump storage="H/dress.ks" target="*top"]
*up_b4
[dress_face_r]
[if exp="f.under_p==14"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/b4.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=14" ][jump storage="H/dress.ks" target="*top"]
*up_b5
[dress_face_r]
[if exp="f.under_p==15"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/b5.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=15" ][jump storage="H/dress.ks" target="*top"]
*up_b6
[dress_face_r]
[if exp="f.under_p==16"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/b6.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=16" ][jump storage="H/dress.ks" target="*top"]
*up_b7
[dress_face_r]
[if exp="f.under_p==17"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/b7.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=17" ][jump storage="H/dress.ks" target="*top"]

*up_c1
[dress_face_r]
[if exp="f.under_p==21"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/c1.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=21" ][jump storage="H/dress.ks" target="*top"]
*up_c2
[dress_face_r]
[if exp="f.under_p==22"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/c2.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=22" ][jump storage="H/dress.ks" target="*top"]
*up_c3
[dress_face_r]
[if exp="f.under_p==23"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/c3.png" time="700"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=23" ][jump storage="H/dress.ks" target="*top"]
*up_c4
[dress_face_r]
[if exp="f.under_p==24"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/c4.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=24" ][jump storage="H/dress.ks" target="*top"]
*up_c5
[dress_face_r]
[if exp="f.under_p==25"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/c5.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=25" ][jump storage="H/dress.ks" target="*top"]
*up_c6
[dress_face_r]
[if exp="f.under_p==26"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/c6.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=26" ][jump storage="H/dress.ks" target="*top"]
*up_c7
[dress_face_r]
[if exp="f.under_p==27"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"]
[else][chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="s/und_p/D/c7.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=27" ][jump storage="H/dress.ks" target="*top"]



*ub_a1
[dress_face_r]
[if exp="f.under_b==1"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/a1.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1" ][jump storage="H/dress.ks" target="*top"]
*ub_a2
[dress_face_r]
[if exp="f.under_b==2"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/a2.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=2" ][jump storage="H/dress.ks" target="*top"]
*ub_a3
[dress_face_r]
[if exp="f.under_b==3"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/a3.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=3" ][jump storage="H/dress.ks" target="*top"]
*ub_a4
[dress_face_r]
[if exp="f.under_b==4"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/a4.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=4" ][jump storage="H/dress.ks" target="*top"]
*ub_a5
[dress_face_r]
[if exp="f.under_b==5"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/a5.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=5" ][jump storage="H/dress.ks" target="*top"]
*ub_a6
[dress_face_r]
[if exp="f.under_b==6"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/a6.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=6" ][jump storage="H/dress.ks" target="*top"]
*ub_a7
[dress_face_r]
[if exp="f.under_b==7"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/a7.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=7" ][jump storage="H/dress.ks" target="*top"]

*ub_b1
[dress_face_r]
[if exp="f.under_b==11"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/b1.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=11" ][jump storage="H/dress.ks" target="*top"]
*ub_b2
[dress_face_r]
[if exp="f.under_b==12"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/b2.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=12" ][jump storage="H/dress.ks" target="*top"]
*ub_b3
[dress_face_r]
[if exp="f.under_b==13"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/b3.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=13" ][jump storage="H/dress.ks" target="*top"]
*ub_b4
[dress_face_r]
[if exp="f.under_b==14"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/b4.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=14" ][jump storage="H/dress.ks" target="*top"]
*ub_b5
[dress_face_r]
[if exp="f.under_b==15"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/b5.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=15" ][jump storage="H/dress.ks" target="*top"]
*ub_b6
[dress_face_r]
[if exp="f.under_b==16"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/b6.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=16" ][jump storage="H/dress.ks" target="*top"]
*ub_b7
[dress_face_r]
[if exp="f.under_b==17"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/b7.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=17" ][jump storage="H/dress.ks" target="*top"]

*ub_c1
[dress_face_r]
[if exp="f.under_b==21"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/c1.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=21" ][jump storage="H/dress.ks" target="*top"]
*ub_c2
[dress_face_r]
[if exp="f.under_b==22"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/c2.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=22" ][jump storage="H/dress.ks" target="*top"]
*ub_c3
[dress_face_r]
[if exp="f.under_b==23"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/c3.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=23" ][jump storage="H/dress.ks" target="*top"]
*ub_c4
[dress_face_r]
[if exp="f.under_b==24"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/c4.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=24" ][jump storage="H/dress.ks" target="*top"]
*ub_c5
[dress_face_r]
[if exp="f.under_b==25"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/c5.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=25" ][jump storage="H/dress.ks" target="*top"]
*ub_c6
[dress_face_r]
[if exp="f.under_b==26"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/c6.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=26" ][jump storage="H/dress.ks" target="*top"]
*ub_c7
[dress_face_r]
[if exp="f.under_b==27"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" ][endif]
[mod_under_b st="s/und_b/D/c7.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=27" ][jump storage="H/dress.ks" target="*top"]

;;下着２---------------------------------------------------------------------------------------------
*dress_under2
[cm][eval exp="f.ch_win=11" ][call storage="H/dress_ex.ks" target="*menu_button" ]

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
[cancelskip][s]


*und_sm
[dress_face_r]
[if exp="f.under_b==1000"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png"  wait="true"][endif]
[mod_under_p st="00.png" time="700" wait="true"]
[mod_under_b st="s/und_b/D/shi.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1000" ][jump storage="H/dress.ks" target="*top"]

*up_xa1
[dress_face_r]
[if exp="f.under_p==1001"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xa1.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1001" ][jump storage="H/dress.ks" target="*top"]
*up_xa2
[dress_face_r]
[if exp="f.under_p==1002"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xa2.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1002" ][jump storage="H/dress.ks" target="*top"]
*up_xa3
[dress_face_r]
[if exp="f.under_p==1003"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xa3.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1003" ][jump storage="H/dress.ks" target="*top"]
*up_xa4
[dress_face_r]
[if exp="f.under_p==1004"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xa4.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1004" ][jump storage="H/dress.ks" target="*top"]
*up_xa5
[dress_face_r]
[if exp="f.under_p==1005"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xa5.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1005" ][jump storage="H/dress.ks" target="*top"]
*up_xa6
[dress_face_r]
[if exp="f.under_p==1006"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xa6.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1006" ][jump storage="H/dress.ks" target="*top"]
*up_xa7
[dress_face_r]
[if exp="f.under_p==1007"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xa7.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1007" ][jump storage="H/dress.ks" target="*top"]

*up_xb1
[dress_face_r]
[if exp="f.under_p==1011"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xb1.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1011" ][jump storage="H/dress.ks" target="*top"]
*up_xb2
[dress_face_r]
[if exp="f.under_p==1012"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xb2.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1012" ][jump storage="H/dress.ks" target="*top"]
*up_xb3
[dress_face_r]
[if exp="f.under_p==1013"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xb3.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1013" ][jump storage="H/dress.ks" target="*top"]
*up_xb4
[dress_face_r]
[if exp="f.under_p==1014"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xb4.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1014" ][jump storage="H/dress.ks" target="*top"]
*up_xb5
[dress_face_r]
[if exp="f.under_p==1015"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xb5.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1015" ][jump storage="H/dress.ks" target="*top"]
*up_xb6
[dress_face_r]
[if exp="f.under_p==1016"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xb6.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1016" ][jump storage="H/dress.ks" target="*top"]
*up_xb7
[dress_face_r]
[if exp="f.under_p==1017"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xb7.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1017" ][jump storage="H/dress.ks" target="*top"]

*up_xc1
[dress_face_r]
[if exp="f.under_p==1021"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xc1.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1021" ][jump storage="H/dress.ks" target="*top"]
*up_xc2
[dress_face_r]
[if exp="f.under_p==1022"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xc2.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1022" ][jump storage="H/dress.ks" target="*top"]
*up_xc3
[dress_face_r]
[if exp="f.under_p==1023"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xc3.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1023" ][jump storage="H/dress.ks" target="*top"]
*up_xc4
[dress_face_r]
[if exp="f.under_p==1024"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xc4.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1024" ][jump storage="H/dress.ks" target="*top"]
*up_xc5
[dress_face_r]
[if exp="f.under_p==1025"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xc5.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1025" ][jump storage="H/dress.ks" target="*top"]
*up_xc6
[dress_face_r]
[if exp="f.under_p==1026"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xc6.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1026" ][jump storage="H/dress.ks" target="*top"]
*up_xc7
[dress_face_r]
[if exp="f.under_p==1027"]
[elsif exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_p" time="700" storage="00.png" ]
[else][chara_mod name="under_p" time="700" storage="00.png" wait="true"][endif]
[mod_under_p st="s/und_p/D/xc7.png" time="700" wait="true"]
[if exp="f.dress==1 || f.dress>=11 && f.dress<=170 || f.dress>=9000 && f.dress<=910"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ][endif]
[eval exp="f.under_p=1027" ][jump storage="H/dress.ks" target="*top"]


*ub_xa1
[dress_face_r]
[if exp="f.under_b==1001"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xa1.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1001" ][jump storage="H/dress.ks" target="*top"]
*ub_xa2
[dress_face_r]
[if exp="f.under_b==1002"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xa2.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1002" ][jump storage="H/dress.ks" target="*top"]
*ub_xa3
[dress_face_r]
[if exp="f.under_b==1003"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xa3.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1003" ][jump storage="H/dress.ks" target="*top"]
*ub_xa4
[dress_face_r]
[if exp="f.under_b==1004"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xa4.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1004" ][jump storage="H/dress.ks" target="*top"]
*ub_xa5
[dress_face_r]
[if exp="f.under_b==1005"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xa5.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1005" ][jump storage="H/dress.ks" target="*top"]
*ub_xa6
[dress_face_r]
[if exp="f.under_b==1006"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xa6.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1006" ][jump storage="H/dress.ks" target="*top"]
*ub_xa7
[dress_face_r]
[if exp="f.under_b==1007"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xa7.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1007" ][jump storage="H/dress.ks" target="*top"]

*ub_xb1
[dress_face_r]
[if exp="f.under_b==1011"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xb1.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1011" ][jump storage="H/dress.ks" target="*top"]
*ub_xb2
[dress_face_r]
[if exp="f.under_b==1012"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xb2.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1012" ][jump storage="H/dress.ks" target="*top"]
*ub_xb3
[dress_face_r]
[if exp="f.under_b==1013"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xb3.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1013" ][jump storage="H/dress.ks" target="*top"]
*ub_xb4
[dress_face_r]
[if exp="f.under_b==1014"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xb4.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1014" ][jump storage="H/dress.ks" target="*top"]
*ub_xb5
[dress_face_r]
[if exp="f.under_b==1015"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xb5.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1015" ][jump storage="H/dress.ks" target="*top"]
*ub_xb6
[dress_face_r]
[if exp="f.under_b==1016"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xb6.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1016" ][jump storage="H/dress.ks" target="*top"]
*ub_xb7
[dress_face_r]
[if exp="f.under_b==1017"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xb7.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1017" ][jump storage="H/dress.ks" target="*top"]

*ub_xc1
[dress_face_r]
[if exp="f.under_b==1021"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xc1.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1021" ][jump storage="H/dress.ks" target="*top"]
*ub_xc2
[dress_face_r]
[if exp="f.under_b==1022"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xc2.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1022" ][jump storage="H/dress.ks" target="*top"]
*ub_xc3
[dress_face_r]
[if exp="f.under_b==1023"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xc3.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1023" ][jump storage="H/dress.ks" target="*top"]
*ub_xc4
[dress_face_r]
[if exp="f.under_b==1024"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xc4.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1024" ][jump storage="H/dress.ks" target="*top"]
*ub_xc5
[dress_face_r]
[if exp="f.under_b==1025"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xc5.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1025" ][jump storage="H/dress.ks" target="*top"]
*ub_xc6
[dress_face_r]
[if exp="f.under_b==1026"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xc6.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1026" ][jump storage="H/dress.ks" target="*top"]
*ub_xc7
[dress_face_r]
[if exp="f.under_b==1027"][else]
[chara_hide name="dress" time="700" wait="true"]
[chara_mod name="under_b" time="700" storage="00.png" wait="true"][endif]
[mod_under_b st="s/und_b/D/xc7.png" time="700" wait="true"]
[wait time="700"][chara_show name="dress" time="700" wait="true" left="0.1" ]
[eval exp="f.under_b=1027" ][jump storage="H/dress.ks" target="*top"]

;;腕---------------------------------------------------------------------------------------------
*dress_arm
[cm][eval exp="f.ch_win=12" ][call storage="H/dress_ex.ks" target="*menu_button" ]
[button target="*a_non" graphic="clothe/non.png" x="730" y="118" ]
[if exp="f.Dc_o[0]=='got'" ][button target="*dress_arm" graphic="clothe/a_belt-a.png" x="680" y="165" ][endif]
[if exp="f.Dc_o[1]==1" ][button target="*a_zo1" graphic="clothe/bc_black.png" x="890" y="165" ][endif]
[if exp="f.Dc_o[2]==1" ][button target="*a_zo2" graphic="clothe/bc_brown.png" x="940" y="165" ][endif]
[if exp="f.Dc_o[3]==1" ][button target="*a_zo3" graphic="clothe/bc_blue.png" x="990" y="165" ][endif]
[if exp="f.Dc_o[4]==1" ][button target="*a_zo4" graphic="clothe/bc_purple.png" x="1040" y="165" ][endif]
[if exp="f.Dc_o[5]==1" ][button target="*a_zo5" graphic="clothe/bc_red.png" x="1090" y="165" ][endif]
[if exp="f.Dc_o[6]==1" ][button target="*a_zo6" graphic="clothe/bc_green.png" x="1140" y="165" ][endif]
[cancelskip][s]

;[if exp="f.a_a[1]==1" ][button target="*a_a1" graphic="clothe/hand.png" x="680" y="310" ][endif]
;[if exp="f.a_a[2]==1" ][button target="*a_a2" graphic="clothe/bc_white.png" x="840" y="310" ][endif]
;[if exp="f.a_a[3]==1" ][button target="*a_a3" graphic="clothe/race-b.png" x="890" y="310" ][endif]
;[if exp="f.a_a[4]==1" ][button target="*a_a4" graphic="clothe/race-w.png" x="975" y="310" ][endif]


*a_non
[mod_gloves st="00.png" ][eval exp="f.gloves=0" ][jump storage="H/dress.ks" target="*top"]

*a_zo1
[mod_gloves st="s/gloves/D/zo1.png" time="700"][eval exp="f.gloves=1001" ][jump storage="H/dress.ks" target="*top"]
*a_zo2
[mod_gloves st="s/gloves/D/zo2.png" time="700"][eval exp="f.gloves=1002" ][jump storage="H/dress.ks" target="*top"]
*a_zo3
[mod_gloves st="s/gloves/D/zo3.png" time="700"][eval exp="f.gloves=1003" ][jump storage="H/dress.ks" target="*top"]
*a_zo4
[mod_gloves st="s/gloves/D/zo4.png" time="700"][eval exp="f.gloves=1004" ][jump storage="H/dress.ks" target="*top"]
*a_zo5
[mod_gloves st="s/gloves/D/zo5.png" time="700"][eval exp="f.gloves=1005" ][jump storage="H/dress.ks" target="*top"]
*a_zo6
[mod_gloves st="s/gloves/D/zo6.png" time="700"][eval exp="f.gloves=1006" ][jump storage="H/dress.ks" target="*top"]


;;他---------------------------------------------------------------------------------------------
*dress_other
[cm][eval exp="f.ch_win=13" ][call storage="H/dress_ex.ks" target="*menu_button" ]
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
[cancelskip][s]


*ri_non
[mod_b_acc st="00.png" time="700"][eval exp="f.b_acc=0" ][jump storage="H/dress.ks" target="*top"]
*ri_a1
[dress_face_r]
[if exp="f.dress==11"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_b_acc st="s/b_acc/D/a1.png" time="700"][eval exp="f.b_acc=11" ][jump storage="H/dress.ks" target="*top"]

*ri_b1
[mod_b_acc st="s/b_acc/D/b1.png" time="700"][eval exp="f.b_acc=21" ][jump storage="H/dress.ks" target="*top"]
*ri_b2
[mod_b_acc st="s/b_acc/D/b2.png" time="700"][eval exp="f.b_acc=22" ][jump storage="H/dress.ks" target="*top"]

*ri_c1
[mod_b_acc st="s/b_acc/D/c1.png" time="700"][eval exp="f.b_acc=31" ][jump storage="H/dress.ks" target="*top"]
*ri_c2
[mod_b_acc st="s/b_acc/D/c2.png" time="700"][eval exp="f.b_acc=32" ][jump storage="H/dress.ks" target="*top"]

*ri_d1
[mod_b_acc st="s/b_acc/D/d1.png" time="700"][eval exp="f.b_acc=41" ][jump storage="H/dress.ks" target="*top"]
*ri_d2
[mod_b_acc st="s/b_acc/D/d2.png" time="700"][eval exp="f.b_acc=42" ][jump storage="H/dress.ks" target="*top"]


*ne_non
[mod_neck st="00.png" ][eval exp="f.neck=0" ][jump storage="H/dress.ks" target="*top"]

*ne_a1
[mod_neck st="s/neck/D/a1.png" time="700"][eval exp="f.neck=1" ][jump storage="H/dress.ks" target="*top"]
*ne_a2
[mod_neck st="s/neck/D/a2.png" time="700"][eval exp="f.neck=2" ][jump storage="H/dress.ks" target="*top"]
*ne_a3
[mod_neck st="s/neck/D/a3.png" time="700"][eval exp="f.neck=3" ][jump storage="H/dress.ks" target="*top"]
*ne_a4
[mod_neck st="s/neck/D/a4.png" time="700"][eval exp="f.neck=4" ][jump storage="H/dress.ks" target="*top"]
*ne_a5
[mod_neck st="s/neck/D/a5.png" time="700"][eval exp="f.neck=5" ][jump storage="H/dress.ks" target="*top"]
*ne_a6
[mod_neck st="s/neck/D/a6.png" time="700"][eval exp="f.neck=6" ][jump storage="H/dress.ks" target="*top"]
*ne_a7
[mod_neck st="s/neck/D/a7.png" time="700"][eval exp="f.neck=7" ][jump storage="H/dress.ks" target="*top"]
*ne_a8
[mod_neck st="s/neck/D/a8.png" time="700"][eval exp="f.neck=8" ][jump storage="H/dress.ks" target="*top"]

*ne_b1
[mod_neck st="s/neck/D/b1.png" time="700"][eval exp="f.neck=11" ][jump storage="H/dress.ks" target="*top"]
*ne_b2
[mod_neck st="s/neck/D/b2.png" time="700"][eval exp="f.neck=12" ][jump storage="H/dress.ks" target="*top"]
*ne_b3
[mod_neck st="s/neck/D/b3.png" time="700"][eval exp="f.neck=13" ][jump storage="H/dress.ks" target="*top"]
*ne_b4
[mod_neck st="s/neck/D/b4.png" time="700"][eval exp="f.neck=14" ][jump storage="H/dress.ks" target="*top"]

*ne_c1
[mod_neck st="s/neck/D/c1.png" time="700"][eval exp="f.neck=21" ][jump storage="H/dress.ks" target="*top"]
*ne_c2
[mod_neck st="s/neck/D/c2.png" time="700"][eval exp="f.neck=22" ][jump storage="H/dress.ks" target="*top"]
*ne_c3
[mod_neck st="s/neck/D/c3.png" time="700"][eval exp="f.neck=23" ][jump storage="H/dress.ks" target="*top"]
*ne_c4
[mod_neck st="s/neck/D/c4.png" time="700"][eval exp="f.neck=24" ][jump storage="H/dress.ks" target="*top"]
*ne_c5
[mod_neck st="s/neck/D/c5.png" time="700"][eval exp="f.neck=25" ][jump storage="H/dress.ks" target="*top"]
*ne_c6
[mod_neck st="s/neck/D/c6.png" time="700"][eval exp="f.neck=26" ][jump storage="H/dress.ks" target="*top"]
*ne_c7
[mod_neck st="s/neck/D/c7.png" time="700"][eval exp="f.neck=27" ][jump storage="H/dress.ks" target="*top"]
*ne_c8
[mod_neck st="s/neck/D/c8.png" time="700"][eval exp="f.neck=28" ][jump storage="H/dress.ks" target="*top"]


;;オリジナル衣装---------------------------------------------------------------------------------------------
*dress_original
[cm][eval exp="f.ch_win=14" ][call storage="H/dress_ex.ks" target="*menu_button" ]
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
[cancelskip][s]

*ori_c1
[dress_face_r]
[if exp="f.dress==9001"][else]
[chara_mod name="dress" time="600" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v1.png" time="700"][eval exp="f.dress=9001" ][jump storage="H/dress.ks" target="*top"]
*ori_c2
[dress_face_r]
[if exp="f.dress==9002"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v2.png" time="700"][eval exp="f.dress=9002" ][jump storage="H/dress.ks" target="*top"]
*ori_c3
[dress_face_r]
[if exp="f.dress==9003"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v3.png" time="700"][eval exp="f.dress=9003" ][jump storage="H/dress.ks" target="*top"]
*ori_c4
[dress_face_r]
[if exp="f.dress==9004"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v4.png" time="700"][eval exp="f.dress=9004" ][jump storage="H/dress.ks" target="*top"]
*ori_c5
[dress_face_r]
[if exp="f.dress==9005"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v5.png" time="700"][eval exp="f.dress=9005" ][jump storage="H/dress.ks" target="*top"]
*ori_c6
[dress_face_r]
[if exp="f.dress==9006"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v6.png" time="700"][eval exp="f.dress=9006" ][jump storage="H/dress.ks" target="*top"]
*ori_c7
[dress_face_r]
[if exp="f.dress==9007"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v7.png" time="700"][eval exp="f.dress=9007" ][jump storage="H/dress.ks" target="*top"]
*ori_c8
[dress_face_r]
[if exp="f.dress==9008"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v8.png" time="700"][eval exp="f.dress=9008" ][jump storage="H/dress.ks" target="*top"]
*ori_c9
[dress_face_r]
[if exp="f.dress==9009"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v9.png" time="700"][eval exp="f.dress=9009" ][jump storage="H/dress.ks" target="*top"]
*ori_c10
[dress_face_r]
[if exp="f.dress==9010"][else]
[chara_mod name="dress" time="700" storage="00.png" ][endif]
[mod_dress st="original/dress/D_v10.png" time="700"][eval exp="f.dress=9010" ][jump storage="H/dress.ks" target="*top"]

*ori_p1
[eval exp="f.pin=9001" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*ori_p2
[eval exp="f.pin=9002" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*ori_p3
[eval exp="f.pin=9003" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*ori_p4
;[eval exp="f.pin=9004" ][dress_pin_set]
[jump storage="H/dress.ks" target="*top"]
*ori_p5
;[eval exp="f.pin=9005" ][dress_pin_set]
[jump storage="H/dress.ks" target="*top"]
*ori_p6
[eval exp="f.pin=9006" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*ori_p7
[eval exp="f.pin=9007" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*ori_p8
[eval exp="f.pin=9008" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*ori_p9
[eval exp="f.pin=9009" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]
*ori_p10
[eval exp="f.pin=9010" ][dress_pin_set][jump storage="H/dress.ks" target="*top"]

*ori_h1
[mod_hat st="original/hat/D_v1.png" time="700"][eval exp="f.hat=9001" ][jump storage="H/dress.ks" target="*top"]
*ori_h2
[mod_hat st="original/hat/D_v2.png" time="700"][eval exp="f.hat=9002" ][jump storage="H/dress.ks" target="*top"]
*ori_h3
[mod_hat st="original/hat/D_v3.png" time="700"][eval exp="f.hat=9003" ][jump storage="H/dress.ks" target="*top"]
*ori_h4
[mod_hat st="original/hat/D_v4.png" time="700"][eval exp="f.hat=9004" ][jump storage="H/dress.ks" target="*top"]
*ori_h5
[mod_hat st="original/hat/D_v5.png" time="700"][eval exp="f.hat=9005" ][jump storage="H/dress.ks" target="*top"]
*ori_h6
[mod_hat st="original/hat/D_v6.png" time="700"][eval exp="f.hat=9006" ][jump storage="H/dress.ks" target="*top"]
*ori_h7
[mod_hat st="original/hat/D_v7.png" time="700"][eval exp="f.hat=9007" ][jump storage="H/dress.ks" target="*top"]
*ori_h8
[mod_hat st="original/hat/D_v8.png" time="700"][eval exp="f.hat=9008" ][jump storage="H/dress.ks" target="*top"]
*ori_h9
[mod_hat st="original/hat/D_v9.png" time="700"][eval exp="f.hat=9009" ][jump storage="H/dress.ks" target="*top"]
*ori_h10
[mod_hat st="original/hat/D_v10.png" time="700"][eval exp="f.hat=9010" ][jump storage="H/dress.ks" target="*top"]

*ori_n1
;[mod_neck st="original/neck/D_v1.png" time="700"][eval exp="f.neck=9001" ]
[jump storage="H/dress.ks" target="*top"]
*ori_n2
;[mod_neck st="original/neck/D_v2.png" time="700"][eval exp="f.neck=9002" ]
[jump storage="H/dress.ks" target="*top"]
*ori_n3
;[mod_neck st="original/neck/D_v3.png" time="700"][eval exp="f.neck=9003" ]
[jump storage="H/dress.ks" target="*top"]
*ori_n4
;[mod_neck st="original/neck/D_v4.png" time="700"][eval exp="f.neck=9004" ]
[jump storage="H/dress.ks" target="*top"]
*ori_n5
;[mod_neck st="original/neck/D_v5.png" time="700"][eval exp="f.neck=9005" ]
[jump storage="H/dress.ks" target="*top"]
*ori_n6
[mod_neck st="original/neck/D_v6.png" time="700"][eval exp="f.neck=9006" ][jump storage="H/dress.ks" target="*top"]
*ori_n7
;[mod_neck st="original/neck/D_v7.png" time="700"][eval exp="f.neck=9007" ]
[jump storage="H/dress.ks" target="*top"]
*ori_n8
;[mod_neck st="original/neck/D_v8.png" time="700"][eval exp="f.neck=9008" ]
[jump storage="H/dress.ks" target="*top"]
*ori_n9
;[mod_neck st="original/neck/D_v9.png" time="700"][eval exp="f.neck=9009" ]
[jump storage="H/dress.ks" target="*top"]
*ori_n10
;[mod_neck st="original/neck/D_v10.png" time="700"][eval exp="f.neck=9010" ]
[jump storage="H/dress.ks" target="*top"]

*ori_s1
;[mod_socks st="original/socks/D_v1.png" time="700"][eval exp="f.socks=9001" ]
[jump storage="H/dress.ks" target="*top"]
*ori_s2
;[mod_socks st="original/socks/D_v2.png" time="700"][eval exp="f.socks=9002" ]
[jump storage="H/dress.ks" target="*top"]
*ori_s3
;[mod_socks st="original/socks/D_v3.png" time="700"][eval exp="f.socks=9003" ]
[jump storage="H/dress.ks" target="*top"]
*ori_s4
;[mod_socks st="original/socks/D_v4.png" time="700"][eval exp="f.socks=9004" ]
[jump storage="H/dress.ks" target="*top"]
*ori_s5
;[mod_socks st="original/socks/D_v5.png" time="700"][eval exp="f.socks=9005" ]
[jump storage="H/dress.ks" target="*top"]
*ori_s6
;[mod_socks st="original/socks/D_v6.png" time="700"][eval exp="f.socks=9006" ]
[jump storage="H/dress.ks" target="*top"]
*ori_s7
;[mod_socks st="original/socks/D_v7.png" time="700"][eval exp="f.socks=9007" ]
[jump storage="H/dress.ks" target="*top"]
*ori_s8
;[mod_socks st="original/socks/D_v8.png" time="700"][eval exp="f.socks=9008" ]
[jump storage="H/dress.ks" target="*top"]
*ori_s9
;[mod_socks st="original/socks/D_v9.png" time="700"][eval exp="f.socks=9009" ]
[jump storage="H/dress.ks" target="*top"]
*ori_s10
;[mod_socks st="original/socks/D_v10.png" time="700"][eval exp="f.socks=9010" ]
[jump storage="H/dress.ks" target="*top"]

*ori_ri1
;[mod_b_acc st="original/b_acc/D_v1.png" time="700"][eval exp="f.b_acc=9001" ]
[jump storage="H/dress.ks" target="*top"]
*ori_ri2
;[mod_b_acc st="original/b_acc/D_v2.png" time="700"][eval exp="f.b_acc=9002" ]
[jump storage="H/dress.ks" target="*top"]
*ori_ri3
;[mod_b_acc st="original/b_acc/D_v3.png" time="700"][eval exp="f.b_acc=9003" ]
[jump storage="H/dress.ks" target="*top"]
*ori_ri4
;[mod_b_acc st="original/b_acc/D_v4.png" time="700"][eval exp="f.b_acc=9004" ]
[jump storage="H/dress.ks" target="*top"]
*ori_ri5
;[mod_b_acc st="original/b_acc/D_v5.png" time="700"][eval exp="f.b_acc=9005" ]
[jump storage="H/dress.ks" target="*top"]
*ori_ri6
;[mod_b_acc st="original/b_acc/D_v6.png" time="700"][eval exp="f.b_acc=9006" ]
[jump storage="H/dress.ks" target="*top"]
*ori_ri7
;[mod_b_acc st="original/b_acc/D_v7.png" time="700"][eval exp="f.b_acc=9007" ]
[jump storage="H/dress.ks" target="*top"]
*ori_ri8
;[mod_b_acc st="original/b_acc/D_v8.png" time="700"][eval exp="f.b_acc=9008" ]
[jump storage="H/dress.ks" target="*top"]
*ori_ri9
;[mod_b_acc st="original/b_acc/D_v9.png" time="700"][eval exp="f.b_acc=9009" ]
[jump storage="H/dress.ks" target="*top"]
*ori_ri10
;[mod_b_acc st="original/b_acc/D_v10.png" time="700"][eval exp="f.b_acc=9010" ]
[jump storage="H/dress.ks" target="*top"]


*take_all
[dress_face_r]
[if exp="f.hair_style!=0" ][chara_mod name="head" time="0" storage="s/body/dress_h1.png" ]
[mod_hair st="s/hair/D/nr.png" ][mod_hat st="00.png" time="700"][chara_mod name="ribbon" time="0" storage="00.png" time="700"][chara_mod name="ribbon_b" time="0" storage="00.png" time="700"]
[eval exp="f.hair_style=0" ][eval exp="f.hair_band=0" ][endif]
[if exp="f.glasses!=0" ][chara_mod name="glasses" time="0" storage="00.png" time="700"][eval exp="f.glasses=0" ][endif]
[if exp="f.hat!=0" ][chara_mod name="hat" time="0" storage="00.png" time="700"][eval exp="f.hat=0" ][endif]
[if exp="f.front_hair!=0" ][chara_mod name="pin" time="0" storage="00.png" time="700"][chara_mod name="hair_f" time="0" storage="s/body/dress_fh.png" ][eval exp="f.pin=0" ][eval exp="f.front_hair=0" ][endif]
[if exp="f.b_acc!=0" ][chara_mod name="b_acc" time="0" storage="00.png" time="700"][eval exp="f.b_acc=0" ][endif]
[if exp="f.neck!=0" ][chara_mod name="neck" time="0" storage="00.png" time="700"][eval exp="f.neck=0" ][endif]
[if exp="f.socks!=0" ][chara_mod name="socks" time="0" storage="00.png" time="700"][eval exp="f.socks=0" ][endif]
[if exp="f.gloves!=0" ][chara_mod name="gloves" time="0" storage="00.png" time="700"][eval exp="f.gloves=0" ][endif]
[if exp="f.lust>=5" ][chara_mod name="dress" time="0" storage="00.png" time="700"][eval exp="f.dress=0" ][endif]
[if exp="f.lust>=15" ][chara_mod name="under_b" time="0" storage="00.png" time="700"][eval exp="f.under_b=0" ][f/clp_nt][endif]
[if exp="f.lust>=15" ][chara_mod name="under_p" time="0" storage="00.png" time="700"][eval exp="f.under_p=0" ][d_face_h][endif]
[jump storage="H/dress.ks" target="*top"]

;*no_hat
;[if exp="f.hat>=30 && f.hat<39" ][endif]
