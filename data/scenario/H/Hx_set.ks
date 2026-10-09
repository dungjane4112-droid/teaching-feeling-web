;;メニュー表示
*H_command
[if exp="f.h_lamp=='off'" ][button storage="H/Hx_set.ks" target="*lamp_on" graphic="Hx/lamp_.png" x="962" y="5" ]
[else][button storage="H/Hx_set.ks" target="*lamp_off" graphic="Hx/lamp.png" x="962" y="5" ][endif]

[if exp="f.h_menu=='act'" ][button storage="H/Hx_set.ks" target="*menu_act" graphic="Hx/menu_act.png" x="1040" y="5" ]
[else][button storage="H/Hx_set.ks" target="*menu_act" graphic="Hx/menu_act-.png" x="1040" y="5" ][endif]
[if exp="f.h_menu=='setting'" ][button storage="H/Hx_set.ks" target="*menu_setting" graphic="Hx/menu_setting.png" x="1150" y="5" ]
[else][button storage="H/Hx_set.ks" target="*menu_setting" graphic="Hx/menu_setting-.png" x="1150" y="5" ][endif]
[if exp="f.h_menu=='off'" ][button storage="H/Hx_set.ks" target="*menu_off" graphic="Hx/menu_off.png" x="1270" y="5" ]
[else][button storage="H/Hx_set.ks" target="*menu_off" graphic="Hx/menu_off-.png" x="1270" y="5" ][endif]

[if exp="f.h_menu=='act' && f.h_style=='def'" ][h_hand_off_def]
[elsif exp="f.h_menu=='act' && f.h_style=='sit'" ][h_hand_off_sit][endif]

[if exp="f.h_menu=='act'" ][h_menu_act]
[elsif exp="f.h_menu=='setting'" ][h_menu_setting][endif]
[return]

*lamp_on
[eval exp="f.h_lamp='on'"]
[if exp="f.pict=='Hx1'"]
[set_Hx1][show_Hx1][else]
[set_Hx2][show_Hx2][endif]
[h_def]

*lamp_off
[eval exp="f.h_lamp='off'"]
[if exp="f.pict=='Hx1'"]
[set_Hx1][show_Hx1][else]
[set_Hx2][show_Hx2][endif]
[h_def]

*menu_act
[cm][eval exp="f.h_menu='act'" ][mod_win st="o/win/Hx_act.png" ][h_def]
*menu_setting
[cm][eval exp="f.h_menu='setting'" ][mod_win st="o/win/Hx_setting.png" ][h_def]
*menu_off
[cm][eval exp="f.h_menu='off'" ][mod_win st="00.png" ][h_def]

;;ベッド以降直後設定
*pre_Hx
[eval exp="f.h_count=0" ]
[eval exp="f.h_right='non'" ][eval exp="f.h_left='non'" ][eval exp="f.h_sex=0" ]
[eval exp="f.h_v_select='finger'" ][eval exp="f.h_v_speed='normal'" ]
[eval exp="f.h_in=0" ][eval exp="f.h_out=0" ][eval exp="f.s_ex=0" ][eval exp="f.y_ex=0" ]
[eval exp="f.s_feel=0" ][eval exp="f.y_feel=0" ][eval exp="f.h_z_in=0" ]
[eval exp="f.h_menu='act'" ][mod_win st="o/win/Hx_act.png" ]

[h_x st="00.png" ]
[if exp="f.mood=='lust' && f.lust<=1000" ][eval exp="f.wet=200" ]
[elsif exp="f.mood=='calm' && f.lust>=1000" ][eval exp="f.wet=130" ]
[elsif exp="f.lust<=5" ][eval exp="f.wet=0" ][elsif exp="f.lust<=20" ][eval exp="f.wet=10" ]
[elsif exp="f.lust<=100" ][eval exp="f.wet=30" ][elsif exp="f.lust<=200" ][eval exp="f.wet=70" ]
[elsif exp="f.mood=='calm'" ][eval exp="f.wet=70" ]
[elsif exp="f.lust<=500" ][eval exp="f.wet=130" ][elsif exp="f.lust<=1000" ][eval exp="f.wet=200" ]
[else][eval exp="f.wet=300" ][endif][xf/reset]
[set_win_frame_h]

;;行動メニュー
[macro name="h_menu_act"]
[if exp="f.h_sex==1" ][elsif exp="f.h_v_select=='finger'" ]
[button storage="H/Hx_set.ks" target="*v_select_fin" graphic="Hx/sex_fing.png" x="994" y="98" ][else]
[button storage="H/Hx_set.ks" target="*v_select_fin" graphic="Hx/sex_fing-.png" x="994" y="98" ][endif]
[if exp="f.h_right=='f'" ][elsif exp="f.h_v_select=='sex'" ]
[button storage="H/Hx_set.ks" target="*v_select_sex" graphic="Hx/sex_sex.png" x="1115" y="98" ]
[elsif exp="f.wet>=30" ]
[button storage="H/Hx_set.ks" target="*v_select_sex" graphic="Hx/sex_sex-.png" x="1115" y="98" ][endif]
[if exp="f.h_sex==1" ][button target="*v_off" graphic="Hx/sex_off.png" x="1192" y="97" ][endif]
[if exp="f.h_right=='f'" ][button target="*f_off" graphic="Hx/sex_off.png" x="1202" y="97" ][endif]

[if exp="f.h_v_speed=='normal'" ]
[button storage="H/Hx_set.ks" target="*v_speed_normal" graphic="Hx/sex_def.png" x="1027" y="148" ][else]
[button storage="H/Hx_set.ks" target="*v_speed_normal" graphic="Hx/sex_def-.png" x="1027" y="148" ][endif]
[if exp="f.h_v_speed=='fast'" ]
[button storage="H/Hx_set.ks" target="*v_speed_fast" graphic="Hx/sex_hard.png" x="1173" y="148" ]
[elsif exp="f.wet>=400" ]
[button storage="H/Hx_set.ks" target="*v_speed_fast" graphic="Hx/sex_hard-.png" x="1173" y="148" ][endif]
[if exp="f.h_style=='def' && f.love>=500" ]
[button storage="H/Hx.ks" target="*change_style" graphic="Hx/sty_sit.png" x="1120" y="208" ][else]
[button storage="H/Hx2.ks" target="*change_style" graphic="Hx/sty_def.png" x="1110" y="208" ][endif]

[if exp="f.Hx_dress==1" ][button storage="H/Hx_set.ks" target="*off_dress" graphic="Hx/uw_dress.png" x="1058" y="279" ][endif]
[if exp="f.Hx_socks==1" ][button storage="H/Hx_set.ks" target="*off_socks" graphic="Hx/uw_socks.png" x="1144" y="279" ][endif]
[if exp="f.Hx_ribbon==1" ][button storage="H/Hx_set.ks" target="*off_ribbon" graphic="Hx/uw_ribbon.png" x="1064" y="327" ][endif]
[if exp="f.Hx_pin==1" ][button storage="H/Hx_set.ks" target="*off_pin" graphic="Hx/uw_pin.png" x="1228" y="279" ][endif]
[if exp="f.Hx_glasses==1" ][button storage="H/Hx_set.ks" target="*off_glasses" graphic="Hx/uw_glasses.png" x="1174" y="327" ][endif]
[if exp="f.Hx_dress==1 || f.Hx_socks==1 || f.Hx_ribbon==1 || f.Hx_pin==1 || f.Hx_glasses==1" ]
[button storage="H/Hx_set.ks" target="*off_all" graphic="Hx/uw_all.png" x="977" y="312" ][endif]

[button storage="H/Hx_set.ks" target="*state" graphic="Hx/other_syl.png" x="990" y="439" ]
[button storage="H/Hx_set.ks" target="*stop" graphic="Hx/other_done.png" x="1130" y="439" ]
[endmacro]


;;設定メニュー
[macro name="h_menu_setting"]
[if exp="f.h_cum_pos=='select'" ]
[button storage="H/Hx_set.ks" target="*cum_pos_sel" graphic="Hx/cum_select.png" x="1040" y="117" ][else]
[button storage="H/Hx_set.ks" target="*cum_pos_sel" graphic="Hx/cum_select-.png" x="1040" y="117" ][endif]
[if exp="f.h_cum_pos=='in'" ]
[button storage="H/Hx_set.ks" target="*cum_pos_in" graphic="Hx/cum_in.png" x="1135" y="117" ][else]
[button storage="H/Hx_set.ks" target="*cum_pos_in" graphic="Hx/cum_in-.png" x="1135" y="117" ][endif]
[if exp="f.h_cum_pos=='out'" ]
[button storage="H/Hx_set.ks" target="*cum_pos_out" graphic="Hx/cum_out.png" x="1200" y="117" ][else]
[button storage="H/Hx_set.ks" target="*cum_pos_out" graphic="Hx/cum_out-.png" x="1200" y="117" ][endif]

[if exp="f.h_xr==1" ][button storage="H/Hx_set.ks" target="*x_ray_off" graphic="Hx/ef_xr.png" x="1045" y="212" ]
[else][button storage="H/Hx_set.ks" target="*x_ray_on" graphic="Hx/ef_xr-.png" x="1045" y="212" ][endif]
;[if exp="f.h_tx==1" ][button storage="H/Hx_set.ks" target="*effect_off" graphic="Hx/ef_tx.png" x="1170" y="212" ]
;[else][button storage="H/Hx_set.ks" target="*effect_on" graphic="Hx/ef_tx-.png" x="1170" y="212" ][endif]
[if exp="f.h_ef==1" ][button storage="H/Hx_set.ks" target="*effect_off" graphic="Hx/ef_ef.png" x="1045" y="263" ]
[else][button storage="H/Hx_set.ks" target="*effect_on" graphic="Hx/ef_ef-.png" x="1045" y="263" ][endif]

[if exp="f.h_win=='a'" ][button storage="H/Hx_set.ks" target="*win_a" graphic="Hx/win_a.png" x="1031" y="369" ]
[else][button storage="H/Hx_set.ks" target="*win_a" graphic="Hx/win_a-.png" x="1031" y="369" ][endif]
[if exp="f.h_win=='b'" ][button storage="H/Hx_set.ks" target="*win_b" graphic="Hx/win_b.png" x="1084" y="369" ]
[else][button storage="H/Hx_set.ks" target="*win_b" graphic="Hx/win_b-.png" x="1084" y="369" ][endif]
[if exp="f.h_win=='c'" ][button storage="H/Hx_set.ks" target="*win_c" graphic="Hx/win_c.png" x="1137" y="369" ]
[else][button storage="H/Hx_set.ks" target="*win_c" graphic="Hx/win_c-.png" x="1137" y="369" ][endif]
[if exp="f.h_win=='d'" ][button storage="H/Hx_set.ks" target="*win_d" graphic="Hx/win_d.png" x="1190" y="369" ]
[else][button storage="H/Hx_set.ks" target="*win_d" graphic="Hx/win_d-.png" x="1190" y="369" ][endif]
[endmacro]

[macro name="h_hand_off_def"]
[if exp="f.h_right=='non' && f.h_left=='non'" ][else]
[button target="*hands_off" graphic="Hx/other_off.png" x="1066" y="391" ][endif][endmacro]

[macro name="h_hand_off_sit"]
[if exp="f.h_right=='b' || f.h_left=='b' || f.h_right=='f' || f.h_left=='c'" ]
[button target="*hands_off" graphic="Hx/other_off.png" x="1066" y="391" ][endif][endmacro]

[return]

;;ボタンアクション/脱衣
*off_dress
[cm][if exp="f.h_right=='f'" ][se_nloop st="s-wet2.ogg" ][endif]
[if exp="f.h_style=='def'" ][right_non][left_non][else][left_l][right_l][endif]
[set_black][eval exp="f.h_act='off'" ]
[_]…。[p]
;[_]（シルヴィの服を脱がせた。[p]
[eval exp="f.h_out=0" ][chara_mod name="z-a" time="0" storage="00.png" ]
[eval exp="f.Hx_dress=0" ][chara_mod name="dress" time="0" storage="00.png" wait="true" ]
[hide_black][h_def]

*off_socks
[cm][if exp="f.h_right=='f'" ][se_nloop st="s-wet2.ogg" ][endif]
[if exp="f.h_style=='def'" ][right_non][left_non][else][left_l][right_l][endif]
[set_black][eval exp="f.h_act='off'" ][eval exp="f.Hx_socks=0" ]
[_]…。[p]
;[_]（シルヴィの靴下を脱がせた。[p]
[chara_mod name="socks" time="0" storage="00.png" wait="true" ][hide_black][h_def]

*off_ribbon
[cm][eval exp="f.Hx_ribbon=0" ]
[chara_mod name="hat" time="100" storage="00.png" ]
[chara_mod name="ribbon_b" time="100" storage="00.png" ]
[if exp="f.h_style=='def'" ]
[chara_mod name="hair_b" time="100" storage="Hx1/hair/nr_.png" cross="false" ]
[chara_mod name="ribbon" time="100" storage="Hx1/hair/nr.png" wait="true" cross="false" ]
[else][chara_mod name="hair_b" time="100" storage="Hx2/hair/nr_.png" cross="false" ]
[chara_mod name="ribbon" time="100" storage="Hx2/hair/nr.png" wait="true" cross="false" ]
[endif][h_def]

*off_pin
[cm][eval exp="f.Hx_pin=0" ][chara_mod name="pin" time="100" storage="00.png" ]
[if exp="f.h_style=='def'" ][chara_mod name="hair_f" time="100" storage="Hx1/body/fh.png" wait="true" cross="false" ]
[else][chara_mod name="hair_f" time="100" storage="Hx2/body/fh.png" wait="true" cross="false" ][endif][h_def]

*off_glasses
[cm][eval exp="f.Hx_glasses=0" ]
[chara_mod name="glasses" time="100" storage="00.png" ][h_def]
*off_all
[cm][if exp="f.h_right=='f'" ][se_nloop st="s-wet2.ogg" ][endif]
[if exp="f.h_style=='def'" ][right_non][left_non][else][left_l][right_l][endif]
[set_black][eval exp="f.h_act='off'" ]
[_]…。[p]
;（シルヴィが身につけているものを全て外した。
[eval exp="f.Hx_dress=0" ][eval exp="f.Hx_socks=0" ][eval exp="f.Hx_ribbon=0" ][eval exp="f.Hx_pin=0" ][eval exp="f.Hx_glasses=0" ]
[chara_mod name="socks" time="0" storage="00.png" ]
[chara_mod name="dress" time="0" storage="00.png" ]
[chara_mod name="ribbon_b" time="0" storage="00.png" ]
[if exp="f.hat!=1" ][chara_mod name="hat" time="0" storage="00.png" ][endif]
[chara_mod name="pin" time="0" storage="00.png" ][chara_mod name="glasses" time="0" storage="00.png" ]
[if exp="f.h_style=='def'" ]
[chara_mod name="hair_f" time="0" storage="Hx1/body/fh.png" ]
[chara_mod name="hair_b" time="0" storage="Hx1/hair/nr_.png" ]
[chara_mod name="ribbon" time="0" storage="Hx1/hair/nr.png" ]
[else]
[chara_mod name="hair_f" time="0" storage="Hx2/body/fh.png" ]
[chara_mod name="hair_b" time="0" storage="Hx2/hair/nr_.png" ]
[chara_mod name="ribbon" time="0" storage="Hx2/hair/nr.png" ]
[endif]
[hide_black][h_def]

;;ボタンアクション/他
*v_select_fin
[cm][eval exp="f.h_v_select='finger'" ][h_def]
*v_select_sex
[cm][eval exp="f.h_v_select='sex'" ][h_def]

*v_speed_normal
[cm][eval exp="f.h_v_speed='normal'" ][h_def]
*v_speed_fast
[cm][eval exp="f.h_v_speed='fast'" ][h_def]

*cum_pos_sel
[cm][eval exp="f.h_cum_pos='select'" ][h_def]
*cum_pos_in
[cm][eval exp="f.h_cum_pos='in'" ][h_def]
*cum_pos_out
[cm][eval exp="f.h_cum_pos='out'" ][h_def]

*state
[cm][eval exp="f.h_state=1" ][jump storage="H/Hx_text.ks" target="*desc_calc" ]

*x_ray_off
[cm][eval exp="f.h_xr=0" ][chara_hide name="x" time="0" wait="true" ][h_def]
*x_ray_on
[cm][eval exp="f.h_xr=1" ][chara_show name="x" time="0" wait="true" left="0.1" zindex="85" ][h_def]
*effect_off
[cm][eval exp="f.h_ef=0" ][chara_hide name="ef" time="0" wait="true" ][h_def]
*effect_on
[cm][eval exp="f.h_ef=1" ][chara_show name="ef" time="0" wait="true" left="0.1" zindex="110" ][h_def]

*win_a
[cm][eval exp="f.h_win='a'" ][position page=fore frame="frame/def.png" ][h_def]
*win_b
[cm][eval exp="f.h_win='b'" ][position page=fore frame="frame/h.png" ][h_def]
*win_c
[cm][eval exp="f.h_win='c'" ][position page=fore frame="frame/hh.png" ][h_def]
*win_d
[cm][eval exp="f.h_win='d'" ][position page=fore frame="frame/hhh.png" ][h_def]

*stop
[cm][stop_se]
[if exp="f.h_style=='def'" ][left_non][right_non][else][left_l][right_l][endif]
[if exp="f.h_sex==1" ][se_nloop st="s-wet1.ogg" ][v_show][endif]
[_][if exp="f.wet>=1000" ][jump storage="H/Hx_text.ks" target="*tx_stop6" ]
[elsif exp="f.wet>=600" ][jump storage="H/Hx_text.ks" target="*tx_stop5" ]
[elsif exp="f.wet>=250" ][jump storage="H/Hx_text.ks" target="*tx_stop4" ]
[elsif exp="f.wet>=150" ][jump storage="H/Hx_text.ks" target="*tx_stop3" ]
[elsif exp="f.wet>=80" ][jump storage="H/Hx_text.ks" target="*tx_stop2" ]
[else][jump storage="H/Hx_text.ks" target="*tx_stop1" ][endif]
