;;set
*set
[if exp="f.hat==1" ][chara_mod name="hat" time="0" storage="H/self/hat/a1.png" ]
[elsif exp="f.hat==2" ][chara_mod name="hat" time="0" storage="H/self/hat/a2.png" ]
[else][chara_mod name="hat" time="0" storage="00.png" ][endif]

[if exp="f.glasses==1" ][mod_glasses st="H/self/glass/a1.png" ][elsif exp="f.glasses==2" ][mod_glasses st="H/self/glass/a2.png" ]
[elsif exp="f.glasses==3" ][mod_glasses st="H/self/glass/a3.png" ][elsif exp="f.glasses==4" ][mod_glasses st="H/self/glass/a4.png" ]
[elsif exp="f.glasses==5" ][mod_glasses st="H/self/glass/a5.png" ][elsif exp="f.glasses==6" ][mod_glasses st="H/self/glass/a6.png" ]
[elsif exp="f.glasses==7" ][mod_glasses st="H/self/glass/a7.png" ][elsif exp="f.glasses==8" ][mod_glasses st="H/self/glass/a8.png" ]
[elsif exp="f.glasses==9" ][mod_glasses st="H/self/glass/a9.png" ][elsif exp="f.glasses==11" ][mod_glasses st="H/self/glass/b1.png" ]
[elsif exp="f.glasses==12" ][mod_glasses st="H/self/glass/b2.png" ][elsif exp="f.glasses==13" ][mod_glasses st="H/self/glass/b3.png" ]
[elsif exp="f.glasses==14" ][mod_glasses st="H/self/glass/b4.png" ][elsif exp="f.glasses==15" ][mod_glasses st="H/self/glass/b5.png" ]
[elsif exp="f.glasses==16" ][mod_glasses st="H/self/glass/b6.png" ][elsif exp="f.glasses==17" ][mod_glasses st="H/self/glass/b7.png" ]
[elsif exp="f.glasses==18" ][mod_glasses st="H/self/glass/b8.png" ][elsif exp="f.glasses==19" ][mod_glasses st="H/self/glass/b9.png" ]
[elsif exp="f.glasses==21" ][mod_glasses st="H/self/glass/c1.png" ][elsif exp="f.glasses==22" ][mod_glasses st="H/self/glass/c2.png" ]
[elsif exp="f.glasses==23" ][mod_glasses st="H/self/glass/c3.png" ][elsif exp="f.glasses==24" ][mod_glasses st="H/self/glass/c4.png" ][elsif exp="f.glasses==25" ][mod_glasses st="H/self/glass/c5.png" ]
[elsif exp="f.glasses==26" ][mod_glasses st="H/self/glass/c6.png" ][elsif exp="f.glasses==27" ][mod_glasses st="H/self/glass/c7.png" ][elsif exp="f.glasses==28" ][mod_glasses st="H/self/glass/c8.png" ]
[elsif exp="f.glasses==29" ][mod_glasses st="H/self/glass/c9.png" ][else][mod_glasses st="00.png" ][endif]

;[if exp="f.socks==1" ][mod_socks st="H/self/socks/a1.png" ][elsif exp="f.socks==2" ][mod_socks st="H/self/socks/a2.png" ]
;[elsif exp="f.socks==3" ][mod_socks st="H/self/socks/a3.png" ][elsif exp="f.socks==4" ][mod_socks st="H/self/socks/a4.png" ]
;[elsif exp="f.socks==11" ][mod_socks st="H/self/socks/b1.png" ][elsif exp="f.socks==12" ][mod_socks st="H/self/socks/b2.png" ]
;[elsif exp="f.socks==13" ][mod_socks st="H/self/socks/b3.png" ][elsif exp="f.socks==14" ][mod_socks st="H/self/socks/b4.png" ]
;[elsif exp="f.socks==15" ][mod_socks st="H/self/socks/b5.png" ][elsif exp="f.socks==16" ][mod_socks st="H/self/socks/b6.png" ]
;[else][mod_socks st="00.png" ][endif]
[mod_socks st="00.png" ]
[return]

;;回想分岐
*first
[cm][eval exp="f.hist_mode=1" ][jump target="*H_self_first" ]
*second
[cm][eval exp="f.hist_mode=2" ][jump target="*H_self" ]

;;初回
*H_self_first
[cm][stop_bgm][black]…[p][show_message_w]
[bg_door]
[_]（Mở cữa phòng ra, hình như Sylvie không có ở troq này。[p]
（Tôi mua đồ về rồi để sang 1 bên rồi đi tìm Sylvie。[p]
[bg_room]
…。[p]
（Vì xung quanh không có ai nên tôi đi tới phòng ngủ。[p]
[black]
（…Hé mở cửa phòng, Sylvie đang rên đang phê。[p][l_03]
[syl]Ohh…Ahh…Uhh[p]
[call target="*set" ][bgm_MT][set_black][reset_effect]
[call target="*bga1_"]
[h_se st="H/self/se/0-1.png" ][h_tx st="H/self/tx/0-1.png" ][h_ef st="H/self/ef/0-1.png" ][h_x st="00.png" ]
[chara_show name="hat" time="0" wait="true" left="0.1" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="socks" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[_]（Nhìn trộm từ khe cửa, tôi thấy Sylvie đang khỏa thân nằm trên giường。[p]
[se_loop st="l-wet0.ogg" ][syl]…Ahh♥…Ahh…[name]♥[p]
[_]（Tại sao Sylvie lại mặc mặc áo sơ mi nam lớn、[r]
Nhưng tôi nhớ cái áo đã giặt sạch và được đặt trong giỏ。[p]
（em ấy cắn tay áo trong、[r]
Bàn tay phải em ấy đặt xuống phần dưới cơ thể。[p]
[syl][r_21]Ahh♥…Ahh♥…[p][l_02]
[_]（Tôi tập trung nghe, nghe thấy tiếng thở của Sylvie[r]
Nghe thấy âm thanh nhỏ của ngón tay thon thả đang chọc vào cái xxx ướt。[p]
[syl][r_14][name_h]…♥[name_h]…♥♥[p][l_01]
[_]（Tôi tập trung nghe, nghe thấy tiếng thở của Sylvie。[p]
（Tôi thích xem cái cảnh này, nhưng không để ý nơi đang nhìn。[p]
[se_loop st="oral3.ogg" ]
[syl][quake_3][r_05]Ahh♥♥…[name_h]…♥♥[p][l_03]
[_]（Sylvie thở hổn hển và dưới ngón tay của cô ấy vang vọng âm thanh của nước。[p]
（Khi gần đến giới hạn em cử động ngón tay và kích động dữ dội hơn。[p]
[syl][quake_3][lc_06]Ahh♥…[name]♥♥…[name]♥[quake_6][p][lc_03]
[_]（Ngón tay em đưa vào và rút ra liên tục[r]
Tinh dịch em tràn ra với giọng rên vang khắp phòng。[p]

[call target="*bga2_"][se_nloop st="squi.ogg" ]
[h_se st="H/self/se/0-2.png" ][h_tx st="H/self/tx/0-2.png" ][h_ef st="H/self/ef/0-2.png" ]
[syl][quake_6][lc_04]Ya♥…Ahh♥♥….Ahh…♥♥♥！[p]
[_]（Sylvie thắt chặt cơ thể mình, vì thế cơ thể em ấy cứng đờ và rất phấn khích。[p]
[syl][l_03]Ahh…♥♥♥[p]

[call target="*bga3_"]
[h_se st="H/self/se/0-3.png" ][h_tx st="H/self/tx/0-3.png" ][h_ef st="H/self/ef/0-3.png" ]
[_]（Ngón tay em ấy nằm trong vùng kín như không thể rút ra, Sylvie bắt đầu run rẩy、[r]
Ánh mắt em trợn lên và trống rỗng[p]
[syl][quake_3][lc_05]Ahh♥♥…Ahh♥[name_h]…♥[p]

[call target="*bga4_"]
[h_tx st="00.png" ][h_ef st="H/self/ef/0-4.png" ]
…………[p]
[kya_01]………Ahh…♥♥♥[name]？[p]
[_]（Đôi mắt lung lây em đột nhiên nhìn sang đây[r]
Sylvie mở to mắt ra。[p]
[syl][kore_1]Ahh…♥♥♥…Ahh…♥♥♥[name_h]…Cái này……[p]
[_]（Mặc dù mặt em đỏ ，nhưng sự lo sợ và xấu hổ của em ấy xuất hiện[r]
Sylvie bắt đầu biểu hiện những hành động phức tạp của mình trên giường。[p]
[black]
（Stlvie sau một vài phút[r]
Đôi mắt em nhìn tôi đồng thời chạm vào phần của cơ thể。[p]

[if exp="f.hist_mode>=1" ][save_dress][endif]
[eval exp="f.dress=5" ]
[eval exp="f.pin=0" ][eval exp="f.front_hair=0" ]
[eval exp="f.hair_style=0" ][eval exp="f.hair_band=0" ]
[eval exp="f.neck=0" ][eval exp="f.socks=0" ]
[eval exp="f.under_p=0" ][eval exp="f.under_b=0" ]
[if exp="f.hat!=1" ][eval exp="f.hat=0" ][endif]

[set_stand][bg_bed][f/cp_nt][show_stand]
[f/re][syl][um_09]Em nghĩ em nên đi giặt đồ…[r]
Cái này…Áo của [name] luôn luôn cảm thấy có chút lạ…。[p_]
[f/re][na_1]à… um… cái này….[r]
[f/re]Em…bản thâm em cũng không hiểu…。[p_]
[f/clcp][um_05]Cái này…Em xin lỗi..Em xin lỗi。[p_]
[button target="*ok" graphic="ch/ok.png" x="0" y="200" ]
[button target="*cute" graphic="ch/was-cute.png" x="0" y="350" ][s]

*cute
[cm][f/cp][eh_01]Eh…？[p_]
…。[p_]
[f/re]Nếu không có ghét em… Em rất vui…。[p_]
[f/clcp][um_01]Ohh Ohh♥♥♥♥…。[p_]
[_]（Em ấy không biết giải thích sao…[r]
Mặt đỏ ửng lên, bối rối quá, chỉ biết cúi đầu đ[p_]
[if exp="f.hist_mode==0" ][eval exp="f.lust=f.lust+10" ][endif]
[jump target="*end" ]

*ok
[cm][f/cp]…Tâm trạng không có trở nên xấu？？[lr_]
[f/re]Anh thật sự ghét em？… Thật chứ？[p_]
[f/clcp]…[p]
[f/cp]Em xin lỗi… nói đến rối hết rồi。[lr_]
[f/re]Nếu những lời khó chịu như thế thì phải làm …[p_]
[if exp="f.hist_mode>=1" ][jump target="*end" ][endif]
[eval exp="f.love=f.love+10" ]

*end
[black][stop_bgm]
[if exp="f.hist_mode>=1" ][paste_dress][return_memory][endif]
[eval exp="f.self=1" ][eval exp="f.heavn=f.heavn+1" ]
[if exp="f.sexless_c>=1" ][eval exp="f.sexless=f.sexless-1" ][endif]
[jump storage="act_with/go_out.ks" target="*after_town" ]

;;2回目以降
*H_self
[cm][stop_bgm][black]…[p][show_message_w][bgm_MT][call target="*set" ][reset_effect]
[_]（Sylvie nằm trên giường nhẹ nhàng vuốt ve âm đạo của em ấy。[p]
（Tôi đứng ngắm nhìn em ấy một khoảng thời gian、[r]
Em ấy bắt đầu từ từ, di chuyển ngón tay của mình。[p]
[set_black]
[call target="*bgb1_"]
[h_se st="H/self/se/1-1,2.png" ][h_tx st="H/self/tx/1-1,2.png" ][h_ef st="H/self/ef/1-1,2.png" ][h_x st="00.png" ]
[chara_show name="hat" time="0" wait="true" left="0.1" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="socks" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[syl][quake_3][l_03]…Ah[p]
[_]（Có lẽ như đây là lần đầu tiên tôi thấy Sylvie thủ dâm[r]
Em ấy tiếp tục di chuyển bàn tay phải khi đang che khuôn mặt mình。[p]
[syl][l_02]Fu~…[p]
[_]（Em ấy hít thật sâu mùi của chiếc áo sơ mi ấy。[p]
[syl]Uh oh… ♥[p][l_03]

[call target="*bgb2_"][se_loop st="l-wet0.ogg" ]
[_]（Tôi có thể nghe thấy tiếng thở của em ấy từ bên ngoài。[p]
（Dần dần ngón tay của Sylvie chuyển động nhẹ nhàng chạm vào phần bí mật pha chút hơi ấm、[r]
Một chút khích động tương tự, thật trông giống như tiếng cọ nguậy vang vọng trong phòng。[p]
[syl][quake_3][l_03]ah… ♥ Fu~… ♥[p]
（Ngón tay em ấy từ từ chuyển động nhanh dần、[r]
Hơi thở và âm thanh phát ra từ Sylvie nghe lớn hơn。[p]

[call target="*bgb3_"]
[h_se st="H/self/se/1-3-6.png" ][h_tx st="H/self/tx/1-3,4.png" ][h_ef st="H/self/ef/1-3,4.png" ]
（Những lời nói bí mật của tôi đã bị nghe thấy、[r]
Trong trường họp này có lẽ là vậy。[p]

[call target="*bgb4_"]
（Đột nhiên Sylvie nhận ra tôi đang ở đây, cô ấy đỏ bừng mặt đầy vẻ xấu hổ[r]
Ngay lập tức em nhắm mắt lại。[p]
[if exp="f.self>=50" ]
[syl][name],em…gần đây em có một cảm giác lạ trống vắng lắm…[p]
[elsif exp="f.self>=25" ]
[syl][quake_3][naka_1]Em,… cảm thấy … trong ngực này…[p][l_02]
[endif]
[_]（Má em ấy trở nên đỏ nguyên nhân không phải sự xấu hổ hay vui mừng, mà vì là tôi、[r]
Vì thế ngón tay em ấy bắt đầu di chuyển nhanh và thở thở nhanh hơn。[p]
[call target="*bgb5_"]
[h_tx st="H/self/tx/1-5,6.png" ][h_ef st="H/self/ef/1-5,6.png" ]
[syl][r_14]Wow… ♥… Oh… ♥♥[p][l_03]
[_]Rớt các chất lỏng tình yêu xuống giường, Cơ thể bắt đầu tận hưởng niềm vui sướng。[p]
[syl][quake_3][r_21]Ah … ah oh ♥  …[name]…♥♥[p][l_04]
[_]（Sylvie gọi tôi sau khi rên lên。[lr]
Có vẻ như là một thói quen khao khát của em ấy。[p]
[syl][r_02]ah♥…[name]♥…[name]♥[p][l_05]

[call target="*bgb6_"]
[_]（Sylvie một lần nữa nhìn sang bên đây。[p]
（Tôi đặt con mắt nhìn chăm chú。[p]
[syl][um_03][name]… ♥… ♥… Hmmm ~ ♥[p][l_04]
[_]（Thân thể em như co gấp lại[r]
Đôi mắt trở nên khao khát mong muốn。[p]
[syl][quake_3][r_02]ah…ah♥…[name_h]…♥♥[p][l_02]
[se_loop st="oral3.ogg" ]
[_]（Những âm thanh từ hơi thở và dâm dịch của Sylvie dần trở nên dữ dội。[p]
[syl][quake_3][r2_02]Ah ♥ … [name] ♥♥ … [name] ♥[p][l_04]
[if exp="f.self>=25" ][name]Thực sự đang nhìn vào…♥[p][endif]
[if exp="f.self>=100" ][quake_6][yada_1][name]… có thể nghe thấy em ♥[quake_3][lr][quake_3][manko_ga_1]Em đang… trở nên Dâm đãng ♥♥[quake_3][p][l_05][endif]
[_]（Ở đây tôi vẫn đứng nhìn chằm chằm vào những hành động xấu hổ của Sylvie[r]
Ngón tay em ấy thả sâu vào trong ngọ ngoậy,tiếng dâm thủy vang vọng trong phòng。[p]
（Ngón tay em ấy chuyển động gần như đã đến giới hạn。[p]

[call target="*bgb7_"][se_nloop st="squi.ogg" ]
[h_se st="H/self/se/1-7.png" ][h_tx st="H/self/tx/1-7.png" ][h_ef st="H/self/ef/1-7.png" ]
[syl][quake_6][lc_01]Mmm! ♥… Oh … ♥ ♥ Well … ♥♥♥！[quake_3][p]
[_]（Bờ vai Sylvie cứng đơ, có vẻ như em ấy đã đạt cực khoái。[p][l_09]

[call target="*bgb8_"]
[h_se st="H/self/se/1-8.png" ][h_tx st="H/self/tx/1-8.png" ][h_ef st="H/self/ef/1-8.png" ]
[syl][quake_12][lc_06]HA … Ah … … Well … Oh … ♥[quake_3][p][l_03]
[na_1]……[name_h]♥[r]
Đây là sự thỏa mãn… có phải không?？[p][stopse]

[if exp="f.hist_mode>=1" ][return_memory][endif]
[if exp="f.self>=100" ][eval exp="f.lust=f.lust+4" ]
[elsif exp="f.self>=50" ][eval exp="f.lust=f.lust+1" ][endif]
[eval exp="f.self_sec=1" ][eval exp="f.self=f.self+1" ]
[eval exp="f.lust=f.lust+5" ][eval exp="f.love=f.love+10" ]
[eval exp="f.heavn=f.heavn+1" ][jump storage="H/before.ks" target="*self_after" ]


;;CG1
*a_cg
[cm][call target="*set" ][set_black][call target="*bga1_"]
[h_se st="H/self/se/0-1.png" ][h_tx st="H/self/tx/0-1.png" ][h_ef st="H/self/ef/0-1.png" ][h_x st="00.png" ]
[chara_show name="hat" time="0" wait="true" left="0.1" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="socks" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_back tg="*end_cg"][h_next tg="*a_cg_2"][s]
*a_cg_2
[cm][call target="*bga2_"]
[h_se st="H/self/se/0-2.png" ][h_tx st="H/self/tx/0-2.png" ][h_ef st="H/self/ef/0-2.png" ]
[h_back tg="*a_cg"][h_next tg="*a_cg_3"][s]
*a_cg_3
[cm][call target="*bga3_"]
[h_se st="H/self/se/0-3.png" ][h_tx st="H/self/tx/0-3.png" ][h_ef st="H/self/ef/0-3.png" ]
[h_back tg="*a_cg_2"][h_next tg="*a_cg_4"][s]
*a_cg_4
[cm][call target="*bga4_"]
[h_tx st="00.png" ][h_ef st="H/self/ef/0-4.png" ]
[h_back tg="*a_cg_3"][h_next tg="*end_cg"][s]

;;CG2
*b_cg
[cm][call target="*set" ][set_black][call target="*bgb1_"]
[h_se st="H/self/se/1-1,2.png" ][h_tx st="H/self/tx/1-1,2.png" ][h_ef st="H/self/ef/1-1,2.png" ][h_x st="00.png" ]
[chara_show name="hat" time="0" wait="true" left="0.1" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="socks" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*b_cg_2"][s]
*b_cg_2
[cm][call target="*bgb2_"]
[h_se st="H/self/se/1-1,2.png" ][h_tx st="H/self/tx/1-1,2.png" ][h_ef st="H/self/ef/1-1,2.png" ]
[h_back tg="*b_cg"][h_next tg="*b_cg_3"][s]
*b_cg_3
[cm][call target="*bgb3_"]
[h_se st="H/self/se/1-3-6.png" ][h_tx st="H/self/tx/1-3,4.png" ][h_ef st="H/self/ef/1-3,4.png" ]
[h_back tg="*b_cg_2"][h_next tg="*b_cg_4"][s]
*cg_4
[cm][call target="*bgb4_"]
[h_tx st="H/self/tx/1-3,4.png" ][h_ef st="H/self/ef/1-3,4.png" ]
[h_back tg="*b_cg_3"][h_next tg="*b_cg_5"][s]
*cg_5
[cm][call target="*bgb5_"]
[h_tx st="H/self/tx/1-5,6.png" ][h_ef st="H/self/ef/1-5,6.png" ]
[h_back tg="*b_cg_4"][h_next tg="*b_cg_6"][s]
*cg_6
[cm][call target="*bgb6_"]
[h_se st="H/self/se/1-3-6.png" ][h_tx st="H/self/tx/1-5,6.png" ][h_ef st="H/self/ef/1-5,6.png" ]
[h_back tg="*b_cg_5"][h_next tg="*b_cg_7"][s]
*cg_7
[cm][call target="*bgb7_"]
[h_se st="H/self/se/1-7.png" ][h_tx st="H/self/tx/1-7.png" ][h_ef st="H/self/ef/1-7.png" ]
[h_back tg="*b_cg_6"][h_next tg="*b_cg_8"][s]
*cg_8
[cm][call target="*bgb8_"]
[h_se st="H/self/se/1-8.png" ][h_tx st="H/self/tx/1-8.png" ][h_ef st="H/self/ef/1-8.png" ]
[h_back tg="*b_cg_7"][h_next tg="*end_cg"][s]

*end_cg
[cm][black][return_memory]
;;-------------------------------------------------------------------------------------------------------
*bga1_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/a1.jpg" ][else]
[h_bg st="H_self/a1.jpg" ][endif][return]
*bga2_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/a2.jpg" ][else]
[h_bg st="H_self/a2.jpg" ][endif][return]
*bga3_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/a3.jpg" ][else]
[h_bg st="H_self/a3.jpg" ][endif][return]
*bga4_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/a4.jpg" ][else]
[h_bg st="H_self/a4.jpg" ][endif][return]
*bgb1_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/b1.jpg" ][else]
[h_bg st="H_self/b1.jpg" ][endif][return]
*bgb2_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/b2.jpg" ][else]
[h_bg st="H_self/b2.jpg" ][endif][return]
*bgb3_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/b3.jpg" ][else]
[h_bg st="H_self/b3.jpg" ][endif][return]
*bgb4_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/b4.jpg" ][else]
[h_bg st="H_self/b4.jpg" ][endif][return]
*bgb5_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/b5.jpg" ][else]
[h_bg st="H_self/b5.jpg" ][endif][return]
*bgb6_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/b6.jpg" ][else]
[h_bg st="H_self/b6.jpg" ][endif][return]
*bgb7_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/b7.jpg" ][else]
[h_bg st="H_self/b7.jpg" ][endif][return]
*bgb8_
[if exp="f.uncen=='true'"][h_bg st="H_self/uncen/b8.jpg" ][else]
[h_bg st="H_self/b8.jpg" ][endif][return]


