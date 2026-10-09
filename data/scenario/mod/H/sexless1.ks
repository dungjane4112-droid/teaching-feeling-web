
*sexless1
[cm][stop_bgm][show_message_w][set_stand]
…[p_][f/c_nt][bg_room][bgm_IF][show_stand]

#Sylvie
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1" ]
[f/scp]Um... [name] à[p_]
[f/sclcp]Dù đã quen rồi nhưng...tự nhiên em vẫn thấy hồi hộp ạ!♥[p_]
[f/sscp]Chúng ta sẽ làm luôn bây giờ nhỉ!♥[lr_]
[f/ssp]mong anh hãy nhẹ nhàng với em ạ!♥♥♥[sm_05][p_]
[elsif exp="f.talk==2" ]
[f/cp]Um... [name] à[p_][f/scp]
Dù đã quen rồi nhưng...tự nhiên em vẫn thấy hồi hộp lắm ạ![p_][f/sclcp]
Chúng ta sẽ làm luôn bây giờ nhỉ![lr_][f/ssp]
Xin anh hãy nhẹ nhàng với em thôi ạ ♥♥♥♥![sm_09][p_]
[else]
[f/cp]
Um... [name] à[p_][f/cp]
Tự nhiên em thấy hồi hộp ạ![p_][f/scp]
Chúng ta sẽ làm luôn bây giờ chứ![lr_][f/sscp]
Anh hãy nhẹ nhàng với em thôi nhé ♥♥♥![sm_05][p_]
[endif]
[jump  target="*bed" ]
;--------------------------------------------------------------------------------------------
*bed
[cm]
[black]
[set_nade]
[f/sp_nt]
[call storage="mod/game/game1_win.ks" target="*show_nade"]
[bg  time="100"  method="crossfade"  storage="bg/bed.jpg" ]
#Sylvie
[f/cp][um_01][name]...[l_][f/clcp]Làm ơn...[p_]
[f/clp_nt][k_01]*kiss*...[p_]
#
(Tôi lại gần và hôn Sylvie.[p_]
[k_02][f/sclcp_nt](Cô ấy ngay lập tức cuốn lấy lưỡi tôi khi tôi đưa nó vào trong miệng cô ấy.[p]
#Sylvie
[r_01]Umm~♥♥♥![f/sq_nt][p_]
[stop_bgm]
[f/sq]Em đã sẵn sàng rồi [um_10][p_]
[bgm_MT]
;[eval exp="f.dress=0"][eval exp="f.neck=0"]
[chara_mod name="neck" time="300" storage="00.png" ]
[chara_mod name="dress" time="0" storage="00.png" ]
[chara_mod name="sleeve" time="0" storage="00.png" ]
[chara_mod name="sleeve_b" time="0" storage="00.png" ]
[chara_mod name="under_b" time="0" storage="00.png" ]
[chara_mod name="under_p" time="0" storage="00.png" ]
#
（Tôi cởi bỏ quần áo của Sylvie và đặt cô ấy lên giường...[p_]
[black]…[p_]
[h_se st="00.png" ][h_tx st="00.png" ][h_ef st="00.png" ]
[chara_show name="se" time="0" wait="true" left="0.1" ]
[chara_show name="tx" time="0" wait="true" left="0.1" ]
[chara_show name="ef" time="0" wait="true" left="0.1" ]


[if exp="f.uncen=='true'"][bg  time="500"  method="crossfade"  storage="H_x/uncen/1.jpg" ][else]
[bg  time="500"  method="crossfade"  storage="H_x/1.jpg" ][endif]
#Sylvie
[u_03]Ah~... [name], của anh thật lớn...♥[lr_]
Em muốn nó...[p_]

#
（Những lúc tôi khẽ đập cậu nhỏ của mình vào cô bé của Sylvie, [r]
cô ấy nhìn tôi với một ánh mắt đầy ham muốn.[p_]
#Sylvie
[na_1]Em xin lỗi... [lr_]Nhưng thật sự... em rất muốn anh làm điều này với em...♥[p_]
Em muốn anh...[naka_1]cho nó vào trong em, [name]...[p_]
#
（Sylvie đã trở lên thật ẩm ướt, âm đạo của cô ấy nóng dần lên, hai cập môi không ngừng khép rồi lại mở.[lr_]
（Có lẽ cô ấy đã không thể chịu đựng thêm nữa...[p_]
[if exp="f.uncen=='true'"][bg  time="500"  method="crossfade"  storage="H_x/uncen/8b.jpg" ][else]
[bg  time="500"  method="crossfade"  storage="H_x/8b.jpg" ][endif]
[if exp="f.uncen=='true'"][bg  time="500"  method="crossfade"  storage="H_x/uncen/2.jpg" ][else]
[bg  time="500"  method="crossfade"  storage="H_x/2.jpg" ][endif]
[if exp="f.uncen=='true'"][bg  time="500"  method="crossfade"  storage="H_x/uncen/3.jpg" ][else]
[bg  time="500"  method="crossfade"  storage="H_x/3.jpg" ][endif]
[if exp="f.uncen=='true'"][bg  time="500"  method="crossfade"  storage="H_x/uncen/4.jpg" ][else]
[bg  time="300"  method="crossfade"  storage="H_x/4.jpg" ][endif]
[h_se st="H/se/sx-4.png" ][h_tx st="H/tx/sx-4.png" ][h_ef st="H/ef/sx-4.png" ]
[if exp="f.uncen=='true'"][bg  time="500"  method="crossfade"  storage="H_x/uncen/5.jpg" ][else]
[bg  time="500"  method="crossfade"  storage="H_x/5.jpg" ][endif]
[playse  storage="s-wet1.ogg"  clear="true" ]
#Sylvie
[u_02]Ah...![p_]
Của [name]... đang đi vào trong em...♥ [naka_2][p_]
#
[l_04]
（Âm đạo của Sylvie dường như thắt chặt hơn bình thường, [r]
và những nước dịch của cô ấy như một chất bôi trơn hoàn hảo.[p_]
（Âm dạo của cô ấy dễ dàng chấp nhận cậu nhỏ của tôi.[p_]
[h_se st="00.png" ][h_tx st="00.png" ][h_ef st="00.png" ]
[bg  method="crossfade"  storage="anhdong/syl-1.gif" time="200"]
#Sylvie
[stopse][u_01]Aah〜... Haa〜...♥[lr_]
[name]...♥[p_]
E..em ... luôn muôn... cảm giác này...[kimochii_4][lr_]
Khi anh không làm điều ấy trong suốt một thời gian dài... [manko_ga_1]Em gần như cảm thấy cô đơn ở ngay đây...♥[p_]
#
[l_03]
（Âm dạo của cô rung mạnh mỗi khi tôi đẩy, gửi những làn sóng thoải mái chạy dọc cậu nhỏ của tôi...[p_]

[bg time="800" method="crossfade"  storage="anhdong/syl-2.gif" ]
#
（Không thể hãm lại được nữa, tôi bắt đầu đẩy mạnh hơn[p_]
#Sylvie
[stopse][r_07]
Ahh...♥ nó... thật... tuyệt...♥[stopse][l_02][p_]

#
（Mặc dù tôi trở nên thô bạo hơn trước nhưng Sylvie chỉ thốt nên những tiếng rên rỉ ngọt ngào.[p_]

（Tôi vẫn tiếp tục đẩy trong khi tận hưởng sự ấm áp của Sylvie xung quanh cậu nhỏ của mình.[p_]
[bg  method="crossfade"  storage="anhdong/syl-3.gif" time="400"]
（Mặt của Sylvie dường như ngây ngất trong khi cô tận hưởng cảm giác được tôi lấp đầy trong cô.[p_]
#Sylvie
[stopse][r_09]Ah♥ Aah...♥[p_]
[name]...[dame_1] Không... chỗ đó là...♥[stopse][l_01][p_]
#
（Tôi bắt đầu xoắn hông một tí, cọ xát bụng của Sylvie từ bên trong.[p_]
[if exp="f.uncen=='true'"][bg  time="300"  method="crossfade"  storage="H_x/uncen/6a.jpg" ][else]
[bg  time="300"  method="crossfade"  storage="H_x/6a.jpg" ][endif]
[h_se st="H/se/sx-4.png" ][h_tx st="H/tx/sx-4.png" ][h_ef st="H/ef/sx-4.png" ]
[playse  storage="s-wet1.ogg"  clear="true" ]
#Sylvie
[stopse][lc_03][quake_3]Ah, Em xin lỗi..[lr_]
Em... [asoko_de_2]đã ra mất rồi...!![p_][l_03]
[if exp="f.uncen=='true'"][bg  time="300"  method="crossfade"  storage="H_x/uncen/5.jpg" ][else]
[bg  time="300"  method="crossfade"  storage="H_x/5.jpg" ][endif]
#
（Có vẻ như Sylvie ngay lập tức lên đỉnh sau khi tôi tấn công vào những điểm nhạy cảm của cô.[p_]
[stopse]
[if exp="f.fin_choice==1" ]
[button  target="*in"  graphic="ch/in.png"  x="0"  y="200" ]
[button  target="*out"  graphic="ch/out.png"  x="0"  y="350" ][s]
[elsif exp="f.fin_in_out==1" ][jump  target="*in" ]
[elsif exp="f.fin_in_out==0" ][jump  target="*out" ][endif]

*in
[cm]
[if exp="f.uncen=='true'"][bg  time="300"  method="crossfade"  storage="H_x/uncen/6a.jpg" ][else]
[bg  time="300"  method="crossfade"  storage="H_x/6a.jpg" ][endif]
[h_se st="H/se/sx-6a.png" ][h_tx st="H/tx/sx-6a.png" ][h_ef st="H/ef/sx-6a.png" ]
[playse  storage="fin1.ogg"  clear="true" ]
（Những tiếng rên rỉ ngọt ngào của Sylvie và âm đạo co giật cũng khiến tôi lên đỉnh[p_]
#Sylvie
[stopse][lc_03]Mn...Kuuu!!♥!♥♥[p_][sugoi_3]
[if exp="f.uncen=='true'"][bg  time="300"  method="crossfade"  storage="H_x/uncen/7a.jpg" ][else]
[bg  time="300"  method="crossfade"  storage="H_x/7a.jpg" ][endif]
#
（Tôi đâm vào thật sâu có thể trong lúc lên đỉnh, ra thẳng vào âm đạo của Sylvie.[p_]
[quake_3][u_01]（Âm đạo của Sylvie thắt chặt cậu nhỏ của tôi khi cô ấy ra, [r]
cứ như nó muốn vắt hết đi từng giọt tinh dịch ra khỏi tôi.[p_]
[if exp="f.uncen=='true'"][bg  time="300"  method="crossfade"  storage="H_x/uncen/7a.jpg" ][else]
[bg  time="300"  method="crossfade"  storage="H_x/7a.jpg" ][endif]
[h_se st="H/se/sx-7a.png" ][h_tx st="H/tx/sx-7.png" ][h_ef st="H/ef/sx-7.png" ][h_x st="H/x/sx-7.png" ]
#Sylvie
[lc_03][quake_3]Haa〜...♥ Haa〜...♥[p_]

[if exp="f.uncen=='true'"][bg  time="400"  method="crossfade"  storage="H_x/uncen/8a.jpg" ][else]
[bg  time="400"  method="crossfade"  storage="H_x/8a.jpg" ][endif]
[stopse]Cảm ơn anh... rất nhiều...[suki_1]♥[p_]
Chúng ta có thể...[lc_04] giữ như thế này một lúc... một lúc nữa được không...♥♥[p_]
[eval exp="f.cum=f.cum+1" ]
[jump  target="*end" ]

*out
[cm]
[if exp="f.uncen=='true'"][bg  time="300"  method="crossfade"  storage="H_x/uncen/6b.jpg" ][else]
[bg  time="300"  method="crossfade"  storage="H_x/6b.jpg" ][endif]
[h_se st="H/se/sx-6b.png" ][h_tx st="H/tx/sx-6b.png" ][h_ef st="H/ef/sx-6b.png" ][h_x st="00.png" ]
[playse  storage="squi.ogg"  clear="true" ]
（Tiếng rên rỉ ngọt ngào của Sylvie và âm đạo co giật cũng khiến tôi vượt rào.[p_]
#Sylvie
[stopse][lc_03]Mn...Kuuu!!♥!♥♥[p_]
#
（Tôi phun ra ngoài như lúc lên đỉnh, rải tinh dịch của tôi khắp người Sylvie.[p_]

[if exp="f.uncen=='true'"][bg  time="300"  method="crossfade"  storage="H_x/uncen/7b.jpg" ][else]
[bg  time="300"  method="crossfade"  storage="H_x/7b.jpg" ][endif]
[h_se st="H/se/sx-7b.png" ][h_tx st="H/tx/sx-7.png" ][h_ef st="H/ef/sx-7.png" ]
#Sylvie
[l_04]Haa〜...♥ Fuu〜...♥[p_]

[if exp="f.uncen=='true'"][bg  time="400"  method="crossfade"  storage="H_x/uncen/8b.jpg" ][else]
[bg  time="400"  method="crossfade"  storage="H_x/8b.jpg" ][endif]
[stopse]Cảm ơn anh... rất nhiều...♥[suki_1][p_]
Aah... [lc_04]tinh dịch của [name]... thật nhiều quá...♥♥[p_]
[eval exp="f.kake=f.kake+1" ]
[jump  target="*end" ]

*end
[black][chara_00][stopse][eval exp="f.sex=f.sex+1" ][eval exp="f.h_v=f.h_v+3" ]
[eval exp="f.lust=f.lust+5" ][eval exp="f.love=f.love+8" ]
[eval exp="f.heavn=f.heavn+2" ][eval exp="f.act='sex'" ]
[eval exp="f.m_x=1" ][stop_bgm]…[p_]
[cm][set_sit][set_time][show_sit]
[bgm_SG][f/p_nt]
#Sylvie
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
[f/sp][um_01]Um~~♥ [name][lr_]
[f/clp]Anh thấy khá hơn chưa?♥♥[p_]
[f/sclp] Vì em luôn ở bên anh nên anh đừng bao giờ kiềm chế nữa nhé!♥♥♥[p_][f/sq_nt][sm_05][after_talk]
[else]
[f/sp][um_01]Um~~♥ [name][lr_]
[f/sclp]Vừa rồi... anh làm thật tuyệt đó[p_]
[f/clp]Anh thấy khá hơn chưa?♥♥[p_]
[f/sclp] Vì em luôn ở bên anh nên anh đừng bao giờ kiềm chế nhé!♥♥♥[p_][f/sq_nt][sm_05][after_talk][endif]

