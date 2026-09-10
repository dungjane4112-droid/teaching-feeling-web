;;トーク後
*after_talk
[if exp="f.s_studi=='yet'" ]
[elsif exp="f.sch_st>=1"]
[elsif exp="f.act<=2"]
[elsif exp="f.love>=150 && f.step>=6"]
[jump target="*school_begin"][endif]

[if exp="f.ngay==3 && f.thang==12 && f.tax_cos>=10 && f.tax=='on'"]
[jump target="*tax"]
[elsif exp="f.ngay==15 && f.thang==12 && f.tax_cos>=10 && f.tax=='on'"]
[jump target="*tax"]
[elsif exp="f.ngay==29 && f.thang==12 && f.tax_cos>=10 && f.tax=='on'"]
[jump target="*tax"][endif]

[if exp="f.neph_st>=3 && f.thoi_tiet==0 && f.act<=4"]
[random_11][else][eval exp="f.r=0"][endif]
[if exp="f.neph_wst=='ok' && f.ne_love>=100 && f.r>=5"]
[jump target="*neph_come"][endif]
;[emb exp="f.r"][p]
[call storage="intro/awekup.ks" target="*mcr_tag"]
[talk_lust][talk_love]
[if exp="f.act<=2"]
[eval exp="f.act=f.act+1"][else]
[timer]
[endif]

[eval exp="f.last_act='talk'" ][eval exp="f.hp=f.hp+1"][hp_return]
[if exp="f.step==6" ][eval exp="f.love=f.love+1" ][eval exp="f.daily_talk=f.daily_talk+1" ]
[elsif exp="f.step>=4" ][eval exp="f.love=f.love+1" ][eval exp="f.talk=f.talk+1" ]
[else][eval exp="f.talk=f.talk+1" ][endif][return_menu]


*after_touch
[cm][timer]
[if exp="f.s_studi=='yet' && f.act==1 && f.thu<=6"]
[cm][eval exp="f.act=0"]
[_](Đã đến lúc Sylvie cần đến trường...[p]
[eval exp="f.act=0"]
[jump storage="mod/school/schl_af.ks" target="*after"][endif]

[if exp="f.s_studi=='yet' && f.act==2 && f.thu<=6"]
[cm][eval exp="f.act=0"]
[_](Giờ đã đến lúc Sylvie cần đến trường...[p]
[eval exp="f.act=0"]
[jump storage="mod/school/schl_af.ks" target="*after"][endif]
[return_bace]

;;撫で後
*after_nade
[if exp="f.syl_game1=='nade'"]
[eval exp="f.syl_game1='non'"][eval exp="f.love=f.love+3"][eval exp="f.hp=f.hp+5"][hp_return][endif]
[nade_love][nade_lust][timer][eval exp="f.love=f.love+1" ][eval exp="f.last_act='nade_conti'" ]
[if exp="f.step<=5" ][eval exp="f.nade=f.nade+1" ][endif][eval exp="f.hp=f.hp+1"][hp_return]
[mod_win st="o/win/nade_win.png" ][set_time]
[if exp="f.act>=7" ][jump target="*stop_nade" ][endif]
[if exp="f.step<=5" ][jump target="*nade1_5" ][else]
[eval exp="f.love=f.love+1" ][eval exp="f.daily_nade=f.daily_nade+1" ][endif]
;*nade6
[cm]

[if exp="f.s_studi=='yet' && f.act==1 && f.thu<=6"]
[cm][eval exp="f.act=0"]
[_](Đã đến lúc Sylvie cần đến trường...[p]
[eval exp="f.act=0"]
[jump storage="mod/school/schl_af.ks" target="*after"][endif]

[if exp="f.s_studi=='yet' && f.act==2 && f.thu<=6"]
[cm][eval exp="f.act=0"]
[_](Giờ đã đến lúc Sylvie cần đến trường...[p]
[eval exp="f.act=0"]
[jump storage="mod/school/schl_af.ks" target="*after"][endif]

[if exp="f.nade_c==1" ]
[button target="*nade_continue_" graphic="s_menu/conti.png" width="450" x="20" y="150" ][else]
[button target="*nade_continue" graphic="s_menu/head.png" width="450" x="20" y="150" ][endif]
[if exp="f.nade_c==2" ]
[button target="*nade_continue2_" graphic="s_menu/conti.png" width="450" x="20" y="230" ]
[elsif exp="f.love>=200" ]
[button target="*nade_continue2" graphic="s_menu/cheek.png" width="450" x="20" y="230" ][endif]
[if exp="f.nade_c==3" ]
[button target="*nade_continue3_" graphic="s_menu/conti.png" width="450" x="20" y="310" ]
[elsif exp="f.love>=500 && f.lust>=300" ]
[button target="*nade_continue3" graphic="s_menu/mouth.png" width="450" x="20" y="310" ][endif]
[button target="*stop_nade" graphic="s_menu/stop.png" width="450" x="20" y="390" ][s]

*nade1_5
[cm][button target="*nade_continue_" graphic="s_menu/conti.png" width="450" x="20" y="150" ]
[button target="*stop_nade" graphic="s_menu/stop.png" width="450" x="20" y="230" ][s]

*nade_continue
[cm][mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]
[_]（Tôi vuốt nhẹ lên mái tóc mềm mại của Sylvie。[p]

*nade_continue_
[cm][mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]
[eval exp="f.nade_conti=1" ][eval exp="f.nade_c=1" ]
[chara_mod name="hand_R" time="200" storage="o/hand/m-n-hand.png" ]
[jump target="*nade" ]

*nade_continue2
[cm][mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]
[_]（Tôi vuốt nhẹ lên gò má ấm áp của Sylvie。[p]
*nade_continue2_
[cm][mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]
[eval exp="f.nade_conti=1" ][eval exp="f.nade_c=2" ]
[chara_mod name="hand_R" time="200" storage="o/hand/m-n-hand-.png" ]
[jump target="*nade6b" ]
*nade_continue3
[cm][mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]
[eval exp="f.nade_conti=1" ][eval exp="f.nade_c=3" ]
[set_nade][nade_li_n][y/def][e/close_p][show_nade]
[syl]ん…[p]
[_][if exp="f.last_act=='touch_mouth'" ][eval exp="f.last_act='nade_conti'" ]
（Tôi nhẹ nhàng đưa ngon ay của mình đến gần đôi môi mềm mại của Sylvie, cô ấy bắt đầu ngậm lấy ngón tay của tôi mà không nói gì.[p]
[else]
（Sylvie nắm lấy bàn tay tôi trên má cô ấy và di chuyển nó, cô ấy bắt đầu ngậm lấy nó.[p]
[endif]
[add_lust_act][mouth_up_little]
[jump target="*after_nade" ]

*nade_continue3_
[cm][eval exp="f.nade_conti=1" ][eval exp="f.nade_c=3" ]
[jump target="*nade6c" ]

*stop_nade
[cm][eval exp="f.last_act='nade'" ][eval exp="f.nade_c=0" ][return_bace]


;;トーク（ステップ分岐-------------------
*talk
[cm][if exp="f.step==1" ][jump storage="intro/step1.ks" target="*talk_lead1" ]
[elsif exp="f.step==2" ][jump storage="intro/step2.ks" target="*talk_lead2" ]
[elsif exp="f.step==3" ][jump storage="intro/step3.ks" target="*talk_lead3" ]
[elsif exp="f.step==4" ][jump storage="intro/step4.ks" target="*talk_lead4" ]
[elsif exp="f.step==5" ][jump storage="intro/step5.ks" target="*talk_lead5" ]
[elsif exp="f.step==6" ][jump target="*talk6" ][endif]

*lust_talk
[random_3]
[if exp="f.r==1" ][random_68]
[elsif exp="f.r==2" ][random_32][eval exp="f.r=f.r+36" ]
[else][random_22][eval exp="f.r=f.r+46" ][endif]
[jump target="*talk6_" ]

*lust_talk_h
[if exp="f.lust<=80" ][jump target="*x"]
[elsif exp="f.lust<=200"][jump target="*xx"]
[elsif exp="f.lust>=200"][jump target="*xxx"][endif]

*x
[if exp="f.sexless>=3 && f.sexless_c==3" ][jump target="*lust_talk_h_"][else][jump target="*lust_talk"][endif]
*xx
[if exp="f.sexless>=2 && f.sexless_c==3" ][jump target="*lust_talk_h_"][else][jump target="*lust_talk"][endif]
*xxx
[if exp="f.sexless>=1 && f.sexless_c==3" ][jump target="*lust_talk_h_"][else][jump target="*lust_talk"][endif]

*lust_talk_h_
[if exp="f.m_xxx==1"][else][jump target="*lust_talk"][endif]
[random_8]
[if exp="f.r>=7" ][jump target="*lust_talk"]
[elsif exp="f.lust>=500"]
[iscript]
f.r=Math.floor(Math.random() * 20 + 1);
[endscript]
[eval exp="f.r=f.r+56"]
[jump target="*talk6_" ]
[else]
[iscript]
f.r=Math.floor(Math.random() * 40 + 1);
[endscript]
[eval exp="f.r=f.r+36"][jump target="*talk6_" ]
[endif]

*talk6
[cm]
[if exp="f.lust>=50 && f.mood=='lust'"]
[jump target="*lust_talk_h" ][endif]
[if exp="f.lust<=100 || f.mood=='calm'" ][random_36][jump target="*talk6_" ]
[elsif exp="f.lust<=300" ][random_46][jump target="*talk6_" ][endif]

[if exp="f.mood=='lust'" ][jump target="*lust_talk" ][endif]

[if exp="f.lust>=5000" ][random_2][elsif exp="f.lust>=3000" ][random_3]
[elsif exp="f.lust>=2000" ][random_5][elsif exp="f.lust>=1000" ][random_7]
[elsif exp="f.lust>=500" ][random_9][else][random_12][endif]

[if exp="f.lust>=150 && f.r==1" ][random_68]
[else][random_46][endif]

*talk6_
[cm][syl][if exp="f.r==1" ][jump storage="talk/step6.ks" target="*talk1" ][elsif exp="f.r==2" ][jump storage="talk/step6.ks" target="*talk2" ]
[elsif exp="f.r==3" ][jump storage="talk/step6.ks" target="*talk3" ][elsif exp="f.r==4" ][jump storage="talk/step6.ks" target="*talk4" ]
[elsif exp="f.r==5" ][jump storage="talk/step6.ks" target="*talk5" ][elsif exp="f.r==6" ][jump storage="talk/step6.ks" target="*talk6" ]
[elsif exp="f.r==7" ][jump storage="talk/step6.ks" target="*talk7" ][elsif exp="f.r==8" ][jump storage="talk/step6.ks" target="*talk8" ]
[elsif exp="f.r==9" ][jump storage="talk/step6.ks" target="*talk9" ][elsif exp="f.r==10" ][jump storage="talk/step6.ks" target="*talk10" ]
[elsif exp="f.r==11" ][jump storage="talk/step6.ks" target="*talk11" ][elsif exp="f.r==12" ][jump storage="talk/step6.ks" target="*talk12" ]
[elsif exp="f.r==13" ][jump storage="talk/step6.ks" target="*talk13" ][elsif exp="f.r==14" ][jump storage="talk/step6.ks" target="*talk14" ]
[elsif exp="f.r==15" ][jump storage="talk/step6.ks" target="*talk15" ][elsif exp="f.r==16" ][jump storage="talk/step6.ks" target="*talk16" ]
[elsif exp="f.r==17" ][jump storage="talk/step6.ks" target="*talk17" ][elsif exp="f.r==18" ][jump storage="talk/step6.ks" target="*talk18" ]
[elsif exp="f.r==19" ][jump storage="talk/step6.ks" target="*talk19" ][elsif exp="f.r==20" ][jump storage="talk/step6.ks" target="*talk20" ]
[elsif exp="f.r==21" ][jump storage="talk/step6.ks" target="*talk21" ][elsif exp="f.r==22" ][jump storage="talk/step6.ks" target="*talk22" ]
[elsif exp="f.r==23" ][jump storage="talk/step6.ks" target="*talk23" ][elsif exp="f.r==24" ][jump storage="talk/step6.ks" target="*talk24" ]
[elsif exp="f.r==25" ][jump storage="talk/step6.ks" target="*talk25" ][elsif exp="f.r==26" ][jump storage="talk/step6.ks" target="*talk26" ]
[elsif exp="f.r==27" ][jump storage="talk/step6.ks" target="*talk27" ][elsif exp="f.r==28" ][jump storage="talk/step6.ks" target="*talk28" ]
[elsif exp="f.r==29" ][jump storage="talk/step6.ks" target="*talk29" ][elsif exp="f.r==30" ][jump storage="talk/step6.ks" target="*talk30" ]
[elsif exp="f.r==31" ][jump storage="talk/step6.ks" target="*talk31" ][elsif exp="f.r==32" ][jump storage="talk/step6.ks" target="*talk32" ]
[elsif exp="f.r==33" ][jump storage="talk/step6.ks" target="*talk33" ][elsif exp="f.r==34" ][jump storage="talk/step6.ks" target="*talk34" ]
[elsif exp="f.r==35" ][jump storage="talk/step6.ks" target="*talk35" ][elsif exp="f.r==36" ][jump storage="talk/step6.ks" target="*talk36" ]
[elsif exp="f.r==37" ][jump storage="talk/step6.ks" target="*talk37" ][elsif exp="f.r==38" ][jump storage="talk/step6.ks" target="*talk38" ]
[elsif exp="f.r==39" ][jump storage="talk/step6.ks" target="*talk39" ][elsif exp="f.r==40" ][jump storage="talk/step6.ks" target="*talk40" ]
[elsif exp="f.r==41" ][jump storage="talk/step6.ks" target="*talk41" ][elsif exp="f.r==42" ][jump storage="talk/step6.ks" target="*talk42" ]
[elsif exp="f.r==43" ][jump storage="talk/step6.ks" target="*talk43" ][elsif exp="f.r==44" ][jump storage="talk/step6.ks" target="*talk44" ]
[elsif exp="f.r==45" ][jump storage="talk/step6.ks" target="*talk45" ][elsif exp="f.r==46" ][jump storage="talk/step6.ks" target="*talk46" ]
[elsif exp="f.r==47" ][jump storage="talk/step6.ks" target="*talk47" ][elsif exp="f.r==48" ][jump storage="talk/step6.ks" target="*talk48" ]
[elsif exp="f.r==49" ][jump storage="talk/step6.ks" target="*talk49" ][elsif exp="f.r==50" ][jump storage="talk/step6.ks" target="*talk50" ]
[elsif exp="f.r==51" ][jump storage="talk/step6.ks" target="*talk51" ][elsif exp="f.r==52" ][jump storage="talk/step6.ks" target="*talk52" ]
[elsif exp="f.r==53" ][jump storage="talk/step6.ks" target="*talk53" ][elsif exp="f.r==54" ][jump storage="talk/step6.ks" target="*talk54" ]
[elsif exp="f.r==55" ][jump storage="talk/step6.ks" target="*talk55" ][elsif exp="f.r==56" ][jump storage="talk/step6.ks" target="*talk56" ]
[elsif exp="f.r==57" ][jump storage="talk/step6.ks" target="*talk57" ][elsif exp="f.r==58" ][jump storage="talk/step6.ks" target="*talk58" ]
[elsif exp="f.r==59" ][jump storage="talk/step6.ks" target="*talk59" ][elsif exp="f.r==60" ][jump storage="talk/step6.ks" target="*talk60" ]
[elsif exp="f.r==61" ][jump storage="talk/step6.ks" target="*talk61" ][elsif exp="f.r==62" ][jump storage="talk/step6.ks" target="*talk62" ]
[elsif exp="f.r==63" ][jump storage="talk/step6.ks" target="*talk63" ][elsif exp="f.r==64" ][jump storage="talk/step6.ks" target="*talk64" ]
[elsif exp="f.r==65" ][jump storage="talk/step6.ks" target="*talk65" ][elsif exp="f.r==66" ][jump storage="talk/step6.ks" target="*talk66" ]
[elsif exp="f.r==67" ][jump storage="talk/step6.ks" target="*talk67" ][elsif exp="f.r==68" ][jump storage="talk/step6.ks" target="*talk68" ]
[elsif exp="f.r==69" ][jump storage="talk/step6.ks" target="*talk69" ][elsif exp="f.r==70" ][jump storage="talk/step6.ks" target="*talk70" ]
[elsif exp="f.r==71" ][jump storage="talk/step6.ks" target="*talk71" ][elsif exp="f.r==72" ][jump storage="talk/step6.ks" target="*talk72" ]
[elsif exp="f.r==73" ][jump storage="talk/step6.ks" target="*talk73" ][elsif exp="f.r==74" ][jump storage="talk/step6.ks" target="*talk74" ]
[elsif exp="f.r==75" ][jump storage="talk/step6.ks" target="*talk75" ][elsif exp="f.r==76" ][jump storage="talk/step6.ks" target="*talk76" ]
[endif]

;;撫で（ステップ分岐-------------------
*nade
[cm][chara_mod name="hand_R" time="0" storage="o/hand/m-n-hand.png" ]
*nade_
[if exp="f.step==1" ][jump storage="intro/step1.ks" target="*nade_lead1" ][elsif exp="f.step==2" ][jump storage="intro/step2.ks" target="*nade_lead2" ]
[elsif exp="f.step==3" ][jump storage="intro/step3.ks" target="*nade_lead3" ][elsif exp="f.step==4" ][jump storage="intro/step4.ks" target="*nade_lead4" ]
[elsif exp="f.step==5" ][jump storage="intro/step5.ks" target="*nade_lead5" ][elsif exp="f.step==6" ][jump target="*nade6" ][endif]

*lust_nade
[random_2]
[if exp="f.r==1" ][random_54][else][random_22][eval exp="f.r=f.r+32" ][endif]
[jump target="*nade6_" ]

*nade6
[cm][if exp="f.nade_c==0" ][eval exp="f.nade_c=1" ][endif]
[if exp="f.lust<=150 || f.mood=='calm'" ][random_32][jump target="*nade6_" ][endif]
[if exp="f.mood=='lust'" ][jump target="*lust_nade" ][endif]

[if exp="f.lust>=5000" ][random_2][elsif exp="f.lust>=3000" ][random_3]
[elsif exp="f.lust>=2000" ][random_5][elsif exp="f.lust>=1000" ][random_7]
[elsif exp="f.lust>=500" ][random_9][else][random_12][endif]

[if exp="f.lust>=150 && f.r==1" ][random_54][else][random_46][endif]

*nade6_
[cm][set_nade]
[if exp="f.r==1" ][jump storage="talk/nade.ks" target="*nade1" ][elsif exp="f.r==2" ][jump storage="talk/nade.ks" target="*nade2" ]
[elsif exp="f.r==3" ][jump storage="talk/nade.ks" target="*nade3" ][elsif exp="f.r==4" ][jump storage="talk/nade.ks" target="*nade4" ]
[elsif exp="f.r==5" ][jump storage="talk/nade.ks" target="*nade5" ][elsif exp="f.r==6" ][jump storage="talk/nade.ks" target="*nade6" ]
[elsif exp="f.r==7" ][jump storage="talk/nade.ks" target="*nade7" ][elsif exp="f.r==8" ][jump storage="talk/nade.ks" target="*nade8" ]
[elsif exp="f.r==9" ][jump storage="talk/nade.ks" target="*nade9" ][elsif exp="f.r==10" ][jump storage="talk/nade.ks" target="*nade10" ]
[elsif exp="f.r==11" ][jump storage="talk/nade.ks" target="*nade11" ][elsif exp="f.r==12" ][jump storage="talk/nade.ks" target="*nade12" ]
[elsif exp="f.r==13" ][jump storage="talk/nade.ks" target="*nade13" ][elsif exp="f.r==14" ][jump storage="talk/nade.ks" target="*nade14" ]
[elsif exp="f.r==15" ][jump storage="talk/nade.ks" target="*nade15" ][elsif exp="f.r==16" ][jump storage="talk/nade.ks" target="*nade16" ]
[elsif exp="f.r==17" ][jump storage="talk/nade.ks" target="*nade17" ][elsif exp="f.r==18" ][jump storage="talk/nade.ks" target="*nade18" ]
[elsif exp="f.r==19" ][jump storage="talk/nade.ks" target="*nade19" ][elsif exp="f.r==20" ][jump storage="talk/nade.ks" target="*nade20" ]
[elsif exp="f.r==21" ][jump storage="talk/nade.ks" target="*nade21" ][elsif exp="f.r==22" ][jump storage="talk/nade.ks" target="*nade22" ]
[elsif exp="f.r==23" ][jump storage="talk/nade.ks" target="*nade23" ][elsif exp="f.r==24" ][jump storage="talk/nade.ks" target="*nade24" ]
[elsif exp="f.r==25" ][jump storage="talk/nade.ks" target="*nade25" ][elsif exp="f.r==26" ][jump storage="talk/nade.ks" target="*nade26" ]
[elsif exp="f.r==27" ][jump storage="talk/nade.ks" target="*nade27" ][elsif exp="f.r==28" ][jump storage="talk/nade.ks" target="*nade28" ]
[elsif exp="f.r==29" ][jump storage="talk/nade.ks" target="*nade29" ][elsif exp="f.r==30" ][jump storage="talk/nade.ks" target="*nade30" ]
[elsif exp="f.r==31" ][jump storage="talk/nade.ks" target="*nade31" ][elsif exp="f.r==32" ][jump storage="talk/nade.ks" target="*nade32" ]
[elsif exp="f.r==33" ][jump storage="talk/nade.ks" target="*nade33" ][elsif exp="f.r==34" ][jump storage="talk/nade.ks" target="*nade34" ]
[elsif exp="f.r==35" ][jump storage="talk/nade.ks" target="*nade35" ][elsif exp="f.r==36" ][jump storage="talk/nade.ks" target="*nade36" ]
[elsif exp="f.r==37" ][jump storage="talk/nade.ks" target="*nade37" ][elsif exp="f.r==38" ][jump storage="talk/nade.ks" target="*nade38" ]
[elsif exp="f.r==39" ][jump storage="talk/nade.ks" target="*nade39" ][elsif exp="f.r==40" ][jump storage="talk/nade.ks" target="*nade40" ]
[elsif exp="f.r==41" ][jump storage="talk/nade.ks" target="*nade41" ][elsif exp="f.r==42" ][jump storage="talk/nade.ks" target="*nade42" ]
[elsif exp="f.r==43" ][jump storage="talk/nade.ks" target="*nade43" ][elsif exp="f.r==44" ][jump storage="talk/nade.ks" target="*nade44" ]
[elsif exp="f.r==45" ][jump storage="talk/nade.ks" target="*nade45" ][elsif exp="f.r==46" ][jump storage="talk/nade.ks" target="*nade46" ]
[elsif exp="f.r==47" ][jump storage="talk/nade.ks" target="*nade47" ][elsif exp="f.r==48" ][jump storage="talk/nade.ks" target="*nade48" ]
[elsif exp="f.r==49" ][jump storage="talk/nade.ks" target="*nade49" ][elsif exp="f.r==50" ][jump storage="talk/nade.ks" target="*nade50" ]
[elsif exp="f.r==51" ][jump storage="talk/nade.ks" target="*nade51" ][elsif exp="f.r==52" ][jump storage="talk/nade.ks" target="*nade52" ]
[elsif exp="f.r==53" ][jump storage="talk/nade.ks" target="*nade53" ][elsif exp="f.r==54" ][jump storage="talk/nade.ks" target="*nade54" ]
[endif]



*lust_nade_b
[random_2]
[if exp="f.r==1" ][random_54][else][random_22][eval exp="f.r=f.r+32" ][endif]
[jump target="*nade6b_" ]

*nade6b
[cm][if exp="f.lust<=150 || f.mood=='calm'" ][random_32][jump target="*nade6b_" ][endif]
[if exp="f.mood=='lust'" ][jump target="*lust_nade_b" ][endif]

[if exp="f.lust>=5000" ][random_2][elsif exp="f.lust>=3000" ][random_3]
[elsif exp="f.lust>=2000" ][random_5][elsif exp="f.lust>=1000" ][random_7]
[elsif exp="f.lust>=500" ][random_9][else][random_12][endif]

[if exp="f.lust>=150 && f.r==1" ][random_54][else][random_46][endif]

*nade6b_
[cm][set_nade]
[if exp="f.r==1" ][jump storage="talk/nade.ks" target="*nade1" ][elsif exp="f.r==2" ][jump storage="talk/nade.ks" target="*nade2" ]
[elsif exp="f.r==3" ][jump storage="talk/nade.ks" target="*nade3" ][elsif exp="f.r==4" ][jump storage="talk/nade.ks" target="*nade4" ]
[elsif exp="f.r==5" ][jump storage="talk/nade.ks" target="*nade5" ][elsif exp="f.r==6" ][jump storage="talk/nade.ks" target="*nade6" ]
[elsif exp="f.r==7" ][jump storage="talk/nade.ks" target="*nade7" ][elsif exp="f.r==8" ][jump storage="talk/nade.ks" target="*nade8" ]
[elsif exp="f.r==9" ][jump storage="talk/nade.ks" target="*nade9" ][elsif exp="f.r==10" ][jump storage="talk/nade.ks" target="*nade10" ]
[elsif exp="f.r==11" ][jump storage="talk/nade.ks" target="*nade11" ][elsif exp="f.r==12" ][jump storage="talk/nade.ks" target="*nade12" ]
[elsif exp="f.r==13" ][jump storage="talk/nade.ks" target="*nade13" ][elsif exp="f.r==14" ][jump storage="talk/nade.ks" target="*nade14" ]
[elsif exp="f.r==15" ][jump storage="talk/nade.ks" target="*nade15" ][elsif exp="f.r==16" ][jump storage="talk/nade.ks" target="*nade16" ]
[elsif exp="f.r==17" ][jump storage="talk/nade.ks" target="*nade17" ][elsif exp="f.r==18" ][jump storage="talk/nade.ks" target="*nade18" ]
[elsif exp="f.r==19" ][jump storage="talk/nade.ks" target="*nade19" ][elsif exp="f.r==20" ][jump storage="talk/nade.ks" target="*nade20" ]
[elsif exp="f.r==21" ][jump storage="talk/nade.ks" target="*nade21" ][elsif exp="f.r==22" ][jump storage="talk/nade.ks" target="*nade22" ]
[elsif exp="f.r==23" ][jump storage="talk/nade.ks" target="*nade23" ][elsif exp="f.r==24" ][jump storage="talk/nade.ks" target="*nade24" ]
[elsif exp="f.r==25" ][jump storage="talk/nade.ks" target="*nade25" ][elsif exp="f.r==26" ][jump storage="talk/nade.ks" target="*nade26" ]
[elsif exp="f.r==27" ][jump storage="talk/nade.ks" target="*nade27" ][elsif exp="f.r==28" ][jump storage="talk/nade.ks" target="*nade28" ]
[elsif exp="f.r==29" ][jump storage="talk/nade.ks" target="*nade29" ][elsif exp="f.r==30" ][jump storage="talk/nade.ks" target="*nade30" ]
[elsif exp="f.r==31" ][jump storage="talk/nade.ks" target="*nade31" ][elsif exp="f.r==32" ][jump storage="talk/nade.ks" target="*nade32" ]
[elsif exp="f.r==33" ][jump storage="talk/nade.ks" target="*nade33" ][elsif exp="f.r==34" ][jump storage="talk/nade.ks" target="*nade34" ]
[elsif exp="f.r==35" ][jump storage="talk/nade.ks" target="*nade35" ][elsif exp="f.r==36" ][jump storage="talk/nade.ks" target="*nade36" ]
[elsif exp="f.r==37" ][jump storage="talk/nade.ks" target="*nade37" ][elsif exp="f.r==38" ][jump storage="talk/nade.ks" target="*nade38" ]
[elsif exp="f.r==39" ][jump storage="talk/nade.ks" target="*nade39" ][elsif exp="f.r==40" ][jump storage="talk/nade.ks" target="*nade40" ]
[elsif exp="f.r==41" ][jump storage="talk/nade.ks" target="*nade41" ][elsif exp="f.r==42" ][jump storage="talk/nade.ks" target="*nade42" ]
[elsif exp="f.r==43" ][jump storage="talk/nade.ks" target="*nade43" ][elsif exp="f.r==44" ][jump storage="talk/nade.ks" target="*nade44" ]
[elsif exp="f.r==45" ][jump storage="talk/nade.ks" target="*nade45" ][elsif exp="f.r==46" ][jump storage="talk/nade.ks" target="*nade46" ]
[elsif exp="f.r==47" ][jump storage="talk/nade.ks" target="*nade47" ][elsif exp="f.r==48" ][jump storage="talk/nade.ks" target="*nade48" ]
[elsif exp="f.r==49" ][jump storage="talk/nade.ks" target="*nade49" ][elsif exp="f.r==50" ][jump storage="talk/nade.ks" target="*nade50" ]
[elsif exp="f.r==51" ][jump storage="talk/nade.ks" target="*nade51" ][elsif exp="f.r==52" ][jump storage="talk/nade.ks" target="*nade52" ]
[elsif exp="f.r==53" ][jump storage="talk/nade.ks" target="*nade53" ][elsif exp="f.r==54" ][jump storage="talk/nade.ks" target="*nade54" ]
[endif]

*nade6c
[cm][set_nade][random_7]
[if exp="f.r==1" ][jump storage="talk/nade.ks" target="*yubi1" ][elsif exp="f.r==2" ][jump storage="talk/nade.ks" target="*yubi2" ]
[elsif exp="f.r==3" ][jump storage="talk/nade.ks" target="*yubi3" ][elsif exp="f.r==4" ][jump storage="talk/nade.ks" target="*yubi4" ]
[elsif exp="f.r==5" ][jump storage="talk/nade.ks" target="*yubi5" ][elsif exp="f.r==6" ][jump storage="talk/nade.ks" target="*yubi6" ]
[elsif exp="f.r==7" ][jump storage="talk/nade.ks" target="*yubi7" ][endif]

;------------------------mod by ichibikun-------------------------
*neph_come
[cm][eval exp="f.neph_wst='off'"]
[_]*Ting~~* (tiếng chuông cửa)
[syl][a_02][f/]Hmm?[lr_]
[f/re] Hình như có khách?[p_]
[_]
[if exp="f.ne_x_s<=10"][jump target="*open_d"][endif]
[font color="lightblue"][link target="*open_d" ]【Ra mở cửa】[r][r][link target="*syl_open_d" ]【Để Sylvie ra mở cửa】[resetfont][s]

*open_d
[cm][_](Tôi ngăn Sylvie lại khi cô ấy định đứng lên.[p]
[jump storage="mod/nephy_home.ks" target="*begin"]

*syl_open_d
[cm]
[if exp="f.dress==0 || f.dress==5 || f.dress==6 || f.dress>=1001 && f.dress<=3000" ]
[syl][f/ssp][name] à! Mặc kiểu này em không thể ra ngoài được đâu[p_][f/sp][sm_09]
[font color="lightblue"][link target="*open_d" ]【Ra mở cửa】[r][r][link target="*syl_open_d" ]【Để Sylvie ra mở cửa】[resetfont][s]
[endif]
[syl][f/s]Em sẽ ra mở cửa. Anh ở đây đợi chút nhé![p_]
[jump storage="mod/nephy_home.ks" target="*begin_syl"]

*tax
[cm][eval exp="f.tax='off'"]
[_]*Ting~~* (tiếng chuông cửa)[p]
[syl][a_02][f/]Ah![lr_]
[f/re] Hình như chúng ta có khách?[p_]
[_]
[font color="lightblue"][link target="*open_tax" ]【Ra mở cửa】[r][r][link target="*syl_open_tax" ]【Để Sylvie ra mở cửa】[resetfont][s]

*open_tax
[cm][_](Tôi ngăn Sylvie lại khi cô ấy định đứng lên.[p]
[jump storage="mod/tax.ks" target="*begin"]

*syl_open_tax
[cm]
[if exp="f.dress==0 || f.dress==5 || f.dress==6 || f.dress>=1001 && f.dress<=3000" ]
[syl][f/ssp][name] à! Mặc kiểu này em không thể ra ngoài được đâu[p_][f/sp][sm_09]
[font color="lightblue"][link target="*open_tax" ]【Ra mở cửa】[r][r][link target="*syl_open_tax" ]【Để Sylvie ra mở cửa】[resetfont][s]
[endif]
[syl][f/s]Em sẽ ra mở cửa. Anh ở đây đợi chút nhé![p_]
[jump storage="mod/tax.ks" target="*begin_syl"]

*school_begin
[cm][eval exp="f.sch_st=1"]
#Tin nhắn
~Ting~[p]
#TF-High school
_Kính chào bác sỹ![r]
Chúng tôi đại diện cho trường Trung học công lập "TF-High School"[r] 
muốn mời ngài làm cố vấn y tế trong trường.[p]
Vì lý do điều chỉnh nhân sự của thị trấn, nhân viên y tế của chúng tôi[r]
có thể bị điều chuyển trong thời gian nhất định.[p]
Ngài có thể trả lời qua hộp thư [font color="lightblue"]TF_Highschool@TFmail.vn[resetfont][r]
Chân thành cảm ơn và Rất mong được sự giúp đỡ từ ngài.[p]
#Tin nhắn QC
_Bạn có thể đăng ký nhập học tại TF-High school bằng cách gửi thông tin[r]
học sinh tới hòm thư: [font color="lightblue"]TF_Highschool@TFmail.vn[resetfont].[p]
#Hệ thống
Bạn có thể nhập vào khung chat mã 001 hoặc mail để mở hòm thư cá nhân.[p]
[_](Trường trung học sao.[p]
(Tôi thử hỏi Sylvie một chút về việc đi học.[p]
[syl][f/][a_01]Đi học ạ?[p_]
[na_1][f/s]Được chứ ạ! Trước kia em vẫn được đi học ạ![lr_]
[f/re]Em đã học tới năm nhất cao trung rồi.[p_]
[f/ss]Đó là một khoảng thời gian rất tuyệt ạ.[p_][f/s_nt][sm_09]
[_](Sylvie có vẻ rất vui khi nhắc tới trường lớp.[p]
[end_talk]

