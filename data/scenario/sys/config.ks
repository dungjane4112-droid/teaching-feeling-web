;;コンフィグ
*config
[cm][free_chara][free_layermode][chara_config pos_mode="false" anim="false" ]
[nolog][hide_message_w][hide_role][current layer="message0" ]
[bg time="100" method="crossfade" storage="bg/config.jpg" ]
[chara_mod name="x" time="0" storage="o/other/config_xr.png" ]
[chara_mod name="se" time="0" storage="o/other/config_se.png" ]
[chara_mod name="tx" time="0" storage="o/other/config_tx.png" ]
[chara_mod name="ef" time="0" storage="o/other/config_ef.png" ]
[if exp="sf.xr==1" ][chara_show name="x" time="0" wait="false" left="0.1" ][endif]
[if exp="sf.tx==1" ][chara_show name="tx" time="0" wait="false" left="0.1" ][endif]
[if exp="sf.se==1" ][chara_show name="se" time="0" wait="false" left="0.1" ][endif]
[if exp="sf.ef==1" ][chara_show name="ef" time="0" wait="false" left="0.1" ][endif]

*select
[button target="*awake" graphic="config/back_a.png" x="1270" y="857" ]
[if exp="sf.full==0" ][button target="*full_screen" graphic="config/win.png" x="210" y="130" ]
[else][button target="*full_screen" graphic="config/full.png" x="190" y="130" ][endif]
[if exp="f.fix_mouth==1"]
[button target="*fix_animation_" graphic="config/animation_.png" x="470" y="100" ]
[elsif exp="f.fix_mouth==0"]
[button target="*fix_animation_off" graphic="config/animation.png" x="470" y="100" ]
[else][button target="*fix_animation" graphic="config/animation_off.png" x="470" y="100" ][endif]

[if exp="f.eye_ani==0"]
[button target="*eye_on" graphic="config/e_animation_.png" x="470" y="155" ]
[elsif exp="f.eye_ani==1"]
[button target="*eye_off" graphic="config/e_animation.png" x="470" y="155" ]
[elsif exp="f.eye_ani==2"]
[button target="*eye_off" graphic="config/e_animation_h.png" x="470" y="155" ][endif]

;;1-10ボタン------------------------------------------------------------------------------------
[if exp="sf.text==1" ][button target="*tx_speed1" graphic="config/1.png" x="183" y="311" ]
[else][button target="*tx_speed1" graphic="config/1-.png" x="183" y="311" ][endif]
[if exp="sf.text==2" ][button target="*tx_speed2" graphic="config/2.png" x="226" y="311" ]
[else][button target="*tx_speed2" graphic="config/2-.png" x="226" y="311" ][endif]
[if exp="sf.text==3" ][button target="*tx_speed3" graphic="config/3.png" x="269" y="311" ]
[else][button target="*tx_speed3" graphic="config/3-.png" x="269" y="311" ][endif]
[if exp="sf.text==4" ][button target="*tx_speed4" graphic="config/4.png" x="312" y="311" ]
[else][button target="*tx_speed4" graphic="config/4-.png" x="312" y="311" ][endif]
[if exp="sf.text==5" ][button target="*tx_speed5" graphic="config/5.png" x="355" y="311" ]
[else][button target="*tx_speed5" graphic="config/5-.png" x="355" y="311" ][endif]
[if exp="sf.text==6" ][button target="*tx_speed6" graphic="config/6.png" x="398" y="311" ]
[else][button target="*tx_speed6" graphic="config/6-.png" x="398" y="311" ][endif]
[if exp="sf.text==7" ][button target="*tx_speed7" graphic="config/7.png" x="441" y="311" ]
[else][button target="*tx_speed7" graphic="config/7-.png" x="441" y="311" ][endif]
[if exp="sf.text==8" ][button target="*tx_speed8" graphic="config/8.png" x="484" y="311" ]
[else][button target="*tx_speed8" graphic="config/8-.png" x="484" y="311" ][endif]
[if exp="sf.text==9" ][button target="*tx_speed9" graphic="config/9.png" x="527" y="311" ]
[else][button target="*tx_speed9" graphic="config/9-.png" x="527" y="311" ][endif]
[if exp="sf.text==10" ][button target="*tx_speed10" graphic="config/10.png" x="570" y="311" ]
[else][button target="*tx_speed10" graphic="config/10-.png" x="570" y="311" ][endif]

[if exp="sf.auto==1" ][button target="*txa_speed1" graphic="config/1.png" x="183" y="414" ]
[else][button target="*txa_speed1" graphic="config/1-.png" x="183" y="414" ][endif]
[if exp="sf.auto==2" ][button target="*txa_speed2" graphic="config/2.png" x="226" y="414" ]
[else][button target="*txa_speed2" graphic="config/2-.png" x="226" y="414" ][endif]
[if exp="sf.auto==3" ][button target="*txa_speed3" graphic="config/3.png" x="269" y="414" ]
[else][button target="*txa_speed3" graphic="config/3-.png" x="269" y="414" ][endif]
[if exp="sf.auto==4" ][button target="*txa_speed4" graphic="config/4.png" x="312" y="414" ]
[else][button target="*txa_speed4" graphic="config/4-.png" x="312" y="414" ][endif]
[if exp="sf.auto==5" ][button target="*txa_speed5" graphic="config/5.png" x="355" y="414" ]
[else][button target="*txa_speed5" graphic="config/5-.png" x="355" y="414" ][endif]
[if exp="sf.auto==6" ][button target="*txa_speed6" graphic="config/6.png" x="398" y="414" ]
[else][button target="*txa_speed6" graphic="config/6-.png" x="398" y="414" ][endif]
[if exp="sf.auto==7" ][button target="*txa_speed7" graphic="config/7.png" x="441" y="414" ]
[else][button target="*txa_speed7" graphic="config/7-.png" x="441" y="414" ][endif]
[if exp="sf.auto==8" ][button target="*txa_speed8" graphic="config/8.png" x="484" y="414" ]
[else][button target="*txa_speed8" graphic="config/8-.png" x="484" y="414" ][endif]
[if exp="sf.auto==9" ][button target="*txa_speed9" graphic="config/9.png" x="527" y="414" ]
[else][button target="*txa_speed9" graphic="config/9-.png" x="527" y="414" ][endif]
[if exp="sf.auto==10" ][button target="*txa_speed10" graphic="config/10.png" x="570" y="414" ]
[else][button target="*txa_speed10" graphic="config/10-.png" x="570" y="414" ][endif]

[if exp="sf.bgm==0" ][button target="*bgm_vol0" graphic="config/off.png" x="573" y="579" ]
[else][button target="*bgm_vol0" graphic="config/off-.png" x="573" y="579" ][endif]
[if exp="sf.bgm==1" ][button target="*bgm_vol1" graphic="config/1.png" x="183" y="626" ]
[else][button target="*bgm_vol1" graphic="config/1-.png" x="183" y="626" ][endif]
[if exp="sf.bgm==2" ][button target="*bgm_vol2" graphic="config/2.png" x="226" y="626" ]
[else][button target="*bgm_vol2" graphic="config/2-.png" x="226" y="626" ][endif]
[if exp="sf.bgm==3" ][button target="*bgm_vol3" graphic="config/3.png" x="269" y="626" ]
[else][button target="*bgm_vol3" graphic="config/3-.png" x="269" y="626" ][endif]
[if exp="sf.bgm==4" ][button target="*bgm_vol4" graphic="config/4.png" x="312" y="626" ]
[else][button target="*bgm_vol4" graphic="config/4-.png" x="312" y="626" ][endif]
[if exp="sf.bgm==5" ][button target="*bgm_vol5" graphic="config/5.png" x="355" y="626" ]
[else][button target="*bgm_vol5" graphic="config/5-.png" x="355" y="626" ][endif]
[if exp="sf.bgm==6" ][button target="*bgm_vol6" graphic="config/6.png" x="398" y="626" ]
[else][button target="*bgm_vol6" graphic="config/6-.png" x="398" y="626" ][endif]
[if exp="sf.bgm==7" ][button target="*bgm_vol7" graphic="config/7.png" x="441" y="626" ]
[else][button target="*bgm_vol7" graphic="config/7-.png" x="441" y="626" ][endif]
[if exp="sf.bgm==8" ][button target="*bgm_vol8" graphic="config/8.png" x="484" y="626" ]
[else][button target="*bgm_vol8" graphic="config/8-.png" x="484" y="626" ][endif]
[if exp="sf.bgm==9" ][button target="*bgm_vol9" graphic="config/9.png" x="527" y="626" ]
[else][button target="*bgm_vol9" graphic="config/9-.png" x="527" y="626" ][endif]
[if exp="sf.bgm==10" ][button target="*bgm_vol10" graphic="config/10.png" x="570" y="626" ]
[else][button target="*bgm_vol10" graphic="config/10-.png" x="570" y="626" ][endif]

[if exp="sf.se_v==0" ][button target="*se_vol0" graphic="config/off.png" x="573" y="683" ]
[else][button target="*se_vol0" graphic="config/off-.png" x="573" y="683" ][endif]
[if exp="sf.se_v==1" ][button target="*se_vol1" graphic="config/1.png" x="183" y="730" ]
[else][button target="*se_vol1" graphic="config/1-.png" x="183" y="730" ][endif]
[if exp="sf.se_v==2" ][button target="*se_vol2" graphic="config/2.png" x="226" y="730" ]
[else][button target="*se_vol2" graphic="config/2-.png" x="226" y="730" ][endif]
[if exp="sf.se_v==3" ][button target="*se_vol3" graphic="config/3.png" x="269" y="730" ]
[else][button target="*se_vol3" graphic="config/3-.png" x="269" y="730" ][endif]
[if exp="sf.se_v==4" ][button target="*se_vol4" graphic="config/4.png" x="312" y="730" ]
[else][button target="*se_vol4" graphic="config/4-.png" x="312" y="730" ][endif]
[if exp="sf.se_v==5" ][button target="*se_vol5" graphic="config/5.png" x="355" y="730" ]
[else][button target="*se_vol5" graphic="config/5-.png" x="355" y="730" ][endif]
[if exp="sf.se_v==6" ][button target="*se_vol6" graphic="config/6.png" x="398" y="730" ]
[else][button target="*se_vol6" graphic="config/6-.png" x="398" y="730" ][endif]
[if exp="sf.se_v==7" ][button target="*se_vol7" graphic="config/7.png" x="441" y="730" ]
[else][button target="*se_vol7" graphic="config/7-.png" x="441" y="730" ][endif]
[if exp="sf.se_v==8" ][button target="*se_vol8" graphic="config/8.png" x="484" y="730" ]
[else][button target="*se_vol8" graphic="config/8-.png" x="484" y="730" ][endif]
[if exp="sf.se_v==9" ][button target="*se_vol9" graphic="config/9.png" x="527" y="730" ]
[else][button target="*se_vol9" graphic="config/9-.png" x="527" y="730" ][endif]
[if exp="sf.se_v==10" ][button target="*se_vol10" graphic="config/10.png" x="570" y="730" ]
[else][button target="*se_vol10" graphic="config/10-.png" x="570" y="730" ][endif]

;;エロ設定ボタン------------------------------------------------------------------------------------
[if exp="f.fin_choice==1" ]
[button target="*fin_yes" graphic="config/do.png" x="880" y="164" ]
[button target="*fin_no" graphic="config/dont-.png" x="980" y="164" ]
[else]
[button target="*fin_yes" graphic="config/do-.png" x="880" y="164" ]
[button target="*fin_no" graphic="config/dont.png" x="980" y="164" ][endif]

[if exp="f.fin_in_out==1" ]
[button target="*choice_in" graphic="config/in.png" x="780" y="263" ]
[button target="*choice_out" graphic="config/out-.png" x="980" y="263" ]
[else]
[button target="*choice_in" graphic="config/in-.png" x="780" y="263" ]
[button target="*choice_out" graphic="config/out.png" x="980" y="263" ][endif]

;;エロ表現ボタン------------------------------------------------------------------------------------
[if exp="sf.xr==1" ][button target="*xr_check" graphic="config/x.png" x="780" y="403" ]
[else][button target="*xr_check" graphic="config/x-.png" x="780" y="403" ][endif]
[if exp="sf.tx==1" ][button target="*tx_check" graphic="config/tx.png" x="780" y="452" ]
[else][button target="*tx_check" graphic="config/tx-.png" x="780" y="452" ][endif]
[if exp="sf.se==1" ][button target="*se_check" graphic="config/se.png" x="780" y="502" ]
[else][button target="*se_check" graphic="config/se-.png" x="780" y="502" ][endif]
[if exp="sf.ef==1" ][button target="*ef_check" graphic="config/ef.png" x="780" y="550" ]
[else][button target="*ef_check" graphic="config/ef-.png" x="780" y="550" ][endif]
[if exp="f.uncen=='true'" ][button target="*uncen_check" graphic="config/uncen.png" x="780" y="598" ]
[else][button target="*uncen_check" graphic="config/uncen-.png" x="780" y="598" ][endif]

;;購入テキストスキップボタン------------------------------------------------------------------------------------
[if exp="f.bought_skip==1" ]
[button target="*bought_skip_no" graphic="config/dont-.png" x="880" y="768" ]
[button target="*bought_skip_yes" graphic="config/do.png" x="1020" y="768" ]
[else]
[button target="*bought_skip_no" graphic="config/dont.png" x="880" y="768" ]
[button target="*bought_skip_yes" graphic="config/do-.png" x="1020" y="768" ][endif]
[s]

;;設定------------------------------------------------------------------------------------
*full_screen
[cm][if exp="sf.full==0" ][eval exp="sf.full=1" ][else][eval exp="sf.full=0" ][endif]
[screen_full][jump target="*select" ]
*bought_skip_no
[cm][eval exp="f.bought_skip=0" ][jump target="*select" ]
*bought_skip_yes
[cm][eval exp="f.bought_skip=1" ][jump target="*select" ]

*fix_animation
[cm][eval exp="f.fix_mouth=1"][jump target="*select" ]

*fix_animation_
[cm][eval exp="f.fix_mouth=0"][jump target="*select" ]

*fix_animation_off
[cm][eval exp="f.fix_mouth=2"][jump target="*select" ]

*eye_on
[cm][bg time="100" method="crossfade" storage="bg/town.jpg" ][show_message_w]Bạn hãy sử dụng lệnh [font color="0x3cff00"] y01[resetfont] để mở animation cho mắt hoặc lệnh [font color="0x3cff00"] y02[resetfont] để thiết lập chế độ animation cho mắt ở chất lượng cao như bản pc nếu điện thoại của bạn cấu hình cao.[p][hide_message_w][bg time="100" method="crossfade" storage="bg/config.jpg" ][jump target="*select" ]

*eye_off
[cm][bg time="100" method="crossfade" storage="bg/town.jpg" ][show_message_w]
#Hãy lựa chọn
[font_blue1][link target="*y00" ]【Tắt hiệu ứng chớp mắt】[r]
[link target="*y01" ]【giảm hiệu ứng chớp mắt】[r]
[link target="*y02" ]【bật hiệu ứng chớp mắt với chất lượng cao】[resetfont][s]

*y00
[cm][call storage="pre/face_mod_off.ks"]
Animation chớp mắt đã tắt[p]
[hide_message_w][bg time="100" method="crossfade" storage="bg/config.jpg" ][jump target="*select" ]
*y01
[cm][call storage="pre/face_mod_on.ks"]
Đã giảm animation chớp mắt [p]
[hide_message_w][bg time="100" method="crossfade" storage="bg/config.jpg" ][jump target="*select" ]
*y02
[cm][call storage="pre/face_mod_old.ks"]
Mở animation chớp mắt với chất lượng cao của bản Pc. Dành cho máy cấu hình cao.[p]
[hide_message_w][bg time="100" method="crossfade" storage="bg/config.jpg" ][jump target="*select" ]

;;エロ設定------------------------------------------------------------------------------------
*fin_yes
[cm][eval exp="f.fin_choice=1" ][jump target="*select" ]
*fin_no
[cm][eval exp="f.fin_choice=0" ][jump target="*select" ]
*choice_in
[cm][eval exp="f.fin_in_out=1" ][jump target="*select" ]
*choice_out
[cm][eval exp="f.fin_in_out=0" ][jump target="*select" ]
*xr_check
[cm][if exp="sf.xr==1" ][eval exp="sf.xr=0" ][chara_hide name="x" time="0" ][else][eval exp="sf.xr=1" ][chara_show name="x" time="0" wait="true" left=" 0.1"][endif][jump target="*select" ]
*tx_check
[cm][if exp="sf.tx==1" ][eval exp="sf.tx=0" ][chara_hide name="tx" time="0" ][else][eval exp="sf.tx=1" ][chara_show name="tx" time="0" wait="true" left=" 0.1"][endif][jump target="*select" ]
*se_check
[cm][if exp="sf.se==1" ][eval exp="sf.se=0" ][chara_hide name="se" time="0" ][else][eval exp="sf.se=1" ][chara_show name="se" time="0" wait="true" left=" 0.1"][endif][jump target="*select" ]
*ef_check
[cm][if exp="sf.ef==1" ][eval exp="sf.ef=0" ][chara_hide name="ef" time="0" ][else][eval exp="sf.ef=1" ][chara_show name="ef" time="0" wait="true" left=" 0.1"][endif][jump target="*select" ]
*uncen_check
[cm][if exp="f.uncen=='true'"][eval exp="f.uncen='false'"][else][eval exp="f.uncen='true'"][endif][jump target="*select" ]

;;0-10------------------------------------------------------------------------------------
*tx_speed1
[delay speed=37 ][call target="*tx_speed_test" ][eval exp="sf.text=1" ][jump target="*tx_speed_after" ]
*tx_speed2
[delay speed=33 ][call target="*tx_speed_test" ][eval exp="sf.text=2" ][jump target="*tx_speed_after" ]
*tx_speed3
[delay speed=29 ][call target="*tx_speed_test" ][eval exp="sf.text=3" ][jump target="*tx_speed_after" ]
*tx_speed4
[delay speed=25 ][call target="*tx_speed_test" ][eval exp="sf.text=4" ][jump target="*tx_speed_after" ]
*tx_speed5
[delay speed=21 ][call target="*tx_speed_test" ][eval exp="sf.text=5" ][jump target="*tx_speed_after" ]
*tx_speed6
[delay speed=17 ][call target="*tx_speed_test" ][eval exp="sf.text=6" ][jump target="*tx_speed_after" ]
*tx_speed7
[delay speed=13 ][call target="*tx_speed_test" ][eval exp="sf.text=7" ][jump target="*tx_speed_after" ]
*tx_speed8
[delay speed=9 ][call target="*tx_speed_test" ][eval exp="sf.text=8" ][jump target="*tx_speed_after" ]
*tx_speed9
[delay speed=5 ][call target="*tx_speed_test" ][eval exp="sf.text=9" ][jump target="*tx_speed_after" ]
*tx_speed10
[delay speed=1 ][call target="*tx_speed_test" ][eval exp="sf.text=10" ][jump target="*tx_speed_after" ]
*tx_speed_test
[cm][_][bg time="100" method="crossfade" storage="bg/town.jpg" ]
[show_message_w]テキスト表示そくどテスト。[r]このスピードでテキストが表示されます。[p][return]
*tx_speed_after
[cm][set_text_speed][bg time="100" method="crossfade" storage="bg/config.jpg" ][hide_message_w][jump target="*select" ]
*txa_speed1
[cm][eval exp="sf.auto=1" ][jump target="*auto_speed_after" ]
*txa_speed2
[cm][eval exp="sf.auto=2" ][jump target="*auto_speed_after" ]
*txa_speed3
[cm][eval exp="sf.auto=3" ][jump target="*auto_speed_after" ]
*txa_speed4
[cm][eval exp="sf.auto=4" ][jump target="*auto_speed_after" ]
*txa_speed5
[cm][eval exp="sf.auto=5" ][jump target="*auto_speed_after" ]
*txa_speed6
[cm][eval exp="sf.auto=6" ][jump target="*auto_speed_after" ]
*txa_speed7
[cm][eval exp="sf.auto=7" ][jump target="*auto_speed_after" ]
*txa_speed8
[cm][eval exp="sf.auto=8" ][jump target="*auto_speed_after" ]
*txa_speed9
[cm][eval exp="sf.auto=9" ][jump target="*auto_speed_after" ]
*txa_speed10
[cm][eval exp="sf.auto=10" ][jump target="*auto_speed_after" ]
*auto_speed_after
[set_auto_speed][jump target="*select" ]
*bgm_vol0
[cm][eval exp="sf.bgm=0" ][jump target="*bgm_vol_after" ]
*bgm_vol1
[cm][eval exp="sf.bgm=1" ][jump target="*bgm_vol_after" ]
*bgm_vol2
[cm][eval exp="sf.bgm=2" ][jump target="*bgm_vol_after" ]
*bgm_vol3
[cm][eval exp="sf.bgm=3" ][jump target="*bgm_vol_after" ]
*bgm_vol4
[cm][eval exp="sf.bgm=4" ][jump target="*bgm_vol_after" ]
*bgm_vol5
[cm][eval exp="sf.bgm=5" ][jump target="*bgm_vol_after" ]
*bgm_vol6
[cm][eval exp="sf.bgm=6" ][jump target="*bgm_vol_after" ]
*bgm_vol7
[cm][eval exp="sf.bgm=7" ][jump target="*bgm_vol_after" ]
*bgm_vol8
[cm][eval exp="sf.bgm=8" ][jump target="*bgm_vol_after" ]
*bgm_vol9
[cm][eval exp="sf.bgm=9" ][jump target="*bgm_vol_after" ]
*bgm_vol10
[cm][eval exp="sf.bgm=10" ][jump target="*bgm_vol_after" ]
*bgm_vol_after
[set_bgm_vol][jump target="*select" ]
*se_vol0
[cm][eval exp="sf.se_v=0" ][jump target="*sound" ]
*se_vol1
[cm][eval exp="sf.se_v=1" ][jump target="*sound" ]
*se_vol2
[cm][eval exp="sf.se_v=2" ][jump target="*sound" ]
*se_vol3
[cm][eval exp="sf.se_v=3" ][jump target="*sound" ]
*se_vol4
[cm][eval exp="sf.se_v=4" ][jump target="*sound" ]
*se_vol5
[cm][eval exp="sf.se_v=5" ][jump target="*sound" ]
*se_vol6
[cm][eval exp="sf.se_v=6" ][jump target="*sound" ]
*se_vol7
[cm][eval exp="sf.se_v=7" ][jump target="*sound" ]
*se_vol8
[cm][eval exp="sf.se_v=8" ][jump target="*sound" ]
*se_vol9
[cm][eval exp="sf.se_v=9" ][jump target="*sound" ]
*se_vol10
[cm][eval exp="sf.se_v=10" ][jump target="*sound" ]
*sound
[set_se_vol][playse storage="squi.ogg" clear="true" ][jump target="*select" ]
;;awake
*awake
[cm][endnolog][chara_re][awakegame]


;;特殊設定
*extra_setting
[commu_text][-][eval exp="f.system_act=1" ]
[link target=*name_change]【Đổi cách xưng hô】[r]
[if exp="f.lust>=10" ][link target=*h_word]【Đổi cách gọi 'một số thứ'】[endif][r]
[link target=*sys_config]【Cài đặt lại hệ thống đặc biệt】
[r][r]
[link target="*end_talk" ]【Thôi, đổi ý rồi】[endlink][resetdelay][endnolog][cancelskip][s]

*end_talk
[_][cm_t][return_menu]

;;ウィンドウ/ショートカット
*sys_config
[cm][current layer="message0" ]
[chara_mod name="window" time="0" storage="o/win/setting_win.png" ]

[if exp="f.win_f=='a'" ][button target="*win_a" graphic="config/win_a.png" x="988" y="288" ]
[else][button target="*win_a" graphic="config/win_a-.png" x="988" y="288" ][endif]
[if exp="f.win_f=='b'" ][button target="*win_b" graphic="config/win_b.png" x="1032" y="288" ]
[else][button target="*win_b" graphic="config/win_b-.png" x="1032" y="288" ][endif]
[if exp="f.win_f=='c'" ][button target="*win_c" graphic="config/win_c.png" x="1076" y="288" ]
[else][button target="*win_c" graphic="config/win_c-.png" x="1076" y="288" ][endif]
[if exp="f.win_f=='d'" ][button target="*win_d" graphic="config/win_d.png" x="1120" y="288" ]
[else][button target="*win_d" graphic="config/win_d-.png" x="1120" y="288" ][endif]

[if exp="f.h_win=='a'" ][button target="*h_win_a" graphic="config/win_a.png" x="988" y="337" ]
[else][button target="*h_win_a" graphic="config/win_a-.png" x="988" y="337" ][endif]
[if exp="f.h_win=='b'" ][button target="*h_win_b" graphic="config/win_b.png" x="1032" y="337" ]
[else][button target="*h_win_b" graphic="config/win_b-.png" x="1032" y="337" ][endif]
[if exp="f.h_win=='c'" ][button target="*h_win_c" graphic="config/win_c.png" x="1076" y="337" ]
[else][button target="*h_win_c" graphic="config/win_c-.png" x="1076" y="337" ][endif]
[if exp="f.h_win=='d'" ][button target="*h_win_d" graphic="config/win_d.png" x="1120" y="337" ]
[else][button target="*h_win_d" graphic="config/win_d-.png" x="1120" y="337" ][endif]


[if exp="f.keyconfig==0" ]
[button target="*start_keyconfig" graphic="config/win_on-.png" x="1092" y="181" ]
[button target="*stop_keyconfig" graphic="config/win_off.png" x="1182" y="181" ]
[else]
[button target="*start_keyconfig" graphic="config/win_on.png" x="1092" y="181" ]
[button target="*stop_keyconfig" graphic="config/win_off-.png" x="1182" y="181" ]
[endif]

[button target="*return_menu" graphic="menu/decide.png" x="1176" y="402"  height="45" ][s]

*win_a
[eval exp="f.win_f='a'" ][position page=fore frame="frame/def.png" ][jump target="*sys_config" ]
*win_b
[eval exp="f.win_f='b'" ][position page=fore frame="frame/h.png" ][jump target="*sys_config" ]
*win_c
[eval exp="f.win_f='c'" ][position page=fore frame="frame/hh.png" ][jump target="*sys_config" ]
*win_d
[eval exp="f.win_f='d'" ][position page=fore frame="frame/hhh.png" ][jump target="*sys_config" ]

*h_win_a
[eval exp="f.h_win='a'" ][jump target="*sys_config" ]
*h_win_b
[eval exp="f.h_win='b'" ][jump target="*sys_config" ]
*h_win_c
[eval exp="f.h_win='c'" ][jump target="*sys_config" ]
*h_win_d
[eval exp="f.h_win='d'" ][jump target="*sys_config" ]

*stop_keyconfig
[stop_keyconfig][eval exp="f.keyconfig=0" ][jump target="*sys_config" ]
*start_keyconfig
[start_keyconfig][eval exp="f.keyconfig=1" ][jump target="*sys_config" ]

*return_menu
[chara_mod name="window" time="0" storage="o/win/act_win.png" ]
[return_menu]

;;名前呼び方
*name_change
[commu_text]
[if exp="f.sex>=1" ][else][jump storage="talk/name.ks" target="*name_change" ][endif]
[link storage="talk/name.ks" target="*name_change"]・Cách xưng hô bình thường[resetfont]「[name]」[r][font_blue1]
[link storage="talk/name.ks" target="*name_change_h"]・Cách xưng hô khi đang làm tình[resetfont]「[if exp="f.name_h==0" ][name][else][name_h][endif]」[r][font_blue1]
[if exp="f.lust>=10" ][link target=*h_word]【Đổi cách gọi 'một số thứ'】[endif][r]
[link target=*sys_config]【Cài đặt lại hệ thống đặc biệt】
[r][r]
[link target="*extra_setting" ]【Quay lại】[link target="*end_talk" ]【Thôi, đổi ý rồi】[s]

;;エロワード
*h_word
[cm_t][syl][f/p]Anh muốn em gọi thế nào khi... đang làm chuyện đó？[p_][_]
*h_word_
[commu_text][resetfont]
・Cách gọi 'dương vật'[font_blue1][link target="*p_name_change"]
[if exp="f.p_name[0]>=1" ]【ok】[else]【không】[endif][r][resetfont]
・Cách gọi 'âm đạo'[font_blue1][link target="*v_name_change"]
[if exp="f.v_name[0]>=1" ]【ok】[else]【không】[endif][r][resetfont]
・Cách gọi khác của việc làm tình [font_blue1][link target="*sex_name_change"]
[if exp="f.sex_name[0]>=1" ]【ok】[else]【không】[endif][r][resetfont]
・Cách gọi tên khi đang lên đỉnh[font_blue1][link target="*x_speak_change"]
[if exp="f.x_speak==1" ]【để nó như vậy】[else]【Hãy gọi nó là...】[endif][r]
[r][r][link target="*h_word_end" ]【Kết thúc】
[endlink][resetdelay][endnolog][cancelskip][s]
 
*h_word_end
[cm_t][syl][if exp="f.lust>=800" ][f/shcq]…Vâng。[r]Em sẽ làm như vậy...♥[else]
[f/clp]…Em đã hiểu rồi。[r]Em sẽ làm như vậy。[endif][p_][return_menu]

;;Hワード
;ホール
*v_name_change
;[cm_t][syl][f/p]…Em sẽ gọi anh như thế nào？[p_][_][eval exp="f.system_act=1" ]
*v_call
[commu_text]
[link target="*v_name1"][if exp="f.v_name[1]==''" ]【Hãy gọi nó là...】[r][else]【[emb exp="f.v_name[1]" ]】[endif]
[if exp="f.v_name[1]!=''" ][link target="*v_name1_d"]-【Hủy bỏ】[r][endif]

[if exp="f.v_name[1]!=''" ][link target="*v_name2"][endif]
[if exp="f.v_name[1]==''" ]
[elsif exp="f.v_name[2]==''" ]-Bổ sung cụ thể[r][else]【[emb exp="f.v_name[2]" ]】[endif]
[if exp="f.v_name[2]!=''" ][link target="*v_name2_d"]【Hủy bỏ】[r][endif]

[if exp="f.v_name[2]!=''" ][link target="*v_name3"][endif]
[if exp="f.v_name[2]==''" ]
[elsif exp="f.v_name[3]==''" ]-Bổ sung cụ thể[r][else]【[emb exp="f.v_name[3]" ]】[endif]
[if exp="f.v_name[3]!=''" ][link target="*v_name3_d"]【Hủy bỏ】[r][endif]

[if exp="f.v_name[1]!=''" ][r][resetfont]Yêu cầu một tên gọi khác[font_blue1][link target="*v_name"][endif]
[if exp="f.v_name[1]==''" ][eval exp="f.v_name[0]=0" ][elsif exp="f.v_name[0]==0" ]【Không làm】[r][else]【ok】[r][endif]

[if exp="f.v_name[0]==1" ][resetfont]Tần suất[font_blue1][link target="*v_hindo"]【ít】[r]
[elsif exp="f.v_name[0]==2" ][resetfont]Tần suất[font_blue1][link target="*v_hindo"]【nhiều】[r][endif]
[r]
[link target="*vp_ok"]【Quyết định như vậy】[s]

*v_name1
[cm][edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.v_name[1]" ]
[button target="*v_sbm" x="645" y="220" graphic="menu/n_vp.png" ][cancelskip][s]
*v_name2
[cm][edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.v_name[2]" ]
[button target="*v_sbm" x="645" y="220" graphic="menu/n_vp.png" ][cancelskip][s]
*v_name3
[cm][edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.v_name[3]" ]
[button target="*v_sbm" x="645" y="220" graphic="menu/n_vp.png" ][cancelskip][s]
*v_sbm
[commit][call target="*v_check" ][jump target="*v_call" ]

*v_name
[cm][if exp="f.v_name[0]==0" ][eval exp="f.v_name[0]=1" ][else][eval exp="f.v_name[0]=0" ][endif]
[jump target="*v_call" ]
*v_hindo
[if exp="f.v_name[0]==1" ][eval exp="f.v_name[0]=2" ][else][eval exp="f.v_name[0]=1" ][endif]
[jump target="*v_call" ]

*v_name3_d
[eval exp="f.v_name[3]=''" ][jump target="*v_call" ]
*v_name2_d
[if exp="f.v_name[3]==''" ][eval exp="f.v_name[2]=''" ][else]
[eval exp="f.v_name[2]=f.v_name[3]" ][eval exp="f.v_name[3]=''" ][endif]
[jump target="*v_call" ]
*v_name1_d
[if exp="f.v_name[2]==''" ][eval exp="f.v_name[1]=''" ][else]
[eval exp="f.v_name[1]=f.v_name[2]" ][eval exp="f.v_name[2]=''" ][endif]
[if exp="f.v_name[3]==''" ][eval exp="f.v_name[2]=''" ][else]
[eval exp="f.v_name[2]=f.v_name[3]" ][eval exp="f.v_name[3]=''" ][endif]
[jump target="*v_call" ]

*v_check
[if exp="f.v_name[1]==''" ][eval exp="f.v_name[1]=f.v_name[2]" ][eval exp="f.v_name[2]=''" ][endif]
[if exp="f.v_name[2]==''" ][eval exp="f.v_name[2]=f.v_name[3]" ][eval exp="f.v_name[3]=''" ][endif]
[return]

;マグナム
*p_name_change
;[cm_t][syl][f/p]…呼び方…ですか？[p_][_][eval exp="f.system_act=1" ]
*p_call
[commu_text]
[link target="*p_name1"][if exp="f.p_name[1]==''" ]【Hãy gọi nó là...】[r][else]【[emb exp="f.p_name[1]" ]】[endif]
[if exp="f.p_name[1]!=''" ][link target="*p_name1_d"]-【Hủy bỏ】[r][endif]

[if exp="f.p_name[1]!=''" ][link target="*p_name2"][endif]
[if exp="f.p_name[1]==''" ]
[elsif exp="f.p_name[2]==''" ]-Bổ sung cụ thể[r][else]【[emb exp="f.p_name[2]" ]】[endif]
[if exp="f.p_name[2]!=''" ][link target="*p_name2_d"]-Hủy bỏ[r][endif]

[if exp="f.p_name[2]!=''" ][link target="*p_name3"][endif]
[if exp="f.p_name[2]==''" ]
[elsif exp="f.p_name[3]==''" ]-Bổ sung cụ thể[r][else]【[emb exp="f.p_name[3]" ]】[endif]
[if exp="f.p_name[3]!=''" ][link target="*p_name3_d"]-Hủy bỏ[r][endif]

[if exp="f.p_name[1]!=''" ][r][resetfont]Yêu cầu một tên gọi khác[font_blue1][link target="*p_name"][endif]
[if exp="f.p_name[1]==''" ][eval exp="f.p_name[0]=0" ][elsif exp="f.p_name[0]==0" ]【Không làm】[r][else]【ok】[r][endif]

[if exp="f.p_name[0]==1" ][resetfont]Tần suất[font_blue1][link target="*p_hindo"]【ít】[r]
[elsif exp="f.p_name[0]==2" ][resetfont]Tần suất[font_blue1][link target="*p_hindo"]【nhiều】[r][endif]
[r]

[link target="*vp_ok"]【Chọn như vậy đi】[s]

*p_name1
[cm][edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.p_name[1]" ]
[button target="*p_sbm" x="645" y="220" graphic="menu/n_vp.png" ][cancelskip][s]
*p_name2
[cm][edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.p_name[2]" ]
[button target="*p_sbm" x="645" y="220" graphic="menu/n_vp.png" ][cancelskip][s]
*p_name3
[cm][edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.p_name[3]" ]
[button target="*p_sbm" x="645" y="220" graphic="menu/n_vp.png" ][cancelskip][s]
*p_sbm
[commit][call target="*p_check" ][jump target="*p_call" ]


*p_name
[cm][if exp="f.p_name[0]==0" ][eval exp="f.p_name[0]=1" ][else][eval exp="f.p_name[0]=0" ][endif]
[jump target="*p_call" ]
*p_hindo
[if exp="f.p_name[0]==1" ][eval exp="f.p_name[0]=2" ][else][eval exp="f.p_name[0]=1" ][endif]
[jump target="*p_call" ]

*p_name3_d
[eval exp="f.p_name[3]=''" ][jump target="*p_call" ]
*p_name2_d
[if exp="f.p_name[3]==''" ][eval exp="f.p_name[2]=''" ][else]
[eval exp="f.p_name[2]=f.p_name[3]" ][eval exp="f.p_name[3]=''" ][endif]
[jump target="*p_call" ]
*p_name1_d
[if exp="f.p_name[2]==''" ][eval exp="f.p_name[1]=''" ][else]
[eval exp="f.p_name[1]=f.p_name[2]" ][eval exp="f.p_name[2]=''" ][endif]
[if exp="f.p_name[3]==''" ][eval exp="f.p_name[2]=''" ][else]
[eval exp="f.p_name[2]=f.p_name[3]" ][eval exp="f.p_name[3]=''" ][endif]
[jump target="*p_call" ]

*p_check
[if exp="f.p_name[1]==''" ][eval exp="f.p_name[1]=f.p_name[2]" ][eval exp="f.p_name[2]=''" ][endif]
[if exp="f.p_name[2]==''" ][eval exp="f.p_name[2]=f.p_name[3]" ][eval exp="f.p_name[3]=''" ][endif]
[return]

*vp_ok
[cm][jump target="*h_word_" ]

;合体
*sex_name_change
;[cm_t][syl][f/p]…呼び方…ですか？[p_][_][eval exp="f.system_act=1" ]
*sex_call
[commu_text]
[link target="*sex_name1"][if exp="f.sex_name[1]==''" ]【Hãy gọi nó là...】[r][else]【[emb exp="f.sex_name[1]" ]】[endif]
[if exp="f.sex_name[1]!=''" ][link target="*sex_name1_d"]【Hủy bỏ】[r][endif]

[if exp="f.sex_name[1]!=''" ][link target="*sex_name2"][endif]
[if exp="f.sex_name[1]==''" ]
[elsif exp="f.sex_name[2]==''" ]-Bổ sung cụ thể[r][else]【[emb exp="f.sex_name[2]" ]】[endif]
[if exp="f.sex_name[2]!=''" ][link target="*sex_name2_d"]【Hủy bỏ】[r][endif]

[if exp="f.sex_name[2]!=''" ][link target="*sex_name3"][endif]
[if exp="f.sex_name[2]==''" ]
[elsif exp="f.sex_name[3]==''" ]-Bổ sung cụ thể[r][else]【[emb exp="f.sex_name[3]" ]】[endif]
[if exp="f.sex_name[3]!=''" ][link target="*sex_name3_d"]【Hủy bỏ】[r][endif]

[if exp="f.sex_name[1]!=''" ][r][resetfont]Yêu cầu một tên gọi khác[font_blue1][link target="*sex_name"][endif]
[if exp="f.sex_name[1]==''" ][eval exp="f.sex_name[0]=0" ][elsif exp="f.sex_name[0]==0" ]【Không làm】[r][else]【ok】[r][endif]

[if exp="f.sex_name[0]==1" ][resetfont]Tần suất[font_blue1][link target="*sex_hindo"]【ít】[r]
[elsif exp="f.sex_name[0]==2" ][resetfont]Tần suất[font_blue1][link target="*sex_hindo"]【nhiều】[r][endif]
[r]
[link target="*vp_ok"]【Chọn như vậy đi】[s]

*sex_name1
[cm][edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.sex_name[1]" ]
[button target="*sex_sbm" x="645" y="220" graphic="menu/n_vp.png" ][cancelskip][s]
*sex_name2
[cm][edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.sex_name[2]" ]
[button target="*sex_sbm" x="645" y="220" graphic="menu/n_vp.png" ][cancelskip][s]
*sex_name3
[cm][edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.sex_name[3]" ]
[button target="*sex_sbm" x="645" y="220" graphic="menu/n_vp.png" ][cancelskip][s]
*sex_sbm
[commit][call target="*sex_check" ][jump target="*sex_call" ]

*sex_name
[cm][if exp="f.sex_name[0]==0" ][eval exp="f.sex_name[0]=1" ][else][eval exp="f.sex_name[0]=0" ][endif]
[jump target="*sex_call" ]
*sex_hindo
[if exp="f.sex_name[0]==1" ][eval exp="f.sex_name[0]=2" ][else][eval exp="f.sex_name[0]=1" ][endif]
[jump target="*sex_call" ]

*sex_name3_d
[eval exp="f.sex_name[3]=''" ][jump target="*sex_call" ]
*sex_name2_d
[if exp="f.sex_name[3]==''" ][eval exp="f.sex_name[2]=''" ][else]
[eval exp="f.sex_name[2]=f.sex_name[3]" ][eval exp="f.sex_name[3]=''" ][endif]
[jump target="*sex_call" ]
*sex_name1_d
[if exp="f.sex_name[2]==''" ][eval exp="f.sex_name[1]=''" ][else]
[eval exp="f.sex_name[1]=f.sex_name[2]" ][eval exp="f.sex_name[2]=''" ][endif]
[if exp="f.sex_name[3]==''" ][eval exp="f.sex_name[2]=''" ][else]
[eval exp="f.sex_name[2]=f.sex_name[3]" ][eval exp="f.sex_name[3]=''" ][endif]
[jump target="*sex_call" ]

*sex_check
[if exp="f.sex_name[1]==''" ][eval exp="f.sex_name[1]=f.sex_name[2]" ][eval exp="f.sex_name[2]=''" ][endif]
[if exp="f.sex_name[2]==''" ][eval exp="f.sex_name[2]=f.sex_name[3]" ][eval exp="f.sex_name[3]=''" ][endif]
[return]

;;フィニッシュ申告
*x_speak_change
[cm]
#Hệ thống
Phần này hiện chưa có![p]
#
[if exp="f.x_speak==1" ][eval exp="f.x_speak=0" ][else][eval exp="f.x_speak=1" ][endif]
[jump target="*h_word_" ]

