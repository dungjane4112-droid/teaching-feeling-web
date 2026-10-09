;;set
*set
[mod_win st="o/win/LR.png" ]
[if exp="f.b_acc==1" ][mod_b_acc st="s/b_acc/O/sxx-a1.png" ][elsif exp="f.b_acc==21" ][mod_b_acc st="s/b_acc/O/sxx-b1.png" ]
[elsif exp="f.b_acc==22" ][mod_b_acc st="s/b_acc/O/sxx-b2.png" ][elsif exp="f.b_acc==31" ][mod_b_acc st="s/b_acc/O/sxx-c1.png" ]
[elsif exp="f.b_acc==32" ][mod_b_acc st="s/b_acc/O/sxx-c2.png" ][elsif exp="f.b_acc==41" ][mod_b_acc st="s/b_acc/O/sxx-d1.png" ]
[elsif exp="f.b_acc==42" ][mod_b_acc st="s/b_acc/O/sxx-d2.png" ][else][mod_b_acc st="00.png" ][endif]

[if exp="f.hat==1" ][chara_mod name="hat" time="0" storage="s/hat/O/sxx-a1.png" ]
[elsif exp="f.hat==2" ][chara_mod name="hat" time="0" storage="s/hat/O/sxx-a2.png" ]
[else][chara_mod name="hat" time="0" storage="00.png" ][endif]

[if exp="f.glasses==1" ][mod_glasses st="s/glass/O/sxx-a1.png" ][elsif exp="f.glasses==2" ][mod_glasses st="s/glass/O/sxx-a2.png" ]
[elsif exp="f.glasses==3" ][mod_glasses st="s/glass/O/sxx-a3.png" ][elsif exp="f.glasses==4" ][mod_glasses st="s/glass/O/sxx-a4.png" ]
[elsif exp="f.glasses==5" ][mod_glasses st="s/glass/O/sxx-a5.png" ][elsif exp="f.glasses==6" ][mod_glasses st="s/glass/O/sxx-a6.png" ]
[elsif exp="f.glasses==7" ][mod_glasses st="s/glass/O/sxx-a7.png" ][elsif exp="f.glasses==8" ][mod_glasses st="s/glass/O/sxx-a8.png" ]
[elsif exp="f.glasses==9" ][mod_glasses st="s/glass/O/sxx-a9.png" ][elsif exp="f.glasses==11" ][mod_glasses st="s/glass/O/sxx-b1.png" ]
[elsif exp="f.glasses==12" ][mod_glasses st="s/glass/O/sxx-b2.png" ][elsif exp="f.glasses==13" ][mod_glasses st="s/glass/O/sxx-b3.png" ]
[elsif exp="f.glasses==14" ][mod_glasses st="s/glass/O/sxx-b4.png" ][elsif exp="f.glasses==15" ][mod_glasses st="s/glass/O/sxx-b5.png" ]
[elsif exp="f.glasses==16" ][mod_glasses st="s/glass/O/sxx-b6.png" ][elsif exp="f.glasses==17" ][mod_glasses st="s/glass/O/sxx-b7.png" ]
[elsif exp="f.glasses==18" ][mod_glasses st="s/glass/O/sxx-b8.png" ][elsif exp="f.glasses==19" ][mod_glasses st="s/glass/O/sxx-b9.png" ]
[elsif exp="f.glasses==21" ][mod_glasses st="s/glass/O/sxx-c1.png" ][elsif exp="f.glasses==22" ][mod_glasses st="s/glass/O/sxx-c2.png" ]
[elsif exp="f.glasses==23" ][mod_glasses st="s/glass/O/sxx-c3.png" ][elsif exp="f.glasses==24" ][mod_glasses st="s/glass/O/sxx-c4.png" ]
[elsif exp="f.glasses==25" ][mod_glasses st="s/glass/O/sxx-c5.png" ][elsif exp="f.glasses==26" ][mod_glasses st="s/glass/O/sxx-c6.png" ]
[elsif exp="f.glasses==27" ][mod_glasses st="s/glass/O/sxx-c7.png" ][elsif exp="f.glasses==28" ][mod_glasses st="s/glass/O/sxx-c8.png" ]
[elsif exp="f.glasses==29" ][mod_glasses st="s/glass/O/sxx-c9.png" ][else][mod_glasses st="00.png" ][endif]

[chara_mod name="z-a" time="0" storage="00.png" ]
[set_black][h_bg st="H_xx/1.jpg" ]
[h_se st="H/se/sxx-1.png" ][h_tx st="00.png" ][h_ef st="00.png" ][h_x st="00.png" ]
[chara_show name="b_acc" time="0" wait="true" left="0.1" ]
[chara_show name="hat" time="0" wait="true" left="0.1" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="z-a" time="0" wait="true" left="0.1" ]
[show_effect][hide_black][return]


;;導入
*sexless2
[if exp="f.vgf>=1"][else]
[eval exp="f.sexless=0"][eval exp="f.sexless_c=0"]
[eval exp="f.act='non'" ][return_bace][endif]
[cm][stop_bgm][show_message_w][bgm_IF][set_stand]
…[p][f/cp_nt][bg_room][show_stand]

[syl][f/re]Ano~、[name]…？[p]
[f/re]Có phải anh… vẫn chưa có tâm trạng？[p]

[set_mise][show_mise]
（Sylvie đột nhiên cho tôi xem âm đạo của cô ấy。[p]
（Cô ấy e thẹn run rẩy trong khi nước dịch của cô chảy xuống từ đùi đến chân。[p]

[syl][if exp="f.lust<=80" ]
Em… cơ thể của em cảm thấy thật kì lạ…[p]
Em nghĩ không thể chỉ làm việc ấy một mình là không đủ…[lr]
Cho nên… Um…。[p]
[elsif exp="f.lust<=250" ]
[name_h]、em muốn anh hãy chiếm lấy em…[v_name]、của em thật khó chịu…[p]
[sex_name]… Em có thể… Nhờ anh làm việc đó chứ?[p]
[else]
もう、子宮が…[v_name]切なくて切なくて…[lr]
[name_h] chỗ này của em cảm thấy thật trống trải và khó chịu…。[p]
[p_name_ex], Em cảm thấy như mình sẽ điên lên nếu như em không quan hệ với anh…[r]
Tại sao… [v_name_ex]… Em muốn [sex_name_ex]~ làm ơn…[p]
[endif]

[button target="*nop" graphic="ch/latar.png" x="0" y="200" ]
[button target="*bed" graphic="ch/sex.png" x="0" y="350" ][s]

*nop
[cm][if exp="f.lust<=80" ]
…Em… hiểu[p]
Cho đến khi anh có tâm trạng, [name]… Em sẽ đợi…[p]
…Em chắc chắn… Em chỉ cần phải đợi một lúc nữa thôi。[p]
[elsif exp="f.lust<=250" ]
…Em… hiểu[lr]
Nhưng… Xin anh hãy nhanh lên…。[p]
Làm ơn…[p]
[else]
Không… Em… vẫn phải đợi sao?[p]
…Em… hiểu[p]
Nhưng… Xin anh hãy nhanh lên…。[p]
Nếu không, Em… Em…[p]
[endif]
[black][stop_bgm]…[p][day_end]

;;回想
*scene
[cm][eval exp="f.hist_mode=1" ][show_message_w][jump target="*bed" ]

;;シーン
*bed
[cm][black][bgm_MT][call target="*set" ]
[_]（Không thể chống lại Sylvie nữa、[r]
Tôi cởi bỏ quần áo cô ấy và đặt cô lên giường。[p]
[syl]Ahh… [name_h] sẽ chiếm lấy em…♥[p]
Cảm ơn♥ Cảm ơn anh♥[p]
[_]（Hơi thở của cô ấy như thô bạo hơn, và tôi đâm vào âm đạo trông mong của cô ấy chỉ trong 1 bước。[p]

[h_bg st="H_xx/2.jpg" ][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sxx-2.png" ][h_tx st="H/tx/sxx-2.png" ][h_ef st="H/ef/sxx-2.png" ][h_x st="H/x/sxx-2.png" ]
[syl]Haa… Haaaa…♥!♥[p]
[_]（Âm đạo của Sylvie thật nóng và chào đón cứ như dụ dỗ cậu nhỏ của tôi。[p]
[syl]Aaah… Ah…♥♥♥ của [name_h]…♥!♥♥[p]
Cậu nhỏ của [name_h]♥ Đang ở trong…♥♥♥[p]

[h_bg st="H_xx/3.jpg" ]
[h_se st="H/se/sxx-3.png" ][h_tx st="H/tx/sxx-3.png" ][h_ef st="H/ef/sxx-3.png" ][h_x st="H/x/sxx-3.png" ]
[syl]Haaa♥ Mmn…!!♥!♥♥[p]
[_]（Mặc dù không di chuyển gì, cơ thể của Sylvie bắt đầu rung động、[r]
và âm đạo của cô ép thật chặt。[p]
（Có vẻ như cô ấy trở nên như thế chỉ vì tôi đặt nó vào trong。[p]

[h_bg st="H_xx/4.jpg" ]
[h_se st="H/se/sxx-4.png" ][h_tx st="00.png" ][h_ef st="H/ef/sxx-4.png" ][h_x st="H/x/sxx-4.png" ]
Haa♥… Hiii…!♥[p]
Em… Em… xin lỗi…♥[lr]
Cũng đã một thời gian dài…♥ Cơ thể của em… 
[if exp="f.x_speak>=1" ][lr][v_name_ex]cảm giác thật lạ…♥[endif][p]


[h_bg st="H_xx/5.jpg" ]
[syl]Nhưng♥ Em…[v_name_ex], ổn, cho nên…♥[lr]
Làm ơn…[sex_name_ex]…hãy tiếp tục…♥♥[p]
[_]（Tôi bất ngờ bởi Sylvie yêu cầu tôi tiếp tục trong khi cô vẫn đang run rẩy, [r]
và tôi bắt đầu đâm vào mạnh hơn[p]

[h_bg st="H_xx/6.jpg" ][se_loop st="l-wet2.ogg" ]
[h_se st="H/se/sxx-6.png" ][h_tx st="H/tx/sxx-6.png" ][h_ef st="H/ef/sxx-6.png" ][h_x st="H/x/sxx-6.png" ]
[syl]Ah〜♥♥ Aaaah〜♥!♥♥[p]
[_]（Tôi bắt đầu đập vào tử cung của Sylvie, thứ vẫn chưa ngừng giật bởi lần lên đỉnh trước của Sylvie, [r]
và Sylvie thốt ra những tiếng rên rỉ ngọt ngào mỗi khi tôi đập vào tử cung cô[p]

[h_bg st="H_xx/7.jpg" ]
[syl]Điều này…！♥Em nghĩ điều này thật tệ…♥Nhưng em không thể chịu đựng được nữa…！♥！♥♥[p]

[h_bg st="H_xx/8.jpg" ]
[syl]Thật tuyệt vời♥!♥♥ Điều này thật sự rất tuyệt♥!♥♥[r]
[name_h]…♥!♥♥[p]
[_]（Những tiếng động ẩm ướt có thể được nghe thấy, thật ngọt ngào và cả những nước dịch tình yêu chảy ra mỗi khi hông tôi chạm vào cô ấy。[p]
[h_bg st="H_xx/9.jpg" ]
[syl]Nữa…♥ Nữa đi…♥♥ Khuấy động em nữa đi…♥!♥♥[p]
[_]（Âm đạo co giật của Sylvie gửi những làn sóng thoải mái chạy dọc cậu nhỏ của tôi。[p]
（Có vẻ như cô ấy vẫn chưa bình tĩnh sau đợt lên đỉnh trước của cô。[p]

[h_bg st="H_xx/10.jpg" ]
[syl]Aaah…♥ Em… lại ra nữa rồi!♥♥ Em sắp… ra!♥!♥♥[p]
[if exp="f.fin_choice==1" ]
[button target="*in" graphic="ch/in.png" x="0" y="200" ]
[button target="*out" graphic="ch/out.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out" ][endif]

*in
[cm][h_bg st="H_xx/11a.jpg" ][se_nloop st="fin1.ogg" ][if exp="f.hist_mode==0" ][eval exp="f.cum=f.cum+1" ][endif]
[h_se st="H/se/sxx-11a.png" ][h_tx st="H/tx/sxx-11.png" ][h_ef st="H/ef/sxx-11.png" ][h_x st="H/x/sxx-11.png" ]
Ra…♥ em đang ra…!!!♥!♥♥![p]
[_]（Sylvie nghiến chặt răng cô trong khi âm dạo đang thắt kín[r]
Và không thể chịu được lâu hơn tôi thổi những gì có thể vào bên trong cô。[p]

[h_bg st="H_xx/12a.jpg" ]
[h_se st="H/se/sxx-12.png" ][h_tx st="H/tx/sxx-12.png" ][h_ef st="H/ef/sxx-12.png" ][h_x st="H/x/sxx-12.png" ]
Ah゛〜…♥♥a゛〜…♥！♥♥[p]
[_]（Trông thấy biểu hiện thoải mái của Sylvie[r]
thay vì yếu đuối, tôi bắt đầu làm mạnh hơn…。[p]
（…Có lẽ như chỉ một lần là chưa đủ sau khi chưa làm điều ấy suốt thời gian dài。[p]

[h_bg st="H_xx/13.jpg" ]
[syl]C-Có lẽ nào…Anh vẫn… muốn tiếp tục ư?♥[r]
[v_name_ex], Em nghĩ… E-em sẽ điên mất thôi…。[p]
Nhưng,…♥ Xin hãy tiếp tục đi…♥♥[p_name_ex] làm ơn…♡♡[p]

[h_bg st="H_xx/14.jpg" ][se_loop st="l-wet2.ogg" ]
[h_se st="H/se/sxx-14.png" ][h_tx st="H/tx/sxx-14.png" ][h_ef st="H/ef/sxx-14.png" ][h_x st="H/x/sxx-14.png" ]
Ah〜 ♥♥ Aaah〜♥!♥♥[p]
[black]
[_]（Chỉ một lần là chưa đủ sau tất cả, và tôi bắt đầu quan hệ với Sylvie một lúc nữa。[p]
[jump target="*end" ]

*out
[cm][h_bg st="H_xx/11b.jpg" ][se_nloop st="squi.ogg" ][if exp="f.hist_mode==0" ][eval exp="f.kake=f.kake+1" ][endif]
[h_se st="H/se/sxx-11b.png" ][h_x st="00.png" ]
[chara_mod name="z-a" time="0" storage="H/z1/sxx-1.png" ]
Ra…♥ em Đang ra…!!!♥!♥♥![p]
[_]（Sylvie nghiến chặt răng trong khi âm đạo cô ấy đang thắt kín[r]
Và tôi đột ngột kéo ra, rải tinh dịch của tôi khắp người Sylvie。[p]

[h_bg st="H_xx/12b.jpg" ]
[h_se st="H/se/sxx-12.png" ][h_tx st="H/tx/sxx-12.png" ][h_ef st="H/ef/sxx-12.png" ]
[chara_mod name="z-a" time="0" storage="H/z1/sxx-2.png" ]
[_]（Trông thấy biểu hiện thoải mái của Sylvie[r]
thay vì yếu đuối, tôi bắt đầu làm mạnh hơn…。[p]
（…Có lẽ như chỉ một lần là chưa đủ sau khi chưa làm điều ấy suốt thời gian dài。[p]

[h_bg st="H_xx/13.jpg" ][se_nloop st="s-wet1.ogg" ]
（Tôi cho cậu nhỏ của mình vào bên trong cô ấy 1 lần nữa。[p]
[syl]C-Có lẽ nào…Anh vẫn… muốn tiếp tục ư?♥[r]
[v_name_ex], Em nghĩ… E-em sẽ điên mất thôi…。[p]
Nhưng, làm ơn…♥ Xin hãy tiếp tục đi…♥♥ [p_name_ex] Làm ơn…♥♥[p]

[h_bg st="H_xx/14.jpg" ][se_loop st="l-wet2.ogg" ]
[h_se st="H/se/sxx-14.png" ][h_tx st="H/tx/sxx-14.png" ][h_ef st="H/ef/sxx-14.png" ][h_x st="H/x/sxx-6.png" ]
Ah〜 ♥♥ Aaah〜♥!♥♥[p]
[black]
[_]Chỉ một lần là chưa đủ sau tất cả, và tôi bắt đầu quan hệ với Sylvie một lúc nữa。[p]
[jump target="*end" ]

*end
[if exp="f.hist_mode>=1" ][return_memory][endif]

[eval exp="f.sex=f.sex+2" ][eval exp="f.h_v=f.h_v+7" ]
[eval exp="f.lust=f.lust+10" ][eval exp="f.love=f.love+13" ]
[eval exp="f.heavn=f.heavn+5" ][eval exp="f.act='sex'" ]
[eval exp="f.m_xx=1" ]
[stop_bgm]…[p][stop_se][day_end]

;;CG

*cg
[cm][black][set_mise][show_mise]
[mod_win st="o/win/LR.png" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_back tg="*end_cg"][h_next tg="*cg_2"][s]
*cg_2
[cm][black][call target="*set" ][h_bg st="H_xx/2.jpg" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[h_se st="H/se/sxx-2.png" ][h_tx st="H/tx/sxx-2.png" ][h_ef st="H/ef/sxx-2.png" ][h_x st="H/x/sxx-2.png" ]
[h_back tg="*cg"][h_next tg="*cg_3"][s]
*cg_3
[cm][h_bg st="H_xx/3.jpg" ]
[h_se st="H/se/sxx-3.png" ][h_tx st="H/tx/sxx-3.png" ][h_ef st="H/ef/sxx-3.png" ][h_x st="H/x/sxx-3.png" ]
[h_back tg="*cg_2"][h_next tg="*cg_4"][s]
*cg_4
[cm][h_bg st="H_xx/4.jpg" ]
[h_se st="H/se/sxx-4.png" ][h_tx st="00.png" ][h_ef st="H/ef/sxx-4.png" ][h_x st="H/x/sxx-4.png" ]
[h_back tg="*cg_3"][h_next tg="*cg_5"][s]
*cg_5
[cm][h_bg st="H_xx/5.jpg" ]
[h_se st="H/se/sxx-4.png" ][h_tx st="00.png" ][h_ef st="H/ef/sxx-4.png" ][h_x st="H/x/sxx-4.png" ]
[h_back tg="*cg_4"][h_next tg="*cg_6"][s]
*cg_6
[cm][h_bg st="H_xx/6.jpg" ]
[h_se st="H/se/sxx-6.png" ][h_tx st="H/tx/sxx-6.png" ][h_ef st="H/ef/sxx-6.png" ][h_x st="H/x/sxx-6.png" ]
[h_back tg="*cg_5"][h_next tg="*cg_7"][s]
*cg_7
[cm][h_bg st="H_xx/7.jpg" ]
[h_back tg="*cg_6"][h_next tg="*cg_8"][s]
*cg_8
[cm][h_bg st="H_xx/8.jpg" ]
[h_back tg="*cg_7"][h_next tg="*cg_9"][s]
*cg_9
[cm][h_bg st="H_xx/9.jpg" ]
[h_back tg="*cg_8"][h_next tg="*cg_10"][s]
*cg_10
[cm][h_bg st="H_xx/10.jpg" ]
[h_se st="H/se/sxx-6.png" ][h_tx st="H/tx/sxx-6.png" ][h_ef st="H/ef/sxx-6.png" ][h_x st="H/x/sxx-6.png" ]
[chara_mod name="z-a" time="0" storage="00.png" ]
[h_back tg="*cg_9"][h_next tg="*cg_select"][s]
*cg_select
[cm]
[if exp="f.fin_choice==1" ]
[button target="*in_cg" graphic="ch/in.png" x="0" y="200" ]
[button target="*out_cg" graphic="ch/out.png" x="0" y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump target="*in_cg" ]
[elsif exp="f.fin_in_out==0" ][jump target="*out_cg" ][endif]

*in_cg
[cm][h_bg st="H_xx/11a.jpg" ]
[h_se st="H/se/sxx-11a.png" ][h_tx st="H/tx/sxx-11.png" ][h_ef st="H/ef/sxx-11.png" ][h_x st="H/x/sxx-11.png" ]
[h_back tg="*cg_10"][h_next tg="*cg_12_in"][s]
*cg_12_in
[cm][h_bg st="H_xx/12a.jpg" ]
[h_se st="H/se/sxx-12.png" ][h_tx st="H/tx/sxx-12.png" ][h_ef st="H/ef/sxx-12.png" ][h_x st="H/x/sxx-12.png" ]
[h_back tg="*in_cg"][h_next tg="*cg_13_in"][s]
*cg_13_in
[cm][h_bg st="H_xx/13.jpg" ]
[h_se st="H/se/sxx-12.png" ][h_tx st="H/tx/sxx-12.png" ][h_ef st="H/ef/sxx-12.png" ][h_x st="H/x/sxx-12.png" ]
[h_back tg="*cg_12_in"][h_next tg="*cg_14_in"][s]
*cg_14_in
[cm][h_bg st="H_xx/14.jpg" ]
[h_se st="H/se/sxx-14.png" ][h_tx st="H/tx/sxx-14.png" ][h_ef st="H/ef/sxx-14.png" ][h_x st="H/x/sxx-14.png" ]
[h_back tg="*cg_13_in"][h_next tg="*end_cg"][s]

*out_cg
[cm][h_bg st="H_xx/11b.jpg" ]
[h_se st="H/se/sxx-11b.png" ][h_x st="00.png" ]
[chara_mod name="z-a" time="0" storage="H/z1/sxx-1.png" ]
[h_back tg="*cg_10"][h_next tg="*cg_12_out"][s]
*cg_12_out
[cm][h_bg st="H_xx/12b.jpg" ]
[h_se st="H/se/sxx-12.png" ][h_tx st="H/tx/sxx-12.png" ][h_ef st="H/ef/sxx-12.png" ]
[chara_mod name="z-a" time="0" storage="H/z1/sxx-2.png" ]
[h_back tg="*out_cg"][h_next tg="*cg_13_out"][s]
*cg_13_out
[cm][h_bg st="H_xx/13.jpg" ]
[h_se st="H/se/sxx-12.png" ][h_tx st="H/tx/sxx-12.png" ][h_ef st="H/ef/sxx-12.png" ]
[chara_mod name="z-a" time="0" storage="H/z1/sxx-2.png" ]
[h_back tg="*cg_12_out"][h_next tg="*cg_14_out"][s]
*cg_14_out
[cm][h_bg st="H_xx/14.jpg" ]
[h_se st="H/se/sxx-14.png" ][h_tx st="H/tx/sxx-14.png" ][h_ef st="H/ef/sxx-14.png" ][h_x st="H/x/sxx-6.png" ]
[h_back tg="*cg_13_out"][h_next tg="*end_cg"][s]
*end_cg
[cm][black][return_memory]
