;script by ichibikun

*morning
[cm][black][eval exp="f.sex_kitchen='yet'"]
[fadeoutbgm time=500]
#
(Cơ thể tôi... dường như bị cuốn hút theo tiếng rửa chén lách cách trong bếp.[lr_]
Trong vô thức, hình ảnh Sylvie với trang phục khiêu gợi tiếu vải để lộ ra phần cơ thể nhỏ nhắn thấp thoáng qua lớp vải mỏng đó.[p_]
Thoảng một mùi hương từ cơ thể thiếu nữ khiến cho đầu óc tôi dần trống rỗng)[p_]
Tôi lặng lẽ tiến lại gần cô ấy.[p_]
...[p_]

[cm]
[playbgm  loop="true"  storage="Magenta_Touch.ogg"  ]
[call storage="H/morning.ks" target="*set"][call storage="H/morning.ks" target="*set_neck"]
[chara_mod name="body" time="0" storage="H/back/body/b0_non.png" ]
[chara_mod  name="se"  time="0"  storage="00.png" ]
[chara_mod  name="tx"  time="0"  storage="00.png" ]
[chara_mod  name="ef"  time="0"  storage="00.png" ]
[chara_mod  name="x"  time="0"  storage="00.png" ]

[iscript]
f.talk=Math.floor(Math.random() * 4 + 1);
[endscript]

[if  exp="f.talk==1" ]
[jump  storage=""  target="*x" ]
[elsif  exp="f.talk==2" ]
[jump  storage=""  target="*xx" ]
[else]
[jump  storage=""  target="*xxx" ]
[endif]



*x
[bg  time="100"  method="crossfade"  storage="H/kitchen.jpg" ]
[call storage="H/morning.ks" target="*show_set" ]
[show_effect]

#Sylvie
[h_face st="H/back/face/a2.png" ]
[r_06]Ah~!♥♥♥ [name][p_]
[h_face st="H/back/face/a3.png" ]
Anh còn cần gì nữa ạ ♥♥♥!...[p_]
#
（Bị mê hoặc bởi những đường cong trên cơ thể của Sylvie thấp thoáng sau lớp vải mỏng, tôi tiếp cận từ phía sau cô ấy với sự cương cứng không thể kiểm soát của mình[p_]
#Sylvie
[h_face st="H/back/face/a2.png" ]
[eh_02]Em đang dở tay một chút, nhưng...[p_]
[chara_mod name="face" time="400" storage="H/back/face/a3.png" ]
[chara_mod name="face" time="800" storage="H/back/face/a4.png" ]
Nhưng... Um...♥♥♥[lr_]
Có phải là ... Anh muốn làm điều đó? Ngay tại đây không !♥[p_]

[r2_05]...vậy...anh...[l]
[chara_mod name="face" time="400" storage="H/back/face/a3.png" ]
[chara_mod name="face" time="800" storage="H/back/face/a5.png" ]
tiếp tục đi...♥♥♥[p_]
#
（Sylvie nâng mông của cô ấy lên với điệu bộ rụt rè ngượng nghịu[p_]

[if exp="f.dress>=1 || f.neck>=1"]
[button  storage=""  target="*wear1"  graphic="ch/wear.png"    x="0"  y="200" ]
[if exp="f.Dne_b[1]==1 || f.Dne_b[2]==1 || f.Dne_b[3]==1 || f.Dne_b[4]==1"]
[button target="*nude_neck" graphic="ch/unwear-ep.png" x="0" y="350" ][endif]
[button  target="*nude1"  graphic="ch/unwear.png"   x="0"  y="500" ]
[s]
[jump target="*wear1"][endif]

*nude_neck
[cm]
[chara_mod name="neck" time="1000" storage="00.png" ]
（Tôi cởi dây nịch và từ từ cởi chiếc tạp dề xuống[p_]
[jump target="*wear1"]

*nude1
[cm]
[chara_mod name="neck" time="700" storage="00.png" ]
[eh_02]
[chara_mod name="dress" time="700" storage="00.png" ]
;[chara_show name="b_acc" time="0" wait="true" left="0.1" ]
（Tôi cởi dây nịch và từ từ tuột quần áo cô ấy xuống[p_]

*wear1
[cm]
[chara_mod name="face" time="300" storage="H/back/face/b4.png" ]
[if exp="f.uncen=='true'"][h_body st="H/back/body/uncen/b0.png" ][else]
[h_body st="H/back/body/b0.png" ][endif][se_nloop st="s-wet1.ogg" ]
[h_se st="H/back/se/1-4.png" ][h_tx st="H/back/tx/1-4.png" ][h_ef st="H/back/ef/1-4.png" ]
...[p_]
[quake  time="200"  count="3"  hmax="5"  wait="true"  ]
#Sylvie
[r_06]Ah!~♥[p]
#
（Âm đạo cô ấy hơi khép lại, mông cô ấy khẽ nhấp lên khi tôi chạm thằng nhỏ của mình vào.[p_]
[l_11]
（Cô ấy đang cảm nhận nó.[p_]
[if exp="f.uncen=='true'"][h_body st="H/back/body/uncen/b1.png" ][else]
[h_body st="H/back/body/b1.png" ][endif]
[chara_mod name="face" time="300" storage="H/back/face/a5.png" ]
[h_se st="H/back/se/1-5.png" ][h_tx st="00.png" ][h_ef st="H/back/ef/1-5.png" ][call target="*x1_cen"]
#Sylvie
[r2_27]Uhh~♥ Ah...♥♥[p_]
#
（Tôi từ từ đưa dương vật của tôi xuống phần dưới mông cô ấy và nhẹ nhàng chà xát nó dọc theo môi âm đạo rồi tiến vào trong.[p_]
#Sylvie
[r2_09]Fuuu〜♥[p_][l_03]
#
（Sylvie đã ướt, cô ấy dễ dàng chấp nhận dương vật của tôi tiến vào trong[p_]
（Hình như tôi không cần phải lo lắng về việc tăng dần tốc độ[p_]
[h_body st="H/back/body/b2.png" ][h_ef2 st="H/back/ef2/1.png" ]
[if exp="f.dress>=21 && f.dress<=30" ]
[chara_mod name="arm" time="0" storage="H/back/body/a1_c.png" ][else]
[chara_mod name="arm" time="0" storage="H/back/body/a1.png" ][endif][h_face st="H/back/face/a6.png" ][se_loop st="l-wet1.ogg" ]
[h_se st="H/back/se/1-6.png" ][h_tx st="H/back/tx/1-6.png" ][h_ef st="H/back/ef/1-6.png" ][call target="*x2_cen"]
[chara_mod name="face" time="300" storage="H/back/face/a6.png" ]
[playse  loop="false"  storage="l-wet1.ogg"  clear="true"  ]

（Tôi dành thời gian để tận hưởng cảm giác bên trong của Sylvie[p_]
#Sylvie
[r2_12]Umm~ ♥Fuuu！Ahh♥♥[p_][l_01]
#
Có thể là bởi vì cô ấy khép chân lại, nhưng âm đạo cô ấy có cảm giác chặt hơn so với bình thường[p_]
（Khi tôi chà xát bên trong âm đạo với dương vật của tôi[r]
cô ấy cố gắng ngăn chặn tiếng rên rỉ của mình[p_]

[h_body st="H/back/body/b3.png" ][h_ef2 st="H/back/ef2/2.png" ][if exp="f.dress>=21 && f.dress<=30" ]
[chara_mod name="arm" time="0" storage="H/back/body/a2_c.png" ][else]
[chara_mod name="arm" time="0" storage="H/back/body/a2.png" ][endif]
[h_tx st="H/back/tx/1-7.png" ][h_ef st="H/back/ef/1-7.png" ][call target="*x3_cen"]
[chara_mod name="face" time="200" storage="H/back/face/a7.png" ]
#Sylvie
[r2_13]…Fuuu！Mn♥Hihi！♥♥[p_][l_02]

#Sylvie
[r2_14]Fuuu！♥Hiiii！！♥[p_][l_02]
#
（Sylvie bắt đầu chảy nước, từ đùi xuống sàn nhà[p_]
（Tôi đang làm với một tốc độ khá nhanh,[r]
và tạo ra tiếng ồn mỗi khi hông của tôi chạm vào mông cô ấy.[p_]
（Sylvie đã cố gắng để ngăn chặn tiếng của cô ấy lúc đầu[r]
nhưng bây giờ tiếng rên rỉ lớn của em vang vọng trong nhà bếp[p_]
[chara_mod name="face" time="200" storage="H/back/face/a8.png" ]
[h_se st="H/back/se/1-8.png" ][h_tx st="H/back/tx/1-8.png" ][h_ef st="H/back/ef/1-8.png" ]
[playse  loop="false"  storage="l-wet2.ogg"  clear="true"  ]

#Sylvie
[r_06]Ah！♥[name]！♥Em… sắp ra rồi!![p_][l_04]
#
（Chân của Sylvie bắt đầu rung lên và dang ra rộng hơn[p_]
[chara_mod name="face" time="200" storage="H/back/face/a9.png" ]
[h_se st="H/back/se/1-9.png" ][h_tx st="H/back/tx/1-9.png" ][h_ef st="H/back/ef/1-9.png" ][call target="*x4_cen"]
[playse   storage="fin1.ogg"  clear="true"  ]

#Sylvie
[r2_24]Mn♥♥♥……♥♥♥♥[p_][lc_01]
#
（Khi cơ thể của Sylvie khập khiễng，tôi đẩy mạnh vào hết sức có thể[r]
đổ tinh dịch của tôi vào phần sâu nhất của cô ấy[p_]
[bg  time="1"  method="crossfade"  storage="bg_black.jpg" ]
[h_body st="H/back/body/b5.png" ][h_face st="H/back/face/a10.png" ]
[h_se st="00.png" ][h_tx st="H/back/tx/1-10.png" ][h_ef st="H/back/ef/1-10.png" ][call target="*x5_cen"]


#Sylvie
[r2_02]
Haa♥♥♥♥Haaa.♥♥♥♥[p_]

[eval exp="f.h_v=f.h_v+1" ]
[eval exp="f.lust=f.lust+3" ]
[eval exp="f.love=f.love+5" ]
[eval exp="f.heavn=f.heavn+1" ]
[if exp="f.m_morning<=0" ]
[eval  exp="f.m_morning=1" ]
[endif]
[jump  storage=""  target="*end" ]







*xx
[bg  time="100"  method="crossfade"  storage="H/kitchen.jpg" ]
[chara_mod name="face" time="200" storage="H/back/face/b1.png" ][h_ef st="H/back/ef/2-1.png" ]
[call storage="H/morning.ks" target="*show_set" ][show_effect][hide_black]

#Sylvie
[r2_05]Mn？！[p_]
[chara_mod name="face" time="200" storage="H/back/face/b2.png" ]
[eh_01]Ah~[name]...em đang dở tay một chút。[p_]
[na_1]Anh...muốn làm chuyện đó sao?[p_]
[kore_1]Vậy…hãy tiếp tục đi ạ♥[p_]
#
（Sylvie ngoan ngoãn đưa mông về phía tôi mà không nói bất cứ điều gì[p_]
[if exp="f.dress>=1 || f.neck>=1"]
[button  storage=""  target="*wear2"  graphic="ch/wear.png"    x="0"  y="200" ]
[if exp="f.Dne_b[1]==1 || f.Dne_b[2]==1 || f.Dne_b[3]==1 || f.Dne_b[4]==1"]
[button target="*nude_neck2" graphic="ch/unwear-ep.png" x="0" y="350" ][endif]
[button  target="*nude2"  graphic="ch/unwear.png"   x="0"  y="500" ]
[s]
[jump target="*wear2"][endif]

*nude_neck2
[cm]
[chara_mod name="neck" time="1000" storage="00.png" ]
（Tôi cởi dây nịch và từ từ cởi chiếc tạp dề xuống[p_]
[jump target="*wear2"]

*nude2
[cm]
[chara_mod name="neck" time="700" storage="00.png" ]
[eh_02]
[chara_mod name="dress" time="700" storage="00.png" ]
[if exp="f.dress>=21 && f.dress<=30" ]
[chara_mod name="arm" time="0" storage="H/back/body/a0_c.png" ][else]
[chara_mod name="arm" time="0" storage="H/back/body/a0.png" ][endif]
[eval exp="f.dress_save=f.dress"][eval exp="f.dress=0"]
[chara_show name="b_acc" time="700" wait="true" left="0.1" ]
（Tôi cởi  dây nịch và từ từ tuột quần áo xuống[p_]

*wear2
[cm]
[if exp="f.uncen=='true'"][h_body st="H/back/body/uncen/b0.png" ][else]
[h_body st="H/back/body/b0.png" ][endif]
[wet_2][wait_sou][r2_05]（cô ấy ngay lập tức bị ướt khi tôi chà xát dương vật vào mông cô ấy[p_]

#Sylvie
[if exp="f.uncen=='true'"][h_body st="H/back/body/uncen/b1.png" ][else]
[h_body st="H/back/body/b1.png" ][endif]
[h_ef st="H/back/ef/2-1.png" ][chara_mod name="face" time="400" storage="H/back/face/b3.png" ]
[r2_13]Haaa〜♥♥Mn…♥♥♥♥[p_]
#
[l_11]（Âm đạo của Sylvie chấp nhận dương vật của tôi mà không một phản kháng[r]
và cô ấy phát ra một tiếng rên ngọt ngào[p_]

（Có vẻ như tôi không cần kiềm chế bản thân mình[p_]
（Tôi liền tăng tốc độ ngay từ lúc bắt đầu[p_]
[h_body st="H/back/body/b2.png" ][h_ef2 st="H/back/ef2/1.png" ]
[if exp="f.dress>=21 && f.dress<=30" ]
[chara_mod name="arm" time="0" storage="H/back/body/a1_c.png" ][else]
[chara_mod name="arm" time="0" storage="H/back/body/a1.png" ][endif][h_face st="H/back/face/b4.png" ][wet_2]
[h_se st="H/back/se/2-4.png" ][h_tx st="H/back/tx/2-4.png" ][h_ef st="H/back/ef/2-4.png" ][call target="*x2_cen"]
#Sylvie
[quake_3][r2_14]Ah♥♥♥Mn！♥♥Fuuu♥♥♥[p_][l_03]
#
（Chân cô ấy đóng lại, siết chặt dương vật của tôi...[p_]
[r2_09]（Sylvie phát ra tiếng rên lớn khi tôi cọ xát bên trong cô ấy[p_]
[h_face st="H/back/face/b5.png" ]
[h_tx st="H/back/tx/2-5.png" ][h_ef st="H/back/ef/2-5.png" ]

#Sylvie
[r2_05]Ahh…♥！Ahhhh〜！♥♥♥[p_][l_04]
#
[quake  time="200"  count="3"  hmax="5"  wait="true"  ]
（cơ thể của Sylvie nhẹ run rẩy[lr_]
 Có vẻ như cô ấy đã kìm lại một chút[p_]
（Tôi trở nên trống rỗng trước vẻ đẹp và mùi hương quyến rũ từ cơ thể cô ấy, tôi tiếp tục đẩy sâu hơn, cọ xát tử cung cô ấy[p_]
#Sylvie
[r2_13]Ah♥♥Fuuu♥！♥♥♥♥！♥♥[p_][l_02]
（Nước của Sylvie chảy từ đùi xuống sàn nhà[p_]

[h_body st="H/back/body/b3.png" ][h_ef2 st="H/back/ef2/2.png" ][if exp="f.dress>=21 && f.dress<=30" ]
[chara_mod name="arm" time="0" storage="H/back/body/a2_c.png" ][else]
[chara_mod name="arm" time="0" storage="H/back/body/a2.png" ][endif][h_face st="H/back/face/b6.png" ][se_loop st="l-wet2.ogg" ]
[h_se st="H/back/se/2-6.png" ][h_tx st="H/back/tx/2-6.png" ][h_ef st="H/back/ef/2-6.png" ][call target="*x3_cen"]

#Sylvie
[r2_14]Fuuu！！♥♥Ahh〜！！♥♥♥[p_][l_09]
#
（Tôi đã đẩy với tốc độ cao[lr_]
và nó gây tiếng ồn mỗi khi hông của tôi và mông cô ấy chạm vào nhau[p_]
（Âm đạo của Sylvie càng ngày càng thắt chặt hơn trong khi tiếng rên của cô ấy cũng dần một to hơn[p_]

[h_face st="H/back/face/b7.png" ]
[h_tx st="H/back/tx/2-7.png" ][h_ef st="H/back/ef/2-7.png" ]

#Sylvie
[lc_06][quake_3]Ah！[name]♥♥Em，sắp ra♥♥♥♥[p_][l_05]
#
（Đầu gối của Sylvie run lên. Có vẻ như cô ấy sẽ mất cân bằng[p_]
[h_body st="H/back/body/b4.png" ][h_ef2 st="H/back/ef2/3.png" ][h_face st="H/back/face/b8.png" ]
[h_se st="H/back/se/2-8.png" ][h_tx st="H/back/tx/2-8.png" ][h_ef st="H/back/ef/2-8.png" ][call target="*x4_cen"]
[playse  storage="fin1.ogg"  clear="true"  ]

#Sylvie
[quake  time="300"  count="3"  hmax="12"  wait="true"  ]
[lc_04]Ahhhhhh♥♥♥！！♥！♥♥♥♥[p_][l_03]
#
（Khi cơ thể của Sylvie co giật, Tôi đẩy mạnh hết sức có thể，[r]
đổ đầy tinh dịch của tôi vào sâu trong cô ấy[p_]
[h_body st="H/back/body/b5.png" ][h_face st="H/back/face/b9.png" ]
[h_se st="00.png" ][h_tx st="H/back/tx/2-9.png" ][h_ef st="H/back/ef/2-9.png" ][call target="*x5_cen"]

#Sylvie
[syl][lc_06][quake_9]Ha…♥Haaa〜♥♥[p]

[eval exp="f.h_v=f.h_v+3" ]
[eval exp="f.lust=f.lust+10" ]
[eval exp="f.love=f.love+10" ]
[eval exp="f.heavn=f.heavn+3" ]


[if exp="f.m_morning<=1" ]
[eval  exp="f.m_morning=2" ]
[endif]

[jump  storage=""  target="*end" ]







*xxx
[h_face st="H/back/face/c1.png" ]
[call storage="H/morning.ks" target="*show_set" ][show_effect][hide_black]

#Sylvie
[r_06][quake  time="100"  count="3"  hmax="5"  wait="true"  ]Ahn！[name]♥[p_]
#
（Sylvie phát ra một tiếng rên rỉ ngọt ngào khi tôi nhẹ nhàng vuốt ve cặp mông của cô ấy[p_]
[h_face st="H/back/face/c2.png" ]
[h_ef st="H/back/ef/3-2.png" ]

#Sylvie
[eh_02]Ah,[name], Anh đang định làm gì với em？[p_]
#
（Khi Sylvie hiểu lý do tại sao tôi chạm vào mông cô ấy,  ngay lập tức cô ấy đẩy mông về phía tôi, mặt đỏ ửng lên[p_]
[wet_1][wait_sou][r2_13]（cô ấy đã khá ướt và nước dịch của em chảy dài xuống chân[p_]
[if exp="f.dress>=1 || f.neck>=1"]
[button  storage=""  target="*wear3"  graphic="ch/wear.png"    x="0"  y="200" ]
[if exp="f.Dne_b[1]==1 || f.Dne_b[2]==1 || f.Dne_b[3]==1 || f.Dne_b[4]==1"]
[button target="*nude_neck3" graphic="ch/unwear-ep.png" x="0" y="350" ][endif]
[button  target="*nude3"  graphic="ch/unwear.png"   x="0"  y="500" ]
[s]
[jump target="*wear3"][endif]

*nude_neck3
[cm]
[chara_mod name="neck" time="1000" storage="00.png" ]
（Tôi cởi dây nịch và từ từ cởi chiếc tạp dề xuống[p_]
[jump target="*wear3"]
*nude3
[cm]
[chara_mod name="neck" time="700" storage="00.png" ][eh_02]
[chara_mod name="dress" time="700" storage="00.png" ]
[chara_show name="b_acc" time="700" wait="true" left="0.1" ]
（Tôi cởi  dây nịch và từ từ tuột quần áo xuống[p_]

*wear3
[cm]
[if exp="f.uncen=='true'"][h_body st="H/back/body/uncen/b0.png" ][else]
[h_body st="H/back/body/b0.png" ][endif]

#Sylvie
[r_06]Aaaah〜♥Ahh……！♥♥♥[p_][l_03]
[if exp="f.uncen=='true'"][h_body st="H/back/body/uncen/b1.png" ][else]
[h_body st="H/back/body/b1.png" ][endif][h_face st="H/back/face/c3.png" ][se_loop st="l-wet1.ogg" ]
[h_se st="H/back/se/3-3.png" ][h_tx st="H/back/tx/3-3.png" ][h_ef st="H/back/ef/3-3.png" ][call target="*x1_cen"]
#
（Tôi ngay lập tức đẩy dương vật của tôi vào trong âm đạo ướt át của cô ấy[p_]

#Sylvie
[r_05]Mnnn...！♥Fuuu〜！♥♥♥[p_][l_04]
#
[r_03][quake  time="200"  count="3"  hmax="6"  wait="true"  ]（Cơ thể cô run rẩy mạnh hơn...[p_]

[h_body st="H/back/body/b2.png" ][h_ef2 st="H/back/ef2/1.png" ]
[if exp="f.dress>=21 && f.dress<=30" ]
[chara_mod name="arm" time="0" storage="H/back/body/a1_c.png" ][else]
[chara_mod name="arm" time="0" storage="H/back/body/a1.png" ][endif][h_face st="H/back/face/c4.png" ]
[h_se st="H/back/se/3-4.png" ][h_tx st="H/back/tx/3-4.png" ][h_ef st="H/back/ef/3-4.png" ][call target="*x2_cen"]


[r_12][quake  time="100"  count="3"  hmax="9"  wait="true"  ][l_05]（Tôi ngay lập tức đẩy mạnh hông mình, thậm chí còn không cho cô ấy một khoảng khắc để trấn tĩnh[p_]
[h_face st="H/back/face/c5.png" ]
[h_tx st="H/back/tx/3-5.png" ][h_ef st="H/back/ef/3-5.png" ]

#Sylvie
[wet_1][wait_sou][r2_13]Ahh♥!♥Fuuu♥♥♥Hiii!♥!!♥[p_][l_01]
#
[quake  time="200"  count="3"  hmax="4"  wait="true"  ]
（Âm đạo của Sylvie đã được co giật và thắt chặt thất thường, như thể cầu xin tôi hãy thỏa mãn nó một cách thô bạo nhất[p_]
（Sylvie co thắt mỗi khi tôi đẩy vào bên trong [p_][l_01]
#Sylvie
[r2_14]Ahh♥…Hee♥…Aaaah♥♥♥[p_]
#
（cô ấy dường như không thể đứng vững được nữa và khập khiễng khi tôi bế vòng eo em lên[p_]
（Nó có vẻ như cô ấy đã khá quen rồi[r]
（và tôi có thể cảm thấy âm đạo của cô ấy đang run rẩy[p_]
[h_body st="H/back/body/b3.png" ][h_ef2 st="H/back/ef2/2.png" ][if exp="f.dress>=21 && f.dress<=30" ]
[chara_mod name="arm" time="0" storage="H/back/body/a2_c.png" ][else]
[chara_mod name="arm" time="0" storage="H/back/body/a2.png" ][endif][h_face st="H/back/face/c6.png" ][se_loop st="l-wet2.ogg" ]
[h_se st="H/back/se/3-6.png" ][h_tx st="H/back/tx/3-6.png" ][h_ef st="H/back/ef/3-6.png" ][call target="*x3_cen"]

#Sylvie
[r2_05] Aaaah〜！♥Ahhhh〜！♥♥♥[p_][l_06]
#
（Nước của Sylvie đang chảy ra, tạo ra một vũng nhỏ trong nhà bếp[p_]
（Tôi đẩy với tốc độ cao[r]
và nó tạo nên một tiếng ồn lớn mỗi khi hông của tôi chạm vào mông cô ấy[p_]
#Sylvie
[lc_11] [quake  time="100"  count="3"  hmax="5"  wait="true"  ]Aaaaah〜！♥♥Fuuuu♥♥♥♥♥[p_]
（Sylvie phát ra tiếng động như một con thú đang phát cuồng trong thuốc lắc[p_]
[h_body st="H/back/body/b4.png" ][h_ef2 st="H/back/ef2/3.png" ][h_face st="H/back/face/c8.png" ][se_nloop st="fin1.ogg" ]
[h_se st="H/back/se/3-8.png" ][h_tx st="H/back/tx/3-8.png" ][h_ef st="H/back/ef/3-8.png" ][call target="*x4_cen"]

#Sylvie
[lc_06] Aah〜!♥ Sắp ra♥♥!! Em sắp ra!♥♥[lr]
[lc_01][quake  time="250"  count="3"  hmax="3"  wait="true"  ] Ah!!♥ Aaaah!♥!♥♥♥[p_][lc_03]
#
（Sylvie bắt đầu run rẩy hơn[p_]
（Tôi cũng đến giới hạn của tôi và đẩy mạnh hơn[r]
[wet_2]dương vật của tôi đang chà xát vào âm đạo của cô ấy.[p_]
[playse  storage="fin1.ogg"  clear="true"  ]

#Sylvie
[lc_03] [quake  time="200"  count="3"  hmax="8"  wait="true"  ]Em ra rồiiiiiiiii!!!♥♥♥♥[p_]
#
（Khi cơ thể của Sylvie co giật, Tôi đẩy mạnh hết sức có thể[r]
[wet_1] đổ tinh dịch của tôi vào phần sâu nhất của cô ấy[p_]

[h_body st="H/back/body/b5.png" ][h_face st="H/back/face/c9.png" ]
[h_se st="H/back/se/3-9.png" ][h_tx st="H/back/tx/3-9.png" ][h_ef st="H/back/ef/3-9.png" ][call target="*x5_cen"]
#Sylvie
[lc_05] Aaah〜!♥♥... Haaaah〜!♥!♥♥[wait_sou][wet_1][p_]


[eval exp="f.h_v=f.h_v+5" ]
[eval exp="f.lust=f.lust+15" ]
[eval exp="f.love=f.love+15" ]
[eval exp="f.heavn=f.heavn+5" ]

[if exp="f.m_morning<=2" ]
[eval  exp="f.m_morning=3" ]
[endif]
[jump  storage=""  target="*end" ]








*end
[black]
[if exp="f.dress==0"][eval exp="f.dress=f.dress_save"][eval exp="f.dress_save=0"][endif]
[cm] 
[fadeoutbgm time=500]
[stopbgm]
#
[r2_05]（Khi tôi thả cô ấy ra, Sylvie ngã quỵ xuống.[p_]
（Có vẻ như hông của cô ấy hơi đưa ra, và sẽ khó để có thể di chuyển trong một lúc nữa.[p_]
[eval exp="f.cum=f.cum+1" ]
[eval exp="f.sex=f.sex+1" ]
[eval exp="f.sexless=0" ]
[eval exp="f.out=0" ]
[eval exp="f.sexless=0"]
[eval exp="f.sexless_c=0"]

...[p_]
[eval exp="f.act=f.act+1"]
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


;;---------------------------set---------------------------------------
*set
[if exp="f.dress_save>=1001 && f.dress_save<=1017 || f.dress_save>=2011 && f.dress_save<=2014" ]
[elsif exp="f.dress==1001" ][eval exp="f.dress_save=1001" ][elsif exp="f.dress==1002" ][eval exp="f.dress_save=1002" ]
[elsif exp="f.dress==1003" ][eval exp="f.dress_save=1003" ][elsif exp="f.dress==1004" ][eval exp="f.dress_save=1004" ]
[elsif exp="f.dress==1005" ][eval exp="f.dress_save=1005" ][elsif exp="f.dress==1006" ][eval exp="f.dress_save=1006" ]
[elsif exp="f.dress==1007" ][eval exp="f.dress_save=1007" ][elsif exp="f.dress==1011" ][eval exp="f.dress_save=1011" ]
[elsif exp="f.dress==1012" ][eval exp="f.dress_save=1012" ][elsif exp="f.dress==1013" ][eval exp="f.dress_save=1013" ]
[elsif exp="f.dress==1014" ][eval exp="f.dress_save=1014" ][elsif exp="f.dress==1015" ][eval exp="f.dress_save=1015" ]
[elsif exp="f.dress==1016" ][eval exp="f.dress_save=1016" ][elsif exp="f.dress==1017" ][eval exp="f.dress_save=1017" ][elsif exp="f.dress==1021" ][eval exp="f.dress_save=1021" ][elsif exp="f.dress==1022" ][eval exp="f.dress_save=1022" ][elsif exp="f.dress==1023" ][eval exp="f.dress_save=1023" ][elsif exp="f.dress==1024" ][eval exp="f.dress_save=1024" ][elsif exp="f.dress==1025" ][eval exp="f.dress_save=1025" ][elsif exp="f.dress==1026" ][eval exp="f.dress_save=1026" ]
[elsif exp="f.neck==11" ][eval exp="f.dress_save=2011" ][elsif exp="f.neck==12" ][eval exp="f.dress_save=2012" ]
[elsif exp="f.neck==13" ][eval exp="f.dress_save=2013" ][elsif exp="f.neck==14" ][eval exp="f.dress_save=2014" ][endif]
[set_black][mod_win st="o/win/LR.png" ]
[layermode graphic="effect/H/kitchen.png" time="0" mode="lighten" wait="false" ]


[chara_mod name="body" time="0" storage="H/back/body/b0_non.png" ]
[if exp="f.dress>=21 && f.dress<=30" ]
[chara_mod name="arm" time="0" storage="H/back/body/a0_c.png" ][else]
[chara_mod name="arm" time="0" storage="H/back/body/a0.png" ][endif]
[chara_mod name="arm_b" time="0" storage="H/back/body/a0_.png" ]
[chara_mod name="ef2" time="0" storage="00.png" ]

[if exp="f.b_acc==11" ][mod_b_acc st="H/back/b_acc/a1.png" ]
[elsif exp="f.b_acc==21 || f.b_acc==31 || f.b_acc==41" ][mod_b_acc st="H/back/b_acc/b1.png" ]
[elsif exp="f.b_acc==22 || f.b_acc==32 || f.b_acc==42" ][mod_b_acc st="H/back/b_acc/b2.png" ]
[else][mod_b_acc st="00.png" ][endif]

[if exp="f.hat==1" ][chara_mod name="hat" time="0" storage="H/back/hat/a1.gif" ]
;[elsif exp="f.hat==2" ][chara_mod name="hat" time="0" storage="H/back/hat/a2.png" ]
[else][chara_mod name="hat" time="0" storage="00.png" ][endif]

[if exp="f.glasses==1" ][mod_glasses st="H/back/glass/a1.png" ][elsif exp="f.glasses==2" ][mod_glasses st="H/back/glass/a2.png" ]
[elsif exp="f.glasses==3" ][mod_glasses st="H/back/glass/a3.png" ][elsif exp="f.glasses==4" ][mod_glasses st="H/back/glass/a4.png" ]
[elsif exp="f.glasses==5" ][mod_glasses st="H/back/glass/a5.png" ][elsif exp="f.glasses==6" ][mod_glasses st="H/back/glass/a6.png" ]
[elsif exp="f.glasses==7" ][mod_glasses st="H/back/glass/a7.png" ][elsif exp="f.glasses==8" ][mod_glasses st="H/back/glass/a8.png" ]
[elsif exp="f.glasses==9" ][mod_glasses st="H/back/glass/a9.png" ][elsif exp="f.glasses==11" ][mod_glasses st="H/back/glass/b1.png" ]
[elsif exp="f.glasses==12" ][mod_glasses st="H/back/glass/b2.png" ][elsif exp="f.glasses==13" ][mod_glasses st="H/back/glass/b3.png" ]
[elsif exp="f.glasses==14" ][mod_glasses st="H/back/glass/b4.png" ][elsif exp="f.glasses==15" ][mod_glasses st="H/back/glass/b5.png" ]
[elsif exp="f.glasses==16" ][mod_glasses st="H/back/glass/b6.png" ][elsif exp="f.glasses==17" ][mod_glasses st="H/back/glass/b7.png" ]
[elsif exp="f.glasses==18" ][mod_glasses st="H/back/glass/b8.png" ][elsif exp="f.glasses==19" ][mod_glasses st="H/back/glass/b9.png" ]
[elsif exp="f.glasses==21" ][mod_glasses st="H/back/glass/c1.png" ][elsif exp="f.glasses==22" ][mod_glasses st="H/back/glass/c2.png" ]
[elsif exp="f.glasses==23" ][mod_glasses st="H/back/glass/c3.png" ][elsif exp="f.glasses==24" ][mod_glasses st="H/back/glass/c4.png" ]
[elsif exp="f.glasses==25" ][mod_glasses st="H/back/glass/c5.png" ][elsif exp="f.glasses==26" ][mod_glasses st="H/back/glass/c6.png" ]
[elsif exp="f.glasses==27" ][mod_glasses st="H/back/glass/c7.png" ][elsif exp="f.glasses==28" ][mod_glasses st="H/back/glass/c8.png" ]
[elsif exp="f.glasses==29" ][mod_glasses st="H/back/glass/c9.png" ][else][mod_glasses st="00.png" ][endif]

;;setリボン
[chara_mod name="ribbon" time="0" storage="00.png" ]

[if exp="f.hair_style==1" ][chara_mod name="hair_b" time="0" storage="H/back/hair/_a.png" ]
[elsif exp="f.hair_style==2" ][chara_mod name="hair_b" time="0" storage="H/back/hair/_b.png" ]
[elsif exp="f.hair_style==3" ][chara_mod name="hair_b" time="0" storage="H/back/hair/_c_.png" ][chara_mod name="hat" time="0" storage="H/back/hair/_c.png" ]
[elsif exp="f.hair_style==4" ][chara_mod name="hair_b" time="0" storage="H/back/hair/_d.png" ]
[elsif exp="f.hair_style==5" ][chara_mod name="hair_b" time="0" storage="H/back/hair/_e.png" ]
[elsif exp="f.hair_style==6" ][chara_mod name="hair_b" time="0" storage="H/back/hair/_f.png" ]
[else][chara_mod name="hair_b" time="0" storage="H/back/hair/nr_.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/nr.png" ][endif]

[if exp="f.hair_style==1 && f.hair_band==11" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_a1.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==12" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_a2.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==13" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_a3.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==14" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_a4.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==15" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_a5.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==16" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_a6.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==17" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_a7.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==18" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_a8.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==19" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_a9.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==21" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_a1.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==22" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_a2.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==23" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_a3.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==24" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_a4.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==25" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_a5.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==26" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_a6.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==27" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_a7.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==28" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_a8.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==29" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_a9.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==31" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_a1.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==32" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_a2.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==33" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_a3.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==34" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_a4.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==35" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_a5.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==36" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_a6.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==37" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_a7.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==38" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_a8.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==39" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_a9.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==41" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_a1.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==42" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_a2.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==43" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_a3.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==44" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_a4.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==45" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_a5.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==46" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_a6.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==47" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_a7.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==48" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_a8.png" ]
[elsif exp="f.hair_style==1 && f.hair_band==49" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_a9.png" ]

[elsif exp="f.hair_style==2 && f.hair_band==11" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_b1.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==12" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_b2.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==13" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_b3.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==14" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_b4.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==15" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_b5.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==16" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_b6.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==17" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_b7.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==18" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_b8.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==19" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_b9.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==21" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_b1.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==22" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_b2.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==23" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_b3.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==24" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_b4.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==25" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_b5.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==26" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_b6.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==27" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_b7.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==28" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_b8.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==29" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_b9.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==31" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_b1.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==32" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_b2.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==33" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_b3.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==34" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_b4.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==35" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_b5.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==36" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_b6.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==37" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_b7.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==38" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_b8.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==39" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_b9.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==41" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_b1.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==42" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_b2.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==43" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_b3.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==44" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_b4.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==45" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_b5.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==46" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_b6.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==47" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_b7.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==48" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_b8.png" ]
[elsif exp="f.hair_style==2 && f.hair_band==49" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_b9.png" ]


[elsif exp="f.hair_style==3 && f.hair_band==11" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e1.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/a_c1.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==12" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e2.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/a_c2.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==13" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e3.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/a_c3.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==14" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e4.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/a_c4.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==15" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e5.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/a_c5.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==16" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e6.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/a_c6.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==17" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e7.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/a_c7.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==18" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e8.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/a_c8.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==19" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e9.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/a_c9.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==21" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e1.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/b_c1.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==22" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e2.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/b_c2.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==23" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e3.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/b_c3.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==24" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e4.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/b_c4.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==25" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e5.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/b_c5.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==26" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e6.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/b_c6.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==27" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e7.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/b_c7.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==28" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e8.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/b_c8.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==29" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e9.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/b_c9.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==31" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e1.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/c_c1.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==32" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e2.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/c_c2.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==33" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e3.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/c_c3.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==34" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e4.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/c_c4.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==35" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e5.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/c_c5.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==36" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e6.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/c_c6.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==37" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e7.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/c_c7.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==38" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e8.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/c_c8.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==39" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e9.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/c_c9.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==41" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e1.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/d_c1.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==42" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e2.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/d_c2.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==43" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e3.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/d_c3.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==44" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e4.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/d_c4.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==45" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e5.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/d_c5.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==46" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e6.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/d_c6.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==47" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e7.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/d_c7.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==48" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e8.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/d_c8.png" ]
[elsif exp="f.hair_style==3 && f.hair_band==49" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e9.png" ][chara_mod name="ribbon" time="0" storage="H/back/hair/d_c9.png" ]

[elsif exp="f.hair_style==4 && f.hair_band==11" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_d1.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==12" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_d2.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==13" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_d3.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==14" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_d4.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==15" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_d5.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==16" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_d6.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==17" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_d7.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==18" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_d8.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==19" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_d9.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==21" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_d1.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==22" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_d2.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==23" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_d3.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==24" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_d4.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==25" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_d5.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==26" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_d6.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==27" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_d7.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==28" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_d8.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==29" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_d9.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==31" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_d1.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==32" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_d2.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==33" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_d3.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==34" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_d4.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==35" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_d5.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==36" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_d6.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==37" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_d7.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==38" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_d8.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==39" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_d9.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==41" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_d1.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==42" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_d2.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==43" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_d3.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==44" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_d4.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==45" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_d5.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==46" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_d6.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==47" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_d7.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==48" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_d8.png" ]
[elsif exp="f.hair_style==4 && f.hair_band==49" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_d9.png" ]

[elsif exp="f.hair_style==5 && f.hair_band==11" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e1.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==12" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e2.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==13" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e3.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==14" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e4.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==15" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e5.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==16" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e6.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==17" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e7.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==18" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e8.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==19" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/a_e9.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==21" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e1.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==22" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e2.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==23" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e3.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==24" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e4.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==25" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e5.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==26" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e6.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==27" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e7.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==28" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e8.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==29" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/b_e9.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==31" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e1.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==32" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e2.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==33" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e3.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==34" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e4.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==35" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e5.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==36" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e6.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==37" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e7.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==38" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e8.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==39" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/c_e9.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==41" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e1.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==42" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e2.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==43" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e3.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==44" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e4.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==45" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e5.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==46" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e6.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==47" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e7.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==48" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e8.png" ]
[elsif exp="f.hair_style==5 && f.hair_band==49" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/d_e9.png" ]

[elsif exp="f.hair_style==6 && f.hair_band==51" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/e_f1.png" ]
[elsif exp="f.hair_style==6 && f.hair_band==52" ][chara_mod name="ribbon_b" time="0" storage="H/back/hair/e_f2.png" ]
[endif]

;;set/前髪
[if exp="f.front_hair==1" ][chara_mod name="hair_f" time="0" storage="H/back/body/fh1.png" ]
[elsif exp="f.front_hair==2" ][chara_mod name="hair_f" time="0" storage="H/back/body/fh2.png" ]
[elsif exp="f.front_hair==3" ][chara_mod name="hair_f" time="0" storage="H/back/body/fh3.png" ]
[elsif exp="f.front_hair==4" ][chara_mod name="hair_f" time="0" storage="H/back/body/fh4.png" ]
[elsif exp="f.front_hair==5" ][chara_mod name="hair_f" time="0" storage="H/back/body/fh5.png" ]
[elsif exp="f.front_hair==6" ][chara_mod name="hair_f" time="0" storage="H/back/body/fh6.png" ]
[else][chara_mod name="hair_f" time="0" storage="H/back/body/fh.png" ][endif]

[if exp="f.front_hair==1 && f.pin==1" ][chara_mod name="pin" time="0" storage="H/back/pin/a_a1.png" ]
[elsif exp="f.front_hair==1 && f.pin==2" ][chara_mod name="pin" time="0" storage="H/back/pin/a_a2.png" ]
[elsif exp="f.front_hair==1 && f.pin==3" ][chara_mod name="pin" time="0" storage="H/back/pin/a_a3.png" ]
[elsif exp="f.front_hair==1 && f.pin==4" ][chara_mod name="pin" time="0" storage="H/back/pin/a_a4.png" ]
[elsif exp="f.front_hair==1 && f.pin==5" ][chara_mod name="pin" time="0" storage="H/back/pin/a_a5.png" ]
[elsif exp="f.front_hair==1 && f.pin==6" ][chara_mod name="pin" time="0" storage="H/back/pin/a_a6.png" ]
[elsif exp="f.front_hair==1 && f.pin==7" ][chara_mod name="pin" time="0" storage="H/back/pin/a_a7.png" ]
[elsif exp="f.front_hair==1 && f.pin==8" ][chara_mod name="pin" time="0" storage="H/back/pin/a_a8.png" ]
[elsif exp="f.front_hair==1 && f.pin==9" ][chara_mod name="pin" time="0" storage="H/back/pin/a_a9.png" ]

[elsif exp="f.front_hair==1 && f.pin==11" ][chara_mod name="pin" time="0" storage="H/back/pin/b_a1.png" ]
[elsif exp="f.front_hair==1 && f.pin==12" ][chara_mod name="pin" time="0" storage="H/back/pin/b_a2.png" ]
[elsif exp="f.front_hair==1 && f.pin==13" ][chara_mod name="pin" time="0" storage="H/back/pin/b_a3.png" ]
[elsif exp="f.front_hair==1 && f.pin==14" ][chara_mod name="pin" time="0" storage="H/back/pin/b_a4.png" ]
[elsif exp="f.front_hair==1 && f.pin==15" ][chara_mod name="pin" time="0" storage="H/back/pin/b_a5.png" ]
[elsif exp="f.front_hair==1 && f.pin==16" ][chara_mod name="pin" time="0" storage="H/back/pin/b_a6.png" ]
[elsif exp="f.front_hair==1 && f.pin==17" ][chara_mod name="pin" time="0" storage="H/back/pin/b_a7.png" ]
[elsif exp="f.front_hair==1 && f.pin==18" ][chara_mod name="pin" time="0" storage="H/back/pin/b_a8.png" ]
[elsif exp="f.front_hair==1 && f.pin==19" ][chara_mod name="pin" time="0" storage="H/back/pin/b_a9.png" ]

[elsif exp="f.front_hair==1 && f.pin==21" ][chara_mod name="pin" time="0" storage="H/back/pin/c_a1.png" ]
[elsif exp="f.front_hair==1 && f.pin==22" ][chara_mod name="pin" time="0" storage="H/back/pin/c_a2.png" ]
[elsif exp="f.front_hair==1 && f.pin==23" ][chara_mod name="pin" time="0" storage="H/back/pin/c_a3.png" ]
[elsif exp="f.front_hair==1 && f.pin==24" ][chara_mod name="pin" time="0" storage="H/back/pin/c_a4.png" ]
[elsif exp="f.front_hair==1 && f.pin==25" ][chara_mod name="pin" time="0" storage="H/back/pin/c_a5.png" ]
[elsif exp="f.front_hair==1 && f.pin==26" ][chara_mod name="pin" time="0" storage="H/back/pin/c_a6.png" ]
[elsif exp="f.front_hair==1 && f.pin==27" ][chara_mod name="pin" time="0" storage="H/back/pin/c_a7.png" ]
[elsif exp="f.front_hair==1 && f.pin==28" ][chara_mod name="pin" time="0" storage="H/back/pin/c_a8.png" ]
[elsif exp="f.front_hair==1 && f.pin==29" ][chara_mod name="pin" time="0" storage="H/back/pin/c_a9.png" ]

[elsif exp="f.front_hair==1 && f.pin==31" ][chara_mod name="pin" time="0" storage="H/back/pin/d_a1.png" ]
[elsif exp="f.front_hair==1 && f.pin==32" ][chara_mod name="pin" time="0" storage="H/back/pin/d_a2.png" ]
[elsif exp="f.front_hair==1 && f.pin==33" ][chara_mod name="pin" time="0" storage="H/back/pin/d_a3.png" ]

[elsif exp="f.front_hair==2 && f.pin==1" ][chara_mod name="pin" time="0" storage="H/back/pin/a_b1.png" ]
[elsif exp="f.front_hair==2 && f.pin==2" ][chara_mod name="pin" time="0" storage="H/back/pin/a_b2.png" ]
[elsif exp="f.front_hair==2 && f.pin==3" ][chara_mod name="pin" time="0" storage="H/back/pin/a_b3.png" ]
[elsif exp="f.front_hair==2 && f.pin==4" ][chara_mod name="pin" time="0" storage="H/back/pin/a_b4.png" ]
[elsif exp="f.front_hair==2 && f.pin==5" ][chara_mod name="pin" time="0" storage="H/back/pin/a_b5.png" ]
[elsif exp="f.front_hair==2 && f.pin==6" ][chara_mod name="pin" time="0" storage="H/back/pin/a_b6.png" ]
[elsif exp="f.front_hair==2 && f.pin==7" ][chara_mod name="pin" time="0" storage="H/back/pin/a_b7.png" ]
[elsif exp="f.front_hair==2 && f.pin==8" ][chara_mod name="pin" time="0" storage="H/back/pin/a_b8.png" ]
[elsif exp="f.front_hair==2 && f.pin==9" ][chara_mod name="pin" time="0" storage="H/back/pin/a_b9.png" ]

[elsif exp="f.front_hair==2 && f.pin==11" ][chara_mod name="pin" time="0" storage="H/back/pin/b_b1.png" ]
[elsif exp="f.front_hair==2 && f.pin==12" ][chara_mod name="pin" time="0" storage="H/back/pin/b_b2.png" ]
[elsif exp="f.front_hair==2 && f.pin==13" ][chara_mod name="pin" time="0" storage="H/back/pin/b_b3.png" ]
[elsif exp="f.front_hair==2 && f.pin==14" ][chara_mod name="pin" time="0" storage="H/back/pin/b_b4.png" ]
[elsif exp="f.front_hair==2 && f.pin==15" ][chara_mod name="pin" time="0" storage="H/back/pin/b_b5.png" ]
[elsif exp="f.front_hair==2 && f.pin==16" ][chara_mod name="pin" time="0" storage="H/back/pin/b_b6.png" ]
[elsif exp="f.front_hair==2 && f.pin==17" ][chara_mod name="pin" time="0" storage="H/back/pin/b_b7.png" ]
[elsif exp="f.front_hair==2 && f.pin==18" ][chara_mod name="pin" time="0" storage="H/back/pin/b_b8.png" ]
[elsif exp="f.front_hair==2 && f.pin==19" ][chara_mod name="pin" time="0" storage="H/back/pin/b_b9.png" ]

[elsif exp="f.front_hair==2 && f.pin==21" ][chara_mod name="pin" time="0" storage="H/back/pin/c_b1.png" ]
[elsif exp="f.front_hair==2 && f.pin==22" ][chara_mod name="pin" time="0" storage="H/back/pin/c_b2.png" ]
[elsif exp="f.front_hair==2 && f.pin==23" ][chara_mod name="pin" time="0" storage="H/back/pin/c_b3.png" ]
[elsif exp="f.front_hair==2 && f.pin==24" ][chara_mod name="pin" time="0" storage="H/back/pin/c_b4.png" ]
[elsif exp="f.front_hair==2 && f.pin==25" ][chara_mod name="pin" time="0" storage="H/back/pin/c_b5.png" ]
[elsif exp="f.front_hair==2 && f.pin==26" ][chara_mod name="pin" time="0" storage="H/back/pin/c_b6.png" ]
[elsif exp="f.front_hair==2 && f.pin==27" ][chara_mod name="pin" time="0" storage="H/back/pin/c_b7.png" ]
[elsif exp="f.front_hair==2 && f.pin==28" ][chara_mod name="pin" time="0" storage="H/back/pin/c_b8.png" ]
[elsif exp="f.front_hair==2 && f.pin==29" ][chara_mod name="pin" time="0" storage="H/back/pin/c_b9.png" ]

[elsif exp="f.front_hair==2 && f.pin==31" ][chara_mod name="pin" time="0" storage="H/back/pin/d_b1.png" ]
[elsif exp="f.front_hair==2 && f.pin==32" ][chara_mod name="pin" time="0" storage="H/back/pin/d_b2.png" ]
[elsif exp="f.front_hair==2 && f.pin==33" ][chara_mod name="pin" time="0" storage="H/back/pin/d_b3.png" ]

[elsif exp="f.front_hair==3 && f.pin==1" ][chara_mod name="pin" time="0" storage="H/back/pin/a_c1.png" ]
[elsif exp="f.front_hair==3 && f.pin==2" ][chara_mod name="pin" time="0" storage="H/back/pin/a_c2.png" ]
[elsif exp="f.front_hair==3 && f.pin==3" ][chara_mod name="pin" time="0" storage="H/back/pin/a_c3.png" ]
[elsif exp="f.front_hair==3 && f.pin==4" ][chara_mod name="pin" time="0" storage="H/back/pin/a_c4.png" ]
[elsif exp="f.front_hair==3 && f.pin==5" ][chara_mod name="pin" time="0" storage="H/back/pin/a_c5.png" ]
[elsif exp="f.front_hair==3 && f.pin==6" ][chara_mod name="pin" time="0" storage="H/back/pin/a_c6.png" ]
[elsif exp="f.front_hair==3 && f.pin==7" ][chara_mod name="pin" time="0" storage="H/back/pin/a_c7.png" ]
[elsif exp="f.front_hair==3 && f.pin==8" ][chara_mod name="pin" time="0" storage="H/back/pin/a_c8.png" ]
[elsif exp="f.front_hair==3 && f.pin==9" ][chara_mod name="pin" time="0" storage="H/back/pin/a_c9.png" ]

[elsif exp="f.front_hair==3 && f.pin==11" ][chara_mod name="pin" time="0" storage="H/back/pin/b_c1.png" ]
[elsif exp="f.front_hair==3 && f.pin==12" ][chara_mod name="pin" time="0" storage="H/back/pin/b_c2.png" ]
[elsif exp="f.front_hair==3 && f.pin==13" ][chara_mod name="pin" time="0" storage="H/back/pin/b_c3.png" ]
[elsif exp="f.front_hair==3 && f.pin==14" ][chara_mod name="pin" time="0" storage="H/back/pin/b_c4.png" ]
[elsif exp="f.front_hair==3 && f.pin==15" ][chara_mod name="pin" time="0" storage="H/back/pin/b_c5.png" ]
[elsif exp="f.front_hair==3 && f.pin==16" ][chara_mod name="pin" time="0" storage="H/back/pin/b_c6.png" ]
[elsif exp="f.front_hair==3 && f.pin==17" ][chara_mod name="pin" time="0" storage="H/back/pin/b_c7.png" ]
[elsif exp="f.front_hair==3 && f.pin==18" ][chara_mod name="pin" time="0" storage="H/back/pin/b_c8.png" ]
[elsif exp="f.front_hair==3 && f.pin==19" ][chara_mod name="pin" time="0" storage="H/back/pin/b_c9.png" ]

[elsif exp="f.front_hair==3 && f.pin==21" ][chara_mod name="pin" time="0" storage="H/back/pin/c_c1.png" ]
[elsif exp="f.front_hair==3 && f.pin==22" ][chara_mod name="pin" time="0" storage="H/back/pin/c_c2.png" ]
[elsif exp="f.front_hair==3 && f.pin==23" ][chara_mod name="pin" time="0" storage="H/back/pin/c_c3.png" ]
[elsif exp="f.front_hair==3 && f.pin==24" ][chara_mod name="pin" time="0" storage="H/back/pin/c_c4.png" ]
[elsif exp="f.front_hair==3 && f.pin==25" ][chara_mod name="pin" time="0" storage="H/back/pin/c_c5.png" ]
[elsif exp="f.front_hair==3 && f.pin==26" ][chara_mod name="pin" time="0" storage="H/back/pin/c_c6.png" ]
[elsif exp="f.front_hair==3 && f.pin==27" ][chara_mod name="pin" time="0" storage="H/back/pin/c_c7.png" ]
[elsif exp="f.front_hair==3 && f.pin==28" ][chara_mod name="pin" time="0" storage="H/back/pin/c_c8.png" ]
[elsif exp="f.front_hair==3 && f.pin==29" ][chara_mod name="pin" time="0" storage="H/back/pin/c_c9.png" ]

[elsif exp="f.front_hair==3 && f.pin==31" ][chara_mod name="pin" time="0" storage="H/back/pin/d_c1.png" ]
[elsif exp="f.front_hair==3 && f.pin==32" ][chara_mod name="pin" time="0" storage="H/back/pin/d_c2.png" ]
[elsif exp="f.front_hair==3 && f.pin==33" ][chara_mod name="pin" time="0" storage="H/back/pin/d_c3.png" ]

;/ヘアピン（オリジナル
;[elsif exp="f.front_hair==1 && f.pin==9001" ][chara_mod name="pin" time="0" storage="original/pin/S_va1.png" ]
;[elsif exp="f.front_hair==1 && f.pin==9002" ][chara_mod name="pin" time="0" storage="original/pin/S_va2.png" ]
;[elsif exp="f.front_hair==1 && f.pin==9003" ][chara_mod name="pin" time="0" storage="original/pin/S_va3.png" ]
;[elsif exp="f.front_hair==1 && f.pin==9004" ][chara_mod name="pin" time="0" storage="original/pin/S_va4.png" ]
;[elsif exp="f.front_hair==1 && f.pin==9005" ][chara_mod name="pin" time="0" storage="original/pin/S_va5.png" ]
;[elsif exp="f.front_hair==1 && f.pin==9006" ][chara_mod name="pin" time="0" storage="original/pin/S_va6.png" ]
;[elsif exp="f.front_hair==1 && f.pin==9007" ][chara_mod name="pin" time="0" storage="original/pin/S_va7.png" ]
;[elsif exp="f.front_hair==1 && f.pin==9008" ][chara_mod name="pin" time="0" storage="original/pin/S_va8.png" ]
;[elsif exp="f.front_hair==1 && f.pin==9009" ][chara_mod name="pin" time="0" storage="original/pin/S_va9.png" ]
;[elsif exp="f.front_hair==1 && f.pin==9010" ][chara_mod name="pin" time="0" storage="original/pin/S_va9.png" ]

;[elsif exp="f.front_hair==2 && f.pin==9001" ][chara_mod name="pin" time="0" storage="original/pin/S_vb1.png" ]
;[elsif exp="f.front_hair==2 && f.pin==9002" ][chara_mod name="pin" time="0" storage="original/pin/S_vb2.png" ]
;[elsif exp="f.front_hair==2 && f.pin==9003" ][chara_mod name="pin" time="0" storage="original/pin/S_vb3.png" ]
;[elsif exp="f.front_hair==2 && f.pin==9004" ][chara_mod name="pin" time="0" storage="original/pin/S_vb4.png" ]
;[elsif exp="f.front_hair==2 && f.pin==9005" ][chara_mod name="pin" time="0" storage="original/pin/S_vb5.png" ]
;[elsif exp="f.front_hair==2 && f.pin==9006" ][chara_mod name="pin" time="0" storage="original/pin/S_vb6.png" ]
;[elsif exp="f.front_hair==2 && f.pin==9007" ][chara_mod name="pin" time="0" storage="original/pin/S_vb7.png" ]
;[elsif exp="f.front_hair==2 && f.pin==9008" ][chara_mod name="pin" time="0" storage="original/pin/S_vb8.png" ]
;[elsif exp="f.front_hair==2 && f.pin==9009" ][chara_mod name="pin" time="0" storage="original/pin/S_vb9.png" ]
;[elsif exp="f.front_hair==2 && f.pin==9010" ][chara_mod name="pin" time="0" storage="original/pin/S_vb9.png" ]

;[elsif exp="f.front_hair==3 && f.pin==9001" ][chara_mod name="pin" time="0" storage="original/pin/S_vc1.png" ]
;[elsif exp="f.front_hair==3 && f.pin==9002" ][chara_mod name="pin" time="0" storage="original/pin/S_vc2.png" ]
;[elsif exp="f.front_hair==3 && f.pin==9003" ][chara_mod name="pin" time="0" storage="original/pin/S_vc3.png" ]
;[elsif exp="f.front_hair==3 && f.pin==9004" ][chara_mod name="pin" time="0" storage="original/pin/S_vc4.png" ]
;[elsif exp="f.front_hair==3 && f.pin==9005" ][chara_mod name="pin" time="0" storage="original/pin/S_vc5.png" ]
;[elsif exp="f.front_hair==3 && f.pin==9006" ][chara_mod name="pin" time="0" storage="original/pin/S_vc6.png" ]
;[elsif exp="f.front_hair==3 && f.pin==9007" ][chara_mod name="pin" time="0" storage="original/pin/S_vc7.png" ]
;[elsif exp="f.front_hair==3 && f.pin==9008" ][chara_mod name="pin" time="0" storage="original/pin/S_vc8.png" ]
;[elsif exp="f.front_hair==3 && f.pin==9009" ][chara_mod name="pin" time="0" storage="original/pin/S_vc9.png" ]
;[elsif exp="f.front_hair==3 && f.pin==9010" ][chara_mod name="pin" time="0" storage="original/pin/S_vc9.png" ]

[else][chara_mod name="pin" time="0" storage="00.png" ][endif]
[reset_effect][return]

;;set_sep
*set_neck
[if exp="f.dress_save==1001" ][chara_mod name="dress" time="0" storage="H/back/dress/xa1.png" ]
[elsif exp="f.dress_save==1002" ][chara_mod name="dress" time="0" storage="H/back/dress/xa2.png" ]
[elsif exp="f.dress_save==1003" ][chara_mod name="dress" time="0" storage="H/back/dress/xa3.png" ]
[elsif exp="f.dress_save==1004" ][chara_mod name="dress" time="0" storage="H/back/dress/xa4.png" ]
[elsif exp="f.dress_save==1005" ][chara_mod name="dress" time="0" storage="H/back/dress/xa5.png" ]
[elsif exp="f.dress_save==1006" ][chara_mod name="dress" time="0" storage="H/back/dress/xa6.png" ]
[elsif exp="f.dress_save==1007" ][chara_mod name="dress" time="0" storage="H/back/dress/xa7.png" ]
[elsif exp="f.dress_save==1011" ][chara_mod name="dress" time="0" storage="H/back/dress/xb1.png" ]
[elsif exp="f.dress_save==1012" ][chara_mod name="dress" time="0" storage="H/back/dress/xb2.png" ]
[elsif exp="f.dress_save==1013" ][chara_mod name="dress" time="0" storage="H/back/dress/xb3.png" ]
[elsif exp="f.dress_save==1014" ][chara_mod name="dress" time="0" storage="H/back/dress/xb4.png" ]
[elsif exp="f.dress_save==1015" ][chara_mod name="dress" time="0" storage="H/back/dress/xb5.png" ]
[elsif exp="f.dress_save==1016" ][chara_mod name="dress" time="0" storage="H/back/dress/xb6.png" ]
[elsif exp="f.dress_save==1017" ][chara_mod name="dress" time="0" storage="H/back/dress/xb7.png" ]
[elsif exp="f.dress_save==1021" ][chara_mod name="dress" time="0" storage="H/back/dress/xc1.png" ]
[elsif exp="f.dress_save==1022" ][chara_mod name="dress" time="0" storage="H/back/dress/xc2.png" ]
[elsif exp="f.dress_save==1023" ][chara_mod name="dress" time="0" storage="H/back/dress/xc3.png" ]
[elsif exp="f.dress_save==1024" ][chara_mod name="dress" time="0" storage="H/back/dress/xc4.png" ]
[elsif exp="f.dress_save==1025" ][chara_mod name="dress" time="0" storage="H/back/dress/xc5.png" ]
[elsif exp="f.dress_save==1026" ][chara_mod name="dress" time="0" storage="H/back/dress/xc6.png" ]
[elsif exp="f.dress_save==2011" ][chara_mod name="dress" time="0" storage="H/back/neck/b1.png" ]
[elsif exp="f.dress_save==2012" ][chara_mod name="dress" time="0" storage="H/back/neck/b2.png" ]
[elsif exp="f.dress_save==2013" ][chara_mod name="dress" time="0" storage="H/back/neck/b3.png" ]
[elsif exp="f.dress_save==2014" ][chara_mod name="dress" time="0" storage="H/back/neck/b4.png" ]
[else][chara_mod name="dress" time="0" storage="00.png" ][endif][return]

*intro_ep
;[if exp="f.dress_save==2012" ][chara_mod name="dress" time="0" storage="s/neck/O/kt-ep2.png" ]
;[elsif exp="f.dress_save==2013" ][chara_mod name="dress" time="0" storage="s/neck/O/kt-ep3.png" ]
;[elsif exp="f.dress_save==2014" ][chara_mod name="dress" time="0" storage="s/neck/O/kt-ep4.png" ]
;[else][chara_mod name="dress" time="0" storage="s/neck/O/kt-ep1.png" ][endif][return]

*set_acc
[if exp="f.b_acc==11" ][mod_b_acc st="H/back/b_acc/a1.png" ][elsif exp="f.b_acc==21" ][mod_b_acc st="H/back/b_acc/b1.png" ]
[elsif exp="f.b_acc==22" ][mod_b_acc st="H/back/b_acc/b2.png" ][elsif exp="f.b_acc==31" ][mod_b_acc st="H/back/b_acc/c1.png" ]
[elsif exp="f.b_acc==32" ][mod_b_acc st="H/back/b_acc/c2.png" ][elsif exp="f.b_acc==41" ][mod_b_acc st="H/back/b_acc/d1.png" ]
[elsif exp="f.b_acc==42" ][mod_b_acc st="H/back/b_acc/d2.png" ][else][mod_b_acc st="00.png" ][endif][return]


;;show_set
*show_set
[bg time="1" method="crossfade" storage="H/kitchen.jpg" ]

[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]
[chara_show name="arm_b" time="0" wait="false" left="0.1" zindex=10 ]
;[if exp="f.dress>=1" ][chara_show name="sleeve_b" time="0" wait="false" left="0.1" zindex=20 ][endif]
[chara_show name="body" time="0" wait="false" left="0.1" zindex=30 ]
[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=40 ][endif]
;[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
;[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="0.1" zindex=60 ][endif]
;[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="0.1" zindex=70 ][endif]

[chara_show name="dress" time="0" wait="false" left="0.1" zindex=80 ]

[chara_show name="face" time="0" wait="false" left="0.1" zindex=140 ]
[chara_show name="glasses" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=145 ]

;[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="0.1" zindex=110 ][endif]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]

[if exp="f.hair_style>=1" ]
[chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=160 ][else]
[chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=70 ][endif]
[chara_show name="arm" time="0" wait="false" left="0.1" zindex=165 ]

[chara_show name="hat" time="0" wait="true" left="0.1" zindex=170 ]

[chara_show name="ef2" time="0" wait="false" left="0.1" zindex=180 ]
[return]

*intro_ep
[bg time="1" method="crossfade" storage="bg/ep.jpg" ]
[if exp="f.neck==11"][chara_mod name="dress" time="0" storage="H/back/neck/kt-ep1.png" ]
[elsif exp="f.neck==12"][chara_mod name="dress" time="0" storage="H/back/neck/kt-ep2.png" ]
[elsif exp="f.neck==13"][chara_mod name="dress" time="0" storage="H/back/neck/kt-ep3.png" ]
[elsif exp="f.neck==14"][chara_mod name="dress" time="0" storage="H/back/neck/kt-ep4.png" ]
[endif][chara_show name="dress" time="0" wait="true" left="0.1" ][return]


*x1_cen
[if exp="f.uncen=='true'"][h_x st="H/back/x/uncen/1.png" ][else]
[h_x st="H/back/x/1.png" ][endif][return]

*x2_cen
[if exp="f.uncen=='true'"][h_x st="H/back/x/uncen/2.png" ][else]
[h_x st="H/back/x/2.png" ][endif][return]
*x3_cen
[if exp="f.uncen=='true'"][h_x st="H/back/x/uncen/3.png" ][else]
[h_x st="H/back/x/3.png" ][endif][return]
*x4_cen
[if exp="f.uncen=='true'"][h_x st="H/back/x/uncen/4.png" ][else]
[h_x st="H/back/x/4.png" ][endif][return]
*x5_cen
[if exp="f.uncen=='true'"][h_x st="H/back/x/uncen/5.png" ][else]
[h_x st="H/back/x/5.png" ][endif][return]


