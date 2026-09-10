;;set
*set
[if exp="f.dress_save>=51 && f.dress_save<=53" ]
[elsif exp="f.dress==52 || f.dress==2" ][eval exp="f.dress_save=52" ]
[elsif exp="f.dress==53 || f.dress==3" ][eval exp="f.dress_save=53" ]
[elsif exp="f.dress==51 || f.dress==1" ][eval exp="f.dress_save=51" ]
[else][eval exp="f.dress_save=0" ][endif]

[if exp="f.dress_save==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1b.png" ]
[elsif exp="f.dress_save==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1c.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1a.png" ][endif]

[if exp="f.glasses==1" ][mod_glasses st="H/nurse/glass/a1.png" ][elsif exp="f.glasses==2" ][mod_glasses st="H/nurse/glass/a2.png" ]
[elsif exp="f.glasses==3" ][mod_glasses st="H/nurse/glass/a3.png" ][elsif exp="f.glasses==4" ][mod_glasses st="H/nurse/glass/a4.png" ]
[elsif exp="f.glasses==5" ][mod_glasses st="H/nurse/glass/a5.png" ][elsif exp="f.glasses==6" ][mod_glasses st="H/nurse/glass/a6.png" ]
[elsif exp="f.glasses==7" ][mod_glasses st="H/nurse/glass/a7.png" ][elsif exp="f.glasses==8" ][mod_glasses st="H/nurse/glass/a8.png" ]
[elsif exp="f.glasses==9" ][mod_glasses st="H/nurse/glass/a9.png" ][elsif exp="f.glasses==11" ][mod_glasses st="H/nurse/glass/b1.png" ]
[elsif exp="f.glasses==12" ][mod_glasses st="H/nurse/glass/b2.png" ][elsif exp="f.glasses==13" ][mod_glasses st="H/nurse/glass/b3.png" ]
[elsif exp="f.glasses==14" ][mod_glasses st="H/nurse/glass/b4.png" ][elsif exp="f.glasses==15" ][mod_glasses st="H/nurse/glass/b5.png" ]
[elsif exp="f.glasses==16" ][mod_glasses st="H/nurse/glass/b6.png" ][elsif exp="f.glasses==17" ][mod_glasses st="H/nurse/glass/b7.png" ]
[elsif exp="f.glasses==18" ][mod_glasses st="H/nurse/glass/b8.png" ][elsif exp="f.glasses==19" ][mod_glasses st="H/nurse/glass/b9.png" ]
[elsif exp="f.glasses==21" ][mod_glasses st="H/nurse/glass/c1.png" ][elsif exp="f.glasses==22" ][mod_glasses st="H/nurse/glass/c2.png" ]
[elsif exp="f.glasses==23" ][mod_glasses st="H/nurse/glass/c3.png" ][elsif exp="f.glasses==24" ][mod_glasses st="H/nurse/glass/c4.png" ]
[elsif exp="f.glasses==25" ][mod_glasses st="H/nurse/glass/c5.png" ][elsif exp="f.glasses==26" ][mod_glasses st="H/nurse/glass/c6.png" ]
[elsif exp="f.glasses==27" ][mod_glasses st="H/nurse/glass/c7.png" ][elsif exp="f.glasses==28" ][mod_glasses st="H/nurse/glass/c8.png" ]
[elsif exp="f.glasses==29" ][mod_glasses st="H/nurse/glass/c9.png" ][else][mod_glasses st="00.png" ][endif]

[if exp="f.b_acc==1" ][mod_b_acc st="s/b_acc/O/nurse_a1.png" ][elsif exp="f.b_acc==21" ][mod_b_acc st="s/b_acc/O/nurse_b1.png" ]
[elsif exp="f.b_acc==22" ][mod_b_acc st="s/b_acc/O/nurse_b2.png" ][elsif exp="f.b_acc==31" ][mod_b_acc st="s/b_acc/O/nurse_c1.png" ]
[elsif exp="f.b_acc==32" ][mod_b_acc st="s/b_acc/O/nurse_c2.png" ][elsif exp="f.b_acc==41" ][mod_b_acc st="s/b_acc/O/nurse_d1.png" ]
[elsif exp="f.b_acc==42" ][mod_b_acc st="s/b_acc/O/nurse_d2.png" ][else][mod_b_acc st="00.png" ][endif]
[mod_win st="o/win/LR.png" ]
[return]


;;set服差分
*nurse_d1
[if exp="f.dress_save==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1b.png" ]
[elsif exp="f.dress_save==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1c.png" ]
[elsif exp="f.dress_save==51" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/1a.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage=00.png" ][endif][return]
*nurse_d2
[if exp="f.dress_save==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/2b.png" ]
[elsif exp="f.dress_save==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/2c.png" ]
[elsif exp="f.dress_save==51" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/2a.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage=00.png" ][endif][return]
*nurse_d3
[if exp="f.dress_save==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/3b.png" ]
[elsif exp="f.dress_save==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/3c.png" ]
[elsif exp="f.dress_save==51" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/3a.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage=00.png" ][endif][return]
*nurse_d4
[if exp="f.dress_save==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/4b.png" ]
[elsif exp="f.dress_save==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/4c.png" ]
[elsif exp="f.dress_save==51" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/4a.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage=00.png" ][endif][return]
*nurse_d5
[if exp="f.dress_save==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/5b.png" ]
[elsif exp="f.dress_save==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/5c.png" ]
[elsif exp="f.dress_save==51" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/5a.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage=00.png" ][endif][return]
*nurse_d6
[if exp="f.dress_save==52" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/6b.png" ]
[elsif exp="f.dress_save==53" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/6c.png" ]
[elsif exp="f.dress_save==51" ][chara_mod cross="false" name="dress" time="0" storage="H/nurse/dress/6a.png" ]
[else][chara_mod cross="false" name="dress" time="0" storage=00.png" ][endif][return]

*hat_a1
[if exp="f.hat==1" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a1.gif" ]
[elsif exp="f.hat==2" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a2.png" ]
[else][chara_mod wait="false" name="hat" time="0" storage="00.png" ][endif][return]
*hat_a1-
[if exp="f.hat==1" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a1-.png" ]
[elsif exp="f.hat==2" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a2-.png" ]
[else][chara_mod wait="false" name="hat" time="0" storage="00.png" ][endif][return]



;;show_set
*show_set
[chara_show name="glasses" time="0" wait="false" left="0.1" ]
[chara_show name="hat" time="0" wait="false" left="0.1" ]
[chara_show name="b_acc" time="0" wait="false" left="0.1" ]
[if exp="f.nude==0" ][chara_show name="dress" time="0" wait="false" left="0.1" ][endif][return]

;;導入
*nurse
[cm][stop_bgm][set_work]
（Đã đến lúc đóng cửa phòng khám,đôi mắt của tôi đang hướng về Sylvie, người đang dọn dẹp bàn làm việc。[lr_]
…Ánh mắt của tôi dường như không thể rời khỏi cơ thể cô ấy trong bộ đồng phục y tá.[p_]
[f/nt][show_work]
[syl][f/re]…[name]？[p_]
[_]（Sylvie đột nhiên xoay người như thể cô đã cảm nhận được nơi mà tôi đang nhìn chằm chằm trên cơ thể cô ấy。[p_]
[syl][f/p]…Chúng ta đang làm việc ngày hôm nay phải không ạ？[lr_]
[f/re]bây giờ chúng ta làm gì tiếp theo。[p_]
[if exp="f.lust>=500" ]
[f/cp]…[name]？[r]
Em… sono~…。[r2_01][p_]

[else]
[f/re]Anh muốn làm gì đó phải không？[lr_]
[f/re]Em sẽ làm bất cứ điều gì anh yêu cầu、[name]？[p_]
[endif]

[button target="*on_bed" graphic="ch/sex.png" x="0" y="270" ]
[button target="*return" graphic="ch/end-walk.png" x="0" y="420" ][s]

*return
[cos_work_union]
[cm][syl][f/cl]…Được không ạ。[lr_]
[f/sc]Chúng ta đã dọn dẹp xong ở đây rồi, vì vậy hãy cùng về nhà nào。[p_]
[black]…[p][bgm_SG][return_bace]

;;回想分岐

*a
[eval exp="f.hist_mode=1" ][jump target="*dress_select" ]
*b
[eval exp="f.hist_mode=2" ][jump target="*dress_select" ]
*a_
[eval exp="f.hist_mode=11" ][jump target="*dress_select" ]
*b_
[eval exp="f.hist_mode=12" ][jump target="*dress_select" ]

*dress_select
[eval exp="f.dress_save=0" ][bg storage="H/dress_memory.jpg" time="0" ]
*select
;エプロン
[cm]
;ナース
[if exp="f.Dc_f[0]=='got'" ][button target="*dress_up" graphic="clothe/c_nurse.png" x="680" y="165" ][endif]
[if exp="f.dress_save==51" ][button target="*c_f1" graphic="clothe/bc_white.png" x="835" y="165" ]
[elsif exp="f.Dc_f[1]==1" ][button target="*c_f1" graphic="clothe/bc_white-.png" x="835" y="165" ][endif]

[if exp="f.dress_save==52" ][button target="*c_f2" graphic="clothe/bc_pink.png" x="890" y="165" ]
[elsif exp="f.Dc_f[2]==1" ][button target="*c_f2" graphic="clothe/bc_pink-.png" x="890" y="165" ][endif]

[if exp="f.dress_save==53" ][button target="*c_f3" graphic="clothe/bc_black.png" x="945" y="165" ]
[elsif exp="f.Dc_f[3]==1" ][button target="*c_f3" graphic="clothe/bc_black-.png" x="945" y="165" ][endif]

[if exp="f.dress_save=='non'" ][button target="*c_non" graphic="clothe/non.png" x="730" y="118" ]
[else][button target="*c_non" graphic="clothe/non-.png" x="730" y="118" ][endif]

[button target="*end_cg" graphic="m/return.png" height="50" x="690" y="350" ]
[button target="*decide" graphic="m/decide.png" height="50" x="1000" y="350" ][s]

*c_non
[eval exp="f.dress_save='non'" ][jump target="*select" ]

*c_f1
[eval exp="f.dress_save=51" ][jump target="*select" ]
*c_f2
[eval exp="f.dress_save=52" ][jump target="*select" ]
*c_f3
[eval exp="f.dress_save=53" ][jump target="*select" ]

*decide
[cm][if exp="f.hist_mode==11" ][jump target="*a_cg" ]
[elsif exp="f.hist_mode==12" ][jump target="*b_cg" ][endif]
[show_message_w][jump target="*on_bed" ]


;;服選択
*on_bed
[cos_work_rei]
[cm][show_message_w][black][bgm_MT]
[_]（Ngồi trên một trong những chiếc giường của phòng khám, tôi vẫy tay ra hiệu Sylvie lại gần[p]
[syl]…Vâng。[p]
[_]（Sylvie đặt tay vào nút áo trên bộ đồng phục của cô ấy khi cô bước về phía tôi[p]
[if exp="f.hist_mode>=1 && f.dress_save=='non'" ][jump target="*nude" ]
[elsif exp="f.hist_mode>=1" ][jump target="*wear" ][endif]
[button target="*nude" graphic="ch/nude.png" x="0" y="270" ]
[button target="*wear" graphic="ch/nude_stop.png" x="0" y="420" ][s]

*nude
[cm]（Tôi cởi quần áo của cô ấy ra[r][eval exp="f.nude=1" ][jump target="*conti" ]

*wear
[cm][syl]Với bộ đồng phục này ạ…？[lr]
…Em hiểu rồi。[p][eval exp="f.nude=0" ]
[_]（Sylvie giữ lại bộ đồng phục trên người, chỉ cởi bỏ đồ lót、[r]

*conti
cô ấy tiến lại gần tôi。[p]
（và leo lên đùi tôi。[lr]
Âm đạo của cô ấy ngay lập tức đặt lên thằng nhỏ của tôi, nó đã ướt。[p]
[reset_effect][call target="*set" ][call target="*hat_a1" ]

[if exp="f.hist_mode==1" ][jump target="*x" ]
[elsif exp="f.hist_mode==2" ][jump target="*xx" ][endif]

[if exp="f.sexless_c>=2 && f.lust>=600 && f.m_nurse>=1 || f.mood=='lust' && f.m_nurse>=1" ]
[jump target="*xx" ][endif]

;;シーン1
*x
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[set_black][h_bg st="H_nurse/a1.jpg" ][se_nloop st="s-wet1.ogg" ]
[call target="*show_set" ][show_effect][hide_black]

[quake_3]（Sylvie nhấp hông của cô ấy luôn mà không cần màn dạo đầu。[p]
[syl][if exp="f.sex_name[0]>=1" ][name_h] và… sau một thời gian dài anh đã không…[sex_name]…♥♥[lr][endif][l_03]Um~…Ha~a…♥[p]
[_]（Âm đạo của cô ấy đã trơn, dễ dàng nuốt trọn thẳng nhỏ của tôi và tạo ra âm thanh rất "dam dang"。[p]
[h_bg st="H_nurse/a2.jpg" ][call target="*nurse_d2" ]
[chara_mod wait="false" name="se" time="0" storage=00.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_2.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_2.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]


[syl][r_06]Ha〜♥Haa…♥♥[p_name_ex_]♥[p][l_06]
[_]（Mặt cô ấy trùng xuống với một nụ cười thỏa mãn。[lr]
Cô ấy dùng cả chân và tay để ôm lấy tôi, cố siết chặt lấy cơ thể tôi。[p]

[h_bg st="H_nurse/a3.jpg" ][se_loop st="l-wet1.ogg" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_3,4.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_3.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_3.png" ]
[call target="*nurse_d3" ][call target="*hat_a1-" ]

[syl][r_14][quake_3]Un…♥Fuu…u♥[p][l_03]
[_]（Tôi nhẹ nhàng nắc mông của cô ấy lên xuống、[r]
Tôi thích cảm giác được đẩy qua các nếp gấp thịt ẩm ướt và nóng bỏng của nàng。[p]

[h_bg st="H_nurse/a4.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_4.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_4.png" ]
[syl][r_08]Aっ♥…Haa…っ♥♥ [v_name_ex][l][kimochi_ii_1] Kimochi ii …♥♥[p][l_06]
[_]（Sylvie cũng không kháng cự, để mặc tôi điều khiển cơ thể cô ấy。[lr][l_03]
Mắt của cô ấy trở nên đờ đẫn、[r]
Cô ấy đăng chăm chú cảm nhận âm đạo của mình từ những cú nắc của tôi。[p]
[h_bg st="H_nurse/a5.jpg" ][call target="*nurse_d4" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_5-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_5.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_5.png" ]
[se_loop st="l-wet2.ogg" ]
（…Tôi cũng rất phấn khích trước vẻ mặt đó, nhưng tôi không kiềm chế được bản năng của mình nên tăng tốc độ lên。[p]
[syl][lc_06]Ah！♥…Unっ…！♥♥…Haa！…！♥♥♥[p][l_08]
[_]（Nước dịch tình yêu của Sylvie đã bọc kín bộ phận sinh dục của chúng tôi, gây ra những âm thanh ướt át vang khắp phòng khám。[p]

[h_bg st="H_nurse/a6.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_6.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_6.png" ]
[syl][r_13]Haa~…！♥[name_h]！！♥♥[name_h]♥！♥！！[p][l_10]
[_]（Trong lúc tôi đang đẩy hông của cô ấy, Sylvie cũng tự xoay hông của mình và di chuyển lên xuống、[r]
Sự di chuyển của chúng tôi đã trở nên mạnh mẽ hơn。[p]
Cả hai chúng tôi đều bị cuốn vào những ham muốn của cơ quan sinh dục…。[p]

[h_bg st="H_nurse/a7.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_7.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_7.png" ]
[se_loop st="l-wet3.ogg" ]
[syl][r_09]Ah~！♥♥ [l][motto_1]Em…thêm nữa…♥！[if exp="f.x_speak==1" ][ii_1]Em ổn…~♥[endif][r_21]♥♥[p][l_03]
[_]（Chân và tay cô ấy bắt đầu siết chặt hơn, cơ thể bắt đầu căng ra。[lr]
Cô ấy đã đến giới hạn của mình。[p]
[syl][r_21][name_h]♥！♥！！[lr]
[quake_3][lc_04]Em đang ra…a！♥♥[name_h]♥！♥♥！！[p]
[se_nloop st="fin2.ogg" ]
[h_bg st="H_nurse/a8.jpg" ][call target="*nurse_d5" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_8.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_8.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_8.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/2.png" ]

[syl][r2_08][quake_3]Umm~♥…ー〜n！！！Ah！！♥[p][l_03]
[if exp="f.x_speak==1" ][v_name_ex][lc_05]~Iku ~u ~…[endif][r_13]♥♥！♥！！[p]
[_]（Tôi đẩy mạnh vào mông của sylvie, đưa thằng nhỏ vào sâu nhất có thể và giải phóng hết "ham muốn" của mình vào trong cô ấy。[p]
[h_bg st="H_nurse/a9.jpg" ][call target="*nurse_d6" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_9.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_9.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_9.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]

[syl][quake_6][lc_06]Aa"ー〜♥♥Hahya"……〜っ！♥♥♥[quake_6][p][l_06]
[_]（Sylvie vẫn tiếp tục "lên đỉnh" khi cơ thể chúng tôi vẫn đang kết nối với nhau。[p][stopse]

[if exp="f.hist_mode>=1" ][jump target="*end" ][endif]
[eval exp="f.sex=f.sex+1" ][eval exp="f.h_v=f.h_v+5" ]
[eval exp="f.lust=f.lust+7" ][eval exp="f.love=f.love+15" ]
[eval exp="f.heavn=f.heavn+2" ]
[if exp="f.m_nurse>=1" ][else][eval exp="f.m_nurse=1" ][endif][jump target="*end" ]

;;シーン2
*xx
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_1.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_1.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_1.png" ]
[chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[set_black][h_bg st="H_nurse/b1.jpg" ][call target="*show_set" ][show_effect][hide_black]
[se_nloop st="s-wet1.ogg" ][quake_3][l_06]
（Sylvie nhấp hông của cô ấy luôn mà không cần màn dạo đầu。[p]
[syl]
[if exp="f.sex_name[0]>=1 && f.lust>=500" ][p_name_ex][um_01]…[sex_name][um_02]…♥♥[lr][name_h] Và… đã sau một thời gian dài không [sex_name] với em…♥♥[p]
[elsif exp="f.sex_name[0]>=1" ][um_05][name_h] và… Đã lâu rồi không [sex_name] với em…♥♥[lr][endif]
[lc_01][quake_3]Un…Fuu…u！♥♥[p][l_05]
[_]（Âm đạo của cô ấy đã trơn, dễ dàng nuốt trọn thẳng nhỏ của tôi và tạo ra âm thanh rất "dam dang"。[p]
[h_bg st="H_nurse/b2.jpg" ][call target="*nurse_d2" ]
[chara_mod wait="false" name="se" time="0" storage=00.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_2.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_2.png" ]
[chara_mod wait="false" name="x" time="0" storage=00.png" ]
[r_05]Ah~…[name_h]♥… [p_name] của [name_h]♥♥ [l][kimochi_ii_1]Kimochi ii…♥♥[p][l_04]
[_]（Nét mặt của cô ấy méo mó trong sự thỏa mãn。[lr]
Cô ấy dùng cả chân và tay để ôm lấy tôi, cố siết chặt lấy cơ thể tôi。[p]

[h_bg st="H_nurse/b3.jpg" ][call target="*nurse_d4" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_3-7.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_3.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_3.png" ]
[call target="*hat_a1-" ]

[se_loop st="l-wet2.ogg" ]
[syl][l_02][quake_3]Haa！♥…Aaa！！♥…！♥♥[p][l_05]
[_]（Bị dồn nén quá lâu, ngay từ khi bắt đầu, tôi đã đẩy nhanh mà không chờ đợi。[p]

[h_bg st="H_nurse/b4.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_4.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_4.png" ][quake_6]
[syl][quake_3][lc_01]A"っ！♥！♥♥Aaa…！！♥♥[p][l_03]
[_]（Có vẻ cô ấy khá sốc vì sự kích thích đột ngột、[r]
nhưng ngay cả như vậy, tôi có cảm giác âm đạo của cô ấy thắt chặt dần sau mỗi cú đẩy của tôi。[lr]
Trong âm đạo của cô ấy nóng một cách kinh ngạc。[p]

[h_bg st="H_nurse/b5.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_5.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_5.png" ]
[syl][lc_03][quake_6]Ii~~♥！♥♥…un"っ…！♥♥[r]
…Hii…a！♥！！♥♥♥ [p][l_02]
[_]（sự khoái lạc này đủ mạnh để quên đi mệt mỏi, chúng tôi tiếp tục làm tình。[lr]
Âm thanh từ mông cô ấy vỗ vào đùi tôi và âm thanh ẩm ướt thừ bộ phận sinh dục vang khắp căn phòng[p]

[h_bg st="H_nurse/b6.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_6.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_6.png" ][quake_6]
[syl][lc_04]A"っAh"〜っ…！♥♥Haaa！！♥！[r]
Aah"っ♥！！♥♥[p][l_07]
[_]（Tôi tăng tốc độ hơn nữa, đâm vào thật sâu tử cung của cô ấy、[r]
Trong khi âm đạo của cô ấy tiếp tục vuốt ve thằng nhỏ của tôi。[p]

[h_bg st="H_nurse/b7.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_7.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_7.png" ][quake_12]
[se_loop st="l-wet3.ogg" ]
[syl][quake_3][lc_02]ii"っ！♥♥[name_h]~shii！♥♥…〜！！♥♥[quake_6][p][l_02]
[_]（Cả hai chúng tôi đã tới giới hạn, chuyển động của chúng tôi trở nên mạnh bạo đến khó tin。[p]
[syl][quake_6][lc_06]…Iku..tsu！♥！！♥♥♥i"…tsu！♥！♥♥♥[p][l_06]

[h_bg st="H_nurse/b8.jpg" ][call target="*nurse_d5" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_8.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_8.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_8.png" ]
[chara_mod wait="false" name="x" time="0" storage="H/nurse/x/2.png" ]
[if exp="f.hat==1" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a1.png" ]
[elsif exp="f.hat==2" ][chara_mod wait="false" name="hat" time="0" storage="H/nurse/hat/a2.png" ]
[else][chara_mod wait="false" name="hat" time="0" storage="00.png" ][endif]
[se_nloop st="fin2.ogg" ]
[quake_6][quake_12][lc_05]i"♥♥…kguu…♥……っー〜♥♥！！♥♥！♥♥♥♥[quake_3][p][l_02]
[_][quake_3]（Cơ thể sylvie giật lên khi cô ấy lên đỉnh。[lr][l_03]
Thằng nhỏ của tôi bị vùi sâu vào âm đạo của cô ấy do cô ấy đang ghì, ém chặt lấy tôi、[r]
Tôi cũng xuất hết lượng tinh dịch tích lũy vào sâu trong tử cung cô ấy。[p]

[h_bg st="H_nurse/b9.jpg" ][call target="*nurse_d6" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_9.png" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_9.png" ]
[chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_9.png" ]
[chara_mod wait="false" name="x" time="0" storage=00.png" ]

[syl][quake_12][lc_03]Ah"っ♥！♥♥…Hyaaa~……！♥！♥♥[lr][quake_3]
[l_03]Nóng…！♥nóng quá……！♥！！♥♥♥[p][l_04]
[_][quake_3]（Cơ thể cô ấy rung lên, thở không ra hơi[r]
Cô ấy có vẻ không quan tâm và tiếp tục ngọ nguậy mông[r]
Cơ âm đạo của cô ấy tiếp tục co giật trong sự cực khoái mạnh mẽ。[p][stopse]

[if exp="f.hist_mode>=1" ][jump target="*end" ][endif]
[eval exp="f.sex=f.sex+1" ][eval exp="f.h_v=f.h_v+10" ][eval exp="f.heavn=f.heavn+4" ]
[eval exp="f.lust=f.lust+15" ][eval exp="f.love=f.love+20" ]
[if exp="f.m_nurse<=1" ][eval exp="f.m_nurse=2" ][endif]
[jump target="*end" ]

*end
[black][_]（Cơ thể cô ấy vẫn run rẩy trong vòng tay tôi, chúng tôi tận hưởng dư âm của cuộc vui thêm vài phút…。[p]
[if exp="f.hist_mode>=1" ][return_memory][endif]
[eval exp="f.cum=f.cum+1" ][eval exp="f.act='nurse'" ]
[stop_bgm]…[p][day_end]


;;CG1
*a_cg
[if exp="f.dress_save=='non'" ][eval exp="f.nude=1" ][else][eval exp="f.nude=0" ][endif]
[cm][black][call target="*set" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[set_black][h_bg st="H_nurse/a1.jpg" ][call target="*show_set" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*a_cg2"][s]

*a_cg1
[cm][h_bg st="H_nurse/a1.jpg" ][call target="*nurse_d1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[h_back tg="*end_cg"][h_next tg="*a_cg2"][s]
*a_cg2
[cm][h_bg st="H_nurse/a2.jpg" ]
[call target="*nurse_d2" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage=00.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_2.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_2.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*a_cg1"][h_next tg="*a_cg3"][s]
*a_cg3
[cm][h_bg st="H_nurse/a3.jpg" ][call target="*nurse_d3" ][call target="*hat_a1-" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_3,4.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_3.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_3.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*a_cg2"][h_next tg="*a_cg4"][s]
*a_cg4
[cm][h_bg st="H_nurse/a4.jpg" ][call target="*nurse_d3" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_3,4.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_4.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_4.png" ]
[h_back tg="*a_cg3"][h_next tg="*a_cg5"][s]
*a_cg5
[cm][h_bg st="H_nurse/a5.jpg" ][call target="*nurse_d4" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_5-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_5.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_5.png" ]
[h_back tg="*a_cg4"][h_next tg="*a_cg6"][s]
*a_cg6
[cm][h_bg st="H_nurse/a6.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_6.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_6.png" ]
[h_back tg="*a_cg5"][h_next tg="*a_cg7"][s]
*a_cg7
[cm][h_bg st="H_nurse/a7.jpg" ][call target="*nurse_d4" ][call target="*hat_a1-" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_5-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_7.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_7.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*a_cg6"][h_next tg="*a_cg8"][s]
*a_cg8
[cm][h_bg st="H_nurse/a8.jpg" ][call target="*nurse_d5" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_8.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_8.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_8.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/2.png" ]
[h_back tg="*a_cg7"][h_next tg="*a_cg9"][s]
*a_cg9
[cm][h_bg st="H_nurse/a9.jpg" ][call target="*nurse_d6" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/1_9.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/1_9.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/1_9.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*a_cg8"][h_next tg="*end_cg"][s]

;;CG2
*b_cg
[if exp="f.dress_save=='non'" ][eval exp="f.nude=1" ][else][eval exp="f.nude=0" ][endif]

[black][call target="*set" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[set_black][h_bg st="H_nurse/b1.jpg" ][call target="*show_set" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*b_cg2"][s]

*b_cg1
[h_bg st="H_nurse/b1.jpg" ][call target="*nurse_d1" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_1.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_1.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_1.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/1.png" ]
[h_back tg="*end_cg"][h_next tg="*b_cg2"][s]
*b_cg2
[cm][h_bg st="H_nurse/b2.jpg" ][call target="*nurse_d2" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage=00.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_2.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_2.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*b_cg1"][h_next tg="*b_cg3"][s]
*b_cg3
[cm][h_bg st="H_nurse/b3.jpg" ][call target="*nurse_d4" ][call target="*hat_a1-" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_3-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_3.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_3.png" ]
[h_back tg="*b_cg2"][h_next tg="*b_cg4"][s]
*b_cg4
[cm][h_bg st="H_nurse/b4.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_4.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_4.png" ]
[h_back tg="*b_cg3"][h_next tg="*b_cg5"][s]
*b_cg5
[cm][h_bg st="H_nurse/b5.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_5.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_5.png" ]
[h_back tg="*b_cg4"][h_next tg="*b_cg6"][s]
*b_cg6
[cm][h_bg st="H_nurse/b6.jpg" ]
[chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_6.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_6.png" ]
[h_back tg="*b_cg5"][h_next tg="*b_cg7"][s]
*b_cg7
[cm][h_bg st="H_nurse/b7.jpg" ][call target="*nurse_d4" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_3-7.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_7.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_7.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*b_cg6"][h_next tg="*b_cg8"][s]
*b_cg8
[cm][h_bg st="H_nurse/b8.jpg" ][call target="*nurse_d5" ][call target="*hat_a1" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_8.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_8.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_8.png" ][chara_mod wait="false" name="x" time="0" storage="H/nurse/x/2.png" ]
[h_back tg="*b_cg7"][h_next tg="*b_cg9"][s]
*b_cg9
[cm][h_bg st="H_nurse/b9.jpg" ]
[call target="*nurse_d6" ]
[chara_mod wait="false" name="se" time="0" storage="H/nurse/se/2_9.png" ][chara_mod wait="false" name="tx" time="0" storage="H/nurse/tx/2_9.png" ][chara_mod wait="false" name="ef" time="0" storage="H/nurse/ef/2_9.png" ][chara_mod wait="false" name="x" time="0" storage=00.png" ]
[h_back tg="*b_cg8"][h_next tg="*end_cg"][s]

*end_cg
[cm][black][return_memory]

