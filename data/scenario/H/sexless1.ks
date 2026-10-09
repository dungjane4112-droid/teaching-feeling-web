;;set
*set
[chara_00]
[mod_win st="o/win/LR.png" ]
[if exp="f.b_acc==1" ][mod_b_acc st="H/x_1/b_acc/a1.png" ][elsif exp="f.b_acc==21" ][mod_b_acc st="H/x_1/b_acc/b1.png" ]
[elsif exp="f.b_acc==22" ][mod_b_acc st="H/x_1/b_acc/b2.png" ][elsif exp="f.b_acc==31" ][mod_b_acc st="H/x_1/b_acc/c1.png" ]
[elsif exp="f.b_acc==32" ][mod_b_acc st="H/x_1/b_acc/c2.png" ][elsif exp="f.b_acc==41" ][mod_b_acc st="H/x_1/b_acc/d1.png" ]
[elsif exp="f.b_acc==42" ][mod_b_acc st="H/x_1/b_acc/d2.png" ][else][mod_b_acc st="00.png" ][endif]

[if exp="f.hat==1" ][chara_mod name="hat" time="0" storage="H/x_1/hat/a1.gif" ]
[elsif exp="f.hat==2" ][chara_mod name="hat" time="0" storage="00.png" ]
[else][chara_mod name="hat" time="0" storage="00.png" ][endif]

[if exp="f.glasses==1" ][mod_glasses st="H/x_1/glass/a1.png" ][elsif exp="f.glasses==2" ][mod_glasses st="H/x_1/glass/a2.png" ]
[elsif exp="f.glasses==3" ][mod_glasses st="H/x_1/glass/a3.png" ][elsif exp="f.glasses==4" ][mod_glasses st="H/x_1/glass/a4.png" ]
[elsif exp="f.glasses==5" ][mod_glasses st="H/x_1/glass/a5.png" ][elsif exp="f.glasses==6" ][mod_glasses st="H/x_1/glass/a6.png" ]
[elsif exp="f.glasses==7" ][mod_glasses st="H/x_1/glass/a7.png" ][elsif exp="f.glasses==8" ][mod_glasses st="H/x_1/glass/a8.png" ]
[elsif exp="f.glasses==9" ][mod_glasses st="H/x_1/glass/a9.png" ][elsif exp="f.glasses==11" ][mod_glasses st="H/x_1/glass/b1.png" ]
[elsif exp="f.glasses==12" ][mod_glasses st="H/x_1/glass/b2.png" ][elsif exp="f.glasses==13" ][mod_glasses st="H/x_1/glass/b3.png" ]
[elsif exp="f.glasses==14" ][mod_glasses st="H/x_1/glass/b4.png" ][elsif exp="f.glasses==15" ][mod_glasses st="H/x_1/glass/b5.png" ]
[elsif exp="f.glasses==16" ][mod_glasses st="H/x_1/glass/b6.png" ][elsif exp="f.glasses==17" ][mod_glasses st="H/x_1/glass/b7.png" ]
[elsif exp="f.glasses==18" ][mod_glasses st="H/x_1/glass/b8.png" ][elsif exp="f.glasses==19" ][mod_glasses st="H/x_1/glass/b9.png" ]
[elsif exp="f.glasses==21" ][mod_glasses st="H/x_1/glass/c1.png" ][elsif exp="f.glasses==22" ][mod_glasses st="H/x_1/glass/c2.png" ]
[elsif exp="f.glasses==23" ][mod_glasses st="H/x_1/glass/c3.png" ][elsif exp="f.glasses==24" ][mod_glasses st="H/x_1/glass/c4.png" ]
[elsif exp="f.glasses==25" ][mod_glasses st="H/x_1/glass/c5.png" ][elsif exp="f.glasses==26" ][mod_glasses st="H/x_1/glass/c6.png" ]
[elsif exp="f.glasses==27" ][mod_glasses st="H/x_1/glass/c7.png" ][elsif exp="f.glasses==28" ][mod_glasses st="H/x_1/glass/c8.png" ]
[elsif exp="f.glasses==29" ][mod_glasses st="H/x_1/glass/c9.png" ][else][mod_glasses st="00.png" ][endif]
[chara_mod name="z-a" time="0" storage="00.png" ]
[set_black]
[h_bg st="H/x_1.jpg" ]
[if exp="f.uncen=='true'"]
[mod_body st="H/x_1/body/uncen/b1.png" ][else][mod_body st="H/x_1/body/b1.png" ][endif]

[hair_fx1][pinx1][hair_bx1][ribbon_x1]
[h_se st="H/se/sx-1.png" ][h_tx st="00.png" ][h_ef st="00.png" ][h_x st="00.png" ]

[chara_show name="hair_b" time="0" wait="true" left="0.1" ]
[chara_show name="ribbon_b" time="0" wait="true" left="0.1" ]
[chara_show name="body" time="0" wait="true" left="0.1" ]
;[chara_show name="arm" time="0" wait="true" left="0.1" ]
[chara_show name="head" time="0" wait="true" left="0.1" ]
[chara_show name="face" time="0" wait="true" left="0.1" ]
[chara_show name="hair_f" time="0" wait="true" left="0.1" ]
[chara_show name="ribbon" time="0" wait="true" left="0.1" ]
[chara_show name="hair_b_" time="0" wait="true" left="0.1" ]
[chara_show name="pin" time="0" wait="true" left="0.1" ]

[chara_show name="b_acc" time="0" wait="true" left="0.1" ]
[chara_show name="hat" time="0" wait="true" left="0.1" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
;[chara_show name="z-a" time="0" wait="true" left="0.1" ]

[chara_show name="cg1" time="0" wait="true" left="0.1" ]
[chara_show name="cg2" time="0" wait="true" left="0.1" ]
[chara_show name="cg3" time="0" wait="true" left="0.1" ]
[chara_show name="cg4" time="0" wait="true" left="0.1" ]
[show_effect][hide_black][return]

;;回想
*scene
[cm][eval exp="f.hist_mode=1" ][show_message_w][bgm_MT][jump target="*x" ]

;;導入
*sexless1
[if exp="f.sexless_anim==1"][jump storage="H/sexless1_old.ks" target="*sexless1"][endif]
[if exp="f.vgf>=1"][else]
[cm]
#System
Hãy xác nhận key ở nút 'nhập key' để chơi được cảnh H của sự kiện này[p_]
#
[eval exp="f.sexless=0"][eval exp="f.sexless_c=0"]
[eval exp="f.act='non'" ][return_bace][endif]
[cm][stop_bgm][show_message_w][set_stand]
…[p][f/c_nt][bg_room][bgm_IF][show_stand]


[syl][if exp="f.lust<=60" ]
[f/c][um_01]Um... [name]...?[p_]
[f/re]Gần đây... Um... anh không hỏi em về việc tham gia cùng anh vào ban đêm, nhưng mà...。[p_]
[f/re]Có phải là anh không có tâm trạng?[lr_]
[f/re]Anh không cần phải giữ mình lại vì em, được chứ?[p_]
[elsif exp="f.lust<=200" ]
[f/cp][um_01]Um, [name]...?[p_]
[f/re]Gần đây... Um... anh không làm chuyện ấy với em, nhưng mà...。[p_]
[f/re]Có phải anh đang chống lại việc quan hệ với em?[lr_]
[f/c]Hay là... anh đã chán em rồi...？[p_]
[elsif exp="f.lust<=1000" ]
[f/cp][um_01]Um, [name]...？[p_]
[f/re]Gần đây... Um... anh không làm chuyện ấy với em, nhưng...…。[lr_]
[f/re][name_h], có phải anh... không có tâm trạng để làm điều ？[p_]
[else]
[f/cp][um_01]Um, [name]...？[p_]
[f/re]Thời gian gần đây…、[um_02]Unm~… Anh đã không [sex_name] với em…。[lr_]
[f/re][name_h]Đã… Không còn muốn [sex_name] với em nưa ư？[p_]
[endif]

[button target="*nade" graphic="ch/act.png" x="0" y="200" ]
[button target="*bed" graphic="ch/sex.png" x="0" y="350" ][s]

*nade
[cm][f/cl_nt][r2_05]Um~…[lr_]
[f/]Có phải anh chỉ không có tâm trạng cho việc đó?[p_]
[f/s]Có phải là... cho nên...。[lr_]
[f/re]Chuyện đó sẽ là điều tốt nhất khi anh có tâm trạng, [name][p_]
[f/scl]Vậy, hãy cùng ngủ với nhau tối nay...。[p_]
[black][stop_bgm]…[p_][day_end]

*bed
[cm][stop_bgm]
[f/p][um_01]Anh sẽ... chiếm lấy em đêm nay chứ？[p_]
[bgm_MT]
[_]（Tôi cởi bỏ quần áo của Sylvie và đặt cô ấy lên giường...。[p_]

;;シーン
*x
[black]…[p]
[call target="*set" ][mod_face st="H/x_1/face/x1.png" ][mod_cg3 st="H/x_1/ef2/breath1.png" ]
[syl][r2_02]Ah、[l][kore_1] [p_name] của [name_h] thật là lớn…♥[p]
[_]（Như lúc tôi đập mạnh cậu nhỏ của mình vào âm đạo của Sylvie, [r]
cô ấy nhìn tôi với một ánh mắt đầy hi vọng.[p]
[syl][um_01]Em xin lỗi... [lr][r2_02]Nhưng thật sự... em rất muốn anh làm điều này với em...♥[p]
[na_1]Em muốn [name_h] hãy… [sex_name] cùng với em…。[p]
[_]（Tôi không thê diễn tả hết sự hứng thú của Sylvie, cô ấy đang trở nên thật ẩm ướt.[lr]
Có lẽ như sự bắt buộc làm chuyện ấy không cần thiết nữa...[p]

[if exp="f.uncen=='true'"]
[mod_body st="H/x_1/body/uncen/b2.png" ][else][mod_body st="H/x_1/body/b2.png" ][endif]

[mod_face st="H/x_1/face/x2.png" ]
[mod_cg3 st="H/x_1/ef2/breath2.png" ]
[se_nloop st="s-wet1.ogg" ]
[h_se st="H/x_1/se/x-2.png" ][h_tx st="H/x_1/tx/x-2.png" ][h_ef st="H/x_1/ef/x-2.png" ][h_x st="H/x_1/x/1.png" ]
[syl][quake_3][r2_09]Aah...![p][l_01]
[p_name] của [name_h]… Đang vào trong em…♥[p]
[_]（Âm đạo của Sylvie dường như thắt chặt hơn bình thường, [r]
và những nước dịch của cô ấy như một chất bôi trơn hoàn hảo.[p]
Âm dạo của cô ấy dễ dàng chấp nhận cậu nhỏ của tôi.[p]

[mod_face st="H/x_1/face/x3.png" ]
[h_se st="H/x_1/se/x-3.png" ][h_tx st="H/x_1/tx/x-3.png" ][h_ef st="H/x_1/ef/x-3.png" ]
[syl][quake_3][r_05]Aah〜... Haa〜...♥[lr][l_05]
[name_h]…♥[p]
Cái này…[chinchin_2][p_name_ex] ~♥ em không thể quên nó được…♥[lr][l_01]
Trong một thời gian dài anh không làm điều này…[manko_de_1][v_name] của em thấy cô đơn lắm…♥[p][l_02]
[_]（Âm dạo của cô rung mạnh mỗi khi tôi đẩy, gửi những làn sóng thoải mái chạy dọc cậu nhỏ của tôi…。[p]

[if exp="f.uncen=='true'"]
[mod_body st="H/x_1/body/uncen/b3.png" ][else][mod_body st="H/x_1/body/b3.png" ][endif]

[mod_face st="H/x_1/face/x3.png" ]
[mod_cg3 st="H/x_1/ef2/ex-x1.png" ]
[se_loop st="l-wet1.ogg" ]
[h_x st="H/x_1/x/2.png" ][h_se st="H/x_1/se/x-4.png" ][h_tx st="H/x_1/tx/x-4.png" ][h_ef st="H/x_1/ef/x-4.png" ]

[_]（Không thể hãm lại được nữa, tôi bắt đầu đẩy mạnh hơn。[p]
[syl][quake_3][r_08]Ah…♥ Điều này… [sex_name_ex]…[v_name_ex]… thật tuyệt…♥[p][l_04]
[_]（Mặc dù trở nên thô hơn trước, Sylvie chỉ thốt nên những tiếng rên rỉ ngọt ngào。[p]
（Tôi vẫn tiếp tục đẩy trong khi tận hưởng sự ấm áp của Sylvie xung quanh cậu nhỏ của mình。[p]
（Mặt của Sylvie dường như ngây ngất trong khi cô tận hưởng cảm giác được tôi làm đầy trong cô ấy。[p]

[if exp="f.uncen=='true'"]
[mod_body st="H/x_1/body/uncen/b4.png" ][else][mod_body st="H/x_1/body/b4.png" ][endif]

[mod_face st="H/x_1/face/x5.png" ]
[mod_cg3 st="H/x_1/ef2/breath3.png" ]

[se_loop st="l-wet2.ogg" ]
[h_se st="H/x_1/se/x-5.png" ][h_tx st="H/x_1/tx/x-5.png" ][h_ef st="H/x_1/ef/x-5.png" ][h_x st="H/x_1/x/3.png" ]

[syl][quake_3][r_21]Ah♥ Aah...♥[p]
[name_h]... Không... Ngay đó là...♥[um_01][p][l_07]
[_]（Tôi bắt đầu xoắn hông một tí, cọ xát bụng của Sylvie từ bên trong。[p]
[syl][quake_3][lc_02]Ah, Em xin lỗi…[lr]
E-Em…[v_name_ex_]、đã…ra！！[p][l_06]
[_]（Có vẻ như Sylvie ngay lập tức lên đỉnh sau khi tôi tấn công vào những điểm nhạy cảm của cô。[p]

[if exp="f.fin_choice==1" ]
[button target="*in" graphic="ch/in.png" x="0" y="200" ]
[button target="*out" graphic="ch/out.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out" ][endif]

*in
[cm]

[if exp="f.uncen=='true'"]
[mod_body st="H/x_1/body/uncen/b5a.png" ][else][mod_body st="H/x_1/body/b5a.png" ][endif]

[mod_face st="H/x_1/face/x6.png" ]
[mod_cg3 st="H/x_1/ef2/ex-x3a.png" ]

[h_se st="H/x_1/se/x-6a.png" ][h_tx st="H/x_1/tx/x-6a.png" ][h_ef st="H/x_1/ef/x-6a.png" ][h_x st="H/x_1/x/4.png" ]
[se_nloop st="fin1.ogg" ]
（Những tiếng rên rỉ ngọt ngào của Sylvie và âm đạo co giật cũng khiến tôi lên đỉnh[p]
[syl][quake_6][lc_05]Un~…[if exp="f.x_speak>=1" ]Shii~…[endif]Mn...Kuuu!!♥!♥♥[quake_3][p][l_03]
[_]（Tôi đâm vào thật sâu có thể trong lúc lên đỉnh, ra thẳng vào âm đạo của Sylvie。[p]
（Âm đạo của Sylvie thắt chặt cậu nhỏ của tôi khi cô ấy ra[r]
cứ như nó muốn vắt hết đi từng giọt tinh dịch ra khỏi tôi。[p]

[mod_face st="H/x_1/face/x7.png" ]
[h_se st="H/x_1/se/x-7a.png" ][h_tx st="H/x_1/tx/x-7.png" ][h_ef st="H/x_1/ef/x-7.png" ][h_x st="H/x_1/x/5.png" ]

[syl][lc_03]Haa〜...♥ Haa〜...♥[p][l_06]

[mod_face st="H/x_1/face/x8.png" ][mod_cg3 st="H/x_1/ef2/ex-x4a.png" ]

Cảm ơn anh... rất nhiều...♥[p]
[um_01]Chúng ta có thể... giữ như thế này một lúc... một lúc nữa được không...♥♥[p][sm_01]
[if exp="f.hist_mode==0" ][eval exp="f.cum=f.cum+1" ][endif]
[jump target="*end" ]

*out
[cm]

[if exp="f.uncen=='true'"]
[mod_body st="H/x_1/body/uncen/b5b.png" ][else][mod_body st="H/x_1/body/b5a.png" ][endif]

[mod_face st="H/x_1/face/x6.png" ]
[mod_cg3 st="H/x_1/ef2/ex-x3b.png" ]

[se_nloop st="squi.ogg" ]
[h_se st="H/x_1/se/x-6b.png" ][h_tx st="H/x_1/tx/x-6b.png" ][h_ef st="H/x_1/ef/x-6b.png" ][h_x st="00.png" ]
（Tiếng rên rỉ ngọt ngào của Sylvie và âm đạo co giật cũng khiến tôi vượt rào.[p]
[syl][quake_3][lc_01]Un~…[if exp="f.x_speak>=1" ]Shii~…[endif]Mn...Kuuu!!♥!♥♥[quake_3][p][l_06]
[_]（Tôi phun ra ngoài như lúc lên đỉnh, rải tinh dịch của tôi khắp người Sylvie。[p]

[mod_face st="H/x_1/face/x7.png" ]
[mod_cg3 st="H/x_1/ef2/ex-x4b.png" ]

[h_se st="H/x_1/se/x-7b.png" ][h_tx st="H/x_1/tx/x-7.png" ][h_ef st="H/x_1/ef/x-7.png" ]
;[chara_mod name="z-a" time="0" storage="H/z1/sx-z.png" ]
[syl][quake_3][lc_03]Haa〜...♥ Fuu〜...♥[quake_3][p][l_03]

[mod_face st="H/x_1/face/x8.png" ]
Cảm ơn anh... rất nhiều...♥[p]
[r2_05]Aah... tinh dịch của [name_h]... thật nhiều quá...♥♥[p][sm_01]
[if exp="f.hist_mode==0" ][eval exp="f.kake=f.kake+1" ][endif]
[jump target="*end" ]

*end
[black][chara_00][stopse]
[if exp="f.hist_mode>=1" ][return_memory][endif]
[eval exp="f.sex=f.sex+1" ][eval exp="f.h_v=f.h_v+3" ]
[eval exp="f.lust=f.lust+5" ][eval exp="f.love=f.love+8" ]
[eval exp="f.heavn=f.heavn+2" ][eval exp="f.act='sex'" ]
[eval exp="f.m_x=1" ][stop_bgm]…[p][day_end]

;;CG

*cg
[cm][call target="*set" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_back tg="*end_cg"][h_next tg="*cg_2"][s]
*cg_2
[cm][call target="*bg2_"]
[h_se st="H/se/sx-2.png" ][h_tx st="H/tx/sx-2.png" ][h_ef st="H/ef/sx-2.png" ][call target="*sx2_"]
[h_back tg="*cg"][h_next tg="*cg_3"][s]
*cg_3
[cm][call target="*bg3_"]
[h_se st="H/se/sx-3.png" ][h_tx st="H/tx/sx-3.png" ][h_ef st="H/ef/sx-3.png" ][call target="*sx3_"]
[h_back tg="*cg_2"][h_next tg="*cg_4"][s]
*cg_4
[cm][call target="*bg4_"]
[h_se st="H/se/sx-4.png" ][h_tx st="H/tx/sx-4.png" ][h_ef st="H/ef/sx-4.png" ][call target="*sx3_"]
[h_back tg="*cg_3"][h_next tg="*cg_5"][s]
*cg_5
[cm][call target="*bg5_"]
[h_se st="H/se/sx-5.png" ][h_tx st="H/tx/sx-5.png" ][h_ef st="H/ef/sx-5.png" ][call target="*sx5_"]
[h_back tg="*cg_4"][h_next tg="*cg_select"][s]
*cg_select
[cm][if exp="f.fin_choice==1" ]
[button target="*in_cg" graphic="ch/in.png" x="0" y="200" ]
[button target="*out_cg" graphic="ch/out.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in_cg" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out_cg" ][endif]

*in_cg
[cm][call target="*bg6a_"]
[h_se st="H/se/sx-6a.png" ][h_tx st="H/tx/sx-6a.png" ][h_ef st="H/ef/sx-6a.png" ][call target="*sx6a_"]
[h_back tg="*cg_5"][h_next tg="*cg_7_in"][s]
*cg_7_in
[cm][call target="*bg7a_"]
[h_se st="H/se/sx-7a.png" ][h_tx st="H/tx/sx-7.png" ][h_ef st="H/ef/sx-7.png" ][h_x st="H/x/sx-7.png" ]
[h_back tg="*in_cg"][h_next tg="*end_cg"][s]

*out_cg
[cm][call target="*bg6b_"]
[h_se st="H/se/sx-6b.png" ][h_tx st="H/tx/sx-6b.png" ][h_ef st="H/ef/sx-6b.png" ][h_x st="00.png" ]
[chara_mod name="z-a" time="0" storage="00.png" ]
[h_back tg="*cg_5"][h_next tg="*cg_7_out"][s]
*cg_7_out
[cm][call target="*bg7b_"]
[h_se st="H/se/sx-7b.png" ][h_tx st="H/tx/sx-7.png" ][h_ef st="H/ef/sx-7.png" ]
[chara_mod name="z-a" time="0" storage="H/z1/sx-z.png" ]
[h_back tg="*out_cg"][h_next tg="*end_cg"][s]

*end_cg
[cm][black][return_memory]
;;------------------------------------------------------------
*sx2_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sx-2.png" ][else]
[h_x st="H/x/sx-2.png" ][endif][return]
*sx3_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sx-3.png" ][else]
[h_x st="H/x/sx-3.png" ][endif][return]
*sx5_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sx-5.png" ][else]
[h_x st="H/x/sx-5.png" ][endif][return]
*sx6a_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sx-6a.png" ][else]
[h_x st="H/x/sx-6a.png" ][endif][return]

*bg1_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/1.jpg" ][else]
[h_bg st="H_x/1.jpg" ][endif][return]
*bg2_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/2.jpg" ][else]
[h_bg st="H_x/2.jpg" ][endif][return]
*bg3_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/3.jpg" ][else]
[h_bg st="H_x/3.jpg" ][endif][return]
*bg4_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/4.jpg" ][else]
[h_bg st="H_x/4.jpg" ][endif][return]
*bg5_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/5.jpg" ][else]
[h_bg st="H_x/5.jpg" ][endif][return]
*bg6a_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/6a.jpg" ][else]
[h_bg st="H_x/6a.jpg" ][endif][return]
*bg6b_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/6b.jpg" ][else]
[h_bg st="H_x/6b.jpg" ][endif][return]
*bg7a_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/7a.jpg" ][else]
[h_bg st="H_x/7a.jpg" ][endif][return]
*bg7b_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/7b.jpg" ][else]
[h_bg st="H_x/7b.jpg" ][endif][return]
*bg8a_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/8a.jpg" ][else]
[h_bg st="H_x/8a.jpg" ][endif][return]
*bg8b_
[if exp="f.uncen=='true'"][h_bg st="H_x/uncen/8b.jpg" ][else]
[h_bg st="H_x/8b.jpg" ][endif][return]

