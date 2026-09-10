;;===========================Sylvie voice==========mod by ichibikun
;;---------------------r

[macro name="show_button"]
;[clickable width="10" height="10" x="0" y="0" storage="sys/debug.ks" target="*bbb" border="solid:1px:gray" ]

[button storage="sys/talk_lead.ks" target="*talk" graphic="menu/c_talk.png" x="708" y="116" ]
[button storage="sys/talk_lead.ks" target="*nade" graphic="menu/c_nade.png" x="844 " y="116" ]
[if exp="f.act>=4 && f.love>=500 && f.lunch_check==0 && f.lunch_night=='non'"]
[button storage="mod/dinner.ks" target="*lunch" graphic="lunch/lunch_night.png"  x="1064" y="116" ][endif]
[if exp="f.act>=4 && f.love>=500 && f.bath=='non'"]
[button storage="mod/bath_def.ks" target="*begin" graphic="lunch/bath.png"  x="1064" y="178" ][endif]

[if exp="f.act==3 && f.tea_time==0" ]
[button storage="act_with/tea.ks" target="*tea" graphic="menu/c_tea.png" x="1066" y="116" ][endif]
[if exp="f.act==6 && f.wine_left>=1" ]
[button storage="act_with/wine.ks" target="*wine" graphic="menu/c_drink.png" x="860" y="178" ][endif]
[if exp="f.act<=4" ]
[button storage="act_with/go_out.ks" target="*out" graphic="menu/c_out.png" x="660" y="178" ][endif]
[if exp="f.act>=5 && f.step>=6 && f.out==0 && f.love>=200 || f.act>=5 && f.step>=6 && f.out=='syl' && f.love>=200" ]
[button storage="act_with/go_out.ks" target="*out_night" graphic="menu/c_out.png" x="734" y="180" ][endif]
[if exp="f.Dc_f[0]=='got' && f.work_c==0 && f.act<=4" ]
[button storage="act_with/work.ks" target="*work" graphic="menu/c_work.png" x="842" y="178" ][endif]
;[if exp="f.act<=3" ][button storage="act_with/picnic.ks" target="*picnic" graphic="menu/picnic.png" x="920" y="190" ][endif]

[if exp="f.act>=5" ]
[button storage="H/before.ks" target="*bed_before" graphic="menu/h_bed.png" x="734" y="258" ][endif]
[if exp="f.act>=5 && f.lust>=10" ]
[button storage="H/before.ks" target="*mouth" graphic="menu/h_mouth.png" x="913" y="258" ][endif]
[if exp="f.act>=5 && f.lust>=250 && f.self>=1 || f.act>=5 && f.mood=='lust' && f.self>=1" ]
[button storage="H/before.ks" target="*self" graphic="menu/h_self.png" x="734" y="324" ][endif]
;[if exp="f.act>=5 && f.mood=='lust'" ]
;[button storage="H/hand_h.ks" target="*hand_h" graphic="menu/hand_h.png" x="957" y="324" ][endif]

;[if exp="f.mood=='lust' && f.dress>=60 && f.dress<=69" ]
;[button storage="H/kimono.ks" target="*a" graphic="menu/h_hard.png" x="957" y="324" ]

[button storage="sys/dress.ks" target="*change_dress" graphic="menu/s_dress.png" x="708" y="494" ]
[if exp="f.book!='non'" ][button storage="sys/system.ks" target="*medi" graphic="menu/s_medi.png" x="996" y="494" ][endif]
[button storage="sys/config.ks" target="*extra_setting" graphic="menu/s_extra_conf.png" x="1095" y="447" ]
[if exp="f.love>=1000"]
[button storage="mod/game/game_list.ks" target="*game_list" graphic="menu/game.png" x="897" y="447" ][endif]

[button storage="sys/system.ks" target="*reload" graphic="menu/reload.png" x="1313" y="0" ]
;[button storage="sys/system.ks" target="*sil_state" graphic="menu/s_states.png" x="680" y="544" ]
[if exp="f.hp<=20"]
[button storage="sys/system.ks" target="*sil_state" graphic="menu/states_lv1.png"  x="680" y="544" ]
[elsif exp="f.hp<=50"]
[button storage="sys/system.ks" target="*sil_state" graphic="menu/states_lv2.png"  x="680" y="544" ]
[elsif exp="f.hp<=80"]
[button storage="sys/system.ks" target="*sil_state" graphic="menu/states_lv3.png"  x="680" y="544" ]
[elsif exp="f.hp<=100"]
[button storage="sys/system.ks" target="*sil_state" graphic="menu/states_lv4.png"  x="680" y="544" ]
[else]
[button storage="sys/system.ks" target="*sil_state" graphic="menu/states_lv5.png"  x="680" y="544" ][endif]
[button storage="sys/system.ks" target="*record" graphic="menu/s_record.png" x="838" y="544" ]
[button storage="sys/system.ks" target="*items" graphic="menu/s_items.png" x="866" y="494" ]
[button storage="sys/system.ks" target="*save" graphic="menu/s_save.png" x="1097" y="544" ]
[if exp="f.thoi_tiet==0"]
[button  target="*sun" graphic="menu/sun.png"  x="10" y="10" ]
[elsif exp="f.thoi_tiet==1" ]
[button target="*rain1" graphic="menu/rain1.png"  x="10" y="10" ]
[elsif exp="f.thoi_tiet==2" ]
[button  target="*rain2" graphic="menu/rain2.png"  x="10" y="10" ]
[elsif exp="f.thoi_tiet==3" ]
[button  target="*snow1" graphic="menu/snow.png"  x="10" y="10" ]
[elsif exp="f.thoi_tiet==4" ]
[button  target="*snow2" graphic="menu/snow.png"  x="10" y="10" ]
[elsif exp="f.thoi_tiet==5" ]
[button  target="*suong" graphic="menu/suong.png"  x="10" y="10" ]
[endif]
[if exp="f.code_ss=='non' && f.m_first>=1"]
[button storage="talk/words.ks" target="*event5_cont" graphic="menu/get_key.png"  x="62" y="10" ]
[endif]
[chara_show name="sub" time="0" wait="false" left="0" top="0" zindex=1 ]
[chara_mod name="sub" time="0" storage="o/sub/edit.png" ]
[edit left=775 top=611 width="432" height="38" name="f.c_word" ]
[button storage="talk/words.ks" target="*talk" x="640" y="610" graphic="menu/communi.png" ]
[button storage="talk/select.ks" target="*select" x="1215" y="610" graphic="menu/select.png" ]
[cancelskip][s]
[endmacro]


[macro name=name_w][emb exp="f.name_w" ][endmacro]
[macro name=timer]
[if exp="f.act_al==1 || f.act_al==2"][else][eval exp="f.act_al=2"][endif]
[if exp="f.s_studi=='yet' && f.thu<=5 && f.act_al>=2"]
[eval exp="f.act_al=f.act_al-1"]
[elsif exp="f.s_studi=='yet' && f.thu<=5 && f.act_al<=1"]
[eval exp="f.act=f.act+1"][eval exp="f.act_al=2"]
[else]
[eval exp="f.act=f.act+1"][endif]
[endmacro]

;Show_
[macro name=sachi_show]
[chara_show name="sachi" time="500" wait="false" left="400" top="-70" zindex="10"]
[endmacro]
[macro name=akemi_show]
[chara_show name="akemi" time="500" wait="false" left="300" top="-70" zindex="15"]
[endmacro]
[macro name=rui_show]
[chara_show name="rui" time="500" wait="false" left="400" top="-70" zindex="5"]
[endmacro]

;Hide_
[macro name=sachi_hide]
[chara_mod name="sachi" time="500" wait="false" storage="00.png" ]
[chara_hide name="sachi" time="10" wait="false" ]
[endmacro]
[macro name=akemi_hide]
[chara_mod name="akemi" time="500" wait="false" storage="00.png" ]
[chara_hide name="akemi" time="10" wait="false" ]
[endmacro]
[macro name=rui_hide]
[chara_mod name="rui" time="500" wait="false" storage="00.png" ]
[chara_hide name="rui" time="10" wait="false" ]
[endmacro]


;;------------------------other-------------------------------
[macro name=name_neph]
[if exp="f.ne_name=='dar' || f.ne_name=='oni'"][else]
[eval exp="f.ne_name='dar'"][endif]
[if exp="f.ne_name=='dar'"]Darling 
[elsif exp="f.ne_name=='oni'"]Onii-chan
[endif]
[endmacro]

[macro name=mayum]
[if exp="f.mayum=='mayumi'"]
#Mayumi
[else]
#Nhân viên thuế
[endif]
[endmacro]

[macro name=rui]
[if exp="f.rui=='rui'"]
#Rui
[else]
#Nữ sinh
[endif]
[endmacro]

[macro name=sachi]
[if exp="f.sachi_name=='sachi'"]
#Shachi
[else]
#Nữ sinh kỳ lạ
[endif]
[endmacro]

[macro name=akemi]
[if exp="f.akemi_name=='akemi'"]
#Akemi
[else]
#Nữ sinh
[endif]
[endmacro]

[macro name=ne_me]
[if exp="f.ne_name=='dar' || f.ne_name=='oni'"][else]
[eval exp="f.ne_name='dar'"][endif]
[if exp="f.ne_name=='dar'"]Tôi 
[elsif exp="f.ne_name=='oni'"]Em
[endif]
[endmacro]

[macro name=aur_nanikashira_1 ]
[if exp="f.sound_off==1"][else][playse loop="false" storage="aur/nanikashira_1.ogg"  clear="true" ]
[endif][endmacro]

[return]


















