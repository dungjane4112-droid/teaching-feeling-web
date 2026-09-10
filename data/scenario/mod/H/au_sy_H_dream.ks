;;---code by ichibikun------------
*begin
[black][cm][stopbgm][bgm_IF]
[set_lady_x]
...dream...
[glink text="Tiếp&nbsptục&nbspsự&nbspkiện" x=500 y=280 target="*begin_"]
[glink text="Bỏ&nbspqua&nbspsự&nbspkiện" x=500 y=380 storage="mod/H/ne_sy_bath_H_dream.ks" target="*wekup"]
[s]

*begin_
[cm]
[eval exp="f.sav_color[1]=f.under_p"]
[eval exp="f.sav_color[2]=f.glasses"]
[eval exp="f.sav_color[3]=f.socks"]
[eval exp="f.dress_save=f.dress"]

;[jump target="*doggy"]

[hide_message_w][eval exp="f.win_f='a'"][set_win_frame][show_message_w]
[_]
(Có lẽ đây là lần đầu tôi dẫn sylvie tới shop thời trang ban đêm.[p]
(Aurelia muốn chúng tôi tới làm mẫu,[r] 
giúp cô ấy tìm ý tưởng mới cho bộ thời trang "ban đêm"[p]
Một tình huống khó tin là Sylvie đã chấp nhận tham gia cùng[r]
với tinh thần quyết tâm khó hiểu...[p]
[chara_mod name="tear" time="0" storage="o/sub/neph_H/lay_02.png" ]
[set_stand]
[bg  time="600"  method="crossfade"  storage="bg/shop_n.jpg" ]
;[chara_show name="tear" time="100" left="0" zindex="500" ]
[call target="*aur_sx"]
[f/sq_nt][call target="*show_stand"]
[chara_show name="sub" time="100" left="250" zindex="1" ]

[jump target="*next"]

;--------------------------------------------------------------------

*next
[cm]
[_](Một cách vô thức, tôi cũng chấp nhận cùng hai người họ.[lr]
Với hi vọng hai người thân thiết hơn và Sylvie không còn lo ngại gì[r]
về Aurelia nữa.[p]
[bg  time="600"  method="crossfade"  storage="bg/mod/shop_H.jpg" ]
[chara_show name="tear" time="600" left="0" zindex="500" ]
Tôi đóng lại cửa sổ và buông rèm xuống, xung quanh hơi tối đi một chút.[p]
[syl][um_01]Umm~♥...[p]
[aurel][call target="*aur_smrx"]
[aur_dokidoki_1]Fufu~♥! rất hồi hộp phải không! Syl-chan.[p][call target="*aur_srx"]
[syl][f/sclp][ii_1]Dạ!...C-Có...một chút thôi ạ~♥[p_][f/sq_nt]
[jump target="*bj"]

*bj
[cm]
[black][stopbgm][hide_message_w][eval exp="f.win_f='c'"][set_win_frame]
;[eval exp="f.pin=0"][eval exp="f.hair_band=0"]
[chara_mod name="se" time="0" storage="00.png"]
[chara_mod name="ef" time="0" storage="00.png"]
[chara_mod name="tx" time="0" storage="00.png"]
[if exp="sf.tx==1"]
[chara_show name="tx" time="0" wait="true" left="0.1" zindex="460" ][endif]
[if exp="sf.se==1"]
[chara_show name="se" time="0" wait="true" left="0.1" zindex="470" ][endif]
[if exp="sf.ef==1"]
[chara_show name="ef" time="0" wait="true" left="0.1" zindex="480" ][endif]

;[if exp="f.dress==5 || f.dress==1043 || f.dress==1044"][eval exp="f.dress=0"][endif]
[set_nade][f/scp_nt]
[chara_mod name="tear" time="0" storage="o/sub/neph_H/dark_sl.png" ]
[bg  time="600"  method="crossfade"  storage="bg/mod/shop_nade.jpg" ]
[chara_show name="tear" time="100" left="0" zindex="500" ]
[bgm_MT]
[chara_show name="p" time="100" top="100" left="-250" zindex="200" ]
[call target="*aur_srx15"]
[chara_show name="sub" time="100" top="-50" left="350" zindex="1" ]
[call target="*show_nade"]
[chara_show name="h" time="0" wait="false" left="-250" zindex=300 ]
[wait time="1000"][show_message_w]
[if exp="f.lady==12"][anim name="sub" time="0" top="-100" left="400" ][else]
[anim name="sub" time="0" top="-120" left="350" ][endif]
[_](Sylvie tiến gần về phía tôi...[p]
[chara_mod name="se" time="0" storage="00.png"]
[chara_mod name="ef" time="0" storage="00.png"]
[chara_mod name="tx" time="0" storage="00.png"]
[if exp="sf.tx==1"]
[chara_show name="tx" time="0" wait="true" left="0.1" zindex="460" ][endif]
[if exp="sf.se==1"]
[chara_show name="se" time="0" wait="true" left="0.1" zindex="470" ][endif]
[if exp="sf.ef==1"]
[chara_show name="ef" time="0" wait="true" left="0.1" zindex="480" ][endif]

[syl][f/shp][hora_1]Anou~! [name]...E-Em bắt đầu đây~♥[p_]
;[chara_mod name="pin" time="0" storage="00.png" ]
[eval exp="f.hair_style=0"]
[chara_mod name="ribbon_b" time="0" storage="00.png" ]
[chara_mod name="head" time="0" storage="s/body/nad_h1.png" ]
[chara_mod name="hair_b" time="0" storage="s/hair/N/nr.png" ]
...[f/clp_nt][p_][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf3.png" ]
[chara_mod name="se" time="0" storage="00.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-1.png"]
[chara_mod name="tx" time="0" storage="00.png"]
[k_01]
Umm...Ah~♥...*kiss*~♥...[p]
[_](Sylvie hôn tôi trong khi[r] 
tay cô ấy đưa xuống dưới sờ nắn dương vật đã cứng ngắc của tôi.[r]
Dưới sự quan sát chăm chú của Aurelia...[p]
[aurel][call target="*aur_smrx15"]
[aur_kimochine_1]
...Thứ đó tuyệt chứ Syl-chan.[l]
[call target="*aur_srx15"]
[aur_aha_1] Fufu~♥.[p_]
[syl][f/shq][na_1]L-Là...vì...đó là...của...[name]~♥[p_]
[f/clp_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf3.png" ]


[chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf3.png" ]
[k_02]Umm...Ah...*kiss*~♥...[p]
[chara_mod name="se" time="0" storage="00.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-1.png"]
[chara_mod name="tx" time="0" storage="nephy_h/tx/b-2.png"]
[quake_3]
[_](Sylvie tiếp tục hôn tôi một cách nồng nhiệt.[r]
Trong khi bàn tay không ngừng vuốt dương vật đang cương cứng của tôi.[p]
[call target="*aur_smrx15"]
[aurel][aur_ara_3]Ara~♥! Hai người đừng để ý đến sự có mặt của tôi,[r]
hãy để bản thân hoàn toàn giải phóng đi chứ![wait time="800"][aur_aha_1][p]
[call target="*aur_srx15"]

[_][quake_3](Cơ thể tôi phản ứng mãnh liệt hơn tôi nghĩ...[p]
Có lẽ vì sự có mặt của Aurelia...[p]

[f/sclp_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf3.png" ]

[chara_mod name="ef" time="0" storage="nephy_h/ef/c-2.png"]
[chara_mod name="tx" time="0" storage="nephy_h/tx/b-2.png"]
[k_01]Umm...A~♥...~♥...[p]
[call target="*aur_smrx205"]
[anim name="sub" time="1200" top="-100" left="350" ]
[wait time="800"][call target="*aur_srx205"]
[_](Aurelia cũng tới gần chăm chú quan sát và nhẹ nhàng vuốt ve cơ thể của tôi và Sylvie...[p]

[syl][f/shq_nt][um_01]Umm...[lr]

[if exp="f.dress==1043"]
[chara_mod name="dress" time="0" storage="s/dress/N/xd1.png" ]
[elsif exp="f.dress==1044"]
[chara_mod name="dress" time="0" storage="s/dress/N/xd2.png" ]
[elsif exp="f.dress>=1"]
[chara_mod name="dress" time="0" storage="00.png" ][endif]
[hide_message_w]

[syl][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf1.png" ]
[show_message_w]
[um_03]Hya![l][f/hq]...[name]...áo của em...[p]
[chara_mod name="h" time="500" storage="o/sub/neph_bath/hn1.png" ]
[kya_02][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf4.png" ]
Yah~ [name]...đột ngột như vậy...[wait time="700"]
[f/sclp_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf6.png" ]
[k_01][p_]
[chara_mod name="h" time="500" storage="o/sub/neph_bath/hhn1.png" ]

[syl]Umm...A~♥...~♥...[p]
[_](Tôi cởi áo của Sylvie xuống và đáp trả Sylvie bằng nụ hôn mãnh liệt[r] 
...trong khi hai tay không ngừng vuốt ve cơ thể cô ấy[p]
[chara_mod name="h" time="500" storage="00.png" ][wait time="10"]
[chara_mod name="under_b" time="500" storage="00.png" ]
[chara_mod name="h" time="300" storage="o/sub/neph_bath/hln1.png" ]
[kya_01][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf4.png" ]
Yah~ [name]...chỗ đó...[wait time="700"][l_01][f/shq_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf1.png" ][p_]
[syl]Ah~Umm...A~♥...~♥...[name]...chỗ đó ...nhạy cảm[p]
[f/clp_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf1.png" ]
[_](Tôi dùng lưỡi kích thích núm vú của Sylvie...[lr]
Một cảm giác non mềm xen lẫn vị thơm nhẹ kích thích đầu lưỡi của tôi...[p]
[chara_mod name="h" time="300" storage="o/sub/neph_bath/hhln1.png" ]
[f/shq_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf2.png" ]
[syl][l_02]Ah~Umm...A~♥...~♥...[name]...em sắp...không chịu đươc...[p]
[f/sclp_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf1.png" ]
[_](Cơ thể Sylvie căng cứng và run lên khi bị kích thích,[r] 
hai tay cô ấy ép chặt vai tôi...[p][eh_01][chara_mod name="h" time="500" storage="00.png" ]
[syl][f/shq]E-Em cũng sẽ làm giúp [name] nữa [p_][sm_09]
[hide_message_w]
[anim name="sub" time="900" top="-550" left="300" ][wait time="10"]
[bg  time="600"  method="crossfade"  storage="bg/mod/shop_bj.jpg" ]
[chara_mod name="p" time="500" storage="o/sub/neph_bath/p1.png" ][wait time="1500"]
[anim name="p" time="800" top="-12" ][wait time="10"]
[show_message_w]
(...[p]
[f/clp_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf6.png" ]
[chara_mod name="se" time="0" storage="nephy_h/se/a-2.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-2.png"]
[chara_mod name="tx" time="0" storage="nephy_h/tx/b-2.png"]
[wet_1][wait time="1000"][k_04]Umm~♥...*lick*...~♥[p]
[_](Sylvie ngồi xuống, lấy dương vật của tôi ra và bắt đầu liếm nó...[r]
Một cảm giác tê dại như có dòng điện chạy khắp cơ thể tôi.[p]
[anim name="sub" time="900" top="-300" left="350" ]
[call target="*aur_smrx205"]
[aurel][aur_kimochiikashira_1] Cảm giác thật tuyệt phải không...~♥[wait time="1800"][k_04][p][call target="*aur_srx205"]
[k_05]
[anim name="p" time="300" top="-20" ][wait time="10"]
[_](Sylvie kích thích dương vật của tôi một cách mãnh liệt...[r]
Sự nóng bỏng của hai cô gái khiến tôi hưng phấn hơn thường ngày...[p]
[wet_1][wait time="800"]
[k_05][syl]Của [name]...Umm~♥...thật nóng...[p]
[_](Sylvie không ngừng vuốt ve đồng thời[r] 
dùng lưỡi kích thích đầu dương vật của tôi...[p]

(Trong khi đó,[r] 
Aurelia cũng nhẹ nhàng vuốt ve cơ thể hai chúng tôi trong khi chăm chú quan sát.[p]
[quake_3]
[anim name="p" time="300" top="0" ][wait time="10"]
[chara_mod name="p" time="0" storage="o/sub/neph_bath/p2.png" ]
[f/hp_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf2.png" ]
[wet_2][wait time="800"]
[chara_mod name="se" time="0" storage="nephy_h/se/a-3.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-1.png"]
[chara_mod name="tx" time="0" storage="nephy_h/tx/b-3.png"]
[syl][kya_01]Kya~♥...[lr]
[chara_mod name="p" time="0" storage="o/sub/neph_bath/p1.png" ]
[f/shp_nt][na_1]L-Là tinh dịch của [name]~♥[p][f/shq_nt]
[chara_mod name="p" time="0" storage="H/syl_shop_H/hand/p0.png" ]
[chara_mod name="h" time="0" storage="H/syl_shop_H/hand/s_hp.png"]
[aurel]
[aur_tanoshimi_1]Fufu~♥[wait time="200"]
[call target="*aur_smrx205"]
...Thật tuyệt phải không![p] 
[call target="*aur_srx205"]
[_](...[p]
[chara_mod name="h" time="0" storage="00.png"]
[wait time="800"]
[chara_mod name="se" time="0" storage="00.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-1.png"]
[chara_mod name="tx" time="0" storage="00.png"]

[_](Cơ thể tôi vẫn còn nhạy cảm sau khi vừa lên đỉnh...[p]
(.[wait time="700"].[wait time="700"].[wait time="700"]
[jump target="*aur_hand"]


*aur_hand
[cm]
[chara_mod name="hand_L" time="0" storage="00.png"]
[chara_show name="hand_L" time="0" top="0" left="-250" zindex="310" ]
[call target="*aur_smrx205"]
[aurel][aur_de_1]Chưa phải lúc kết thúc đâu hai người.[wait time="600"][aur_aha_1]
[call target="*aur_srx270"]
Fufu~♥...[p]
[hide_message_w]
[wait time="200"]
[anim name="sub" time="800" top="-320" left="-120" ][l]
[call target="*aur_sr270"]
[wait time="1500"]
[if exp="f.lady==6"]
[chara_mod name="hand_L" time="500" storage="H/syl_shop_H/hand/aur_hta.png"]
[elsif exp="f.lady==7"]
[chara_mod name="hand_L" time="500" storage="H/syl_shop_H/hand/aur_htb.png"]
[else][chara_mod name="hand_L" time="500" storage="H/syl_shop_H/hand/aur_htc.png"][endif]
[wait time="500"]
[anim name="hand_L" time="800" top="50" left="-250" ][wait time="800"]
[anim name="hand_L" time="800" top="0" left="-250" ]
[wait time="1000"]
[l][show_message_w]
[_](Aurelia tới gần và nhẹ nhàng vuốt ve dương vật đang nhạy cảm của tôi...[p]
[call target="*aur_smr270"]
[aurel][aur_sa_1]Thấy không, nó vẫn còn rất "cứng" đây này.[wait time="600"][aur_aha_1]
[call target="*aur_sr270"]Fufu~♥[p]
[anim name="h" time="500" top="40" left="-250" ]
[chara_mod name="h" time="0" storage="H/syl_shop_H/hand/s_hp.png" ][wait time="500"]
[anim name="h" time="500" top="60" left="-250" ][wait time="500"]
[anim name="h" time="500" top="20" left="-250" ]

[syl][f/shq][na_1][name] vẫn có thể tiếp tục nhỉ ~♥[p][sm_09]
[_][aur_sl_4](Dù không chắc sẽ ổn nhưng tôi cũng không ngăn lại hai người họ....[p]
[chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf3.png" ]
[aurel]
[call target="*aur_smr270"]hah~♥...ha...[p]
[wet_1][aur_sl_4]
[anim name="h" time="600" top="60" left="-250" ]
[anim name="hand_L" time="800" top="50" left="-250" ]
[wait time="500"]
[anim name="hand_L" time="800" top="0" left="-250" ]
[anim name="h" time="600" top="20" left="-250" ]

[chara_mod name="se" time="0" storage="nephy_h/se/a-2.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-2.png"]
[chara_mod name="tx" time="0" storage="nephy_h/tx/b-2.png"]

[_] (Cảm giác bứt rứt từ dương vật của tôi nhanh chóng tăng lên theo từng chuyển động[r]
và hơi thở nóng bỏng của hai người họ...[p][hide_message_w]
[anim name="h" time="500" top="60" left="-250" ]
[anim name="hand_L" time="500" top="50" left="-250" ]
[wait time="500"]
[anim name="hand_L" time="500" top="0" left="-250" ]
[anim name="h" time="500" top="20" left="-250" ][wait time="500"]
[anim name="h" time="400" top="60" left="-250" ]
[anim name="hand_L" time="400" top="50" left="-250" ]
[wait time="500"]
[anim name="hand_L" time="400" top="0" left="-250" ]
[anim name="h" time="400" top="20" left="-250" ][wait time="500"]
[anim name="p" time="200" top="0" left="-250" ]
[f/clp_nt]
[chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf6.png" ]
[show_message_w]
[call target="*aur_sr270"]
[syl][k_01]...*lick*...Ah~♥...*lick*...[p_]
[_](Sylvie bắt đầu dùng lưỡi kích thích đầu dương vật của tôi...[lr]
Một cảm giác ẩm ướt nóng bỏng nhanh chóng lan tỏa khắp cơ thể tôi...[p]

[anim name="h" time="500" top="60" left="-250" ]
[anim name="hand_L" time="500" top="50" left="-250" ]
[wait time="500"]
[anim name="hand_L" time="500" top="0" left="-250" ]
[anim name="h" time="500" top="20" left="-250" ][wait time="500"]
[anim name="h" time="400" top="60" left="-250" ]
[anim name="hand_L" time="400" top="50" left="-250" ]
[wait time="500"]
[anim name="hand_L" time="400" top="0" left="-250" ]
[anim name="h" time="400" top="20" left="-250" ][wait time="500"]

(.[wait time="850"].[wait time="850"].[wait time="850"]
[jump target="*aur_hand_cum"]


*aur_hand_cum
[cm][hide_message_w]
[quake_3][kya_01]
[chara_mod name="p" time="0" storage="H/syl_shop_H/hand/p1.png" ][wait time="600"]
[wet_2][wait time="350"]
[chara_mod name="p" time="0" storage="H/syl_shop_H/hand/p0.png" ]
[anim name="p" time="200" top="20" left="-250" ]
[f/shq_nt]
[chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf2.png" ][wait time="650"]
[chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf5.png" ][wait time="650"]
[show_message_w]

[chara_mod name="se" time="0" storage="00.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-1.png"]
[chara_mod name="tx" time="0" storage="00.png"]

[aurel]
[playse loop="false" storage="aur/nanikashira_1.ogg"  clear="true" ]
[call target="*aur_smr270"]
N-Na...nhanh vậy sao...[wait time="1200"]
[call target="*aur_sr270"]
[aur_aha_1]Fufu~♥[p]
[chara_mod name="h" time="0" storage="00.png" ]

[_](Cảm giác bị kích thích hơn bình thường, tôi nhanh chóng không kìm nén được...[p]
[chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf5.png" ]
[aurel][call target="*aur_smr270"][aur_ara_2]Hình như bị "mềm" xuống mất rồi...[lr]
[aur_dame_1]Chưa được, cảm hứng của tôi vẫn chưa đủ...[p]
[aur_shikatanaiwane_1] Thật đáng tiếc nhỉ~♥.[l]
[call target="*aur_srh270"]
[aur_aha_1]Fufu~♥[p]
[hide_message_w]
[wait time="1500"]
[show_message_w]
[call target="*aur_smrh270"]
[aur_do_1]Được chứ![l][aur_de_1] anh có thể "cứng" lên một lần nữa nhỉ.[l]
[call target="*aur_srh270"]
[aur_aha_1]Fufu~♥[p]
[call target="*aur_smrh270"]
[_][aur_sl_4]
[anim name="hand_L" time="500" top="0" left="-250" ][wait time="500"]
[anim name="hand_L" time="400" top="70" left="-250" ][wait time="500"]
[anim name="hand_L" time="400" top="50" left="-250" ]
(Aurelia vén áo xuống, để lộ bộ ngực căng tròn của cô ấy.[r]
Núm vú căng mọng đang cương cứng của cô ấy khẽ rung theo nhịp thở[r]
lại kích thích sự ham muốn của tôi trở lại.[p]
[call target="*aur_srh270"]
[f/shq_nt]
(...[p]
[if exp="f.lady==12"]
[chara_show name="rui" time="0" top="110" left="-170" zindex="2" ][else]
[chara_show name="rui" time="0" top="110" left="-140" zindex="2" ][endif]
[chara_mod name="rui" time="500" storage="H/syl_shop_H/hand/m_hp.png" ]
[aurel]
[call target="*aur_smrh270"]
[aur_um_4][wait time="500"].[l][call target="*aur_srh270"]..~♥![l]

[call target="*aur_smrh270"]
[aur_kimochine_1]Cảm giác tốt chứ?[l]
[call target="*aur_srh270"]
[aur_sm_2]Fufu~♥...[p]
[aur_sl_4][_](Tôi đưa tay ra chạm tới ngực cô ấy...[lr]
Một cảm giác thật ấm áp và mềm mại....[p]
[call target="*aur_smrh270"]
(Tôi có thể cảm nhận được nhịp đập và từng hơi thở ngọt ngào từ tay mình...[p]
(Ra liên tiếp khi kích thích tột độ nhiều lần như vậy...[lr]
Dù thằng nhỏ của tôi còn cương cứng nhưng bên trong hình như đã trống rỗng rồi,[r]
Chắc không thể nào lên đỉnh lần nữa đâu...[p][stopse]
[call target="*aur_srh270"][wait time="800"]
[jump target="*Aur_lick_v"]


*Aur_lick_v
[black][cm][hide_message_w]
[chara_mod name="rui" time="0" storage="00.png"]
[chara_mod name="hand_R" time="0" storage="00.png"]
[chara_mod name="h" time="0" storage="00.png"]
[chara_mod name="hand_L" time="0" storage="00.png"]
[chara_mod name="p" time="0" storage="00.png"]
[chara_mod name="se" time="0" storage="00.png"]
[chara_mod name="ef" time="0" storage="00.png"]
[chara_mod name="tx" time="0" storage="00.png"]
[chara_mod name="sub" time="0" storage="00.png"]
[if exp="sf.tx==1"]
[chara_show name="tx" time="0" wait="true" left="0.1" zindex="460" ][endif]
[if exp="sf.se==1"]
[chara_show name="se" time="0" wait="true" left="0.1" zindex="470" ][endif]
[if exp="sf.ef==1"]
[chara_show name="ef" time="0" wait="true" left="0.1" zindex="480" ][endif]

[chara_mod name="tear" time="0" storage="H/sub/neph_H/dark_sl.png" ]
[bg  time="600"  method="crossfade"  storage="bg/mod/shop_nade.jpg" ]
[chara_show name="tear" time="100" left="0" zindex="500" ]

[chara_show name="sub" time="300" top="-455" left="-142" zindex="1" ]
[chara_show name="h" time="0" left="0" zindex="5" ]
[chara_show name="p" time="0" left="0" zindex="6" ]
[chara_show name="rui" time="0" left="0" zindex="8" ]
[call target="*aur_srh280"]
[wait time="800"]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/lick_v_aur.png" ]
[chara_mod name="se" time="0" storage="00.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-1.png"]
[chara_mod name="tx" time="0" storage="00.png"]
[show_message_w]
[aurel][call target="*aur_smrh280"][aur_u_0]Umm~♥...[p][aur_sl_8]

[_](Tôi tới gần Aurelia hôn lên và dùng lưỡi thưởng thức bộ ngực quyến rũ của cô ấy....[p]
(Núm vú đang cương cứng của cô ấy hơi lớn hơn bình thường....[r]
xung quanh nó chắc đã tiết ra một lượng nhỏ hooc-môn kích thích tới tâm trí tôi...[p]
[call target="*aur_srh280"](.[wait time="600"].[wait time="600"].[wait time="600"][cm]
[syl][ii_1]E-Em cũng muốn nữa, [name]~♥, Aurelia-san...~♥[p][hide_message_w]
[chara_mod name="rui" time="600" storage="H/syl_shop_H/hand/syl_lick.png" ][wait time="600"][show_message_w]
[call target="*aur_smrh280"]
[aurel]C-Cảm giác này...[wait time="300"][aur_hatsukashiwane_1]Thật xấu hổ đó, hai người.[l][call target="*aur_srh280"][aur_sm_2]Fufu~♥...[p][aur_sl_4]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/lick_v_aur2.png" ]
[chara_mod name="se" time="0" storage="nephy_h/se/a-2.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-2.png"]
[chara_mod name="tx" time="0" storage="nephy_h/tx/b-2.png"]
[_](Sylvie cũng tới và liếm núm vú còn lại của Aurelia...[lr]
Aurelia có vẻ không khó chịu với điều đó.[lr]
[call target="*aur_smrh280"]
Một chút lý trí còn lại khiến tôi cảm thấy điều này thật khó tin...[p]
Việc "chấp nhận" trong quan hệ nữ & nữ có thể xảy ra khi cả hai[r] 
trong trạng thái mẫn cảm...[p]
Hoặc một vấn đề tâm lý tiêu cực nào đó khiến họ muốn an ủi bản thân[r] 
bằng một cảm giác mới mẻ.[p]
[call target="*aur_srh280"]
(.[wait time="600"].[wait time="600"].[wait time="600"][cm]
[aurel][call target="*aur_smrh280"]
[aur_damenanoni_1] Đ-Đủ rồi đó, hai người...~♥[p]
[chara_mod name="se" time="0" storage="00.png"]
[chara_mod name="ef" time="0" storage="nephy_h/ef/c-1.png"]
[chara_mod name="tx" time="0" storage="00.png"]
[chara_mod name="h" time="500" storage="00.png" ]
[chara_mod name="rui" time="500" storage="00.png" ]
[aur_sa_1]Đừng quên mục đích của hôm nay nhé![l][call target="*aur_srh280"]][aur_sm_2]~♥[p]
[jump target="*aur_syl_1"]


*aur_syl_1
[black][chara_00][cm]
[eval exp="f.hair_style=0"]
[eval exp="f.under_p=f.sav_color[1]"]
[eval exp="f.glasses=f.sav_color[2]"]
[eval exp="f.socks=f.sav_color[3]"]
[eval exp="f.dress=f.dress_save"]
[if exp="f.dress>=1021 && f.dress<=1030"]
[elsif exp="f.dress>=21 && f.dress<=30"]
[elsif exp="f.dress>=41 && f.dress<=50"]
[else][call target="*aur_dress_syl"][eval exp="f.talk='cloth'"]
[endif]


[call storage="mod/H/syl_shop_set.ks" target="*set_front_3p"]
[syl]
[um_03]A-Aurelia-san...đó là...~♥[p][hide_message_w]

[if exp="f.socks>=1"]
[chara_mod name="tear" time="0" storage="H/syl_shop_H/dark_sock.png" ][else]
[chara_mod name="tear" time="0" storage="H/syl_shop_H/dark_non.png" ][endif]

[bg  time="0"  method="crossfade"  storage="aur_H/aur_00.jpg" ]
[chara_show name="tear" time="0" left="0" zindex="500" ]
[h_face st="H/syl_shop_H/face/c2.png" ]
[call target="show_front"]

[if exp="sf.tx==1"]
[chara_show name="tx" time="0" wait="true" left="0.1" zindex="460" ][endif]
[if exp="sf.se==1"]
[chara_show name="se" time="0" wait="true" left="0.1" zindex="470" ][endif]
[if exp="sf.ef==1"]
[chara_show name="ef" time="0" wait="true" left="0.1" zindex="480" ][endif]

[chara_show name="h" time="0" left="0" zindex="235" ]
[chara_show name="hand_L" time="0" left="0" zindex="240" ]
[chara_show name="p" time="0" left="0" zindex="150" ]
[chara_show name="hand_R" time="0" left="0" zindex="245" ]

[hide_black][wait time="1000"][show_message_w]
[_](
[if exp="f.talk=='cloth'"]
Aurelia lấy một bộ trang phục mỏng và giúp Sylvie mặc lên...[r]
Trong khi đó, cô ấy cởi bỏ trang phục của mình rồi ôm Sylvie[r] 
lên chiếc bàn gần đó.[p]
[elsif exp="f.dress>=1021 && f.dress<=1030"]
Trong khi Sylvie đang mặc lại trang phục...[r]
Aurelia cởi bỏ trang phục xuống và ôm Sylvie đặt lên trên bàn.[lr]
[elsif exp="f.dress>=20 && f.dress<=30"]
Trong khi Sylvie đang mặc lại trang phục...[r]
Aurelia cởi bỏ trang phục xuống và ôm Sylvie đặt lên trên bàn.[lr]
[elsif exp="f.dress>=40 && f.dress<=50"]
Trong khi Sylvie đang mặc lại trang phục...[r]
Aurelia cởi bỏ trang phục xuống và ôm Sylvie đặt lên trên bàn.[lr]
[endif]

Cô ấy nhìn chăm chú về phía tôi...[p]
[bg  time="0"  method="crossfade"  storage="aur_H/aur_02.jpg" ]
[aurel][aur_nani_1]Anh còn muốn đứng đó nhìn bao lâu thế?[p]
[h_face st="H/syl_shop_H/face/b1.png" ]
[bg  time="0"  method="crossfade"  storage="aur_H/aur_01.jpg" ]
[_](...?[p]
[aurel][bg  time="0"  method="crossfade"  storage="aur_H/aur_02.jpg" ][aur_sone_1]
T-Tất nhiên là tiếp tục "ân ái" với Syl-chan rồi...[r]
Tôi còn muốn quan sát thêm nữa đấy...[l]
[bg  time="0"  method="crossfade"  storage="aur_H/aur_00.jpg" ][aur_aha_1]Fufu~♥...[p]
[h_face st="H/syl_shop_H/face/b1.png" ]
[syl][hora_1][name]~♥...[p]
[chara_mod name="hand_L" time="500" storage="H/syl_shop_H/hand/hx/h4.png" ]
[h_face st="H/syl_shop_H/face/c2.png" ]
[syl][kore_1]C-Chỗ đó...[name]~♥...[p]
[h_face st="H/syl_shop_H/face/b2.png" ][l_03]
[_](Cơ thể Sylvie khẽ run khi tôi chạm vào âm đạo của cô ấy...[lr]
Tôi có thể cảm thấy sự nóng bỏng và ẩm ướt qua lớp quần lót mỏng của cô ấy...[p]
[if exp="f.dress>=1020 && f.dress<=1030"][else]
[chara_mod name="dress" time="800" storage="00.png" ]
[chara_mod name="sleeve_b" time="0" storage="00.png" ][endif]
[wait time="100"]
[chara_mod name="hand_L" time="300" storage="H/syl_shop_H/hand/hx/h2.png" ]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/hx/l2.png" ]
[h_face st="H/syl_shop_H/face/b3.png" ]
[syl][kya_01]Kya~♥...[p][l_03]
[_]
[if exp="f.dress>=20 && f.dress<=30"]
(Tôi cởi áo của Sylvie xuống , núm vú của cô ấy cương cứng và [r]
trở nên căng mọng...[p][endif]
(Tôi hôn lên ngực Sylvie rồi dùng lưỡi kích thích núm vú của cô ấy...[p]
[chara_mod name="hand_L" time="300" storage="00.png" ][wait time="500"]
;[chara_mod name="under_p" time="300" storage="00.png" ][wait time="300"]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/hx/l2a.png" ]
[chara_mod name="hand_R" time="300" storage="H/syl_shop_H/hand/hx/h1.png" ]
[l_02]
(Hơi thở Sylvie trở lên gấp gáp hơn...[lr]
Tôi có thể cảm thấy núm vú và âm vật của Sylvie trở nên cương cứng hơn...[p]
[chara_mod name="hand_L" time="300" storage="H/syl_shop_H/hand/hx/h3.png" ]
[bg  time="500"  method="crossfade"  storage="aur_H/aur_02.jpg" ][wait time="500"]
[bg  time="500"  method="crossfade"  storage="aur_H/aur_00.jpg" ]
[aurel][aur_urenshidesho_1]Fufu~♥...Thật vui phải không!...[p][l_02]
[_](Trong vô thức tôi đưa tay ra nắm lấy ngực Aurelia[r] 
khi cô ấy đang giữ lấy Sylvie chăm chú quan sát chúng tôi...[p]
[chara_mod name="h" time="500" storage="00.png" ]
[chara_mod name="hand_L" time="300" storage="00.png" ]
[chara_mod name="hand_R" time="300" storage="00.png" ][wait time="300"]
[chara_mod name="under_p" time="300" storage="00.png" ][wait time="500"]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/hx/l1.png" ]
[quake_3][h_face st="H/syl_shop_H/face/c1.png" ]
[syl][asoko_ga_2]C-Chỗ đó...~♥...[name]~♥...[p][l_01]
[h_face st="H/syl_shop_H/face/c2.png" ]
[_](Tôi hướng xuống dưới kích thích âm vật của Sylvie bằng lưỡi...[lr]
Cơ thể cô ấy uốn éo như muốn áp âm vật thật sát vào mặt tôi...[p]
(Tôi không ngừng đùa giỡn với âm vật đang cương cứng như sắp bùng nổ[r] 
của Sylvie [p]
[bg  time="500"  method="crossfade"  storage="aur_H/aur_02.jpg" ]
[h_face st="H/syl_shop_H/face/c3.png" ]
[quake_3]
(Cơ thể Sylvie liên tục cựa quậy trong lúc bị Aurelia giữ chặt...[p]
[bg  time="500"  method="crossfade"  storage="aur_H/aur_00.jpg" ]
(...[p]
[chara_mod name="hand_L" time="300" storage="00.png" ]
[chara_mod name="h" time="500" storage="00.png" ]
[chara_mod name="dress" time="800" storage="00.png" ]
[chara_mod name="sleeve_b" time="0" storage="00.png" ]
[chara_mod name="hand_R" time="300" storage="H/syl_shop_H/hand/hx/h5.png" ]
[h_face st="H/syl_shop_H/face/c3a.png" ][hi_01]
[syl]Hii~♥...[p][l_01]
[_](Tôi chuyển sang dùng ngón tay kích thích âm đạo của Sylvie một cách mãnh liệt.[lr]
Cơ thể Sylvie không ngừng vặn vẹo hưng phấn.[p]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/hx/l3.png" ]
[bg  time="500"  method="crossfade"  storage="aur_H/aur_01.jpg" ]
[_](Tôi tiếp tục vươn tới liếm láp bộ ngực nóng bỏng của Aurelia...[r]
Trong khi vẫn không ngừng kích thích âm đạo của Sylvie...[p]

[if exp="f.aur_st>=1"][else]
[eval exp="f.aur_st=1"][endif]

[jump target="*wekup"]

*wekup
[black][stopse][eval exp="f.dress=f.dress_save"]
(...[p][stopbgm]
[call storage="talk/step6.ks" target="*day_start_return"]
[bgm_JH][under_random_re]
[set_stand][chara_mod name="ef" storage="mod/hand/bed_wekup.png" ][chara_mod name="h" storage="00.png" ]
[syl][f/p][hora_1][name] à![lr_]
[f/clp]Trời đã sáng rồi, Anh mau tỉnh lại đi ạ.[p_][f/p_nt]
[bg time="400" method="crossfade" storage="bg/bed_un_m.jpg" ]
[call target="*show_stand_base"]
[_](...?[p]
(Đầu óc tôi hơi mê man....[r]
một cảm giác hụt hẫng mơ hồ khiến tôi bất động một lúc...[p]
(Một hiện tượng phổ biến khi tỉnh lại sau một giấc mơ quá kích động.[p]
[syl][f/shp][na_1]H-Hôm qua...K-Không biết anh ngủ mơ thấy gì mà...[lr]
[f/shp][um_01]T-Túm chặt lấy...E-Em .[p]
[f/hp][um_02]Hình như có nhắc tới ai đó...[p]
[f/sp_nt]
[_](Ký ức của tôi tuy không rõ ràng lắm nhưng cơ thể [r]
vẫn còn trong trạng thái kích thích.[p]
(Nhìn sang gương mặt ửng hồng của Sylvie, tôi muốn...[p]

[font color="lightblue"][link target="*syl_H" ]【Tóm lấy Sylvie】[r][r]
[link target="*non_H" ]【Bình tĩnh và rời giường.】[resetfont][s]


*non_H
[cm]
(Tôi bắt đầu ngồi dậy dù cơ thể còn khá mệt mỏi....[p]
[syl][f/sclp][um_10]Bữa sáng em đã làm xong rồi, [name] chuẩn bị đi nhé![p_][f/sp_nt][sm_09] 
[_](...[p]
[black][jump storage="mod/morning_eat_af2.ks" target="*lunch"]


*syl_H
[cm][black]
[syl][kya_01]Kya~♥...[name]
[set_nade][f/scp_nt]
[chara_mod name="tear" time="0" storage="o/sub/neph_H/dark_sl.png" ]

[chara_show name="tear" time="100" left="0" zindex="500" ]
[bgm_MT]
[chara_mod name="p" time="0" storage="00.png" ]
[chara_show name="p" time="100" top="100" left="0" zindex="200" ]
[show_nade][bg  time="0"  method="crossfade"  storage="bg/bed_un_m.jpg" ]
[syl][f/clp_nt][um_01]Umm~♥...?[p]
[_][l_12](Tôi đột ngột ôm chặt lấy Sylvie Như một bản năng muốn làm dịu lại [r]
Cơn hứng tình sau một giấc mơ ướt át...[p]
[syl][f/sclp]hah~♥...[name]...dưới này...rất cứng~♥[p_]
[_](Hơi thở của Sylvie trở nên gấp gáp hơn, tay cô ấy nhẹ nhàng vuốt ve[r]
dương vật đang cương cứng của tôi đang cạ vào giữa hai đùi cô ấy.[p] 
Không rõ lúc mơ ngủ tôi đã làm gì để Sylvie cũng trở nên nhạy cảm như vậy.[p]
[syl][na_1][f/shp][name] à~♥...Chúng ta không nên để bữa sáng nguội mất...[lr_]
[f/ssp]C-Chắc vẫn kịp để em giúp anh giải tỏa một chút...[wait time="100"][sm_05][p_]
[f/shp][um_01]Umm~♥...Em sẽ cố gắng.[p_][f/sclp_nt]

[if exp="f.dress>=1 && f.dress<=9"]
[elsif exp="f.dress>=20 && f.dress<=60"]
[elsif exp="f.dress==71 || f.dress==72 || f.dress==1041 || f.dress==1042"]
[elsif exp="f.dress>=100 && f.dress<=110"]
[elsif exp="f.dress>=140 && f.dress<=160"]
[elsif exp="f.dress>=1000 && f.dress<=1030"]
[elsif exp="f.dress>=1060 && f.dress<=1080"]
[elsif exp="f.dress>=1090 && f.dress<=1120"]
[else]
[syl][chara_mod name="dress" time="800" storage="00.png" ]
[chara_mod name="sleeve" time="0" storage="00.png" ]
[f/sclp_nt][um_01]Umm~♥...[p]
[endif]


[_](Sylvie đưa tay xuống nắm chặt dương vật của tôi và vuốt ve...[p][hide_message_w]
[l_12]
[chara_mod name="h" time="0" storage="H/syl_shop_H/hand/hx/syl_hx.png" ]
[chara_show name="h" time="0" top="100" left="0" zindex="210" ]
[chara_mod name="p" time="0" storage="H/syl_shop_H/hand/p0.png" ]
[anim name="p" time="600" top="30" left="0" ][wait time="1200"]
[anim name="h" time="600" top="50" left="0" ][wait time="300"]
[anim name="h" time="600" top="0" left="0" ][wait time="300"]
[anim name="h" time="600" top="50" left="0" ][wait time="300"]
[anim name="h" time="600" top="100" left="0" ][wait time="300"]
[anim name="h" time="600" top="50" left="0" ][wait time="300"]
[anim name="h" time="600" top="0" left="0" ][wait time="300"]

[anim name="h" time="600" top="50" left="0" ][wait time="300"]
[anim name="h" time="600" top="100" left="0" ][wait time="300"]
[anim name="h" time="600" top="50" left="0" ][wait time="300"]
[anim name="h" time="600" top="0" left="0" ][wait time="300"]
[f/shp_nt][um_01][l_12]
[anim name="h" time="600" top="50" left="0" ][wait time="300"]
[anim name="h" time="600" top="100" left="0" ][wait time="300"]
[anim name="h" time="600" top="50" left="0" ][wait time="300"]
[anim name="h" time="600" top="0" left="0" ][wait time="300"][l]
[anim name="p" time="300" top="0" left="0" ][wait time="800"]
[f/clp_nt]
[chara_mod name="mouth" time="200" storage="o/sub/neph_bath/sf3.png" ][wait time="200"]
[chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf6.png" ][wet_1][l]
[anim name="p" time="300" top="-10" left="0" ]
[show_message_w]
[l_16][syl]Umm~♥...hah~♥....[p]
[_](Sylvie bắt dầu dùng lưỡi kích thích dương vật của tôi.[r]
Cảm giác nóng bỏng và ẩm ướt lan tỏa khắp cơ thể tôi...[p]
[_](...[p]
(Cơ thể tôi trở nên hưng phấn hơn...[p]
[chara_mod name="sleeve" time="0" storage="00.png" ]
[chara_mod name="dress" time="200" storage="00.png" ][wait time="100"]
[chara_mod name="under_b" time="200" storage="00.png" ]
[syl][f/p_nt][chara_mod name="mouth" time="0" storage="o/sub/neph_bath/sf1.png" ]
[kya_01]Kya~♥...[p]
[jump target="*doggy"]

*doggy
[cm]
[black][chara_00]
[eval exp="f.pin=0"]
[eval exp="f.hat=0"]
[eval exp="f.hair_style=0"]
[eval exp="f.hair_band=0"]
[stopbgm][bgm_MT]
[if exp="sf.tx==1"]
[chara_show name="tx" time="0" wait="true" left="0.1" zindex="460" ][endif]
[if exp="sf.se==1"]
[chara_show name="se" time="0" wait="true" left="0.1" zindex="470" ][endif]
[if exp="sf.ef==1"]
[chara_show name="ef" time="0" wait="true" left="0.1" zindex="480" ][endif]

[_](Tôi lột bỏ hết quần áo của Sylvie và ôm cô ấy lên giường...[p][hide_message_w]
[chara_mod name="tear" time="0" storage="o/sub/neph_H/dark_sl.png" ]
[chara_show name="tear" time="100" left="0" zindex="500" ]
[chara_mod name="eyes" time="0" storage="H/doggy/face/eye02_h.png" ]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m2.png" ]
[bg time="0" method="crossfade" storage="H_dg/dg01.jpg" ]
[chara_show name="eyes" time="0" wait="false" left="0" zindex="10"]
[chara_show name="mouth" time="0" wait="false" left="0" zindex="15"]
[wait time="800"][show_message_w]
[syl][sore_wa_1]N-...[name]~♥...[r]
B-Bữa sáng sẽ nguội mất nếu chúng ta...làm...ở đây...[p]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m4.png" ]
[_](Dù nói vậy nhưng âm đạo của Sylvie đã khá ẩm ướt...[p]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m3.png" ]
[syl][kore_1]C-Chỉ...chỉ làm...một chút thôi nhé, [name]~♥[p]
[chara_mod name="eyes" time="0" storage="H/doggy/face/eye01.png" ]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m4.png" ]
[_](...[p]
[bg time="200" method="crossfade" storage="H_dg/dg02.jpg" ]
[chara_mod name="eyes" time="0" storage="H/doggy/face/eye01_h.png" ]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m2.png" ]

[chara_mod name="tx" time="0" storage="H/doggy/tx/tx01.png" ]
[chara_mod name="ef" time="0" storage="H/doggy/ef/ef1.png" ]

[syl][r_03]Eh~♥...[p][l_05]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m3.png" ]
[_](Tôi đẩy dương vật vào trong Sylvie từ đăng sau...[lr]
Âm đạo ướt đẫm của cô ấy không ngừng co bóp theo nhị chuyển động [r]
của tôi...[p]
[chara_mod name="tx" time="0" storage="H/doggy/tx/tx02.png" ]
[chara_mod name="ef" time="0" storage="H/doggy/ef/ef2.png" ]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m6_.png" ]
[bg time="200" method="crossfade" storage="H_dg/dg03.jpg" ]
[chara_mod name="eyes" time="0" storage="H/doggy/face/eye02_h.png" ]
[syl][l_06]Umm~♥...hah~♥...[p]
[_](Vì mới tỉnh ngủ mà cơ thể tôi khá dễ kích thích.[r]
Tôi cố gắng giảm nhịp độ di chuyển xuống để tránh phải kết thúc quá nhanh.[p]
(Âm đạo của Sylvie co bóp ngày càng mạnh hơn, hút chặt lấy [r]
dương vật của tôi...[p]
[chara_mod name="tx" time="0" storage="H/doggy/tx/tx03.png" ]
[chara_mod name="ef" time="0" storage="H/doggy/ef/ef3.png" ]
[bg time="200" method="crossfade" storage="H_dg/dg04.jpg" ]
[chara_mod name="eyes" time="0" storage="H/doggy/face/eye01_h.png" ]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m6.png" ]
[syl][l_02]Ah~♥...Hah~♥...[name]~♥.[p]
[_](Dù cố gắng kiềm chế tốc độ nhưng cơ thể tôi lại tự gia tăng cường độ đẩy[r]
vào trong Sylvie.[p]
(Thực tế do vừa ngủ dậy nên tâm trí và hệ thần kinh vận động hơi khó kiểm soát,[r]
Cơ thể tôi gần như hoạt động theo bản năng...[p]
[bg time="200" method="crossfade" storage="H_dg/dg05.jpg" ]
[chara_mod name="eyes" time="0" storage="H/doggy/face/eye02_h.png" ]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m10.png" ][quake_3]
[syl][hi_02]Hii~♥...hah~♥...[p]
[bg time="200" method="crossfade" storage="H_dg/dg06.jpg" ]
[chara_mod name="eyes" time="0" storage="H/doggy/face/eye01_h.png" ]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m9.png" ][wait time=800]
[chara_mod name="mouth" time="0" storage="H/doggy/face/m8.png" ]
[l_15]
Ah~♥...hah~♥...[p]
[_](Sau khi đạt tới giới hạn, tôi bắn toàn bộ số tinh dịch còn lại vào[r] 
âm đạo Sylvie.[p]
[chara_mod name="tx" time="0" storage="H/doggy/tx/tx01.png" ]
[chara_mod name="ef" time="0" storage="H/doggy/ef/ef1.png" ]
(Có lẽ lượng tinh dịch được tích lũy bởi giấc mơ đó khá nhiều nên[r]
nó tràn ra khá nhiều lên chân Sylvie.[p]
(...
[black][chara_00][stopbgm][bgm_JH]
[set_nade]
[chara_mod name="sleeve" time="0" storage="00.png" ]
[chara_mod name="dress" time="0" storage="00.png" ][f/p_nt]
[chara_mod name="under_b" time="0" storage="00.png" ]
[chara_mod name="tear" time="0" storage="o/sub/neph_H/dark_sl.png" ]
[chara_show name="tear" time="100" left="0" zindex="500" ]
[show_nade][bg  time="0"  method="crossfade"  storage="bg/bed_un_m.jpg" ]
[syl][a_04]Ah!...[lr]
[na_1][f/sp]C-Chắc bữa sáng... đã nguội mất rồi...[p_]
[f/sclp]C-Chúng ta...mất nhiều thời gian quá...[lr_][sm_05]
[f/sp]Em đi tắm một chút rồi hâm nóng bữa sáng lại vậy.[p_]
[black][chara_00]
[_](...[p]
[set_stand][chara_mod name="ef" storage="mod/hand/bed_wekup.png" ][chara_mod name="h" storage="00.png" ]
[chara_mod name="sleeve" time="0" storage="00.png" ]
[chara_mod name="dress" time="0" storage="00.png" ]
[chara_mod name="under_b" time="0" storage="00.png" ]
[syl][f/sp_nt]
[bg time="400" method="crossfade" storage="bg/bed_un_m.jpg" ]
[call target="*show_stand_base"]
[syl][hora_1]Em vào nhà tắm trước đây, [name]...[p]
[black][chara_00]
[_](Sylvie mang theo quần áo của cô ấy và rời đi.[lr]
...Sau một lúc, tôi cũng tới nhà tắm rửa mặt .[p]
[bg time="500" method="crossfade" storage="bg/mod/bg_bath_01.jpg" ]
(...[p]
[dress_random]
[eval exp="f.pin=0"][eval exp="f.neck=0"][eval exp="f.glasses=0"][eval exp="f.hair_style=0"]
[eval exp="f.front_hair=3"][eval exp="f.hair_band=0"]
[set_dress][set_under_dress][f/sp_nt]
[call target="*show_dress"]
[bg time="500" method="crossfade" storage="bg/mod/bg_bath_01.jpg" ]
[layermode graphic="effect/H/bath_ef.png" time="0" mode="overlay" wait="false" ]
[syl][um_10]Umm~♥! Em tắm xong rồi.[lr_]
[f/sclp_nt][na_1]Em đi hâm nóng lại bữa sáng luôn. Anh nhanh lên nhé. [name][p][sm_05]
[black][eval exp="f.sex_bath='yet'"]
[_](Tôi đi xuống phòng ăn sau khi rửa mặt xong...[p][stopbgm]
[jump storage="mod/morning_eat_af2.ks" target="*lunch"]
[s]








*show_dress
[chara_mod name="window" time="0" storage="00.png" ]
[chara_mod name="body" time="0" storage="s/body/dress_b_nontag.png" ]

[chara_show name="hair_b" time="0" wait="false" left="0" ]
[chara_show name="ribbon_b" time="0" wait="false" left="0" ]
[chara_show name="body" time="0" wait="false" left="0" ]
[chara_show name="b_acc" time="0" wait="false" left="0" ]
[chara_show name="under_p" time="0" wait="false" left="0" ]
[chara_show name="under_b" time="0" wait="false" left="0" ]
[chara_show name="gloves" time="0" wait="false" left="0" ]
[chara_show name="socks" time="0" wait="false" left="0" ]
[chara_show name="ef2" time="0" wait="false" left="0" ]
[chara_show name="dress" time="0" wait="false" left="0" ]
[chara_show name="neck" time="0" wait="false" left="0" ]

[chara_show name="head" time="0" wait="false" left="0" ]
[chara_show name="eyes" time="0" wait="false" left="0" ]
[chara_show name="mouth" time="0" wait="false" left="0" ]
[chara_show name="mayu" time="0" wait="false" left="0" ]
[chara_show name="glasses" time="0" wait="false" left="0" ]
[chara_show name="hair_f" time="0" wait="false" left="0" ]


[chara_show name="pin" time="0" wait="false" left="0" ]
[chara_show name="ribbon" time="0" wait="false" left="0" ]
[chara_show name="hat" time="0" wait="false" left="0" ]

[chara_show name="window" time="0" wait="false" left="613" top="22" ]
[hide_black][return]



*show_dress_50
[chara_mod name="window" time="0" storage="00.png" ]
[chara_mod name="body" time="0" storage="s/body/dress_b_nontag.png" ]

[chara_show name="hair_b" time="0" wait="false" left="-50" ]
[chara_show name="ribbon_b" time="0" wait="false" left="-50" ]
[chara_show name="body" time="0" wait="false" left="-50" ]
[chara_show name="b_acc" time="0" wait="false" left="-50" ]
[chara_show name="under_p" time="0" wait="false" left="-50" ]
[chara_show name="under_b" time="0" wait="false" left="-50" ]
[chara_show name="gloves" time="0" wait="false" left="-50" ]
[chara_show name="socks" time="0" wait="false" left="-50" ]
[chara_show name="ef2" time="0" wait="false" left="-50" ]
[chara_show name="dress" time="0" wait="false" left="-50" ]
[chara_show name="neck" time="0" wait="false" left="-50" ]

[chara_show name="head" time="0" wait="false" left="-50" ]
[chara_show name="eyes" time="0" wait="false" left="-50" ]
[chara_show name="mouth" time="0" wait="false" left="-50" ]
[chara_show name="mayu" time="0" wait="false" left="-50" ]
[chara_show name="glasses" time="0" wait="false" left="-50" ]
[chara_show name="hair_f" time="0" wait="false" left="-50" ]


[chara_show name="pin" time="0" wait="false" left="-50" ]
[chara_show name="ribbon" time="0" wait="false" left="-50" ]
[chara_show name="hat" time="0" wait="false" left="-50" ]

[chara_show name="window" time="0" wait="false" left="613" top="22" ]
[hide_black][return]

*show_stand_base
[chara_show name="ef" time="0" wait="false" left="0.1" zindex=195 ]
[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]

[chara_show name="body" time="0" wait="false" left="0.1" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="0.1" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="0.1" zindex=60 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="0.1" zindex=70 ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=105 ][endif]

[chara_show name="arm" time="0" wait="false" left="0.1" zindex=80 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="0.1" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="0.1" zindex=100 ][endif]

[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="0.1" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=130 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=180 ]
[hide_black]
[return]


*show_stand
[chara_show name="hair_b" time="0" wait="false" left="-250" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-250" zindex=6 ][endif]

[chara_show name="body" time="0" wait="false" left="-250" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-250" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="-250" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-250" zindex=50 ][endif]
[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="-250" zindex=60 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="-250" zindex=70 ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="-250" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="-250" zindex=105 ][endif]

[chara_show name="arm" time="0" wait="false" left="-250" zindex=80 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-250" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="-250" zindex=100 ][endif]

[chara_show name="head" time="0" wait="false" left="-250" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="-250" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="-250" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="-250" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="-250" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="-250" zindex=130 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-250" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="-250" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="-250" zindex=180 ]
[hide_black]
[return]

*show_nade
[chara_show name="hair_b" time="0" wait="false" left="-250" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-250" zindex=6 ][endif]
[chara_show name="body" time="0" wait="false" left="-250" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-250" zindex=30 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-250" zindex=50 ][endif]
[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="-250" zindex=70 ][endif]

;[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-250" zindex=90 ][endif]
[if exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="-250" zindex=110 ][endif]

[chara_show name="head" time="0" wait="false" left="-250" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="-250" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="-250" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="-250" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="-250" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="-250" zindex=130 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-250" zindex=160 ][endif]
[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="-250" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="-250" zindex=180 ]

[chara_show name="hand_R" time="0" wait="false" left="-250" zindex=185 ]
[chara_mod name="window" time="1" storage="00.png" ][chara_show name="window" time="1" wait="false" left="20" top="30" zindex=190 ]
[chara_mod name="other" time="1" storage="00.png" ][chara_show name="other" time="1" wait="false" height="38" width="430" left="31" top="41" zindex=195 ]
[if exp="f.last_act!='nade_conti'" ][hide_black][endif][return]

*hide_mise
[chara_hide name="cg1" time="0" wait="false" ]
[chara_hide name="cg2" time="0" wait="false" ]
[chara_hide name="hair_b" time="0" wait="false" ]
[if exp="f.hair_style>=1" ][chara_hide name="ribbon_b" time="0" wait="false"  ][endif]
[chara_hide name="body" time="0" wait="false"  ]
[if exp="f.b_acc>=1" ][chara_hide name="b_acc" time="0" wait="false" ][endif]
[if exp="f.under_p>=1" ][chara_hide name="under_p" time="0" wait="false"  ][endif]
[if exp="f.under_b>=1" ][chara_hide name="under_b" time="0" wait="false" ][endif]
;[if exp="f.socks>=1" ][chara_hide name="socks" time="0" wait="false" ][endif]
[if exp="f.dress>=1" ][chara_hide name="ef2" time="0" wait="false" ][endif]
[if exp="f.dress>=1" ][chara_hide name="dress" time="0" wait="false" ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_hide name="neck" time="0" wait="false" ]
[elsif exp="f.neck>=1" ][chara_hide name="neck" time="0" wait="false" 5 ][endif]
[if exp="f.dress>=60 && f.dress<=69" ]
[chara_hide name="arm" time="0" wait="false" ]
[else][chara_hide name="arm" time="0" wait="false" ][endif]
;[if exp="f.gloves>=1" ][chara_hide name="gloves" time="0" wait="false" ][endif]
[if exp="f.dress>=1" ][chara_hide name="sleeve" time="0" wait="false" 0 ][endif]
[chara_hide name="head" time="0" wait="false" ]
[chara_hide name="eyes" time="0" wait="false"]
[chara_hide name="mouth" time="0" wait="false"]
[if exp="f.glasses>=1" ][chara_hide name="glasses" time="0" wait="false" ][endif]
[chara_hide name="hair_f" time="0" wait="false" ]
[chara_hide name="mayu" time="0" wait="false" ]
[if exp="f.pin>=1" ][chara_hide name="pin" time="0" wait="false"  ][endif]
[chara_hide name="ribbon" time="0" wait="false" ]
[chara_hide name="hat" time="0" wait="false" ]
[chara_hide name="other" time="0" wait="false" height="900" width="1350" ]
[chara_hide name="h" time="0" wait="false" ]
[chara_hide name="p" time="0" wait="false" ]
[return]

*show_mise
[chara_show name="cg1" time="0" wait="false" left="0.1" zindex="1" ]
[chara_show name="cg2" time="0" wait="false" left="0.1" zindex="2" ]
[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]
[chara_show name="body" time="0" wait="false" left="0.1" zindex=10 ]
[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="0.1" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
;[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="0.1" zindex=60 ][endif]
[if exp="f.dress>=1" ][chara_show name="ef2" time="0" wait="false" left="0.1" zindex=60 ][endif]
[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="0.1" zindex=70 ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=105 ][endif]
[if exp="f.dress>=60 && f.dress<=69" ]
[chara_show name="arm" time="0" wait="false" left="0.1" zindex=5 ]
[else][chara_show name="arm" time="0" wait="false" left="0.1" zindex=80 ][endif]
;[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="0.1" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="0.1" zindex=100 ][endif]
[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="0.1" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=130 ]
[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]
[chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=165 ]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=170 ]
[chara_show name="other" time="0" wait="false" height="900" width="1350" left="0.1" zindex=180 ]
[chara_show name="h" time="0" wait="false" left="0.1" zindex=190 ]
[return]

*show_mise_left
[chara_show name="cg1" time="0" wait="false" left="-675" zindex="1" ]
[chara_show name="cg2" time="0" wait="false" left="-675" zindex="2" ]
[chara_show name="hair_b" time="0" wait="false" left="-675" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-675" zindex=6 ][endif]
[chara_show name="body" time="0" wait="false" left="-675" zindex=10 ]
[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-675" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="-675" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-675" zindex=50 ][endif]
;[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="-675" zindex=60 ][endif]
[if exp="f.dress>=1" ][chara_show name="ef2" time="0" wait="false" left="-675" zindex=60 ][endif]
[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="-675" zindex=70 ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="-675" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="-675" zindex=105 ][endif]
[if exp="f.dress>=60 && f.dress<=69" ]
[chara_show name="arm" time="0" wait="false" left="-675" zindex=5 ]
[else][chara_show name="arm" time="0" wait="false" left="-675" zindex=80 ][endif]
;[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-675" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="-675" zindex=100 ][endif]
[chara_show name="head" time="0" wait="false" left="-675" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="-675" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="-675" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="-675" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="-675" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="-675" zindex=130 ]
[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-675" zindex=160 ][endif]
[chara_show name="ribbon" time="0" wait="false" left="-675" zindex=165 ]
[chara_show name="hat" time="0" wait="false" left="-675" zindex=170 ]
[chara_show name="other" time="0" wait="false" height="900" width="1350" left="-675" zindex=180 ]
[chara_show name="h" time="0" wait="false" left="-675" zindex=190 ]
[return]




*show_front
[chara_show name="cg1" time="0" wait="false" left="0.1" zindex=1 ]
[chara_show name="cg2" time="0" wait="false" left="0.1" zindex=2 ]
[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]

[chara_show name="sleeve_b" time="0" wait="false" left="0.1" zindex=5 ]
[chara_show name="body" time="0" wait="false" left="0.1" zindex=10 ]
[chara_show name="sleeve" time="0" wait="false" left="0.1" zindex=15 ]
[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="0.1" zindex=60 ][endif]
;[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="0.1" zindex=60 ][endif]

[chara_show name="p" time="0" wait="false" left="0.1" zindex=50 ]
[chara_show name="dress" time="0" wait="false" left="0.1" zindex=70 ]
;[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=75 ]
;[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=105 ][endif]

;[chara_show name="arm" time="0" wait="false" left="0.1" zindex=80 ]
;[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="0.1" zindex=90 ][endif]

[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="face" time="0" wait="false" left="0.1" zindex=135 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
;[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=155 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]

[chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=175 ]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=180 ]
;[chara_show name="ef2" time="0" wait="false" left="0.1" zindex=185 ]
[chara_show name="h" time="0" wait="false" left="0.1" zindex=190 ]
[return]




*show_front_left
[chara_show name="cg1" time="0" wait="false" left="-300" zindex=1 ]
[chara_show name="cg2" time="0" wait="false" left="-300" zindex=2 ]
[chara_show name="hair_b" time="0" wait="false" left="-300" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-300" zindex=6 ][endif]

;[chara_show name="sleeve_b" time="0" wait="false" left="-300" zindex=5 ]
[chara_show name="body" time="0" wait="false" left="-300" zindex=10 ]
;[chara_show name="sleeve" time="0" wait="false" left="-300" zindex=15 ]
[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-300" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="-300" zindex=60 ][endif]
;[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-300" zindex=50 ][endif]
[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="-300" zindex=60 ][endif]

[chara_show name="p" time="0" wait="false" left="-300" zindex=50 ]
[chara_show name="dress" time="0" wait="false" left="-300" zindex=70 ]
;[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="-300" zindex=75 ]
;[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="-300" zindex=105 ][endif]

;[chara_show name="arm" time="0" wait="false" left="-300" zindex=80 ]
;[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-300" zindex=90 ][endif]

[chara_show name="head" time="0" wait="false" left="-300" zindex=125 ]
[chara_show name="face" time="0" wait="false" left="-300" zindex=135 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="-300" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="-300" zindex=150 ]
;[chara_show name="mayu" time="0" wait="false" left="-300" zindex=155 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-300" zindex=160 ][endif]

[chara_show name="ribbon" time="0" wait="false" left="-300" zindex=175 ]
[chara_show name="hat" time="0" wait="false" left="-300" zindex=180 ]
;[chara_show name="ef2" time="0" wait="false" left="-300" zindex=185 ]
[chara_show name="h" time="0" wait="false" left="-300" zindex=190 ]
[return]


*hide_front
[chara_hide name="cg1" time="0" wait="false"  ]
[chara_hide name="cg2" time="0" wait="false"  ]
[chara_hide name="hair_b" time="0" wait="false"  ]
[if exp="f.hair_style>=1" ][chara_hide name="ribbon_b" time="0" wait="false"  ][endif]

;[chara_hide name="sleeve_b" time="0" wait="false"  ]
[chara_hide name="body" time="0" wait="false"  ]
;[chara_hide name="sleeve" time="0" wait="false"  ]
[if exp="f.b_acc>=1" ][chara_hide name="b_acc" time="0" wait="false"   ][endif]
[if exp="f.under_p>=1" ][chara_hide name="under_p" time="0" wait="false"   ][endif]
;[if exp="f.under_b>=1" ][chara_hide name="under_b" time="0" wait="false"  ][endif]
[if exp="f.socks>=1" ][chara_hide name="socks" time="0" wait="false"   ][endif]

[chara_hide name="p" time="0" wait="false" ]
[chara_hide name="dress" time="0" wait="false" ]
;[if exp="f.neck>=11 && f.neck<=20" ][chara_hide name="neck" time="0" wait="false" ]
;[elsif exp="f.neck>=1" ][chara_hide name="neck" time="0" wait="false" ][endif]

;[chara_hide name="arm" time="0" wait="false" ]
;[if exp="f.gloves>=1" ][chara_hide name="gloves" time="0" wait="false"   ][endif]

[chara_hide name="head" time="0" wait="false"  ]
[chara_hide name="face" time="0" wait="false"  ]
[if exp="f.glasses>=1" ][chara_hide name="glasses" time="0" wait="false"   ][endif]
[chara_hide name="hair_f" time="0" wait="false"  ]
;[chara_hide name="mayu" time="0" wait="false"  ]

[if exp="f.pin>=1" ][chara_hide name="pin" time="0" wait="false"  ][endif]

[chara_hide name="ribbon" time="0" wait="false"  ]
[chara_hide name="hat" time="0" wait="false"  ]
;[chara_hide name="ef2" time="0" wait="false"  ]
[chara_hide name="h" time="0" wait="false"  ]
[return]

;================================================================
*show_dinner

[chara_show name="other" time="0" height="900" width="1350" wait="false" left="-120" top="38" zindex=4 ]

[chara_show name="hair_b" time="0" wait="false" left="-120" top="38" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-120" top="38" zindex=6 ][endif]

[chara_show name="arm_b" time="0" wait="false" left="-120" top="38" zindex=10 ]
[if exp="f.gloves>=1" ][chara_show name="gloves_b" time="0" wait="false" left="-120" top="38" zindex=15 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve_b" time="0" wait="false" left="-120" top="38" zindex=20 ][endif]

[chara_show name="body" time="0" wait="false" left="-120" top="38" zindex=30 ]
[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-120" top="38" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-120" top="38" zindex=50 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="-120" top="38" zindex=60 ][endif]
;[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="-120" top="38" zindex=70 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="-120" top="38" zindex=80 ][endif]
[chara_show name="arm" time="0" wait="false" left="-120" top="38" zindex=90 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-120" top="38" zindex=100 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="-120" top="38" zindex=110 ][endif]

[if exp="f.neck>=11 && f.neck<=20" ]
[chara_show name="neck" time="0" wait="false" left="-120" top="38" zindex=85 ]
[elsif exp="f.neck>=1" ]
[chara_show name="neck" time="0" wait="false" left="-120" top="38" zindex=120 ][endif]

[chara_show name="head" time="0" wait="false" left="-120" top="38" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="-120" top="38" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="-120" top="38" zindex=140 ]
[chara_show name="glasses" time="0" wait="false" left="-120" top="38" zindex=145 ]
[chara_show name="mayu" time="0" wait="false" left="-120" top="38" zindex=130 ]
[chara_show name="hair_f" time="0" wait="false" left="-120" top="38" zindex=150 ]


[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-120" top="38" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="-120" top="38" zindex=165 ][endif]
[chara_show name="hat" time="0" wait="false" left="-120" top="38" zindex=170 ]

[chara_show name="hand_R" time="0" wait="false" left="-120" top="38" zindex=175 ]
[chara_show name="hand_L" time="0" wait="false" left="-120" top="38" zindex=180 ]
[hide_black][return]

;==============================================================
*aur_dress_syl
[random_6]
[if exp="f.r==1"][eval exp="f.dress=1021"]
[elsif exp="f.r==2"][eval exp="f.dress=1022"]
[elsif exp="f.r==3"][eval exp="f.dress=1023"]
[elsif exp="f.r==4"][eval exp="f.dress=1024"]
[elsif exp="f.r==5"][eval exp="f.dress=1025"]
[elsif exp="f.r==6"][eval exp="f.dress=1026"][endif]

[return]

;===============================================================


*b0_
[if exp="f.uncen=='true'"][h_body st="H/front/body/uncen/b0.png" ][else]
[h_body st="H/front/body/b0.png" ][endif][return]
*b1_
[if exp="f.uncen=='true'"][h_body st="H/front/body/uncen/b1.png" ][else]
[h_body st="H/front/body/b1.png" ][endif][return]
*b2_
[if exp="f.uncen=='true'"][h_body st="H/front/body/uncen/b2.png" ][else]
[h_body st="H/front/body/b2.png" ][endif][return]
*b3_
[if exp="f.uncen=='true'"][h_body st="H/front/body/uncen/b3.png" ][else]
[h_body st="H/front/body/b3.png" ][endif][return]

*p_a0
[if exp="f.uncen=='true'"][h_p st="H/front/p/uncen/a0.png" ][else]
[h_p st="H/front/p/a0.png" ][endif][return]
*p_a1
[if exp="f.uncen=='true'"][h_p st="H/front/p/uncen/a1.png" ][else]
[h_p st="H/front/p/a1.png" ][endif][return]
*p_a2
[if exp="f.uncen=='true'"][h_p st="H/front/p/uncen/a2.png" ][else]
[h_p st="H/front/p/a2.png" ][endif][return]
*p_b0
[if exp="f.uncen=='true'"][h_p st="H/front/p/uncen/b0.png" ][else]
[h_p st="H/front/p/b0.png" ][endif][return]
*p_b1
[if exp="f.uncen=='true'"][h_p st="H/front/p/uncen/b1.png" ][else]
[h_p st="H/front/p/b1.png" ][endif][return]
*p_b2
[if exp="f.uncen=='true'"][h_p st="H/front/p/uncen/b2.png" ][else]
[h_p st="H/front/p/b2.png" ][endif][return]
*p_b3
[if exp="f.uncen=='true'"][h_p st="H/front/p/uncen/b3.png" ][else]
[h_p st="H/front/p/b3.png" ][endif][return]
*p_b4
[if exp="f.uncen=='true'"][h_p st="H/front/p/uncen/b4.png" ][else]
[h_p st="H/front/p/b4.png" ][endif][return]

*x1
[if exp="f.uncen=='true'"][h_x st="H/front/x/uncen/1.png" ][else]
[h_x st="H/front/x/1.png" ][endif][return]
*x2
[if exp="f.uncen=='true'"][h_x st="H/front/x/uncen/2.png" ][else]
[h_x st="H/front/x/2.png" ][endif][return]
*x3
[if exp="f.uncen=='true'"][h_x st="H/front/x/uncen/3.png" ][else]
[h_x st="H/front/x/3.png" ][endif][return]
*x4
[if exp="f.uncen=='true'"][h_x st="H/front/x/uncen/4.png" ][else]
[h_x st="H/front/x/4.png" ][endif][return]
*x5
[if exp="f.uncen=='true'"][h_x st="H/front/x/uncen/5.png" ][else]
[h_x st="H/front/x/5.png" ][endif][return]

;;=====================aur==============================

*aur_sx
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_a_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_b_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_c_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_xa.png" ]
[endif][return]


*aur_srx
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_a_red_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_b_red_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_c_red_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_xa_red.png" ]
[endif][return]


*aur_smx
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_a.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_b.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_c.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_xa_sm.png" ]
[endif][return]


*aur_smrx
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_a_sm_red_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_b_sm_red_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_c_sm_red_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_xa_sm_red.png" ][endif][return]

;------------------------------------------------------------------

*aur_h_smo
[if exp="f.lady==6"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_a_sm_o.png"]
[elsif exp="f.lady==7"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_b_sm_o.png"]
[elsif exp="f.lady==8"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_c_sm_o.png"]
[elsif exp="f.lady==12"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_xa_sm.png"]
[endif][return]

*aur_h_so
[if exp="f.lady==6"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_a_o.png"]
[elsif exp="f.lady==7"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_b_o.png"]
[elsif exp="f.lady==8"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_c_o.png"]
[elsif exp="f.lady==12"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_xa.png"]
[endif][return]

*aur_h_smro
[if exp="f.lady==6"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_a_sm_red_o.png"]
[elsif exp="f.lady==7"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_b_sm_red_o.png"]
[elsif exp="f.lady==8"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_c_sm_red_o.png"]
[elsif exp="f.lady==12"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_xa_sm_red.png"]
[endif][return]

*aur_h_sro
[if exp="f.lady==6"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_a_red_o.png"]
[elsif exp="f.lady==7"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_b_red_o.png"]
[elsif exp="f.lady==8"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_c_red_o.png"]
[elsif exp="f.lady==12"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_xa_red.png"]
[endif][return]

*aur_h_smx
[if exp="f.lady==6"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_a_sm_x.png"]
[elsif exp="f.lady==7"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_b_sm_x.png"]
[elsif exp="f.lady==8"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_c_sm_x.png"]
[elsif exp="f.lady==12"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_xa_sm.png"]
[endif][return]

*aur_h_sx
[if exp="f.lady==6"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_a_x.png"]
[elsif exp="f.lady==7"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_b_x.png"]
[elsif exp="f.lady==8"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_c_x.png"]
[elsif exp="f.lady==12"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_xa.png"]
[endif][return]

*aur_h_smrx
[if exp="f.lady==6"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_a_sm_red_x.png"]
[elsif exp="f.lady==7"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_b_sm_red_x.png"]
[elsif exp="f.lady==8"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_c_sm_red_x.png"]
[elsif exp="f.lady==12"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_xa_sm_red.png"]
[endif][return]

*aur_h_srx
[if exp="f.lady==6"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_a_red_x.png"]
[elsif exp="f.lady==7"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_b_red_x.png"]
[elsif exp="f.lady==8"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_c_red_x.png"]
[elsif exp="f.lady==12"]
[chara_mod name="tx" time="0" storage="o/sub/aur_H/Aurelia_xa_red.png"]
[endif][return]

;;-------------------------aur-150%---------------------------

*aur_sx15
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/150/a_sx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/150/b_sx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/150/c_sx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/150/xa_s.png" ]
[endif][return]


*aur_srx15
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/150/a_srx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/150/b_srx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/150/c_srx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/150/xa_sr.png" ]
[endif][return]


*aur_smx15
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/150/a_smx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/150/b_smx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/150/c_smx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/150/xa_sm.png" ]
[endif][return]


*aur_smrx15
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/150/a_smrx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/150/b_smrx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/150/c_smrx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/150/xa_smr.png" ][endif][return]

;;-------------------------aur-205%---------------------------

*aur_sx205
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/205/a_sx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/205/b_sx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/205/c_sx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/205/xa_s.png" ]
[endif][return]


*aur_srx205
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/205/a_srx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/205/b_srx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/205/c_srx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/205/xa_sr.png" ]
[endif][return]


*aur_smx205
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/205/a_smx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/205/b_smx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/205/c_smx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/205/xa_sm.png" ]
[endif][return]


*aur_smrx205
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/205/a_smrx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/205/b_smrx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/205/c_smrx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/205/xa_smr.png" ][endif][return]

;;-------------------------aur-270%---------------------------

*aur_sxh270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/a_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/b_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/c_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/xa.png" ]
[endif][return]


*aur_srxh270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/a_red_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/b_red_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/c_red_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/xa_red.png" ]
[endif][return]


*aur_smxh270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/a_sm_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/b_sm_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/c_sm_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/xa_sm.png" ]
[endif][return]


*aur_smrxh270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/a_sm_red_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/b_sm_red_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/c_sm_red_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/xa_sm_red.png" ][endif][return]

*aur_sx270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/270/a_sx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/270/b_sx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/270/c_sx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/270/xa_s.png" ]
[endif][return]


*aur_srx270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/270/a_srx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/270/b_srx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/270/c_srx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/270/xa_sr.png" ]
[endif][return]


*aur_smx270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/270/a_smx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/270/b_smx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/270/c_smx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/270/xa_sm.png" ]
[endif][return]


*aur_smrx270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/270/a_smrx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/270/b_smrx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/270/c_smrx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/270/xa_smr.png" ][endif][return]

;;;;;;;;;;;;;;;;;;

*aur_sh270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/a_o.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/b_o.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/c_o.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/xa.png" ]
[endif][return]


*aur_srh270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/a_red_o.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/b_red_o.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/c_red_o.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/xa_red.png" ]
[endif][return]


*aur_smh270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/a_sm_o.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/b_sm_o.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/c_sm_o.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/xa_sm.png" ]
[endif][return]


*aur_smrh270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/a_sm_red_o.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/b_sm_red_o.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/c_sm_red_o.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/270/xa_sm_red.png" ][endif][return]

*aur_s270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/270/a_so.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/270/b_so.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/270/c_so.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/270/xa_s.png" ]
[endif][return]


*aur_sr270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/270/a_sro.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/270/b_sro.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/270/c_sro.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/270/xa_sr.png" ]
[endif][return]


*aur_sm270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/270/a_smo.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/270/b_smo.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/270/c_smo.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/270/xa_sm.png" ]
[endif][return]


*aur_smr270
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/270/a_smro.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/270/b_smro.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/270/c_smro.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/270/xa_smr.png" ][endif][return]

;;-------------------------aur-280%---------------------------

*aur_sxh280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/a_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/b_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/c_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/xa.png" ]
[endif][return]


*aur_srxh280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/a_red_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/b_red_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/c_red_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/xa_red.png" ]
[endif][return]


*aur_smxh280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/a_sm_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/b_sm_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/c_sm_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/xa_sm.png" ]
[endif][return]


*aur_smrxh280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/a_sm_red_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/b_sm_red_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/c_sm_red_x.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/xa_sm_red.png" ][endif][return]

*aur_sx280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/280/a_sx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/280/b_sx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/280/c_sx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/280/xa_s.png" ]
[endif][return]


*aur_srx280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/280/a_srx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/280/b_srx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/280/c_srx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/280/xa_sr.png" ]
[endif][return]


*aur_smx280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/280/a_smx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/280/b_smx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/280/c_smx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/280/xa_sm.png" ]
[endif][return]


*aur_smrx280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/280/a_smrx.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/280/b_smrx.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/280/c_smrx.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/280/xa_smr.png" ][endif][return]

;;;;;;;;;;;;;;;;;;;;;;;;;
*aur_sh280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/a_o.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/b_o.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/c_o.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/xa.png" ]
[endif][return]


*aur_srh280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/a_red_o.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/b_red_o.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/c_red_o.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/xa_red.png" ]
[endif][return]


*aur_smh280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/a_sm_o.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/b_sm_o.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/c_sm_o.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/xa_sm.png" ]
[endif][return]


*aur_smrh280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/a_sm_red_o.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/b_sm_red_o.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/c_sm_red_o.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/aur_H/280/xa_sm_red.png" ][endif][return]

*aur_s280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/280/a_so.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/280/b_so.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/280/c_so.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/280/xa_s.png" ]
[endif][return]


*aur_sr280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/280/a_sro.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/280/b_sro.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/280/c_sro.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/280/xa_sr.png" ]
[endif][return]


*aur_sm280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/280/a_smo.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/280/b_smo.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/280/c_smo.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/280/xa_sm.png" ]
[endif][return]


*aur_smr280
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/280/a_smro.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/280/b_smro.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/280/c_smro.png" ]
[elsif exp="f.lady==12"][chara_mod name="sub" time="0" storage="o/sub/mod/280/xa_smr.png" ][endif][return]