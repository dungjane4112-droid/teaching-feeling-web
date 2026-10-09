;;========script_by_ichibikun============
*set
[eval exp="f.play=''"]
[eval exp="f.sylvie_play=''"]

[eval exp="f.set_num1=1"]
[eval exp="f.set_num2=0"]
[eval exp="f.set_num3=1"]
[eval exp="f.set_num4=0"]
[eval exp="f.set_num5=0"]
[eval exp="f.set_num6=0"]
;;-------dùng cho cởi đồ
[eval exp="f.set_num7=0"]

[eval exp="f.set_num1x=0"]
[eval exp="f.set_num2x=0"]
[eval exp="f.set_num3x=0"]
[eval exp="f.set_num4x=0"]
[eval exp="f.set_num5x=0"]
[eval exp="f.set_num6x=0"]
[eval exp="f.set_num7x=0"]

[eval exp="f.set_num1x=f.dress"]
[eval exp="f.set_num2x=f.under_p"]
[eval exp="f.set_num3x=f.under_b"]
[eval exp="f.set_num4x=f.socks"]
[eval exp="f.set_num5x=f.pin"]
[eval exp="f.set_num6x=f.hat"]
[eval exp="f.set_num7x=f.hair_band"]
[jump target="*chon"]

*chon
[f/sp_nt]
[eval exp="f.talk=f.talk+1]
[if exp="f.pin>=1 || f.hat>=1 || f.hair_band>=1 || f.dress>=1 || f.socks>=1 || f.under_b>=1 || f.under_p>=1"]
[else][jump target="*end_y"][endif]
[if exp="f.set_num1>=15"]
[jump target="*end"]
[endif]

[cm]
#
[f/sp_nt]
(Còn [font color="lightsteelblue"][emb exp="15-f.set_num1" ][resetfont] lượt)
[button  target="*bao"  graphic="menu/bao.png"  x="750" y="485" ]
[button  target="*bua"  graphic="menu/bua.png"  x="920" y="485" ]
[button  target="*keo"  graphic="menu/keo.png"  x="1110" y="485" ]
[button  target="*end_x"  graphic="menu/game1_lost.png"  x="680" y="150" ]
[s]      

*bao
[cm]
[eval exp="f.play='bao'"]
[jump target="*Sylvie_random"]
*bua
[cm]
[eval exp="f.play='búa'"]
[jump target="*Sylvie_random"]
*keo
[cm]
[eval exp="f.play='kéo'"]
[jump target="*Sylvie_random"]
;-----------test
*Sylvie_random_test
[random_10][if exp="f.r>=3"][jump target="*syl_win"]
[else][jump target="*syl_lost"][endif]

*syl_win
[if exp="f.play='bao'"][eval exp="f.sylvie_play='kéo'"]
[elsif exp="f.play='búa'"][eval exp="f.sylvie_play='bao'"]
[elsif exp="f.play='kéo'"][eval exp="f.sylvie_play='búa'"][endif]
[jump target="*so_sanh"]

*syl_lost
[if exp="f.play='bao'"][eval exp="f.sylvie_play='búa'"]
[elsif exp="f.play='búa'"][eval exp="f.sylvie_play='kéo'"]
[elsif exp="f.play='kéo'"][eval exp="f.sylvie_play='bao'"][endif]
[jump target="*so_sanh"]
;---------------
*Sylvie_random
[eval exp="f.talk=f.talk+2"]
[iscript]
f.talk=Math.floor(Math.random() * 5 + 1);
[endscript]
[if exp="f.talk==1 || f.talk==5 || f.talk==0"]
[eval exp="f.sylvie_play='bao'"]
[elsif exp="f.talk==2 || f.talk==6"]
[eval exp="f.sylvie_play='búa'"]
[elsif exp="f.talk==3 || f.talk==7"]
[eval exp="f.sylvie_play='kéo'"]
[else][jump target="*bonus"][endif]
[jump target="*so_sanh"]


*bonus
[if exp="f.play=='bao'"]
[eval exp="f.sylvie_play='búa'"]
[elsif exp="f.play=='búa'"]
[eval exp="f.sylvie_play='kéo'"]
[elsif exp="f.play=='kéo'"]
[eval exp="f.sylvie_play='bao'"][endif]
[jump target="*so_sanh"]

*so_sanh
[cm]
#Sylvie
【[emb exp="f.sylvie_play" ]】[r]
[if exp="f.sylvie_play=='bao' && f.play=='bao'"]
[jump target="*hoa"]
[elsif exp="f.sylvie_play=='bao' && f.play=='búa'"]
[jump target="*thang"]
[elsif exp="f.sylvie_play=='bao' && f.play=='kéo'"]
[jump target="*thua"]
[elsif exp="f.sylvie_play=='búa' && f.play=='bao'"]
[jump target="*thua"]
[elsif exp="f.sylvie_play=='búa' && f.play=='búa'"]
[jump target="*hoa"]
[elsif exp="f.sylvie_play=='búa' && f.play=='kéo'"]
[jump target="*thang"]
[elsif exp="f.sylvie_play=='kéo' && f.play=='bao'"]
[jump target="*thang"]
[elsif exp="f.sylvie_play=='kéo' && f.play=='búa'"]
[jump target="*thua"]
[elsif exp="f.sylvie_play=='kéo' && f.play=='kéo'"]
[jump target="*hoa"]
[endif]

*thang
[iscript]
f.talk=Math.floor(Math.random() * 6 + 1);
[endscript]
[if exp="f.talk==1"]
[f/ssp][sm_07] Ah!~ Em thắng rồi[p_] 
[elsif exp="f.talk==2"]
[f/ssp][sm_07] Hehe!~ Em thắng rồi[p_]
[elsif exp="f.talk==3"]
[f/ssp][sm_02] ^!^ Là em thắng nhỉ![p_]
[elsif exp="f.talk==4"]
[f/ssp][sm_11] Hay quá! Em thắng rồi[p_]
[else]
[f/ssp][sm_09] May quá! Em thắng rồi[p_]
[endif]
[jump target="*not"]

*hoa
[iscript]
f.talk=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.talk==1"]
[f/sp][a_02]Hòa rồi[p_]
[elsif exp="f.talk==2"]
[f/sp][a_01]Ah! Là hòa nhỉ[p_]
[else]
[f/sp][a_08]Chúng ta hòa rồi[p_]
[endif]
[eval exp="f.set_num1=f.set_num1+1"]
[jump target="*chon"]
*thua
[iscript]
f.talk=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.talk==1"]
[f/clp][um_01]Ôi~! Thua mất rồi[p_]
[elsif exp="f.talk==2"]
[f/clp][um_02]Ôi~! Lần này em thua rồi[p_]
[else]
[f/clp][um_06]Ôi~! Thua mất rồi[p_]
[endif]
[jump target="*off_cloth"]

*not
[cm]
[eval exp="f.set_num1=f.set_num1+1"]
[jump target="*chon"]

*off_cloth
[eval exp="f.set_num1=f.set_num1+1"]
[cm]
[f/sp_nt]
[if exp="f.pin>=1"]
[eval exp="f.pin=0"][eval exp="f.front_hair=0"][chara_mod name="hair_f" time="0" storage="s/body/sit_fh.png" ]
[um_02]
[chara_mod name="pin" time="500" storage="chara/pin-s/p-00.png" ]
[f/sp_nt]
#
(Tôi đã lấy được cái kẹp tóc của Sylvie)[p_]
[jump target="*chon"]

[elsif exp="f.hat>=1 || f.hair_band>=1"]
[eval exp="f.hat=0"]
[um_02]
[chara_mod name="hat" time="500" storage="00.png" ]
(Tôi đã lấy được mũ và dây buộc tóc của Sylvie)[p_]
[eval exp="f.hair_band=0][eval exp="f.hair_style=0"]
[chara_mod name="ribbon" time="500" storage="00.png" ]
[chara_mod name="ribbon_b" time="0" storage="00.png" ]
;[chara_mod name="body" time="50" storage="chara/body-s/body-a.png" ]
[chara_mod name="hair_b" time="0" storage="s/hair/R/nr.png" ]
[jump target="*chon"]

[elsif exp="f.socks>=1"]
[eval exp="f.socks=0"]
[eval exp="f.gloves=0"]
[um_05]
[chara_mod name="socks" time="500" storage="00.png"]
[chara_mod name="gloves" time="50" storage="00.png" ]
(Tôi đã lấy được đôi tất của Sylvie)[p_]
[jump target="*chon"]

[elsif exp="f.dress>=1"]
[eval exp="f.dress=0"]
[eval exp="f.neck=0"]
[um_03][f/shcp_nt]
[chara_mod name="neck" time="100" storage="00.png" ]
[chara_mod name="dress" time="500" storage="00.png" ]
[chara_mod name="sleeve" time="0" storage="00.png" ]
[chara_mod name="sleeve_b" time="0" storage="00.png" ]
#
(Tôi đã lấy được quần áo của Sylvie)[p_]
[jump target="*chon"]

[elsif exp="f.under_b>=1"]
[eval exp="f.under_b=0"]
[um_03][f/shcp_nt]
;[chara_mod name="body" time="50" storage="chara/body-s/body-b0.png" ]
[chara_mod name="under_b" time="500" storage="00.png" ]
#
(Tôi đã lấy được áo lót của Sylvie)[p_]
[jump target="*chon"]

[elsif exp="f.under_p>=1"]
[eval exp="f.under_p=0"]
[um_03][f/shcp_nt]
;[chara_mod name="body" time="50" storage="chara/body-s/body-b1.png" ]
[chara_mod name="under_p" time="500" storage="00.png" ]
#
(Tôi đã lấy được quần lót của Sylvie)[p_]
[jump target="*chon"]
[endif]
[jump target="*chon"]

*end_x
[cm]
[if exp="f.pin>=1 || f.hat>=1 || f.hair_band>=1 || f.dress>=1 || f.socks>=1 || f.under_b>=1 || f.under_p>=1"]
#Sylvie
[f/sp][um_02]Umm~! Vậy là anh đã chịu thua nhỉ?[lr_]
[endif]
[if exp="f.dress==0 || f.under_b==0 || f.under_p==0"]
[f/sclp]Phải trả lại em quần áo đó[p_][sm_05]
[button  target="*end_"  graphic="s_ch/tra_lai.png"  x="650"  y="150" ]
[button  target="*end_non"  graphic="s_ch/khong_tra.png"  x="650"  y="290" ]
[s]
[endif][jump  target="*sylvie_ivent" ]

*end
[cm]
[if exp="f.pin>=1 || f.hat>=1 || f.hair_band>=1 || f.dress>=1 || f.socks>=1 || f.under_b>=1 || f.under_p>=1"]
#Sylvie
[um_02]Umm~! Vậy là anh đã thua nhỉ?[lr_]
[endif]
[if exp="f.dress==0 || f.under_b==0 || f.under_p==0"]
[f/sclp]Trả em quần áo đi[p_][sm_05]
[button  target="*end_"  graphic="s_ch/tra_lai.png"  x="650"  y="220" ]
[button  target="*end_non"  graphic="s_ch/khong_tra.png"  x="650"  y="380" ]
[s]
[endif]
[jump target="*sylvie_ivent" ]

*end_
[eval exp="f.dress=f.set_num1x"]
[eval exp="f.under_p=f.set_num2x"]
[eval exp="f.under_b=f.set_num3x"]
[eval exp="f.socks=f.set_num4x"]
[eval exp="f.pin=f.set_num5x"]
[eval exp="f.hat=f.set_num6x"]
[eval exp="f.hair_band=f.set_num7x"]
[eval exp="f.act=f.act+1"]
[set_sit][show_sit]
[jump  target="*sylvie_ivent" ]

*end_non
[cm]
#sylvie
[f/hp]Nhưng mặc thế này thật sự rất xấu hổ ạ![p_]
[name][f/ssp] thật là...[p_]
[f/ssp]Vậy thì anh cứ giữ lấy đi, em sẽ tìm bộ khác mặc vậy[p_][sm_05]
[jump target="*cloth_random"]

*cloth_random
[dress_random]
[jump target="*cloth_random_next"]

*cloth_random_next
[cm]
[eval exp="f.tinh_=f.tinh_+1"]
[if exp="f.tinh_>=20"]
[jump  storage="after_action.ks"  target="*after_talk" ][endif]
[if exp="f.dress==f.set_num1x"]
[jump target="*cloth_random"]
[endif]
[if exp="f.dress<=0 && f.set_num1x==11"]
[eval exp="f.dress=1"]
[elsif exp="f.dress<=0"]
[eval exp="f.dress=11"][endif]
[black][set_sit][show_sit]
[jump target="*sylvie_ivent" ]


*end_y
#Sylvie
Em hết đồ trên người rồi nên không thể chơi tiếp nữa đâu.[p_]
[f/shp]Anh có thể... trả lại quần áo cho em được không? [p_]
[button storage="mod/game/game1_win.ks" target="*cloth"  graphic="s_ch/tra_lai.png"  x="650"  y="180" ]
[button  storage="mod/game/game1_win.ks" target="*cloth_"  graphic="s_ch/khong_tra.png"  x="650"  y="280" ]
[s]

*cloth
[cm]
[eval exp="f.dress=f.set_num1x"]
[eval exp="f.under_p=f.set_num2x"]
[eval exp="f.under_b=f.set_num3x"]
[eval exp="f.socks=f.set_num4x"]
[eval exp="f.pin=f.set_num5x"]
[eval exp="f.act=f.act+1"]
[set_sit][show_sit]
[jump  storage="after_action.ks"  target="*after_talk" ]


*sylvie_ivent
[cm_t]
[eval exp="f.syl_game1='non'"]
[eval exp="f.set_num2=f.day"]
#Sylvie
[f/ssp]Vì anh đã thua nên phải thực hiện một yêu cầu của em nhỉ[p_]
[f/ssp]Để xem nào....[p_]
[iscript]
f.talk=Math.floor(Math.random() * 6 + 1);
[endscript]
[if exp="f.talk==1 && f.love>=1500"]
[f/shp]Anh hãy nói "anh yêu em" đi[p_]
[eval exp="f.syl_game1='love'"]

[elsif exp="f.talk==1 && f.love<=1499"]
[f/sclp]Anh có thể...Um~..[l]Hôn em được không?[p_]
[eval exp="f.syl_game1='kiss'"]

[elsif exp="f.talk==2"]
[f/sclp]Anh có thể...Um~[l]Ôm em được không?[p_]
[eval exp="f.syl_game1='hug'"]

[elsif exp="f.talk==3"]
[f/ssp]Anh có thể xoa đầu em được không?[p_]
[eval exp="f.syl_game1='nade'"]

[elsif exp="f.talk==4"]
[f/sclp]Anh có thể...Um~..[l]Hôn em được không?[p_]
[eval exp="f.syl_game1='kiss'"]

[elsif exp="f.talk==5"]
[f/sclp]Một cuộc hẹn hò thì sao nhỉ?[lr_]
Mai chúng ta cùng ra ngoài chơi nhé! Đi đâu cũng được ạ![f/ssp][p_]
[eval exp="f.syl_game1='out'"]
[eval exp="f.set_num2=f.set_num2+1"]

[else]
[f/sclp][name] à![lr_]
[f/sclp]Um~! Tối nay...[l][f/shp] Chúng ta sẽ làm "chuyện đó" chứ ạ?[p_]
[eval exp="f.syl_game1='beg'"]
[endif][end_talk]










