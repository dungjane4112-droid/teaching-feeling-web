;;ボタン----------------------------------------------------------------------------
*setting_button
[button target="*return_bace" graphic="config/back_a.png" x="1270" y="857" ]
[if exp="f.memory=='extra'" ]
[elsif exp="f.memory=='aur'" ][elsif exp="f.memory=='neph'" ]
[elsif exp="sf.xr==1" ][button target="*xr" graphic="m/xray.png" x="1146" y="533" ]
[else][button target="*xr" graphic="m/xray-.png" x="1146" y="533" ][endif]
[if exp="f.memory=='extra'" ]
[elsif exp="f.memory=='aur'" ][elsif exp="f.memory=='neph'" ]
[elsif exp="sf.tx==1" ][button target="*tx" graphic="m/word.png" x="1146" y="573" ]
[else][button target="*tx" graphic="m/word-.png" x="1146" y="573" ][endif]
[if exp="f.memory=='extra'" ]
[elsif exp="f.memory=='aur'" ][elsif exp="f.memory=='neph'" ]
[elsif exp="sf.se==1" ][button target="*se" graphic="m/sound.png" x="1146" y="613" ]
[else][button target="*se" graphic="m/sound-.png" x="1146" y="613" ][endif]
[if exp="f.memory=='extra'" ]
[elsif exp="f.memory=='aur'" ][elsif exp="f.memory=='neph'" ]
[elsif exp="sf.ef==1" ][button target="*ef" graphic="m/af.png" x="1146" y="653" ]
[else][button target="*ef" graphic="m/af-.png" x="1146" y="653" ][endif]

[if exp="f.memory=='scene1'" ]
[button target="*scene" graphic="number/1/01.png" x="225" y="25" ]
[button target="*scene2" graphic="number/1/02-.png" x="280" y="25" ]
[elsif exp="f.memory=='cg1'" ]
[button target="*cg" graphic="number/1/01.png" x="225" y="25" ]
[button target="*cg2" graphic="number/1/02-.png" x="280" y="25" ]
[elsif exp="f.memory=='scene2'" ]
[button target="*scene" graphic="number/1/01-.png" x="225" y="25" ]
[button target="*scene2" graphic="number/1/02.png" x="280" y="25" ]
[elsif exp="f.memory=='cg2'" ]
[button target="*cg" graphic="number/1/01-.png" x="225" y="25" ]
[button target="*cg2" graphic="number/1/02.png" x="280" y="25" ]
[elsif exp="f.memory=='extra'" ]
[button target="*scene" graphic="number/1/01-.png" x="225" y="25" ]
[button target="*scene2" graphic="number/1/02-.png" x="280" y="25" ]
[elsif exp="f.memory=='aur'" ]
[button target="*scene" graphic="number/1/01-.png" x="225" y="25" ]
[button target="*scene2" graphic="number/1/02-.png" x="280" y="25" ]
[elsif exp="f.memory=='neph'" ]
[button target="*scene" graphic="number/1/01-.png" x="225" y="25" ]
[button target="*scene2" graphic="number/1/02-.png" x="280" y="25" ]
[elsif exp="f.memory=='rape'" ]
[button target="*rape" graphic="m/scene.png" x="1146" y="436" ]
[button target="*rape_cg" graphic="m/cg-.png" x="1146" y="476" ]
[elsif exp="f.memory=='rape_cg'" ]
[button target="*rape" graphic="m/scene-.png" x="1146" y="436" ]
[button target="*rape_cg" graphic="m/cg.png" x="1146" y="476" ]
[endif]

[if exp="f.memory=='aur'" ]
[button target="*aur" graphic="number/aur.png" x="335" y="25" ]
[elsif exp="f.step==6" ]
[button target="*aur" graphic="number/aur-.png" x="335" y="25" ][endif]

[if exp="f.memory=='neph'" ]
[button target="*neph" graphic="number/neph.png" x="435" y="25" ]
[elsif exp="f.step==6" ]
[button target="*neph" graphic="number/neph-.png" x="435" y="25" ][endif]

[if exp="f.memory=='extra'" ]
[button target="*extra" graphic="number/Extra.png" x="535" y="25" ]
[elsif exp="f.step==6" ]
[button target="*extra" graphic="number/Extra-.png" x="535" y="25" ][endif]

[if exp="f.step==6" ]
[button storage="sys/music.ks" target="*music" graphic="number/music.png" x="1180" y="25" ][endif]
[return]

*memory
[cm][free_chara][hide_role][hide_message_w][current layer="message0" ]
[bg_hist][playbgm loop="true" storage="Magenta_Touch.ogg" ]
[if exp="f.rape>=1" ][jump target="*rape" ][endif]

;;回想シーン１----------------------------------------------------------------------------
*scene
[cm][eval exp="f.memory='scene1'" ][free_layermode time="0" wait="false" ]

[if exp="f.m_first==1 || f.sex>=1" ][button storage="H/first.ks" target="*scene" graphic="m/1.png" x="214" y="106" ]
[else][button target="*scene" graphic="m/0.png" x="214" y="106" ][endif]

[if exp="f.m_morning>=1" ][button storage="H/morning.ks" target="*a" graphic="m/2-.png" x="391" y="106" ]
[else][button target="*scene" graphic="m/0.png" x="391" y="106" ][endif]
[if exp="f.m_morning>=2" ][button storage="H/morning.ks" target="*b" graphic="m/3-.png" x="523" y="106" ]
[else][button target="*scene" graphic="m/0.png" x="523" y="106" ][endif]
[if exp="f.m_morning>=3" ][button storage="H/morning.ks" target="*c" graphic="m/4-.png" x="655" y="106" ]
[else][button target="*scene" graphic="m/0.png" x="655" y="106" ][endif]

[if exp="f.m_wood>=1" ][button storage="H/wood_f.ks" target="*a" graphic="m/5.png" x="833" y="106" ]
[else][button target="*scene" graphic="m/0.png" x="833" y="106" ][endif]
[if exp="f.m_wood>=2" ][button storage="H/wood_f.ks" target="*b" graphic="m/6.png" x="965" y="106" ]
[else][button target="*scene" graphic="m/0.png" x="965" y="106" ][endif]
[if exp="f.m_wood>=3" ][button storage="H/wood_f.ks" target="*c" graphic="m/7.png" x="1097" y="106" ]
[else][button target="*scene" graphic="m/0.png" x="1097" y="106" ][endif]

[if exp="f.m_mouth>=1" ][button storage="H/mouth.ks" target="*a_m" graphic="m/8.png" x="269" y="437" ]
[else][button target="*scene" graphic="m/0.png" x="269" y="437" ][endif]
[if exp="f.m_mouth>=2" ][button storage="H/mouth.ks" target="*b_m" graphic="m/9.png" x="401" y="437" ]
[else][button target="*scene" graphic="m/0.png" x="401" y="437" ][endif]
[if exp="f.m_mouth>=3" ][button storage="H/mouth.ks" target="*c_m" graphic="m/10.png" x="533" y="437" ]
[else][button target="*scene" graphic="m/0.png" x="533" y="437" ][endif]

[if exp="f.m_x==1" ][button storage="H/sexless1.ks" target="*scene" graphic="m/11.png" x="710" y="437" ]
[else][button target="*scene" graphic="m/0.png" x="710" y="437" ][endif]
[if exp="f.m_xx==1" ][button storage="H/sexless2.ks" target="*scene" graphic="m/12.png" x="842" y="437" ]
[else][button target="*scene" graphic="m/0.png" x="842" y="437" ][endif]
[if exp="f.m_xxx==1" ][button storage="H/sexless3.ks" target="*scene" graphic="m/13.png" x="974" y="437" ]
[else][button target="*scene" graphic="m/0.png" x="974" y="437" ][endif]

[button target="*scene" graphic="m/scene.png" x="1146" y="436" ]
[button target="*cg" graphic="m/cg-.png" x="1146" y="476" ]
[call target="*setting_button" ][s]

;;回想CG１----------------------------------------------------------------------------
*cg
[cm][eval exp="f.memory='cg1'" ]

[if exp="f.m_first==1 || f.sex>=1" ][button storage="H/first.ks" target="*cg" graphic="m/1.png" x="214" y="106" ]
[else][button target="*cg" graphic="m/0.png" x="214" y="106" ][endif]

[if exp="f.m_morning>=1" ][button storage="H/morning.ks" target="*a_" graphic="m/2-.png" x="391" y="106" ]
[else][button target="*cg" graphic="m/0.png" x="391" y="106" ][endif]
[if exp="f.m_morning>=2" ][button storage="H/morning.ks" target="*b_" graphic="m/3-.png" x="523" y="106" ]
[else][button target="*cg" graphic="m/0.png" x="523" y="106" ][endif]
[if exp="f.m_morning>=3" ][button storage="H/morning.ks" target="*c_" graphic="m/4-.png" x="655" y="106" ]
[else][button target="*cg" graphic="m/0.png" x="655" y="106" ][endif]

[if exp="f.m_wood>=1" ][button storage="H/wood_f.ks" target="*a_" graphic="m/5.png" x="833" y="106" ]
[else][button target="*cg" graphic="m/0.png" x="833" y="106" ][endif]
[if exp="f.m_wood>=2" ][button storage="H/wood_f.ks" target="*b_" graphic="m/6.png" x="965" y="106" ]
[else][button target="*cg" graphic="m/0.png" x="965" y="106" ][endif]
[if exp="f.m_wood>=3" ][button storage="H/wood_f.ks" target="*c_" graphic="m/7.png" x="1097" y="106" ]
[else][button target="*cg" graphic="m/0.png" x="1097" y="106" ][endif]

[if exp="f.m_mouth>=1" ][button storage="H/mouth.ks" target="*a_cg" graphic="m/8.png" x="269" y="437" ]
[else][button target="*cg" graphic="m/0.png" x="269" y="437" ][endif]
[if exp="f.m_mouth>=2" ][button storage="H/mouth.ks" target="*b_cg" graphic="m/9.png" x="401" y="437" ]
[else][button target="*cg" graphic="m/0.png" x="401" y="437" ][endif]
[if exp="f.m_mouth>=3" ][button storage="H/mouth.ks" target="*c_cg" graphic="m/10.png" x="533" y="437" ]
[else][button target="*cg" graphic="m/0.png" x="533" y="437" ][endif]

[if exp="f.m_x==1" ][button storage="H/sexless1.ks" target="*cg" graphic="m/11.png" x="710" y="437" ]
[else][button target="*cg" graphic="m/0.png" x="710" y="437" ][endif]
[if exp="f.m_xx==1" ][button storage="H/sexless2.ks" target="*cg" graphic="m/12.png" x="842" y="437" ]
[else][button target="*cg" graphic="m/0.png" x="842" y="437" ][endif]
[if exp="f.m_xxx==1" ][button storage="H/sexless3.ks" target="*cg" graphic="m/13.png" x="974" y="437" ]
[else][button target="*cg" graphic="m/0.png" x="974" y="437" ][endif]

[button target="*scene" graphic="m/scene-.png" x="1146" y="436" ]
[button target="*cg" graphic="m/cg.png" x="1146" y="476" ]
[call target="*setting_button" ][s]


;;回想シーン２----------------------------------------------------------------------------
*memory2
[cm]
*scene2
[cm][eval exp="f.memory='scene2'" ]

[if exp="f.self>=1" ][button storage="H/self.ks" target="*first" graphic="m/14.png" x="214" y="106" ]
[else][button target="*scene2" graphic="m/0.png" x="214" y="106" ][endif]
[if exp="f.self_sec==1" ][button storage="H/self.ks" target="*second" graphic="m/15.png" x="347" y="106" ]
[else][button target="*scene2" graphic="m/0.png" x="347" y="106" ][endif]
[if exp="f.m_nurse>=1" ][button storage="H/nurse.ks" target="*a" graphic="m/16.png" x="520" y="106" ]
[else][button target="*scene2" graphic="m/0.png" x="520" y="106" ][endif]
[if exp="f.m_nurse>=2" ][button storage="H/nurse.ks" target="*b" graphic="m/17.png" x="653" y="106" ]
[else][button target="*scene2" graphic="m/0.png" x="653" y="106" ][endif]

[if exp="f.m_missional==1" ][button target="*wine_x" graphic="m/_missional1.png" x="833" y="106" ]
[else][button target="*scene2" graphic="m/0.png" x="833" y="106" ][endif]
[if exp="f.m_drunk>=1" ][button target="*wine_drunk1" graphic="m/_drank1.png" x="965" y="106" ]
[else][button target="*scene2" graphic="m/0.png" x="965" y="106" ][endif]
[if exp="f.m_drunk>=2" ][button target="*wine_drunk2" graphic="m/_drank2.png" x="1097" y="106" ]
[else][button target="*scene2" graphic="m/0.png" x="1097" y="106" ][endif]

[button target="*scene2" graphic="m/scene.png" x="1146" y="436" ]
[button target="*cg2" graphic="m/cg-.png" x="1146" y="476" ]
[call target="*setting_button" ][s]

;;wine_X
*wine_x
[cm][eval exp="f.hist_mode=1"][jump storage="H/missional.ks" target="*dress_select"]
*wine_drunk1
[cm][eval exp="f.hist_mode=2"][jump storage="H/missional.ks" target="*dress_select"]
*wine_drunk2
[cm][eval exp="f.hist_mode=3"][jump storage="H/missional.ks" target="*dress_select"]

;;回想CG２----------------------------------------------------------------------------
*cg2
[cm][eval exp="f.memory='cg2'" ]

[if exp="f.self>=1" ][button storage="H/self.ks" target="*a_cg" graphic="m/14.png" x="214" y="106" ]
[else][button target="*cg2" graphic="m/0.png" x="214" y="106" ][endif]

[if exp="f.self_sec==1" ][button storage="H/self.ks" target="*b_cg" graphic="m/15.png" x="347" y="106" ]
[else][button target="*cg2" graphic="m/0.png" x="347" y="106" ][endif]

[if exp="f.m_nurse>=1" ][button storage="H/nurse.ks" target="*a_" graphic="m/16.png" x="520" y="106" ]
[else][button target="*cg2" graphic="m/0.png" x="520" y="106" ][endif]

[if exp="f.m_nurse>=2" ][button storage="H/nurse.ks" target="*b_" graphic="m/17.png" x="653" y="106" ]
[else][button target="*cg2" graphic="m/0.png" x="653" y="106" ][endif]

[button target="*scene2" graphic="m/scene-.png" x="1146" y="436" ]
[button target="*cg2" graphic="m/cg.png" x="1146" y="476" ]
[call target="*setting_button" ][s]

*aur
[cm][eval exp="f.memory='aur'" ]

[if exp="f.aur_memo_1>=1" ]
[button storage="mod/H_memory/Aurelia_snow.ks" target="*begin" graphic="m/aur/1-a.png" x="214" y="106" ]
[else][button target="*aur" graphic="m/0.png" x="214" y="106" ][endif]

[if exp="f.aur_memo_1>=2" ]
[button storage="mod/H_memory/Aurelia_snow_after.ks" target="*begin" graphic="m/aur/1-b.png" x="347" y="106" ]
[else][button target="*aur" graphic="m/0.png" x="347" y="106" ][endif]

[if exp="f.aur_memo_r>=1" ]
[button storage="mod/H_memory/Aurelia_rain_r.ks" target="*begin" graphic="m/aur/2.png" x="520" y="106" ]
[else][button target="*aur" graphic="m/0.png" x="520" y="106" ][endif]

[if exp="f.aur_memo_els>=1" ]
[button storage="mod/H_memory/Aurelia_rain_els.ks" target="*begin" graphic="m/aur/3.png" x="653" y="106" ]
[else][button target="*aur" graphic="m/0.png" x="653" y="106" ][endif]

[if exp="f.aur_memo_date>=1" ]
[button storage="mod/H_memory/Aurelia_walk.ks" target="*begin" graphic="m/aur/4.png" x="826" y="106" ]
[else][button target="*aur" graphic="m/0.png" x="826" y="106" ][endif]

[if exp="f.aur_memo_date>=2" ]
[button storage="mod/H_memory/Aurelia_date_H.ks" target="*begin" graphic="m/aur/5.png" x="959" y="106" ]
[else][button target="*aur" graphic="m/0.png" x="959" y="106" ][endif]

[if exp="f.aur_st>=1" ]
[button storage="mod/H_memory/au_sy_H_dream.ks" target="*begin" graphic="m/aur/6.png" x="214" y="430" ]
[else][button target="*aur" graphic="m/0.png" x="214" y="430" ][endif]




[call target="*setting_button" ][s]
*neph
[cm][eval exp="f.memory='neph'" ]
[if exp="f.ne_memo_H1>=1" ]
[button storage="mod/H_memory/nephy_H1.ks" target="*begin" graphic="m/neph/01.png" x="214" y="106" ]
[else][button target="*neph" graphic="m/0.png" x="214" y="106" ][endif]

[if exp="f.ne_memo_H1>=2" ]
[button storage="mod/H_memory/nephy_H1_r.ks" target="*begin" graphic="m/neph/02.png" x="347" y="106" ]
[else][button target="*neph" graphic="m/0.png" x="347" y="106" ][endif]


[if exp="f.neph_wh>=1" ]
[button storage="mod/H_memory/neph_wood_H.ks" target="*begin" graphic="m/neph/03.png" x="520" y="106" ]
[else][button target="*neph" graphic="m/0.png" x="520" y="106" ][endif]

[if exp="f.neph_th>=1" ]
[button storage="mod/H_memory/neph_town_H.ks" target="*begin" graphic="m/neph/04.png" x="653" y="106" ]
[else][button target="*neph" graphic="m/0.png" x="653" y="106" ][endif]

[if exp="f.neph_dh>=1" ]
[button storage="mod/H_memory/neph_door_H.ks" target="*begin" graphic="m/neph/05.png" x="826" y="106" ]
[else][button target="*neph" graphic="m/0.png" x="826" y="106" ][endif]

[if exp="f.neph_st>=5" ]
[button storage="mod/H_memory/ne_sy_bath_H_dream.ks" target="*begin" graphic="m/neph/06.png" x="959" y="106" ]
[else][button target="*neph" graphic="m/0.png" x="959" y="106" ][endif]


[call target="*setting_button" ][s]

[call target="*setting_button" ][s]
;;おまけ----------------------------------------------------------------------------
*extra
[cm][eval exp="f.memory='extra'" ]

[if exp="f.m_x==1" ][button storage="H/video.ks" target="*select_a" graphic="m/11.png" x="214" y="106" ][endif]
[call target="*setting_button" ][s]

;;回想bad----------------------------------------------------------------------------
*rape
[cm][eval exp="f.memory='rape'" ]

[button storage="H/rape.ks" target="*rape_m" graphic="m/000.png" x="214" y="106" ]
[call target="*setting_button" ][s]

*rape_cg
[cm][eval exp="f.memory='rape_cg'" ]

[button storage="H/rape.ks" target="*cg" graphic="m/000.png" x="214" y="106" ]
[call target="*setting_button" ][s]

;;戻る----------------------------------------------------------------------------
*return_bace
[cm][black][hide_message_w][stopbgm][bgm_SG]
[set_sit][f/s_nt][set_time][show_sit]
[show_message_w]
[return_bace]
*back
[if exp="f.memory=='scene1'" ][jump target="*scene" ]
[elsif exp="f.memory=='scene2'" ][jump target="*scene2" ]
[elsif exp="f.memory=='cg1'" ][jump target="*cg" ]
[elsif exp="f.memory=='cg2'" ][jump target="*cg2" ]
[elsif exp="f.memory=='extra'" ][jump target="*extra" ]
[elsif exp="f.memory=='aur'" ][jump target="*aur" ]
[elsif exp="f.memory=='neph'" ][jump target="*neph" ]
[elsif exp="f.memory=='rape'" ][jump target="*rape" ]
[elsif exp="f.memory=='rape_cg'" ][jump target="*rape_cg" ][endif]

*return_memory
[clearstack][return_memory]

;;設定変更----------------------------------------------------------------------------
*xr
[if exp="sf.xr==1" ][eval exp="sf.xr=0" ][else][eval exp="sf.xr=1" ][endif][jump target="*back" ]
*tx
[if exp="sf.tx==1" ][eval exp="sf.tx=0" ][else][eval exp="sf.tx=1" ][endif][jump target="*back" ]
*se
[if exp="sf.se==1" ][eval exp="sf.se=0" ][else][eval exp="sf.se=1" ][endif][jump target="*back" ]
*ef
[if exp="sf.ef==1" ][eval exp="sf.ef=0" ][else][eval exp="sf.ef=1" ][endif][jump target="*back" ]

*xr_fix
[if exp="sf.xr==1" ][eval exp="sf.xr=0" ][chara_hide name="x" time="0" ]
[else][chara_show name="x" time="0" wait="true" left="0.1" zindex=200 ][eval exp="sf.xr=1" ][endif]
[clearfix name="role_xr" ][xr_fix][return]
*tx_fix
[if exp="sf.tx==1" ][eval exp="sf.tx=0" ][chara_hide name="tx" time="0" ]
[else][chara_show name="tx" time="0" wait="true" left="0.1" zindex=210 ][eval exp="sf.tx=1" ][endif]
[clearfix name="role_tx" ][tx_fix][return]
*se_fix
[if exp="sf.se==1" ][eval exp="sf.se=0" ][chara_hide name="se" time="0" ]
[else][chara_show name="se" time="0" wait="true" left="0.1" zindex=220 ][eval exp="sf.se=1" ][endif]
[clearfix name="role_se" ][se_fix][return]
*ef_fix
[if exp="sf.ef==1" ][eval exp="sf.ef=0" ][chara_hide name="ef" time="0" ]
[else][chara_show name="ef" time="0" wait="true" left="0.1" zindex=230 ][eval exp="sf.ef=1" ][endif]
[clearfix name="role_ef" ][ef_fix][return]




