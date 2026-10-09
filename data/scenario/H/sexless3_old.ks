;;set
*set
[mod_win st="o/win/LR.png" ]
[if exp="f.b_acc==1" ][mod_b_acc st="s/b_acc/O/sxxx-a1.png" ][elsif exp="f.b_acc==21" ][mod_b_acc st="s/b_acc/O/sxxx-b1.png" ]
[elsif exp="f.b_acc==22" ][mod_b_acc st="s/b_acc/O/sxxx-b2.png" ][elsif exp="f.b_acc==31" ][mod_b_acc st="s/b_acc/O/sxxx-c1.png" ]
[elsif exp="f.b_acc==32" ][mod_b_acc st="s/b_acc/O/sxxx-c2.png" ][elsif exp="f.b_acc==41" ][mod_b_acc st="s/b_acc/O/sxxx-d1.png" ]
[elsif exp="f.b_acc==42" ][mod_b_acc st="s/b_acc/O/sxxx-d2.png" ][else][mod_b_acc st="00.png" ][endif]

[if exp="f.hat==1" ][chara_mod name="hat" time="0" storage="s/hat/O/sxxx-a1.png" ]
[elsif exp="f.hat==2" ][chara_mod name="hat" time="0" storage="s/hat/O/sxxx-a2.png" ]
[else][chara_mod name="hat" time="0" storage="00.png" ][endif]

[if exp="f.glasses==1" ][mod_glasses st="s/glass/O/sxxx-a1.png" ][elsif exp="f.glasses==2" ][mod_glasses st="s/glass/O/sxxx-a2.png" ]
[elsif exp="f.glasses==3" ][mod_glasses st="s/glass/O/sxxx-a3.png" ][elsif exp="f.glasses==4" ][mod_glasses st="s/glass/O/sxxx-a4.png" ]
[elsif exp="f.glasses==5" ][mod_glasses st="s/glass/O/sxxx-a5.png" ][elsif exp="f.glasses==6" ][mod_glasses st="s/glass/O/sxxx-a6.png" ]
[elsif exp="f.glasses==7" ][mod_glasses st="s/glass/O/sxxx-a7.png" ][elsif exp="f.glasses==8" ][mod_glasses st="s/glass/O/sxxx-a8.png" ]
[elsif exp="f.glasses==9" ][mod_glasses st="s/glass/O/sxxx-a9.png" ][elsif exp="f.glasses==11" ][mod_glasses st="s/glass/O/sxxx-b1.png" ]
[elsif exp="f.glasses==12" ][mod_glasses st="s/glass/O/sxxx-b2.png" ][elsif exp="f.glasses==13" ][mod_glasses st="s/glass/O/sxxx-b3.png" ]
[elsif exp="f.glasses==14" ][mod_glasses st="s/glass/O/sxxx-b4.png" ][elsif exp="f.glasses==15" ][mod_glasses st="s/glass/O/sxxx-b5.png" ]
[elsif exp="f.glasses==16" ][mod_glasses st="s/glass/O/sxxx-b6.png" ][elsif exp="f.glasses==17" ][mod_glasses st="s/glass/O/sxxx-b7.png" ]
[elsif exp="f.glasses==18" ][mod_glasses st="s/glass/O/sxxx-b8.png" ][elsif exp="f.glasses==19" ][mod_glasses st="s/glass/O/sxxx-b9.png" ]
[elsif exp="f.glasses==21" ][mod_glasses st="s/glass/O/sxxx-c1.png" ][elsif exp="f.glasses==22" ][mod_glasses st="s/glass/O/sxxx-c2.png" ]
[elsif exp="f.glasses==23" ][mod_glasses st="s/glass/O/sxxx-c3.png" ][elsif exp="f.glasses==24" ][mod_glasses st="s/glass/O/sxxx-c4.png" ]
[elsif exp="f.glasses==25" ][mod_glasses st="s/glass/O/sxxx-c5.png" ][elsif exp="f.glasses==26" ][mod_glasses st="s/glass/O/sxxx-c6.png" ]
[elsif exp="f.glasses==27" ][mod_glasses st="s/glass/O/sxxx-c7.png" ][elsif exp="f.glasses==28" ][mod_glasses st="s/glass/O/sxxx-c8.png" ]
[elsif exp="f.glasses==29" ][mod_glasses st="s/glass/O/sxxx-c9.png" ][else][mod_glasses st="00.png" ][endif][return]

;;回想
*scene
[cm][eval exp="f.hist_mode=1" ][show_message_w]
;[jump target="*bed" ]

;;シーン
*sexless3
[if exp="f.vgf>=1"][else]
[eval exp="f.sexless=0"][eval exp="f.sexless_c=0"]
[eval exp="f.act='non'" ][return_bace][endif]
[cm][stop_bgm][black]…[p][bgm_MT][call target="*set" ]

[_]（…Tôi thức dậy vào nửa đêm. Phần dưới của cơ thế tôi cảm thấy hơi lạ。[p]
（Tôi không hề cảm thấy chiếc ga trải giường trên mình。 [r]
Thực tế là, từ việc tôi có thể cảm nhận cơn gió thoảng qua chân mình, Tôi cũng chả hề mặc một chiếc quần nào cả。[p]

[set_black][call target="*bg1_"]
[reset_effect][h_se st="H/se/sxxx-1.png" ]
[chara_show name="b_acc" time="0" wait="true" left="0.1" ]
[chara_show name="hat" time="0" wait="true" left="0.1" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="z-a" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[_]（Và khi tôi mở mắt, Tôi nhìn thấy Sylvie đang khỏa thân và nằm dài trên tôi。[p]

[syl]Haa〜…♥ Haa〜…♥[p]
[name_h]… Em xin lỗi。[p]
Em chỉ… Không thể chịu nổi nữa..。[p]
[v_name]…Tử cung của em… Nó cứ như đang cháy lên… Thật khó chịu…。[p]
[_]（Lưỡi của cô như bị mắc kẹt một cách trơ trẽn giữa chiếc miệng đầy nước [r]
Và nó nối với nhau, cùng với cậu nhỏ đang dựng đứng của tôi。[p]
（Vậy có nghĩa là…cô ấy đã mút của tôi cho đến bây giờ。[p]
[syl][name_h]… [p_name] của [name_h]…[p]
[_]（Sylvie bật người dậy, đặt mình lên trên ngay cậu nhỏ ẩm ướt của tôi。[p]
[call target="*bg2_"][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sxxx-2.png" ][h_tx st="H/tx/sxxx-2.png" ][h_ef st="H/ef/sxxx-2.png" ][call target="*sxxx2_"]
[syl]Mnnnnn〜!!♥!♥♥♥[p]

[call target="*bg3_"][se_nloop st="s-wet2.ogg" ]
[h_se st="H/se/sxxx-3.png" ][h_tx st="H/tx/sxxx-3.png" ][h_ef st="H/ef/sxxx-3.png" ][call target="*sxxx3_"]
[_]（Âm đạo ẩm ướt Sylvie dễ dàng chấp nhận cậu nhỏ của tôi, [r]
Và cô ấy đi vào, run rẩy trong niềm vui。[p]
[syl]Un゛〜っ♥♥！！！ [p_name] của [name_h]！♥♥♥♥[p]
Haa…~[v_name_ex]…đã ở trong em…！♥♥[p]
[_]（Sylvie bắn ra chỉ sau khi chèn vào trong tôi, [r]
và hơi thở của cô ấy như hỗn loạn。[p]

[call target="*bg4_"][se_loop st="l-wet2.ogg" ]
[h_se st="H/se/sxxx-4.png" ][h_tx st="H/tx/sxxx-4.png" ][h_ef st="H/ef/sxxx-4.png" ][call target="*sxxx4_"]
[syl]Fuuu〜♥♥♥！！fuuu゛〜♥♥！！[p]
[_]（Mặc dù chưa trấn tĩnh lại, Sylvie bắt đầu di chuyển hông của mình mạnh lên。[p]
（Cứ mỗi lần cô ấy đẩy hông lên, âm đạo của cô hút cậu nhỏ của tôi không để nó đi, [r]
Và cứ mỗi lần cô dập mạnh hông xuống, nó lại thắt chặt một tí.。[p]
[syl]Haaaa〜!♥♥ [name_h]!♥♥ [name_h]!♥♥[p]
[_]（Có lẽ rằng cô ấy đã làm hài lòng tôi trong lúc tôi vẫn đang ngủ, [r]
Nhưng tôi gần như đã hoàn toàn chạm đến đỉnh điểm。[p]

[call target="*bg5_"]
[syl][name_h]!♥♥[p]
Hãy để nó ra!♥♥ Làm ơn hãy để nó ra!♥!♥♥♥[p]
Em muốn nó!♥♥ Tinh dịch của [name_h]!♥♥♥[p]
[_]（Có lẽ như Sylvie cảm thấy cậu nhỏ của tôi run rẩy bên trong cô, [r]
di chuyển của cô trở nên mạnh bạo hơn và đưa tôi lên đỉnh。[p]

[call target="*bg6_"][se_nloop st="fin1.ogg" ]
[h_se st="H/se/sxxx-6.png" ][h_tx st="H/tx/sxxx-6.png" ][h_ef st="H/ef/sxxx-6.png" ][call target="*sxxx6_"]
[syl]Mnn!♥♥!♥[if exp="f.x_speak==1" ] Iku…Iku~shii！♥♥[endif][r]
Aaaaaaah〜!!♥♥!♥♥♥♥p]
[_]（Khi tôi ra, Sylvie đặt hông cô ấy xuống tôi, [r]
Hút dần những tinh dịch từ cậu nhỏ của tôi bằng cổ tử cung。[p]
[syl]Của [name_h]!♥♥ Đang ra !♥♥[p]
[_]（Sylvie cũng ra mạnh liệt, [r]
Âm đạo hấp dẫn của cô ấy thắt chặt không để dù chỉ một giọt tinh dịch rơi ra。[p]

[call target="*bg7_"][se_loop st="l-wet2.ogg" ]
[h_se st="H/se/sxxx-7.png" ][h_tx st="H/tx/sxxx-7.png" ][h_ef st="H/ef/sxxx-7.png" ][call target="*sxxx7_"]
[syl]Aaaah〜 Aaaaah aaaah〜♥!♥♥!![p]
[_]（Sylvie bắt đầu đi chuyển hông của cô ấy lần nữa trước khi tôi ra hết。[p]
（Trông có vẻ như cô ấy không thể điều khiển cơ thể của mình nữa。[p]

[call target="*bg8_"]
[h_tx st="H/tx/sxxx-8.png" ][h_ef st="H/ef/sxxx-8.png" ][call target="*sxxx8_"]
[syl]Ahh♥♥ Aaaaah〜…♥!♥♥!![p]
[_]（Cơ thể và âm đạo của cô ấy liên tiếp giật trong khi cô vẫn ra。[p]
（Cô ấy tiếp tục mối quan hệ táo bạo của cô một lúc, [r]
nhưng cơn giật suốt cơ thể cô ấy dường như tham gia với từng chuyển động của cô。[p]
[syl]Higiiii…!♥♥ Fuuuuu〜…!♥!♥♥♥[p]
[_]（Trông qua bởi việc cơ thể cô ấy không ngừng lắc, [r]
Sylvie có lẽ vẫn chưa thể dừng việc ra ngay từ cái khắc tôi bắn vào cô ấy。[p]

[call target="*bg9_"][se_loop st="l-wet3.ogg" ]
[h_se st="H/se/sxxx-9.png" ][h_tx st="H/tx/sxxx-9.png" ][h_ef st="H/ef/sxxx-9.png" ][call target="*sxxx9_"]
[syl]Hii…♥ Eh…?![p]
[_]（Sylvie ngừng di chuyển, đó là lượt của tôi. Tôi đẩy hông của mình lên với tất cả sức mạnh。[p]
（Thay vì Sylvie, không còn có thể dịch chuyển được nữa, [r]
và đây sẽ là lúc để tôi trả thù với tử cung của cô。[p]

[call target="*bg10_"]
[h_se st="H/se/sxxx-10.png" ][h_tx st="H/tx/sxxx-10.png" ][h_ef st="H/ef/sxxx-10.png" ]
[syl]Không♥♥ Ah♥♥ Ooooooh♥!♥♥!![p]
[_]（Mặc dù đã ra rất nhiều lần, Âm đạo của Sylvie bắt đầu bám lấy chặt hơn cậu nhỏ của tôi。[p]
（Những âm thanh dâm dụng vang dội khắp phòng trong khi nước dịch ngọt ngào của cô như pha loãng cùng với tinh dịch của tôi。[p]
（Cơ thể của cô, có dẽ dường như vừa mới trấn tĩnh lại , [r]
bắt đầu giật khi cô ra lần nữa。[p]
[sylAh!!♥♥ Aaaaah〜♥!♥♥!![p]
[_]（Mặc dù đã ra rất nhiều lần, Âm đạo của Sylvie bắt đầu bám lấy chặt hơn cậu nhỏ của tôi。[p]
（Những âm thanh dâm dụng vang dội khắp phòng trong khi nước dịch ngọt ngào của cô như pha loãng cùng với tinh dịch của tôi。[p]
（Cơ thể của cô, có dẽ dường như vừa mới trấn tĩnh lại , [r]
bắt đầu giật khi cô ra lần nữa。[p]
[syl]Ah!!♥♥ Aaaaah〜♥!♥♥!![p]
[_]（Sylvie cố gắng để chạy thoát bởi sự sung sướng bạo lực này, [r]
Nhưng tôi không biết là cô ấy thật sự muốn thoát ra, hay cơ thể của cô chỉ làm theo phản xạ。[p]
（Cô ấy chỉ giật mạnh khi lên đỉnh và bắn ra như một con thú。[p]
（Có lẽ cô ấy không còn có khả năng để nói bất kì điều gì nên lời về cái cảm giác của cô lúc này。[p]
（Tử cung của cô ấy đã bị lấp đầy đến miệng bằng tinh dịch của tôi)。[p]
（Mặc dù cô ấy cũng đã ra vài lần, [r]
Cái dương vật cứng như đá của tôi đã bị âm đạo của cô ấy tấn công )。[p]

[call target="*bg11_"]
[h_tx st="H/tx/sxxx-11.png" ][h_ef st="H/ef/sxxx-11.png" ]
[syl]Hiiii…!♥ Ah!♥♥ Aaaaah〜…!♥♥♥♥[p]
[_]（Đôi mắt của Sylvie cuộn ngược lên, [r]
Cô ấy cố gắng nuốt từng ngụm không khí[p]
（Cô ấy đã vượt ra khỏi giới hạn mà cơ thể cô ấy chịu được 。[lr]
Dường như khoái cảm đã tiếp thêm sức cho cô ấy)。[p]
（Tôi tiếp tục tấn công Sylvie mạnh mẽ, [r]
nhưng có lẽ tôi cũng đã gần đến giới hạn lên đỉnh thứ hai)。[p]

[call target="*bg12_"][se_nloop st="fin1.ogg" ]
[h_se st="H/se/sxxx-12.png" ][h_tx st="H/tx/sxxx-12.png" ][h_ef st="H/ef/sxxx-12.png" ][call target="*sxxx12_"]
[syl]Hiiiiii!♥ Ah……!♥♥〜〜!!!♥♥♥♥[p]
[_]（Tôi đẩy hông mình lên và cố đẩy tử cung của cô xuống, [r]
Và tôi đổ đống tinh dịch nóng kia vào trong cô。[p]
（Tử cung của Sylvie rung mạnh, [r]
và cơn co giật của cô trông giống hệt những gì đang xảy ra với cậu nhỏ của tôi。[p]
[syl]Ah!♥ Kah……!♥♥!!♥♥♥[p]
[_]Cô có lẽ đã phải ra rất mạnh bạo。[p]
Mắt của cô ấy dội ngược, hơi thở hồng hộc của cô ấy, và âm đạo của cô bám lấy cậu nhỏ của tôi như một thói xấu。[p]
[black]

（Không còn có thể chống chịu lại, Sylvie đổ gục vào tôi.[lr]
（Có lẽ như cô ấy đã ngất đi。[p]
（Tôi có thể nhìn thấy một mảnh trắng trên mắt cô ấy, và miệng cô thì đang đầy bọt mép。[p]

（Tuy vậy, sự cương cứng của tôi trông có lẽ không hề có dấu hiệu giảm xuống。[p]
（Tôi vồ lấy mông của Sylvie [r]
và tiếp tục đâm vào bên trong âm đạo co giật của cô。[p]
[se_loop st="l-wet3.ogg" ]

[syl]Hiiii!♥♥ Ah!♥ Kah……!♥♥!!♥♥♥[p]
Ah…!♥♥〜!!!♥♥♥♥[p]
[stop_se]

*end
[black][stop_bgm]…[p]
[if exp="f.hist_mode>=1" ][return_memory][endif]
[eval exp="f.blow=f.blow+1" ][eval exp="f.sex=f.sex+3" ]
[eval exp="f.h_m=f.h_m+10" ][eval exp="f.h_v=f.h_v+10" ]
[eval exp="f.lust=f.lust+15" ][eval exp="f.love=f.love+20" ]
[eval exp="f.heavn=f.heavn+8" ][eval exp="f.cum=f.cum+6" ]
[eval exp="f.act='sexxx'" ][eval exp="f.out='syl'" ]
[eval exp="f.work_c=1" ][eval exp="f.m_xxx=1" ]
[day_end]

;;CG
*cg
[cm][call target="*set" ][set_black][call target="*bg1_"]
[h_se st="H/se/sxxx-1.png" ][h_tx st="00.png" ][h_ef st="00.png" ][h_x st="00.png" ]
[chara_show name="b_acc" time="0" wait="true" left="0.1" ]
[chara_show name="hat" time="0" wait="true" left="0.1" ]
[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="z-a" time="0" wait="true" left="0.1" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[show_effect][hide_black]
[h_back tg="*end_cg"][h_next tg="*cg_2"][s]
*cg_2
[cm][call target="*bg2_"]
[h_se st="H/se/sxxx-2.png" ][h_tx st="H/tx/sxxx-2.png" ][h_ef st="H/ef/sxxx-2.png" ][call target="*sxxx2_"]
[h_back tg="*cg"][h_next tg="*cg_3"][s]
*cg_3
[cm][call target="*bg3_"]
[h_se st="H/se/sxxx-3.png" ][h_tx st="H/tx/sxxx-3.png" ][h_ef st="H/ef/sxxx-3.png" ][call target="*sxxx3_"]
[h_back tg="*cg_2"][h_next tg="*cg_4"][s]
*cg_4
[cm][call target="*bg4_"]
[h_se st="H/se/sxxx-4.png" ][h_tx st="H/tx/sxxx-4.png" ][h_ef st="H/ef/sxxx-4.png" ][call target="*sxxx4_"]
[h_back tg="*cg_3"][h_next tg="*cg_5"][s]
*cg_5
[cm][call target="*bg5_"]
[h_se st="H/se/sxxx-4.png" ][h_tx st="H/tx/sxxx-4.png" ][h_ef st="H/ef/sxxx-4.png" ][call target="*sxxx4_"]
[h_back tg="*cg_4"][h_next tg="*cg_6"][s]
*cg_6
[cm][call target="*bg6_"]
[h_se st="H/se/sxxx-6.png" ][h_tx st="H/tx/sxxx-6.png" ][h_ef st="H/ef/sxxx-6.png" ][call target="*sxxx6_"]
[h_back tg="*cg_5"][h_next tg="*cg_7"][s]
*cg_7
[cm][call target="*bg7_"]
[h_se st="H/se/sxxx-7.png" ][h_tx st="H/tx/sxxx-7.png" ][h_ef st="H/ef/sxxx-7.png" ][call target="*sxxx7_"]
[h_back tg="*cg_6"][h_next tg="*cg_8"][s]
*cg_8
[cm][call target="*bg8_"]
[h_tx st="H/tx/sxxx-8.png" ][h_ef st="H/ef/sxxx-8.png" ][call target="*sxxx8_"][call target="*sxxx7_"]
[h_back tg="*cg_7"][h_next tg="*cg_9"][s]
*cg_9
[cm][call target="*bg9_"]
[h_se st="H/se/sxxx-9.png" ][h_tx st="H/tx/sxxx-9.png" ][h_ef st="H/ef/sxxx-9.png" ][call target="*sxxx9_"]
[h_back tg="*cg_8"][h_next tg="*cg_10"][s]
*cg_10
[cm][call target="*bg10_"]
[h_se st="H/se/sxxx-10.png" ][h_tx st="H/tx/sxxx-10.png" ][h_ef st="H/ef/sxxx-10.png" ]
[h_back tg="*cg_9"][h_next tg="*cg_11"][s]
*cg_11
[cm][call target="*bg11_"]
[h_se st="H/se/sxxx-10.png" ][h_tx st="H/tx/sxxx-11.png" ][h_ef st="H/ef/sxxx-11.png" ][call target="*sxxx9_"]
[h_back tg="*cg_10"][h_next tg="*cg_12"][s]
*cg_12
[cm][call target="*bg12_"]
[h_se st="H/se/sxxx-12.png" ][h_tx st="H/tx/sxxx-12.png" ][h_ef st="H/ef/sxxx-12.png" ][call target="*sxxx12_"]
[h_back tg="*cg_11"][h_next tg="*end_cg"][s]
*end_cg
[cm][black][return_memory]
;---------------------------------------------------------------------------------------------------------------------
*sxxx2_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sxxx-2.png" ][else]
[h_x st="H/x/sxxx-2.png" ][endif][return]
*sxxx3_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sxxx-3.png" ][else]
[h_x st="H/x/sxxx-3.png" ][endif][return]
*sxxx4_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sxxx-4.png" ][else]
[h_x st="H/x/sxxx-4.png" ][endif][return]
*sxxx6_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sxxx-6.png" ][else]
[h_x st="H/x/sxxx-6.png" ][endif][return]
*sxxx7_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sxxx-7.png" ][else]
[h_x st="H/x/sxxx-7.png" ][endif][return]
*sxxx8_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sxxx-8.png" ][else]
[h_x st="H/x/sxxx-8.png" ][endif][return]
*sxxx9_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sxxx-9.png" ][else]
[h_x st="H/x/sxxx-9.png" ][endif][return]
*sxxx12_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sxxx-12.png" ][else]
[h_x st="H/x/sxxx-12.png" ][endif][return]

*bg1_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/1.jpg" ][else]
[h_bg st="H_xxx/1.jpg" ][endif][return]
*bg2_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/2.jpg" ][else]
[h_bg st="H_xxx/2.jpg" ][endif][return]
*bg3_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/3.jpg" ][else]
[h_bg st="H_xxx/3.jpg" ][endif][return]
*bg4_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/4.jpg" ][else]
[h_bg st="H_xxx/4.jpg" ][endif][return]
*bg5_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/5.jpg" ][else]
[h_bg st="H_xxx/5.jpg" ][endif][return]
*bg6_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/6.jpg" ][else]
[h_bg st="H_xxx/6.jpg" ][endif][return]
*bg7_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/7.jpg" ][else]
[h_bg st="H_xxx/7.jpg" ][endif][return]
*bg8_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/8.jpg" ][else]
[h_bg st="H_xxx/8.jpg" ][endif][return]
*bg9_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/9.jpg" ][else]
[h_bg st="H_xxx/9.jpg" ][endif][return]
*bg10_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/10.jpg" ][else]
[h_bg st="H_xxx/10.jpg" ][endif][return]
*bg11_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/11.jpg" ][else]
[h_bg st="H_xxx/11.jpg" ][endif][return]
*bg12_
[if exp="f.uncen=='true'"][h_bg st="H_xxx/uncen/12.jpg" ][else]
[h_bg st="H_xxx/12.jpg" ][endif][return]