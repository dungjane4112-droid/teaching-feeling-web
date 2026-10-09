
;*pass_lock
;[if exp="sf.password=='サイトでベータ版に関して読んだはずの人！！'" ][jump target="*pass" ][endif]
;[edit left=200 top=300 width="950" height="50" name="sf.password" ]
;[button target="*sbm_pass" x="450" y="400" graphic="s_menu/conti.png" ][s]
;*sbm_pass
;[commit][cm][if exp="sf.password=='カニクリームコロッケ'" ][eval exp="sf.password='サイトでベータ版に関して読んだはずの人！！'" ]
;[else][jump target="*pass_lock" ][endif]
;*pass
;[cm]

[title name="TeachingFeeling_ver2026 - Vietnamese - mod" ]
[call storage="pre/chara_define.ks"][call storage="pre/macro.ks" ][call storage="pre/macro_mod.ks" ]
[call storage="pre/face.ks" ][call storage="pre/face_mod_old.ks"][call storage="pre/set_show.ks" ][call storage="pre/set_show_mod.ks" ][call storage="pre/voice_mod.ks" ][call storage="pre/man_macro.ks" ][call storage="pre/cloth_per.ks" ]
[font face="tahoma" size="30"]
[deffont face="tahoma" size="30"]


;初回設定初期数値
[if exp="sf.first!=1" ]
[eval exp="sf.ef=1" ][eval exp="sf.se=1" ][eval exp="sf.tx=1" ][eval exp="sf.xr=1" ]
[eval exp="sf.full=0" ]
[eval exp="sf.se_v=4" ][eval exp="sf.bgm=4" ][eval exp="sf.auto=4" ][eval exp="sf.text=4" ]
[eval exp="sf.first=1" ][endif]


;タイトル画面
*title
[cm][endnolog]

;メッセージレイヤ設定
[layopt layer="message0" visible=false][layopt layer="message1" visible=false]
[reset_frame][resetdelay][set_text_speed][set_auto_speed][set_bgm_vol][set_se_vol]
[glyph fix="false" left="0" top="0" ]

[hide_message_w][hide_role][bgm_SG]
[bg time="500" method="crossfade" storage="bg/title-menu.jpg" ]
*show
[button target="*multi" graphic="title/multi.png" x="321" y="588" ]
[button target="*start" graphic="title/start.png" x="321" y="637" ]
[button target="*load" graphic="title/continue.png" x="321" y="686" ]
[button target="*tag" graphic="title/readme.png" x="321" y="735" ]
;[button storage="sys/update_info.ks" target="*top" graphic="title/update.png" x="321" y="735" ]
[button target="*close" graphic="title/finish.png" x="321" y="784" ]
[clickable width="300" height="200" x="1039" y="39" storage="sys/huong_dan.ks" target="*lits" border="" ]
[s]

*start
[cm][jump storage="intro/opening.ks" target="*opening" ]
*load
[cm][showload][jump target="*show" ]
*close
[close ask="false"]

*multi
[black][cm]
[bg time="100" method="crossfade" storage="hd/donate.jpg" ]
[button target="*donate" graphic="menu/donate.png" x="450" y="450" ]
[button target="*back" graphic="menu/back.png" x="450" y="520" ][s]
;[jump target="*show"]

*donate
[cm][tb_web  url="https://fnote.net/notes/01a83c"  ]
[bg time="500" method="crossfade" storage="bg/title-menu.jpg" ]
[jump target="*show"]
*back
[cm]
[bg time="500" method="crossfade" storage="bg/title-menu.jpg" ]
[jump target="*show"]

*tag
[cm]
[button storage="sys/how_to.ks" target="*top" graphic="title/readme.png" x="321" y="588" ]
[button storage="sys/update_info.ks" target="*top" graphic="title/update.png" x="321" y="637" ]
[button target="*show" graphic="title/finish.png" x="321" y="784" ]
[s]
