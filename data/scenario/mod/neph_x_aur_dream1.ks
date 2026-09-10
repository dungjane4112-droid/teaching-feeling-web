*begin
[cm]
[if exp="f.au_ne_dr>=1"][else][eval exp="f.au_ne_dr=1"][endif]
[stopbgm][bgm_IF]
[black][chara_00][set_lady_x]
...dream...
[glink text="Tiếp&nbsptục&nbspsự&nbspkiện" x=500 y=280 target="*begin_"]
[glink text="Bỏ&nbspqua&nbspsự&nbspkiện" x=500 y=380 storage="mod/H/ne_sy_bath_H_dream.ks" target="*wekup"]
[s]

*begin_
[cm]
[hide_message_w]
[eval exp="f.win_f='b'"][set_win_frame]

[chara_mod name="tear" time="0" storage="o/sub/neph_H/dark_ne_town.png" ]
;[chara_show name="tear" time="100" left="0" zindex="500" ]
[bg  time="600"  method="crossfade" storage="bg/mod/shop_H.jpg" ]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_a2.png"]
[chara_show name="rui" time="300" left="0" zindex="30" ]
[anim name="rui" time="500" top="20" left="-300" ][wait time="10"][l]
[show_message_w]


[_](Hôm nay, Tôi đã nhận lời giúp Aurelia một việc.[p]
(Tôi đã cố gắng thuyết phục Nephy và dẫn cô ấy tới shop thời trang,[r]
Mặc dù cô ấy vẫn còn hơi lo lắng...[p]
[call target="*aur_smx"]
[chara_show name="sub" time="500" left="350" zindex="10" ]
[aurel][aur_ara_2]
Ara~!...Là... hai người sao!...[lr]
Tôi có chút bất ngờ đó.[wait time="100"][aur_aha_1]Fufu~♥[p]
[wait time="800"][aur_sone_3]Xem ra Nephy-chan cũng rất có hứng thú với nơi này nhỉ![p][call target="*aur_sx"]

[neph][chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_a3.png"]
[neph_na_1]L-Là [name_neph]...[wait time="600"][name_neph] kéo tôi tới đây...[p][chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_a2.png"]
[anim name="sub" time="500" left="150" ]
[aurel][call target="*aur_smx"]
[aur_shikatanaiwane_1]Vậy thì tiếc thật.[lr]
Tôi rất cần sự giúp đỡ của Nephy-chan bây giờ đó.[p]
[call target="*aur_sx"]

[neph][chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_a1.png"]
[neph_na_1]C-Cái này...C-Chắc là được...[p]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_a2.png"]

[aurel][call target="*aur_smx"][aur_sa_1]
Như tôi nghĩ, Nephy-san thật tốt bụng đó.[wait time="100"]
[call target="*aur_sx"] [aur_aha_1]Fufu~♥[p]

[_](Mặc dù vẻ mặt còn chút miễn cưỡng nhưng tôi nghĩ cô ấy sẽ ổn ở đây thôi.[p]
(Tôi nghĩ mình nên rời khỏi đây để hai người họ có thời gian riêng tư.[p]
[neph][chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_a3.png"]
[neph_chotto_2]Đ-Đợi đã...[name_neph]...Anh không thể đi.[p]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_a2.png"]

[_](Có vẻ Nephy vẫn chưa an tâm. Tôi hơi lúng túng nhìn sang Aurelia...[p]

[aurel][call target="*aur_smx"]
[playse loop="false" storage="aur/nanikashira_1.ogg"  clear="true" ]
 C-Có gì không ổn sao Nephy-chan?[p]
[aur_aha_1] Cũng không vấn đề gì nếu anh ở lại đây, Nếu Nephy-chan không ngại.[p][call target="*aur_sx"]


[font color="lightblue"][link target="*next" ]【Ở lại cùng hai người họ】[r][r][link target="*out" ]【Rời khỏi đây】[resetfont][s]

*next
[cm][_](Tôi sẽ ở lại cho Nephy yên tâm một chút...[p]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_f2.png"]
[call target="*aur_smx"]
[aurel][aur_sa_1]Được đó. Vóc dáng của Nephy-chan rất hợp với thiết kế mới của tôi.[lr]
[aur_ne_1] Thử đi vài bước xem nào![p][call target="*aur_sx"]
[neph][neph_hah_1]...[p]
[anim name="rui" time="2000" top="20" left="400" ][wait time="500"]
[_][font color="lightblue"]*click->[resetfont][p]
[chara_mod name="rui" time="100" storage="o/sub/ne_def/ne_non_f2_.png"]
[anim name="rui" time="2000" top="20" left="-300" ][wait time="100"]
[_][font color="lightblue"]*click->[resetfont][p]
[chara_mod name="rui" time="100" storage="o/sub/ne_def/ne_non_f2.png"][wait time="600"]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_f3.png"]
[neph_na_2]N-Như vậy là được rồi phải không?....[p]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_f2.png"]
[call target="*aur_smx"]
[aurel][aur_urenshidesho_1]Fufu~♥...thú vị đấy chứ.[p]
[aur_de_1]Tốt đó, dù còn hơi cứng nhắc một chút.[wait time="500"][call target="*aur_sx"][aur_aha_1][p]
[_](Tôi đoán là chưa ổn lắm...[p]
[call target="*aur_smx"]
[aurel][aur_dokidoki_1]Fufu~♥...cảm thấy hồi hộp phải không?[lr]
[aur_sa_1]Cứ coi [name_neph] của cô như không khí là được.[p]
[call target="*aur_sx"]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_f1.png"]
[neph][neph_na_1]K-Không vấn đề...[p]
[_](...![p]
[call target="*aur_smx"]
[aurel][aur_sone_3]Được rồi, Cởi bớt trang phục ra đi Nephy-chan![p]
[call target="*aur_sx"]

[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_f3.png"]
[neph][neph_a_3]Hả!...[p]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_f2.png"]
[call target="*aur_smx"]
[aurel][aur_ara_3]Là như vậy. Nếu thấy ngại có thể để [name_neph] tránh mặt một chút.[p]
[call target="*aur_sx"]

[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_f1.png"]
[neph][neph_na_1]K-Không cần...Em không ngại...[p]
[_][font color="lightblue"]*click->[resetfont]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_f2.png"][p]

[neph_ahh_1]
[chara_mod name="rui" time="500" storage="o/sub/nephy/nephy-7b_.png"]
[_](Nephy cởi trang phục của cô ấy xuống trong khi vẫn chăm chú nhìn tôi.[r]
Có lẽ cô ấy vẫn lo lắng tôi rời khỏi đây.[p]
[jump target="next1"]

*next1
[cm]
[black][chara_00][hide_message_w]
[bg  time="600"  method="crossfade" storage="bg/mod/shop_nade.jpg" ]
[chara_mod name="rui" time="200" storage="o/sub/nephy/253/7b_.png"]
[call target="*aur_sx270"]
[chara_show name="rui" time="300" top="-150" left="-250" zindex="30" ]
[chara_show name="sub" time="300" top="-400" left="-30" zindex="10" ]
[chara_show name="h" time="0" top="40" left="-220" zindex="35" ]
[chara_show name="face" time="0" top="-150" left="-250" zindex="32" ]
[l][show_message_w]
[_](Aurelia tiến lại gần và chăm chú quan sát cơ thể của Nephy.[lr]
Trong khi cô ấy vẫn cố gắng đứng bất động một cách miễn cưỡng...[p]
[hide_message_w]
[call target="*aur_s270"]
[if exp="f.lady==6"]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/aur_hta.png"]
[elsif exp="f.lady==7"]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/aur_htb.png"]
[else][chara_mod name="h" time="500" storage="H/syl_shop_H/hand/aur_htc.png"][endif]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/7a_.png"]
[neph_hah_1]
[l]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/7b_.png"]
[call target="*aur_sm270"]
[show_message_w]
[aurel][aur_sone_3]Với kích thước bộ ngực này cần khuyết cổ áo xuống tới đây là vừa đủ.[wait time="600"].[wait time="100"].[wait time="100"][lr]
[aur_do_2]Anh có nghĩ như vậy không?[p][call target="*aur_s270"][aur_aha_1]
[_](Có vẻ như cô ấy không coi tôi là 'không khí' nữa.[r]
Tôi chỉ có thể bất động, vờ như không nghe thấy...[p]
[hide_message_w]
[if exp="f.lady==6"]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/aur_hta1.png"]
[elsif exp="f.lady==7"]
[chara_mod name="h" time="500" storage="H/syl_shop_H/hand/aur_htb1.png"]
[else][chara_mod name="h" time="500" storage="H/syl_shop_H/hand/aur_htc1.png"][endif]
[anim name="sub" time="1000" top="-400" left="20" ]
[anim name="h" time="1000" top="0" left="45" ]
[l]
[show_message_w]
[aurel][call target="*aur_sm270"][aur_misenasai_1]
Nhìn này [name_neph]! Nếu thêm một họa tiết hoa hồng vào vị trí này...[r]
Trông sẽ rất cá tính phải không.[p][call target="*aur_s270"]
[_](Tôi lúng túng gật đầu trong khi vô thức lùi lại một bước...[p]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/7a_.png"]
[neph][neph_nani_2]Anh định đi đâu thế? [name_neph].[p]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/7b_.png"]
[_](Tôi mơ hồ cảm thấy có chút sắc lạnh từ ánh mắt của Nephy...[p]

[aurel][call target="*aur_sm270"][aur_sone_1]
Phải rồi....[p]
[call target="*aur_sr270"]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/6a_.png"]
[chara_mod name="face" time="0" storage="o/sub/nephy/253/red_.png"]
[neph][neph_a_3]Ah?...[p]

[if exp="f.lady==6"]
[chara_mod name="h" time="800" storage="H/syl_shop_H/hand/aur_hta.png"]
[elsif exp="f.lady==7"]
[chara_mod name="h" time="800" storage="H/syl_shop_H/hand/aur_htb.png"]
[else][chara_mod name="h" time="800" storage="H/syl_shop_H/hand/aur_htc.png"][endif]

[anim name="sub" time="1000" top="-400" left="-50" ]
[anim name="h" time="1000" top="20" left="-220" ]
[aurel][call target="*aur_smr270"][aur_ara_2]À! Tôi cần kiểm tra chính xác kích thước của cô nên...không phiền chứ? [wait time="300"][aur_aha_1]Fufu~♥[p][call target="*aur_sr270"]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/6b_.png"]
[_](...![p]
[aurel][call target="*aur_smr270"][aur_misenasai_1]Hãy chú ý quan sát nhé [name_neph]...Tôi cần biểu cảm này của Nephy-chan.[p] [call target="*aur_sr270"]
[neph][chara_mod name="rui" time="0" storage="o/sub/nephy/253/6a_.png"]
[neph_na_1]T-[ne_me] vẫn bình thường phải không [name_neph]?...[p]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/6b_.png"]
[_](Gương mặt Nephy đỏ ửng lên, thật hiếm thấy cô ấy như vậy...[r]
Trong khi đó, tôi vẫn cố gắng giữ vẻ mặt thật bình tĩnh...[p]
[aurel][call target="*aur_smr270"][aur_nani_1]Biểu cảm này của Anh có vẻ không đúng rồi,[r] 
Nephy-san vẫn chưa đủ sao?[p]
[aur_aha_1][call target="*aur_sr270"][l]
[hide_message_w]
[call target="*aur_srh270"][wait time="800"]
[show_message_w]
[_](...Aurelia kéo áo xuống để lộ ra ngực của cô ấy trước ánh mắt tôi.[p]
[aurel][call target="*aur_smrh270"]
[aur_sa_1]Hãy quan sát thật kỹ nhé [name_neph]. [wait time="900"]
[call target="*aur_srh270"]
[aur_aha_1]Fufu~♥[p]

[neph]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/6a_.png"]
[neph_iiwane_1]được rồi [name_neph]![lr]
Đừng chỉ nhìn chằm chằm vào ngực aurelia-san như thế.[p]
[neph_na_2]N-...có thể nhìn bên này nữa...[wait time="500"]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/6b_.png"][p]

[aurel][call target="*aur_smrh270"]
[aur_dokidoki_1]Fufu~♥...Cảm giác thật hồi hộp phải không Nephy-chan...[p]
[call target="*aur_srh270"]


[neph][chara_mod name="rui" time="0" storage="o/sub/nephy/253/6_.png"]
[neph_na_3]C-Cũng không có gì lạ đâu ạ...[p]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/6b_.png"]

[aurel][call target="*aur_smrh270"]
[aur_ne_1]Anh có thể tới đây giúp tôi giữ chúng ở vị trí này không?[p]
[call target="*aur_srh270"]
[_](...?[p]
[chara_mod name="h" time="800" storage="00.png"]
(Ý cô ấy hình như là muốn tôi chạm vào....[p]

[aurel][call target="*aur_smrh270"][aur_do_1]Sao thế...?[p]
[call target="*aur_srh270"]

[_](Cơ thể tôi vô thức tiến lại gần và...[p]
[chara_mod name="h" time="800" storage="H/syl_shop_H/hand/m_hp.png"]
[anim name="h" time="800" top="40" left="-100" ][wait time="100"]

[aurel][call target="*aur_smrh270"]
[aur_ara_2]Ara~♥[wait time=600][lr]
[aur_damenanoni_1]Không được đâu [name_neph]~♥...[lr]
Ý tôi là ngực của Nephy-chan đó.[wait time="100"]
[call target="*aur_srh270"][aur_aha_1]Fufu~♥[p]

[anim name="h" time="800" top="50" left="-620" ]
[neph][chara_mod name="rui" time="0" storage="o/sub/nephy/253/6a_.png"]
[neph_mo_3]Mồ!...[name_neph] thật ngốc...[p]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/6b_.png"]

[aurel][call target="*aur_smrh270"]
[aur_sone_3]Được rồi![r]
Tôi có thể thiết kế thêm một chút giúp ngực được nâng lên một chút khi mặc.[p][call target="*aur_srh270"]
[_](...[p]
[neph](...[p]

[aurel][call target="*aur_smrh270"]
[aur_sa_1]Được rồi đó,[r]
Dù biết cảm giác rất tuyệt nhưng anh có thể tạm buông tay ra không,[lr]
Tôi cần sử dụng cơ thể Nephy-chan một chút.[aur_aha_1] Fufu~♥ [call target="*aur_srh270"][p]
[chara_mod name="h" time="800" storage="00.png"]

[neph][chara_mod name="rui" time="0" storage="o/sub/nephy/253/6a_.png"]
[neph_na_2]N-...[name_neph] thật biến thái...[p]
[chara_mod name="rui" time="0" storage="o/sub/nephy/253/6b_.png"]

[_](...[p]


[black][chara_00]
#???
[name] À!...[p]
[stopbgm][chara_00]
[jump storage="mod/H/au_sy_H_dream.ks" target="*wekup"]
[s]
*out
[cm][black]
[_](Tôi lặng lẽ rời khỏi shop thời trang...[p]
[stopbgm][chara_00]
[jump storage="mod/H/au_sy_H_dream.ks" target="*wekup"]

[s]


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