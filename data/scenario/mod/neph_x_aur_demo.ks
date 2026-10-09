*begin
[cm]
[stopbgm][bgm_IF][hide_message_w]
[black][chara_00][set_lady_x]

[eval exp="f.lady=6"]

[chara_mod name="tear" time="0" storage="o/sub/neph_H/dark_ne_town.png" ]
;[chara_show name="tear" time="100" left="0" zindex="500" ]
[bg  time="600"  method="crossfade" storage="bg/mod/shop_H.jpg" ]
[chara_mod name="rui" time="0" storage="o/sub/ne_def/ne_non_a2.png"]
[chara_show name="rui" time="300" left="0" zindex="30" ]
[anim name="rui" time="500" top="20" left="-300" ][wait time="10"][l]
[show_message_w]
[_](Tôi dẫn Nephy tới shop thời trang,[r]
Mặc dù cô ấy vẫn còn hơi do dự...[p]
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
[cm][black][stopbgm]
#Ichibikun
OK! Nếu ai từng hẹn hò với Nephy và gặp Aurelia trên phố sẽ thấy cô ấy [r]
nói muốn nhờ Nephy giúp đỡ.[p]
Ờ thì cũng chỉ là giúp cô ấy trải nghiêm một chút...[r]
Để có thêm ý tưởng thiết kế...bla...bla...[p]
Một cảnh Mờ-lem "ba phê" cùng hai NPC quen thuộc.....[p]
ps: Tránh vị phạm tccd nên ta tạm dừng ở đây.[r]

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

