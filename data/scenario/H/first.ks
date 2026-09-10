;;set
*set
[mod_win st="o/win/LR.png" ]
[if exp="f.b_acc==1" ][mod_b_acc st="s/b_acc/O/sx-a1.png" ][elsif exp="f.b_acc==21" ][mod_b_acc st="s/b_acc/O/sx-b1.png" ]
[elsif exp="f.b_acc==22" ][mod_b_acc st="s/b_acc/O/sx-b2.png" ][elsif exp="f.b_acc==31" ][mod_b_acc st="s/b_acc/O/sx-c1.png" ]
[elsif exp="f.b_acc==32" ][mod_b_acc st="s/b_acc/O/sx-c2.png" ][elsif exp="f.b_acc==41" ][mod_b_acc st="s/b_acc/O/sx-d1.png" ]
[elsif exp="f.b_acc==42" ][mod_b_acc st="s/b_acc/O/sx-d2.png" ][else][mod_b_acc st="00.png" ][endif]

[if exp="f.hat==1" ][chara_mod name="hat" time="0" storage="s/hat/O/sx-a1.png" ]
[elsif exp="f.hat==2" ][chara_mod name="hat" time="0" storage="s/hat/O/sx-a2.png" ]
[else][chara_mod name="hat" time="0" storage="00.png" ][endif]

[if exp="f.glasses==1" ][mod_glasses st="s/glass/O/sx-a1.png" ][elsif exp="f.glasses==2" ][mod_glasses st="s/glass/O/sx-a2.png" ]
[elsif exp="f.glasses==3" ][mod_glasses st="s/glass/O/sx-a3.png" ][elsif exp="f.glasses==4" ][mod_glasses st="s/glass/O/sx-a4.png" ]
[elsif exp="f.glasses==5" ][mod_glasses st="s/glass/O/sx-a5.png" ][elsif exp="f.glasses==6" ][mod_glasses st="s/glass/O/sx-a6.png" ]
[elsif exp="f.glasses==7" ][mod_glasses st="s/glass/O/sx-a7.png" ][elsif exp="f.glasses==8" ][mod_glasses st="s/glass/O/sx-a8.png" ]
[elsif exp="f.glasses==9" ][mod_glasses st="s/glass/O/sx-a9.png" ][elsif exp="f.glasses==11" ][mod_glasses st="s/glass/O/sx-b1.png" ]
[elsif exp="f.glasses==12" ][mod_glasses st="s/glass/O/sx-b2.png" ][elsif exp="f.glasses==13" ][mod_glasses st="s/glass/O/sx-b3.png" ]
[elsif exp="f.glasses==14" ][mod_glasses st="s/glass/O/sx-b4.png" ][elsif exp="f.glasses==15" ][mod_glasses st="s/glass/O/sx-b5.png" ]
[elsif exp="f.glasses==16" ][mod_glasses st="s/glass/O/sx-b6.png" ][elsif exp="f.glasses==17" ][mod_glasses st="s/glass/O/sx-b7.png" ]
[elsif exp="f.glasses==18" ][mod_glasses st="s/glass/O/sx-b8.png" ][elsif exp="f.glasses==19" ][mod_glasses st="s/glass/O/sx-b9.png" ]
[elsif exp="f.glasses==21" ][mod_glasses st="s/glass/O/sx-c1.png" ][elsif exp="f.glasses==22" ][mod_glasses st="s/glass/O/sx-c2.png" ]
[elsif exp="f.glasses==23" ][mod_glasses st="s/glass/O/sx-c3.png" ][elsif exp="f.glasses==24" ][mod_glasses st="s/glass/O/sx-c4.png" ]
[elsif exp="f.glasses==25" ][mod_glasses st="s/glass/O/sx-c5.png" ][elsif exp="f.glasses==26" ][mod_glasses st="s/glass/O/sx-c6.png" ]
[elsif exp="f.glasses==27" ][mod_glasses st="s/glass/O/sx-c7.png" ][elsif exp="f.glasses==28" ][mod_glasses st="s/glass/O/sx-c8.png" ]
[elsif exp="f.glasses==29" ][mod_glasses st="s/glass/O/sx-c9.png" ][else][mod_glasses st="00.png" ][endif]
[set_black][call target="*bg1_"][reset_effect]

[chara_show name="glasses" time="0" wait="true" left="0.1" ]
[chara_show name="b_acc" time="0" wait="true" left="0.1" ]
[chara_show name="hat" time="0" wait="true" left="0.1" ]
[show_effect][hide_black][return]

;;シーン
*scene
[cm][eval exp="f.hist_mode=1" ][show_message_w]
*H_first
[cm][stop_bgm][black]…[p][bgm_MT]
[call target="*set" ]
[_]（Tôi cọ sát thằng nhỏ vào âm đạo của Sylvie。[p_][r_01]
[syl][name] Nó… to quá…。[lr_]Em không biết liệu nó sẽ vừa không…。[p_]

[call target="*bg2_"][se_loop st="l-wet0.ogg" ]
[h_ef st="H/ef/sf-2.png" ]
[syl][r2_13]……ah…ahh…..ahhh……。[p_][l_12]
[_]（Ngay khi tôi cọ sát thằng nhỏ với âm đạo của em ấy,[r]
âm hộ của em ấy trở nên ẩm ướt.[p_]
…[p]

[call target="*bg3_"][stop_se]
[syl][na_1]Um… Em nghĩ… Em vẫn ổn。[lr_][naka_de_1]
Cho nên… Cứ việc đút nó vào ạ…[r] [r2_13]…。[p_]
[_]（Âm hộ của Sylvie, việc cọ xát đã khiến nó trở nên ẩm ướt.[r]
Có vẻ chúng tôi đã sẵn sàng để làm tình。[p_]

[call target="*bg4_"][se_nloop st="s-wet1.ogg" ]
[h_se st="H/se/sf-4.png" ][h_tx st="H/tx/sf-4.png" ][h_ef st="H/ef/sf-4.png" ][call target="*sf4_"]
[_]（Tôi nhẹ nhàng xâm nhập từ từ cào trong em ấy。[p_]
[syl][r2_27]Un…K~uu!…[p_][l_14]……………[p_]

[call target="*bg5_"]
[h_se st="H/se/sf-5.png" ][h_tx st="H/tx/sf-5.png" ][h_ef st="00.png" ]
[_]（Gần như thằng nhỏ tôi hoàn toàn nằm trong âm hộ của Sylvie và có thể thấy máu bắt đầu chảy ra, chứng tỏ em ấy đã mất đi sự trong trắng bởi tôi。[p_]
[syl][r2_12]
Haa… Haa…[p_]
（Cơn đau vì lần đầu làm tình hiện rõ trên khuôn mặt Sylvie, do vậy chắc em ấy đã chuẩn bị cho sự xé rách "bóc tem").[r] [l_11] [p_]

[call target="*bg6_"][h_se st="00.png" ]
[syl][ii_1]Nếu chỉ như vậy… Em hoàn toàn ổn với nó. [l_11] [lr_]
xin hãy… sử dụng em…để thoả mãn anh[p_]
[_]（Có vẻ em ấy đã làm quen với cơn đau đó. Tôi bắt đầu tăng tốc)。[p_]

[call target="*bg7_"][se_loop st="l-wet1.ogg" ]
[h_se st="H/se/sf-7.png" ][h_tx st="H/tx/sf-7.png" ][call target="*sf7_"]
[syl][l_10]
……ah…ahh…..ahhh……[lr_]
……ah…ahh…..ahhh……[p_]
（Âm đạo nhỏ bé của Sylvie cũng bắt đầu đáp lại sự tấn công từ dương vật của tôi。[p]

[call target="*bg8_"][h_tx st="H/tx/sf-8.png" ]
[syl][chinchin_de_1]

Aah…[name] đang…[l_][naka_ga_1] bên trong em.[p_]
[um_05]
Chúng ta đang kết nối với nhau…♥[r]
[l_11][p_]
[_]Có lẽ tinh dịch đã giúp làm tình dễ hơn, hoặc em ấy đang rất sung sướng, [r]
nhưng Sylvie không hề quan tâm đến cơn đau và trinh tiết của mình.[p_]

[call target="*bg9_"][h_tx st="H/tx/sf-9.png" ]
[syl]
[kimochi_ii_1]
[name]… Anh cảm thấy… sung sướng chứ?[lr_] [ii_1]
Emm vẫn… ổn nếu anh di chuyển thô bạo hơn. [l_10] [p_]
[_]（Hình như em ấy không cố ép buộc mình.[p_]
（Tôi chậm rãi và bắt đầu tăng tốc độ đẩy.[p_]

[call target="*bg10_"][se_loop st="l-wet2.ogg" ]
[h_se st="H/se/sf-10.png" ][h_tx st="H/tx/sf-10.png" ][h_ef st="H/ef/sf-10.png" ][call target="*sf10_"]
[syl][r2_05]
Aaah…! Mn!…..[r] [l_02][p_]
[_]（Sylvie rên rất ngọt ngào và ập vô tai tôi, [r]
（và bản năng của tôi trổi dậy cướp đi tất cả suy nghĩ của tôi.[p_]
[syl][kore_1]
Nó… cảm giác … Nó khác với cơn đau. Nó… cảm giác lạ lắm…[r] [l_11] [p_]
[_]（Tôi ngừng việc do dự và đẩy thẳng vào sâu âm hộ của Sylvie.[p_]
（Cơ thể của em ấy, như đang trả lời lại những hành động của tôi, nó càng lúc ẩm ướt hơn và quấn quanh thằng nhỏ của tôi.[p_]
[syl[kimochi_ii_1]
Anh … cảm thấy… sướng chứ?[p_]
[_][l_11]
（Gương mặt của Sylvie biểu hiện cảm xúc của em ấy, đã khơi dậy bản năng thú tính của tôi , [lr_]
và đầu óc tôi trở nên trống rỗng và tôi di chuyển không chút do dự.[p_]
（Tiếng động khi hai hông của chung tôi va vào nhau vang khắp căn phòng…[p_]

[call target="*bg11_"]
[h_se st="H/se/sf-11.png" ][h_ef st="H/ef/sf-11.png" ]
[syl][r_15]
Ah… Có thứ gì đó… đang ra…![p_][lc_03]
[kore_1]
Cái … gì đây…[p_]
[_]（Sau một lúc, Sylvie thở gấp.[p_]
（Có lẽ em ấy đang chuẩn bị ra.[p_]

[call target="*bg12_"]
[syl][dame_1] 
[name]… Em… Có gì đó đang ra…![lr_] [sore_wa_1]….[p_]
[_]（Tôi đã đạt tới giới hạn của mình…。[p_]

[call target="*bg13_"][se_nloop st="fin1.ogg" ]
[h_se st="H/se/sf-13.png" ][h_tx st="H/tx/sf-13.png" ][h_ef st="H/ef/sf-13.png" ][call target="*sf13_"]
[syl]A~゛a！！♥！♥[p_]
[_]（Âm hộ của sylvie co giật điên loạn và co sát thằng nhỏ của tôi mãnh liệt.[p_]
（Vào lúc đó, hông tôi gắn chặt vào em ấy và bắn hết tất cả tinh dịch vào bên trong.[p_]

[call target="*bg14_"]
[h_se st="H/se/sf-14.png" ][h_tx st="00.png" ][h_ef st="H/ef/sf-14.png" ][call target="*sf14_"]
[syl][quake_9][r_07]A、Aa…♥[r]
[r_01]
[name]…♥[name]…♥♥[p_]
[_]（Sylvie cứ lẩm bẩm tên tôi trong miệng, [r][l_12]
nhưng em ấy đã kiệt sức sau lần lên đỉnh đầu tiên của em ấy.[p_]
（Sau đó, cơ thể em ấy trở nên yếu đuối và tôi có thể cảm nhận hơi thở yên lặng, nhẹ nhàng đó.[p_]
[black][stop_bgm]
Nếu như bị mê hoặc bởi âm thanh đó, cặp mắt của tôi bắt đầu thấy nặng đi, và tôi thiếp đi không biết khi nào…[p_]
…[p_]
[if exp="f.hist_mode>=1" ][return_memory][endif]

[set_stand][bg_bed][bgm_SG][f/p_nt][show_stand]
[hide_role][show_role]
[syl][f/re]…Chào buổi sáng, [name][p_]
[f/re]Về tối hôm qua, um… Cảm ơn anh rất nhiều.[p_][um_10]
[f/clp]Đó là… lần đầu của em đó, và… em ban đầu cảm thấy lo lắng、[lr_]
[f/sp]nhưng anh lại đối xử tốt với em như thường lệ, và em cảm thấy rất sướng, em rất mừng…。[p_]
[f/re][name] có cảm thấy sung sướng chứ?[r] [a_02]？[p_]
[f/re]nếu anh cảm giác tâm trạng đó lần nữa, em sẽ rất sẵn lòng phục vụ anh、[lr_]
[f/re]vì thế đừng có cố kiếm chế lần sau nữa nhé。[r][sm_19][p_]
[black][stop_bgm]…[p]


[if exp="f.sex=='yet'" ]
[eval exp="f.sex=1" ][eval exp="f.heavn=1" ][eval exp="f.cum=1" ][eval exp="f.act='non'" ][eval exp="f.m_first=1" ]
[return_bace][endif]

[eval exp="f.m_first=1" ]
[jump storage="talk/step6.ks" target="*a" ]

*ks5
[if exp="f.codex==2654 && f.codey==4475"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==323 && f.codey==231"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==636 && f.codey==445"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==526 && f.codey==698"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==140 && f.codey==3562"]
[eval exp="f.code_ss='ful'"][endif][return]

;;CG
*cg
[cm][call target="*set" ][chara_show name="window" time="0" wait="true" left="0.1" ]
[call target="*bg1_"]
[h_back tg="*end_cg"][h_next tg="*cg2"][s]
*cg2
[cm][call target="*bg2_"]
[h_ef st="H/ef/sf-2.png" ]
[h_back tg="*cg"][h_next tg="*cg3"][s]
*cg3
[cm][call target="*bg3_"]
[h_ef st="H/ef/sf-2.png" ][h_se st="00.png" ][h_tx st="00.png" ][h_x st="00.png" ]
[h_back tg="*cg2"][h_next tg="*cg4"][s]
*cg4
[cm][call target="*bg4_"]
[h_se st="H/se/sf-4.png" ][h_tx st="H/tx/sf-4.png" ][h_ef st="H/ef/sf-4.png" ][call target="*sf4_"]
[h_back tg="*cg3"][h_next tg="*cg5"][s]
*cg5
[cm][call target="*bg5_"]
[h_se st="H/se/sf-5.png" ][h_tx st="H/tx/sf-5.png" ][h_ef st="00.png" ][call target="*sf4_"]
[h_back tg="*cg4"]
[h_next tg="*cg6"][s]
*cg6
[cm][call target="*bg6_"]
[h_se st="00.png" ][h_tx st="H/tx/sf-5.png" ][h_ef st="00.png" ][call target="*sf4_"]
[h_back tg="*cg5"][h_next tg="*cg7"][s]
*cg7
[cm][call target="*bg7_"]
[h_se st="H/se/sf-7.png" ][h_tx st="H/tx/sf-7.png" ][call target="*sf7_"][h_ef st="00.png" ]
[h_back tg="*cg6"][h_next tg="*cg8"][s]
*cg8
[cm][call target="*bg8_"]
[h_tx st="H/tx/sf-8.png" ]
[h_back tg="*cg7"][h_next tg="*cg9"][s]
*cg9
[cm][call target="*bg9_"]
[h_tx st="H/tx/sf-9.png" ][h_se st="H/se/sf-7.png" ][call target="*sf7_"][h_ef st="00.png" ]
[h_back tg="*cg8"][h_next tg="*cg10"][s]
*cg10
[cm][call target="*bg10_"]
[h_se st="H/se/sf-10.png" ][h_tx st="H/tx/sf-10.png" ][h_ef st="H/ef/sf-10.png" ][call target="*sf10_"]
[h_back tg="*cg9"][h_next tg="*cg11"][s]
*cg11
[cm][call target="*bg11_"]
[h_se st="H/se/sf-11.png" ][h_ef st="H/ef/sf-11.png" ][call target="*sf10_"][h_tx st="H/tx/sf-10.png" ]
[h_back tg="*cg10"][h_next tg="*cg12"][s]
*cg12
[cm][call target="*bg12_"]
[h_se st="H/se/sf-11.png" ][h_ef st="H/ef/sf-11.png" ][call target="*sf10_"][h_tx st="H/tx/sf-10.png" ]
[h_back tg="*cg11"][h_next tg="*cg13"][s]
*cg13
[cm][call target="*bg13_"]
[h_se st="H/se/sf-13.png" ][h_tx st="H/tx/sf-13.png" ][h_ef st="H/ef/sf-13.png" ][call target="*sf13_"]
[h_back tg="*cg12"][h_next tg="*cg14"][s]
*cg14
[cm][call target="*bg14_"]
[h_se st="H/se/sf-14.png" ][h_tx st="00.png" ][h_ef st="H/ef/sf-14.png" ][call target="*sf14_"]
[h_back tg="*cg13"][h_next tg="*end_cg"][s]
*end_cg
[cm][black][return_memory]

;;----------------------------------------------------------------------------------------------------------------
*bg1_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/1.jpg" ][else]
[h_bg st="H_first/1.jpg" ][endif][return]
*bg2_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/2.jpg" ][else]
[h_bg st="H_first/2.jpg" ][endif][return]
*bg3_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/3.jpg" ][else]
[h_bg st="H_first/3.jpg" ][endif][return]
*bg4_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/4.jpg" ][else]
[h_bg st="H_first/4.jpg" ][endif][return]
*bg5_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/5.jpg" ][else]
[h_bg st="H_first/5.jpg" ][endif][return]
*bg6_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/6.jpg" ][else]
[h_bg st="H_first/6.jpg" ][endif][return]
*bg7_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/7.jpg" ][else]
[h_bg st="H_first/7.jpg" ][endif][return]
*bg8_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/8.jpg" ][else]
[h_bg st="H_first/8.jpg" ][endif][return]
*bg9_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/9.jpg" ][else]
[h_bg st="H_first/9.jpg" ][endif][return]
*bg10_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/10.jpg" ][else]
[h_bg st="H_first/10.jpg" ][endif][return]
*bg11_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/11.jpg" ][else]
[h_bg st="H_first/11.jpg" ][endif][return]
*bg12_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/12.jpg" ][else]
[h_bg st="H_first/12.jpg" ][endif][return]
*bg13_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/13.jpg" ][else]
[h_bg st="H_first/13.jpg" ][endif][return]
*bg14_
[if exp="f.uncen=='true'"][h_bg st="H_first/uncen/14.jpg" ][else]
[h_bg st="H_first/14.jpg" ][endif][return]

*sf4_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sf-4.png" ][else]
[h_x st="H/x/sf-4.png" ][endif][return]
*sf7_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sf-7.png" ][else]
[h_x st="H/x/sf-7.png" ][endif][return]
*sf10_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sf-10.png" ][else]
[h_x st="H/x/sf-10.png" ][endif][return]
*sf13_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sf-13.png" ][else]
[h_x st="H/x/sf-13.png" ][endif][return]
*sf14_
[if exp="f.uncen=='true'"][h_x st="H/x/uncen/sf-14.png" ][else]
[h_x st="H/x/sf-14.png" ][endif][return]