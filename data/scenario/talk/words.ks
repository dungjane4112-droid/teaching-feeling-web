*talk
[commit][cm]
[if exp="f.talk_love>=1" ][else][eval exp="f.talk_love=0" ]
[endif]
;;--------------

[if exp="f.c_word=='update' || f.c_word=='Update' || f.c_word=='101' "]
[jump storage="talk/tex.ks" target="*update"][end_talk]

[elsif exp="f.c_word=='100' || f.c_word=='Nop_thue' || f.c_word=='nop_thue'"]
[jump storage="talk/tex.ks" target="*tax"]
[end_talk]

[elsif exp="f.c_word=='001' || f.c_word=='mail' || f.c_word=='Mail'"]
[jump storage="talk/tex.ks" target="*mail"]
[end_talk]

[elsif exp="f.c_word=='up' || f.c_word=='102'"]
[jump storage="talk/tex.ks" target="*up"][end_talk]

[elsif exp="f.c_word=='setsave' || f.c_word=='Setsave'|| f.c_word=='103'"]
[jump storage="talk/tex.ks" target="*set_save"][end_talk]

[elsif exp="f.c_word=='clothes' || f.c_word=='104'"]
[jump storage="talk/tex.ks" target="*clothe"][end_talk]

[elsif exp="f.c_word=='Key' || f.c_word=='key' || f.c_word=='105'"]
[jump storage="talk/tex.ks" target="*jdk"][end_talk]

[elsif exp="f.c_word=='Mes1' || f.c_word=='mes1' || f.c_word=='011'"]
[hide_message_w][eval exp="f.win_f='a'"][set_win_frame][show_message_w][end_talk]

[elsif exp="f.c_word=='Mes2' || f.c_word=='mes2' || f.c_word=='012'"]
[hide_message_w][eval exp="f.win_f='b'"][set_win_frame][show_message_w][end_talk]

[elsif exp="f.c_word=='Mes3' || f.c_word=='mes3' || f.c_word=='013'"]
[hide_message_w][eval exp="f.win_f='c'"][set_win_frame][show_message_w][end_talk]

[elsif exp="f.c_word=='Mes4' || f.c_word=='mes4' || f.c_word=='014'"]
[hide_message_w][eval exp="f.win_f='d'"][set_win_frame][show_message_w][end_talk]


[elsif exp="f.c_word=='memory' || f.c_word=='Memory'"]
[eval exp="f.m_first=1"]
[eval exp="f.m_morning=3"]
[eval exp="f.m_wood=3"]
[eval exp="f.m_mouth=3"]
[eval exp="f.m_x=1"]
[eval exp="f.m_xx=1"]
[eval exp="f.m_xxx=1"]
[eval exp="f.self=1"]
[eval exp="f.self_sec=1"]
[eval exp="f.m_nurse=2"]
[eval exp="f.m_missional=1"]
[eval exp="f.m_drunk=2"]
[eval exp="f.aur_memo_1=2"]
[eval exp="f.aur_memo_r=1"]
[eval exp="f.aur_memo_els=1"]
[eval exp="f.aur_memo_date=2"]
[eval exp="f.ne_memo_H1=2"]
[eval exp="f.ne_wh_mem=1"]
[eval exp="f.ne_th_mem=1"]
[eval exp="f.ne_dh_mem=1"]

[end_talk]

[elsif exp="f.c_word=='memory1' || f.c_word=='Memory1'"]
[eval exp="f.aur_memo_1=2"]
[eval exp="f.aur_memo_r=1"]
[eval exp="f.aur_memo_els=1"]
[eval exp="f.aur_memo_date=2"]
[eval exp="f.aur_st=1" ]
[end_talk]

[elsif exp="f.c_word=='memory2' || f.c_word=='Memory2'"]
[eval exp="f.ne_memo_H1=2"]
[eval exp="f.ne_wh_mem=1"]
[eval exp="f.ne_th_mem=1"]
[eval exp="f.ne_dh_mem=1"]
[eval exp="f.neph_st=5"]
[end_talk]

[elsif exp="f.c_word=='test_face'"][jump storage="mod/test_face.ks" target="*list"][end_talk]
;-------------------------

[elsif exp="f.c_word=='soundoff' || f.c_word=='Soundoff'" ]
[eval exp="f.sound_off=1" ]
#Hệ thống
-Bạn đã tắt voice trong game.[p]
#
[end_talk]


[elsif exp="f.c_word=='soundon' || f.c_word=='Soundon'" ]
[eval exp="f.sound_off=0" ]
#Hệ thống
-Bạn đã bật voice trong game.[p]
#
[end_talk]
[elsif exp="f.c_word=='quakeoff' || f.c_word=='Quakeoff'" ]
[eval exp="f.config_mod='min'" ]
#Hệ thống
-Bạn đã tắt hiệu ứng rung trong game.[p]
#
[end_talk]
[elsif exp="f.c_word=='quakeon' || f.c_word=='Quakeon'" ]
[eval exp="f.config_mod='max'" ]
#Hệ thống
-Bạn đã bật hiệu ứng rung trong game.[p]
#
[end_talk]




[end_talk]
[elsif exp="f.c_word=='y00' || f.c_word=='Y00'"]
[call storage="pre/face_mod_off.ks"]
[end_talk]
[elsif exp="f.c_word=='y01' || f.c_word=='Y01'"]
[call storage="pre/face_mod_on.ks"][end_talk]
[elsif exp="f.c_word=='y02' || f.c_word=='Y02'"]
[call storage="pre/face_mod_old.ks"]
[end_talk]

[elsif exp="f.c_word=='y05'"]
[eval exp="f.code_ss='ful'"]
[vigina]
[end_talk]
;---------
[elsif exp="f.c_word=='w0' || f.c_word=='W0'"]
[eval exp="f.thoi_tiet=0"]
#Hệ thống
cheat: trời nắng [p][_][end_talk]

[elsif exp="f.c_word=='w1' || f.c_word=='W1'"]
[eval exp="f.thoi_tiet=1"]
#Hệ thống
cheat: mưa nhỏ [p][_][end_talk]

[elsif exp="f.c_word=='w2' || f.c_word=='W2'"]
[eval exp="f.thoi_tiet=2"]
#Hệ thống
cheat: mưa lớn [p][_]
[end_talk]

[elsif exp="f.c_word=='w3' || f.c_word=='W3'"]
[eval exp="f.thoi_tiet=3"]
#Hệ thống
cheat: tuyết rơi nhẹ [p][_]
[end_talk]

[elsif exp="f.c_word=='w4' || f.c_word=='W4'"]
#Hệ thống
cheat: tuyết rơi dày [p][_]
[eval exp="f.thoi_tiet=4"][end_talk]

[elsif exp="f.c_word=='w5' || f.c_word=='W5'"]
#Hệ thống
cheat: sương mù [p][_]
[eval exp="f.thoi_tiet=5"][end_talk]



[elsif exp="f.c_word=='moneyup' || f.c_word=='Moneyup' || f.c_word=='110'"]
[cm]
#Hệ thống
Bạn dược cộng thêm 10 triệu[p]
[_]
[jump storage="talk/tex.ks" target="*zince"]
[end_talk]

[elsif exp="f.c_word=='loveup' || f.c_word=='Loveup' || f.c_word=='111'"]
[cm]
#Hệ thống
Bạn dược cộng thêm 200 điểm thân mật của Sylvie[p]
[_]
[jump storage="talk/tex.ks" target="*love"]
[end_talk]

[elsif exp="f.c_word=='lustup' || f.c_word=='Lustup' || f.c_word=='112'"]
[cm]
#Hệ thống
Bạn dược cộng thêm 100 điểm ham muốn của Sylvie[p]
[_]
[jump storage="talk/tex.ks" target="*lust"]
[end_talk]

[elsif exp="f.c_word=='aloveup' || f.c_word=='Aloveup' || f.c_word=='113'"]
[cm]
#Hệ thống
Bạn dược cộng thêm 50 điểm thân mật của Aurelia[p]
[_]
[jump storage="talk/tex.ks" target="*aur_love"]
[end_talk]

[elsif exp="f.c_word=='nloveup' || f.c_word=='Nloveup' || f.c_word=='114'"]
[cm]
#Hệ thống
Bạn dược cộng thêm 50 điểm thân mật của Nephy[p]
[_]
[jump storage="talk/tex.ks" target="*ne_love"]
[end_talk]

[elsif exp="f.c_word=='snloveup' || f.c_word=='Snloveup' || f.c_word=='115'"]
[cm]
#Hệ thống
Bạn dược cộng thêm 50 điểm thân mật của Sylvie dành cho Nephy[p]
[_]
[jump storage="talk/tex.ks" target="*sy_ne_love"]
[end_talk]

;----aureliaH
[elsif exp="f.c_word=='aur1' || f.c_word=='201'"]
[cm]
[jump storage="talk/tex.ks" target="*aur1_test"]
[end_talk]

[elsif exp="f.c_word=='aur2' || f.c_word=='202'"]
[eval exp="f.aur_tea_f='yet'"]
[eval exp="f.aur_tea_f2='yet'"]
;[eval exp="f.win_f='d'"][position page=fore frame="frame/hhh.png" ]
[jump storage="talk/tex.ks" target="*aur2_test"][end_talk]


[elsif exp="f.c_word=='neph1'  || f.c_word=='301'"]
[jump storage="mod/H/nephy_demo.ks" target="*begin"]
[end_talk]
;================test===============================
[elsif exp="f.c_word=='test'"]
[eval exp="f.thoi_tiet=0"]
[eval exp="f.act=1"]
[eval exp="f.aur_tea_f='yet'"]
[eval exp="f.talk=0"]
[eval exp="f.aurelia_wait=0"]
[eval exp="f.neph_wait=0"]
[eval exp="f.act_al=0"]
[eval exp="f.sachi_wait=0"]
[eval exp="f.akemi_wait=0"]
[eval exp="f.rui_wait=0"]
[eval exp="f.aurelia_talk=60"]
[eval exp="f.aur_cafe='yet'"][eval exp="f.aur_hx='yet'"]
[eval exp="f.aur_tea_f2='yet'"][eval exp="f.lady=6"]
[black][stopbgm]
[bgm_ST][black][bg_town][set_weather][act_win_stand]
[jump storage="mod/aurelia_hiroba_test.ks" target="*aurelia_talk_lead"]
[jump storage="mod/Aurelia_walk.ks" target="*tear_next"]
[end_talk]

[elsif exp="f.c_word=='test01'"]
[black][chara_00][eval exp="f.talk=0"][stopbgm][bgm_DS]
[eval exp="f.lily_d='in'"]
[eval exp="f.lily_d='out'"]
[eval exp="f.name_w='Ichibi'"]
[bg time="800" method="crossfade" storage="bg/mod/school/01-2.jpg" ]
[eval exp="f.sexless=3"]
[jump storage="mod/school/pyt_st.ks" target="*syl_pyt"]
[end_talk]

[elsif exp="f.c_word=='test02'"]
[eval exp="f.thu=4"]
[eval exp="f.neph_st=1"]
[eval exp="f.akemi_dr='non'"]
[end_talk]

[elsif exp="f.c_word=='test03'"]
[black]
[jump storage="mod/Aurelia_walk.ks" target="*aur_H_after"]
[end_talk]


[elsif exp="f.c_word=='test04'"]
[black]
[_](Hôm nay, tôi đã khá mệt sau khi từ chỗ Aurelia về.[lr]
Tôi nghĩ mình không thể tiếp tục nên đã từ chối Sylvie...[p]
[set_dress]
[set_under_dress]

[f/sp_nt][set_time]
[chara_mod name="body" time="0" storage="s/body/dress_b_nontag.png" ]
[bg storage="bg/room-menu.jpg" time="0" ]
[call storage="mod/bath_def.ks" target="*show_dress"][bgm_SG][syl]
[um_09][f/sclp_nt]Hmm...[p_]
[na_1][f/sp_nt][name]...[l_]

[random_3][if exp="f.r==1"]
Bộ đồ này! Anh thấy ổn chứ![p_][sm_05]
[elsif exp="f.r==2"]
Em mặc thế này ổn chứ![p_][sm_05]
[else]
Em mặc vậy ổn chứ![p_][sm_05][endif]

[set_black][chara_00][set_nade][f/sclp_nt][show_nade]
[_](Sylvie tiến lại gần tôi.[p_]
[syl][um_10]Hmm...[lr_]

[random_3][if exp="f.r==1"]
[f/sp][name] À! Anh có nên làm thêm điều gì đó lúc này không?[wait time="50"][sm_09][p_]
[elsif exp="f.r==2"]
[f/sp][name] À! Chúng ta có nên làm gì đó lúc này không?[wait time="50"][sm_09][p_]
[else]
[f/sp][name] À! Anh có muốn làm gì đó lúc này không?[wait time="50"][sm_09][p_][endif]
[_](Tôi nghĩ hôm nay mình đã làm đủ nên có ý định từ chối cô ấy...[p_]
[syl][f/r_nt][a_06]Hmm?...[wait time="200"][lr_]
[f/re]Ý anh là sao?[p_]
[_](...[p_]
[syl][f/sclp_nt][um_07]Hah!...[l_][f/sclp]Không sao đâu ạ![lr_]
[f/sp][name] không cần làm gì cả, em sẽ làm giúp anh[wait time="50"][sm_19][p]
[black]
[jump storage="mod/H/H_av.ks" target="*before"]
[end_talk]
;;-----
[elsif exp="f.c_word=='test05'"]
[black]
[jump storage="talk/step6.ks" target="*talk25_1"]
[end_talk]

[elsif exp="f.c_word=='test06'"]
;[eval exp="f.neph_st=3"]
[eval exp="f.ne_st=0"]
[jump storage="mod/nephy_home.ks" target="*begin"]
[end_talk]
;;-----
[elsif exp="f.c_word=='test07'"]
[black]
[eval exp="f.ne_st=0"]
;[eval exp="f.neph_st=3"]
[eval exp="f.act=3"][black][l][stopbgm]
[jump storage="mod/nephy_date1_wood.ks" target="*ne_d1_talk19"]
[end_talk]
;;--ngủ dậy
[elsif exp="f.c_word=='test08'"]
[jump storage="mod/neph_x_syl_hem_demo.ks" target="*begin"]
[end_talk]

[elsif exp="f.c_word=='test09'"]
[jump storage="mod/neph_x_aur_dream1.ks" target="*begin"]
;[stopbgm][bgm_JH]
;[jump storage="mod/neph_sy_dream.ks" target="*begin"]
[end_talk]

[elsif exp="f.c_word=='test10'"]
[jump storage="mod/H/ne_sy_bath_H_dream.ks" target="*test"]
[end_talk]

[elsif exp="f.c_word=='test11'"]
[jump storage="mod/H/au_sy_H_dream.ks" target="*begin"]
[end_talk]

[elsif exp="f.c_word=='test12'"]
[eval exp="f.act='sex'"]
[jump storage="mod/neph_wekup.ks" target="*begin"]
[end_talk]

[elsif exp="f.c_word=='test13'"]
[eval exp="f.mood='lust'"][eval exp="f.sexless_c=1"]
[end_talk]

[elsif exp="f.c_word=='ntr'"]
[eval exp="f.aur_hx='date'] [eval exp="f.aur_hx='yet'"]
[cm ][eval exp="f.act_al=0"][eval exp="f.act=5"]
[black][chara_00][bg_town][set_weather][act_win_stand]
[bgm_OB]
[jump storage="mod/aurelia_hiroba.ks" target="*aurelia_talk_lead"][p]
[end_talk]

[elsif exp="f.c_word=='ntr1'"]
[eval exp="f.love=1500"][eval exp="f.aur_av=1"]
[jump storage="mod/bath_def.ks" target="*begin"]
[end_talk] 

[elsif exp="f.c_word=='ntr2'"]
[black][chara_00][l][eval exp="f.act=6"]
[jump storage="mod/Aurelia_walk.ks" target="*begin"]
[end_talk]
;;-------------------------------------------H---------------------------

[elsif exp="f.c_word=='sexless1_test' || f.c_word=='Sexless1_test'" ]
[to_sexless1][end_talk]
[elsif exp="f.c_word=='sexless2_test' || f.c_word=='Sexless2_test'" ]
[to_sexless2][end_talk]
[elsif exp="f.c_word=='sexless3_test' || f.c_word=='Sexless3_test'" ]
[jump storage="H/sexless3.ks" target="*sexless3" ][end_talk]

[elsif exp="f.c_word=='nurse_test' || f.c_word=='Nurse_test'" ]
[jump storage="H/nurse.ks" target="*nurse" ][end_talk]
[elsif exp="f.c_word=='nurse_test2' || f.c_word=='Nurse_test2'" ]
[eval exp="f.mood='lust'"][eval exp="f.m_nurse=1"]
[jump storage="H/nurse.ks" target="*nurse" ][end_talk]
[elsif exp="f.c_word=='self_test_f || f.c_word=='Self_test_f'" ]
[jump storage="H/self.ks" target="*H_self_first" ][end_talk]
[elsif exp="f.c_word=='self_test' || f.c_word=='Self_test'" ]
[jump storage="H/self.ks" target="*H_self" ][end_talk]
[elsif exp="f.c_word=='morning_test' || f.c_word=='Morning_test'" ]
[jump storage="talk/tex.ks" target="*morning"][end_talk]

;;デバック
[elsif exp="f.c_word=='夜の店衣装デバック'" ]
[jump target="*夜の店衣装デバック" ]
;;
[else]
[_][eval exp="f.system_act=1" ][return_menu][endif][end_talk]


;;デバックテキスト
*夜の店衣装デバック
[eval exp="f.Dc_xa[0]='got'" ][eval exp="f.Dc_xb[0]='got'" ][eval exp="f.Dc_xc[0]='got'" ]
[eval exp="f.Dac_b[0]='got'" ][eval exp="f.Dac_c[0]='got'" ][eval exp="f.Dac_d[0]='got'" ]
[eval exp="f.Du_xa[0]='got'" ][eval exp="f.Du_xb[0]='got'" ][eval exp="f.Du_xc[0]='got'" ]
[_]「Tôi đã mua một chút đồ ăn đêm ngoài cửa hàng[p]
[eval exp="f.system_act=1" ][return_menu]


*event5
[cm][eval exp="f.save_k='non'"]
;[jump storage="intro/event.ks" target="*choice_5x"]
;[if exp="f.codey_>=1000"]
[eval exp="f.code_ss='non'"]
;[else]
[eval exp="f.code_w='event5'"]
[in_to]
;[endif]
#
Xin lỗi vì sự bất tiện này.[r] Nhưng để chơi được bản full thì bạn cần nhập "[font color="0x05ffff"]key[resetfont]" của game[p]
Đừng lo lắng vì key được cung cấp miễn phí.[p]
[jump target="*event5_"]
*event5_
[black][cm]
Hãy click vào nút 'tạo key' bên trên để hệ thống tạo key cho bạn.[r]
Tham gia group facebook: [font color="lightsteelblue"][r]Teaching feeling mod by ichibikun[resetfont] Nếu bạn không biết cách lấy key.
[chara_show name="sub" time="0" wait="false" left="0" top="0" zindex=200 ]
[chara_mod name="sub" time="0" storage="o/sub/edit_key.png" ]
[edit left=475 top=500 width="400" height="50" name="f.codey" ]
[button target="*save" graphic="menu/s_save.png" x="775" y="560" ]
[button target="*out_xy" graphic="menu/get_key_.png" x="920" y="500" ]
;[button target="*event5" graphic="menu/key_other.png" x="775" y="430" ]
[button storage="translate/fix.ks" target="*code_" graphic="menu/decide.png" x="475" y="560" ][cancelskip][s]



*event5_cont
[cm][black][eval exp="f.save_k='non'"]
[eval exp="f.code_w='cont'"]
[if exp="f.codex<=0"][in_to][endif]
Hãy click vào nút 'tạo key' bên trên để hệ thống tạo key cho bạn.[r]
Tham gia group facebook: [font color="lightsteelblue"][r]Teaching feeling mod by ichibikun[resetfont] Nếu bạn không biết cách lấy key.
[chara_show name="sub" time="0" wait="false" left="0" top="0" zindex=200 ]
[chara_mod name="sub" time="0" storage="o/sub/edit_key.png" ]
[edit left=475 top=500 width="400" height="50" name="f.codey" ]
[button target="*save_cont" graphic="menu/back.png" x="775" y="560" ]
[button target="*out_xy" graphic="menu/get_key_.png" x="920" y="500" ]
;[button target="*event5" graphic="menu/key_other.png" x="775" y="430" ]
[button storage="translate/fix.ks" target="*code_" graphic="menu/decide.png" x="475" y="560" ][cancelskip][s]

*save_cont
[cm]
Bạn có thể tiếp tục chơi và nhập key bất cứ lúc nào. Tuy nhiên game sẽ bị khóa một số sự kiện. Hãy click vào nút "nhập key" khi bạn muốn nhập lại key.[p]
[return_bace]

*out_xy
[eval exp="f.ghz_xy=1248"]
[call storage="system/plugin.ks"]
[call storage="system/plugin_third.ks"]
[random_15][out_xy]
[cm]
#Hệ thống
Đã tạo xong key. Bạn có thể tạm save game để lưu lại mã key trước (với Android)[r]
để tránh mất mã key khi khởi động lại game.[r]
Click nút 'save game'.[p]
Bạn có thể sử dụng một trong các cách sau để lấy key[r]
1.Sử dụng 'quét mã QR' để vào trang web lấy key[r]
2.Click 1 trong 2 nút 'web lấy key' để vào trang web lấy key.
[if exp="f.save_k=='yet'"]
[button target="*web_key_anote" graphic="menu/web_key_1.png" x="920" y="100" ]
[button target="*web_key_fnote" graphic="menu/web_key_2.png" x="920" y="190" ]
[else][button target="*web_key_anote" graphic="menu/web_key_1_.png" x="920" y="100" ]
[button target="*web_key_fnote" graphic="menu/web_key_2_.png" x="920" y="190" ][endif]

[button target="*save_game" graphic="menu/save_game.png" x="720" y="280" ]
[chara_mod name="window" time="0" storage="00.png" ]
[chara_show name="window" time="0" wait="false" left="475" top="75" zindex="35" ]
[if exp="f.r==1 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a01.png" ]
[elsif exp="f.r==2 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a02.png" ]
[elsif exp="f.r==3 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a03.png" ]
[elsif exp="f.r==4 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a04.png" ]
[elsif exp="f.r==5 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a05.png" ]
[elsif exp="f.r==6 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a06.png" ]
[elsif exp="f.r==7 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a07.png" ]
[elsif exp="f.r==8 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a08.png" ]
[elsif exp="f.r==9 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a09.png" ]
[elsif exp="f.r==10 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a10.png" ]
[elsif exp="f.r==11 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a11.png" ]
[elsif exp="f.r==12 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a12.png" ]
[elsif exp="f.r==13 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a13.png" ]
[elsif exp="f.r==14 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a14.png" ]
[elsif exp="f.r==15 && f.save_k=='yet'"]
[chara_mod name="window" time="100" storage="o/sub/q/a15.png" ]
[endif]
[edit left=475 top=500 width="400" height="50" name="f.codey" ]
[button target="*out_xy" graphic="menu/get_key_dc.png" x="230" y="500" ]
[button storage="translate/fix.ks" target="*code_" graphic="menu/get_key_ok.png" x="920" y="500" ][cancelskip]
[s]

*save_game
[cm][eval exp="f.save_k='yet'"]
[showsave]
[if exp="f.save_k=='yet'"]
[button target="*web_key_anote" graphic="menu/web_key_1.png" x="920" y="100" ]
[button target="*web_key_fnote" graphic="menu/web_key_2.png" x="920" y="190" ]
[else][button target="*web_key_anote" graphic="menu/web_key_1_.png" x="920" y="100" ]
[button target="*web_key_fnote" graphic="menu/web_key_2_.png" x="920" y="190" ][endif]
;[button target="*save_game" graphic="menu/save_game.png" x="720" y="280" ]
[chara_mod name="window" time="0" storage="00.png" ]
[chara_show name="window" time="0" wait="false" left="475" top="75" zindex="35" ]
[if exp="f.r==1"]
[chara_mod name="window" time="100" storage="o/sub/q/a01.png" ]
[elsif exp="f.r==2"]
[chara_mod name="window" time="100" storage="o/sub/q/a02.png" ]
[elsif exp="f.r==3"]
[chara_mod name="window" time="100" storage="o/sub/q/a03.png" ]
[elsif exp="f.r==4"]
[chara_mod name="window" time="100" storage="o/sub/q/a04.png" ]
[elsif exp="f.r==5"]
[chara_mod name="window" time="100" storage="o/sub/q/a05.png" ]
[elsif exp="f.r==6"]
[chara_mod name="window" time="100" storage="o/sub/q/a06.png" ]
[elsif exp="f.r==7"]
[chara_mod name="window" time="100" storage="o/sub/q/a07.png" ]
[elsif exp="f.r==8"]
[chara_mod name="window" time="100" storage="o/sub/q/a08.png" ]
[elsif exp="f.r==9"]
[chara_mod name="window" time="100" storage="o/sub/q/a09.png" ]
[elsif exp="f.r==10"]
[chara_mod name="window" time="100" storage="o/sub/q/a10.png" ]
[elsif exp="f.r==11"]
[chara_mod name="window" time="100" storage="o/sub/q/a11.png" ]
[elsif exp="f.r==12"]
[chara_mod name="window" time="100" storage="o/sub/q/a12.png" ]
[elsif exp="f.r==13"]
[chara_mod name="window" time="100" storage="o/sub/q/a13.png" ]
[elsif exp="f.r==14"]
[chara_mod name="window" time="100" storage="o/sub/q/a14.png" ]
[elsif exp="f.r==15"]
[chara_mod name="window" time="100" storage="o/sub/q/a15.png" ]
[endif]
[edit left=475 top=500 width="400" height="50" name="f.codey" ]
[button target="*out_xy" graphic="menu/get_key_dc.png" x="230" y="500" ]
[button storage="translate/fix.ks" target="*code_" graphic="menu/get_key_ok.png" x="920" y="500" ][cancelskip]
[s]

*web_key_anote
[cm]
[if exp="f.save_k=='yet'"][else]
#Hệ thống
Bạn hãy click vào nút 'save game' và lưu lại game trước khi lấy key.[p][_]
[jump storage="talk/words.ks" target="*out_xy"][endif]

[if exp="f.r==1"][out_001][jump target="*out_xy1"]
[elsif exp="f.r==2"][out_002][jump target="*out_xy1_af"]
[elsif exp="f.r==3"][out_003][jump target="*out_xy1_af"]
[elsif exp="f.r==4"][out_004][jump target="*out_xy1_af"]
[elsif exp="f.r==5"][out_005][jump target="*out_xy1_af"]
[elsif exp="f.r==6"][out_006][jump target="*out_xy1_af"]
[elsif exp="f.r==7"][out_007][jump target="*out_xy1_af"]
[elsif exp="f.r==8"][out_008][jump target="*out_xy1_af"]
[elsif exp="f.r==9"][out_009][jump target="*out_xy1_af"]
[elsif exp="f.r==10"][out_010][jump target="*out_xy1_af"]
[elsif exp="f.r==11"][out_011][jump target="*out_xy1_af"]
[elsif exp="f.r==12"][out_012][jump target="*out_xy1_af"]
[elsif exp="f.r==13"][out_013][jump target="*out_xy1_af"]
[elsif exp="f.r==14"][out_014][jump target="*out_xy1_af"]
[elsif exp="f.r==15"][out_015][jump target="*out_xy1_af"][endif]

*web_key_fnote
[cm]
[if exp="f.save_k=='yet'"][else]
#Hệ thống
Bạn hãy click vào nút 'save game' và lưu lại game trước khi lấy key.[p][_]
[jump storage="talk/words.ks" target="*out_xy"][endif]

[if exp="f.r==1"][ouf_001][jump target="*out_xy1"]
[elsif exp="f.r==2"][ouf_002][jump target="*out_xy1_af"]
[elsif exp="f.r==3"][ouf_003][jump target="*out_xy1_af"]
[elsif exp="f.r==4"][ouf_004][jump target="*out_xy1_af"]
[elsif exp="f.r==5"][ouf_005][jump target="*out_xy1_af"]
[elsif exp="f.r==6"][ouf_006][jump target="*out_xy1_af"]
[elsif exp="f.r==7"][ouf_007][jump target="*out_xy1_af"]
[elsif exp="f.r==8"][ouf_008][jump target="*out_xy1_af"]
[elsif exp="f.r==9"][ouf_009][jump target="*out_xy1_af"]
[elsif exp="f.r==10"][ouf_010][jump target="*out_xy1_af"]
[elsif exp="f.r==11"][ouf_011][jump target="*out_xy1_af"]
[elsif exp="f.r==12"][ouf_012][jump target="*out_xy1_af"]
[elsif exp="f.r==13"][ouf_013][jump target="*out_xy1_af"]
[elsif exp="f.r==14"][ouf_014][jump target="*out_xy1_af"]
[elsif exp="f.r==15"][ouf_015][jump target="*out_xy1_af"][endif]


*out_xy1_af
[cm]
[if exp="f.r==1"][font color="lightsteelblue"]anotepad.com/note/read/dp8eq7nd[resetfont][r]
[elsif exp="f.r==2"][font color="lightsteelblue"]anotepad.com/note/read/32jyhea8[resetfont][r]
[elsif exp="f.r==3"][font color="lightsteelblue"]anotepad.com/note/read/3e5q6abh[resetfont][r]
[elsif exp="f.r==4"][font color="lightsteelblue"]anotepad.com/note/read/7kpb5r4y[resetfont][r]
[elsif exp="f.r==5"][font color="lightsteelblue"]anotepad.com/note/read/6n956ywg[resetfont][r]
[elsif exp="f.r==6"][font color="lightsteelblue"]anotepad.com/note/read/fb9ret3y[resetfont][r]
[elsif exp="f.r==7"][font color="lightsteelblue"]anotepad.com/note/read/najaqn8q[resetfont][r]
[elsif exp="f.r==8"][font color="lightsteelblue"]anotepad.com/note/read/qb35dj8j[resetfont][r]
[elsif exp="f.r==9"][font color="lightsteelblue"]anotepad.com/note/read/2qwxmixq[resetfont][r]
[elsif exp="f.r==10"][font color="lightsteelblue"]anotepad.com/note/read/m2jmesbm[resetfont][r]
[elsif exp="f.r==11"][font color="lightsteelblue"]anotepad.com/note/read/jgdijg8y[resetfont][r]
[elsif exp="f.r==12"][font color="lightsteelblue"]anotepad.com/note/read/ehc4k4wf[resetfont][r]
[elsif exp="f.r==13"][font color="lightsteelblue"]anotepad.com/note/read/hjpam3t3[resetfont][r]
[elsif exp="f.r==14"][font color="lightsteelblue"]anotepad.com/note/read/j6fibysg[resetfont][r]
[elsif exp="f.r==15"][font color="lightsteelblue"]anotepad.com/note/read/eqg34gr7[resetfont][r]
[endif]
[if exp="f.r==1"]bit.ly/37TPFzv
[elsif exp="f.r==2"]bit.ly/2NP3yYX
[elsif exp="f.r==3"]bit.ly/3uDwKmc
[elsif exp="f.r==4"]bit.ly/3dVuS2i
[elsif exp="f.r==5"]bit.ly/3uEXsuN
[elsif exp="f.r==6"]bit.ly/3kz2ILY
[elsif exp="f.r==7"]bit.ly/3sDBA0P
[elsif exp="f.r==8"]bit.ly/3uHMgNO
[elsif exp="f.r==9"]bit.ly/3ktxeH1
[elsif exp="f.r==10"]bit.ly/3r1VOkx
[elsif exp="f.r==11"]bit.ly/2Pmas8r
[elsif exp="f.r==12"]bit.ly/3b1o6pN
[elsif exp="f.r==13"]bit.ly/3kxGbyN
[elsif exp="f.r==14"]bit.ly/2ZZZHKU
[elsif exp="f.r==15"]bit.ly/2O664d1[endif][r]
;[emb exp="f.r"]
Game sẽ tự chuyển bạn đến web lấy key hoặc bạn dùng 1 trong 2 link bên trên[r]
Hãy nhập key vào ô trên sau khi bạn đã lấy được key và nhấn chọn 'ok'...[p]
[button target="*save_game" graphic="menu/save_game.png" x="920" y="280" ]
[chara_mod name="window" time="0" storage="00.png" ]
[chara_show name="window" time="0" wait="false" left="475" top="75" zindex="35" ]
[if exp="f.r==1"]
[chara_mod name="window" time="100" storage="o/sub/q/a01.png" ]
[elsif exp="f.r==2"]
[chara_mod name="window" time="100" storage="o/sub/q/a02.png" ]
[elsif exp="f.r==3"]
[chara_mod name="window" time="100" storage="o/sub/q/a03.png" ]
[elsif exp="f.r==4"]
[chara_mod name="window" time="100" storage="o/sub/q/a04.png" ]
[elsif exp="f.r==5"]
[chara_mod name="window" time="100" storage="o/sub/q/a05.png" ]
[elsif exp="f.r==6"]
[chara_mod name="window" time="100" storage="o/sub/q/a06.png" ]
[elsif exp="f.r==7"]
[chara_mod name="window" time="100" storage="o/sub/q/a07.png" ]
[elsif exp="f.r==8"]
[chara_mod name="window" time="100" storage="o/sub/q/a08.png" ]
[elsif exp="f.r==9"]
[chara_mod name="window" time="100" storage="o/sub/q/a09.png" ]
[elsif exp="f.r==10"]
[chara_mod name="window" time="100" storage="o/sub/q/a10.png" ]
[elsif exp="f.r==11"]
[chara_mod name="window" time="100" storage="o/sub/q/a11.png" ]
[elsif exp="f.r==12"]
[chara_mod name="window" time="100" storage="o/sub/q/a12.png" ]
[elsif exp="f.r==13"]
[chara_mod name="window" time="100" storage="o/sub/q/a13.png" ]
[elsif exp="f.r==14"]
[chara_mod name="window" time="100" storage="o/sub/q/a14.png" ]
[elsif exp="f.r==15"]
[chara_mod name="window" time="100" storage="o/sub/q/a15.png" ]
[endif]
[chara_show name="sub" time="0" wait="false" left="0" top="0" zindex=200 ]
[chara_mod name="sub" time="0" storage="o/sub/edit_key.png" ]
[edit left=475 top=500 width="400" height="50" name="f.codey" ]
[button target="*out_xy" graphic="menu/get_key_dc.png" x="230" y="500" ]
[button storage="translate/fix.ks" target="*code_" graphic="menu/get_key_ok.png" x="920" y="500" ][cancelskip][s]



*save
[cm][black]
Hãy click vào nút 'Lấy key' bên trên hoặc tham gia group facebook: [r][font color="lightsteelblue"]Teaching feeling mod by ichibikun[resetfont] để biết cách lấy Key và nhập vào ô trên.
[chara_show name="sub" time="0" wait="false" left="0" top="0" zindex=200 ]
[chara_mod name="sub" time="0" storage="o/sub/edit_key.png" ]
[edit left=475 top=500 width="400" height="50" name="f.codey" ]
[button target="*save_cont" graphic="menu/s_save.png" x="775" y="560" ]
[button target="*out_xy" graphic="menu/get_key_.png" x="920" y="500" ]
;[button target="*event5" graphic="menu/key_other.png" x="775" y="430" ]
[button storage="translate/fix.ks" target="*code_" graphic="menu/decide.png" x="475" y="560" ][cancelskip][r]
[showsave][s]

