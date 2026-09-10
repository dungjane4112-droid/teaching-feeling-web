;;========script_by_ichibikun============

*cloth
[cm]
[eval exp="f.dress=f.set_num1x"]
[eval exp="f.under_p=f.set_num2x"]
[eval exp="f.under_b=f.set_num3x"]
[eval exp="f.socks=f.set_num4x"]
[eval exp="f.pin=f.set_num5x"]
[eval exp="f.act=f.act+1"]
[set_sit][show_sit]
[after_talk]

*cloth_
[cm]
#sylvie
[f/hcp]Nhưng mặc thế này thật sự rất xấu hổ ạ![p_]
[name][f/shcp] thật là...[p_]
[f/sclp]Vậy thì anh cứ giữ lấy đi, em sẽ tìm bộ khác mặc vậy[p_][sm_05]
[black][bg_room]
[chara_mod name="window" time="0" storage="o/win/act_win.png" ]
[chara_show name="window" time="50" wait="false" left="613" top="22" ]
#
...[l_](Sylvie vào phòng mất rồi, tôi nên làm gì đây)[p_]
[button target="*vao"  graphic="s_ch/vao_phong.png"  x="650"  y="150" ]
[button target="*doi"  graphic="s_ch/ngoi_doi.png"  x="650"  y="280" ]
[s]

*vao
[black]
[jump target="*under_random"]

*under_random
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"][random_Du_a]
[elsif exp="f.talk==2"][random_Du_b]
[elsif exp="f.talk==3"][random_Du_c][endif]
[if exp="f.under_b==f.set_num3x"]
[eval exp="f.under_b=0"]
[endif]
[if exp="f.under_p==f.set_num2x"]
[eval exp="f.under_p=0"]
[endif]
[jump target="*vao_"]


*vao_
[cm]
#Sylvie
[a_08]
Eh!~[r]
[name]...[lr_]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk>=8"]
[eval exp="f.under_b=0"][endif]
[set_dress][f/cp_nt]
[call target="*show_dress"]
[bg  time="500"  method="crossfade"  storage="bg/bed.jpg" ]
#Sylvie
Anh không thể chờ em thêm chút nữa được sao?[p]
[chara_mod name="window" time="0" storage="o/win/act_win.png" ]
[chara_show name="window" time="50" wait="false" left="613" top="22" ]
[button target="*quat"  graphic="s_ch/quat_luon.png"  x="650"  y="150" ]
[button target="*doi_"  graphic="s_ch/ra_doi.png"  x="650"  y="280" ][s]

*quat
[cm]
[button target="*quat_luon"  graphic="s_ch/de_co_ay_xuong.png"  x="650"  y="150" ]
[button storage="mod/game/game1_cdp.ks" target="*quat"  graphic="s_ch/nghich.png"  x="650"  y="280" ][s]


*quat_luon
[cm]
Vâng! Em hiểu rồi ạ[p_]
[black]
#
(Tôi ôm lấy Sylvie, cởi quần áo và đè cô ấy xuống giường[p_]
[jump  storage="H/Hx.ks"  target="*H_ex" ]



;;------------------------------------------------------------------
*doi_
[cm]
[black]
[if exp="f.game1_rape>=1"]
[eval exp="f.game1_rape=f.game1_rape+1"]
[jump target="*doi_1"]
[endif]
[eval exp="f.game1_rape=1"]
#Sylvie
Khoan đã [name][p_]
[set_nade][f/p_nt]
[call target="*show_nade"]
[bg  time="500"  method="crossfade"  storage="bg/bed.jpg" ]

Anh có thể...[l_][f/clp] đừng đi nữa...[lr_]
[f/clp]...được không ạ?[p_]
#
(...?[p_]
#Sylvie
[f/p]Tại vì...[l_][f/clp]cơ thể em...[p_]
[black]
[stopbgm]
[playbgm  loop="true"  storage="Magenta_Touch.ogg" ]
[set_mise][chara_mod  name="eyes"  time="0"  storage="face/s0-a.png" ]
[call target="*show_mise_game1"]
[bg  time="100"  method="crossfade"  storage="bg/bed.jpg" ]

...Là do cái trò chơi của [name]...và...[lr_]
[chara_mod  name="eyes"  time="0"  storage="face/s0-c.png" ]
Anh cứ đùa giỡn với em hết lần này đến lần khác...[p_]
[chara_mod  name="eyes"  time="10"  storage="face/s0-b.png" ][l]
[chara_mod  name="eyes"  time="10"  storage="face/s0-c.png" ]
Nên anh có thể...[l_] Chạm vào em không?[p_]
[chara_mod  name="eyes"  time="0"  storage="face/m_h.png" ]
[button target="*quat_2"  graphic="s_ch/quat_luon_lag.png"  x="0"  y="300" ]
[button target="*xoa_dau"  graphic="s_ch/xoa_dau_lag.png"  x="0"  y="480" ][s]

*doi_1
#Sylvie
Đợi chút đã [name][p_]
[set_nade][f/p_nt]
[show_nade]
[bg  time="500"  method="crossfade"  storage="bg/bed.jpg" ]
Anh...[l_][f/clp]Em không có ý bảo anh phải rời khỏi đây[lr_][f/p]
...Nên anh có thể...[p_]
#
(...?)[p_]
#Sylvie
[f/p]Tại vì...[l_][f/clp]cơ thể em...[p_]
[black]
[stopbgm]
[playbgm  loop="true"  storage="Magenta_Touch.ogg" ]
[set_mise]
[call target="*show_mise_game1"]
[bg  time="100"  method="crossfade"  storage="bg/bed.jpg" ]
[chara_mod  name="eyes"  time="0"  storage="face/s0-a.png" ]
...Là do cái trò chơi của [name]...và...[lr_]
[chara_mod  name="eyes"  time="0"  storage="face/s0-f.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
Vì anh đã vào đây rồi nên...[p_]
[else]
Vì anh cứ hay trêu chọc em nữa...nên...[p_][endif]
[chara_mod  name="eyes"  time="0"  storage="face/s0-c.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
Nên anh có thể...[l_] Chúng ta sẽ làm luôn bây giờ chứ?[p_]
[else]
Nên chúng ta sẽ...[l_]Em muốn chúng ta làm luôn bây giờ ạ![p_]
[endif]
[chara_mod  name="eyes"  time="0"  storage="face/m_h.png" ]
[button target="*quat_2"  graphic="s_ch/quat_luon_lag.png"  x="0"  y="300" ]
[button target="*xoa_dau"  graphic="s_ch/xoa_dau_lag.png"  x="0"  y="480" ][s]

*quat_2

[cm]
#
(Không cần nghĩ ngợi gì nhiều. Tôi ôm lấy Sylvie và đặt cô ấy xuống giường)
[jump  storage="H/sexless2.ks"  target="*bed" ]

*xoa_dau
[cm]
#Sylvie
...Em... hiểu rồi[p_]
Là do anh chưa có tâm trạng sao, [name]... nhưng...[p_]
[black]
#
(Tôi không nói gì thêm và đi ra khỏi phòng ngủ.[lr_]
Có lẽ không nên trêu chọc cô ấy thêm nữa...)[p_]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk==5 || f.talk==9"]
[jump target="*doi"][endif]
Slizz!~[lr_]
Ơ~!...[r]
hình như...[p_]
[set_nade][f/p_nt]
[bg  time="500"  method="crossfade"  storage="bg/bed.jpg" ]
[call target="*show_nade"]
#Sylvie
...Shii~i...[p_]

[name] đợi đã...[l_][f/clp]Anh chưa thể đi được đâu[p_]
[f/hp]Anh vẫn đang trêu chọc em phải không?[p_]
[f/shp]Có thể...[l_][f/shp]Việc này...em không nên làm...nhưng[lr_]
[f/shp]Dù chỉ là nô lệ....[p_]
[f/sq]Em sẽ xin lỗi anh sau vậy ♥♥♥[p_][f/ssp_nt][sm_05][p_]
[black]
[bg  time="800"  method="crossfade"  storage="bg/mod/eye_off.jpg" ]
[bg  time="500"  method="crossfade"  storage="bg/black.jpg" ]
#
Con bé ôm ghì lấy tôi, hôn và đẩy tôi về phía chiếc giường[k_01][p_]
...[p_]
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
Lưỡi của Sylvie cuộn lên cuộn xuống một cách gấp gáp trong miệng tôi [k_07][p_]
[else]
Lưỡi của Sylvie khuấy đảo một cách cuồng nhiệt trong miệng tôi [k_07][p_][endif]
....[p_][um_01]
[bg  time="800"  method="crossfade"  storage="bg/mod/eye_off_1.jpg" ]
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
Cuối cùng cô ấy cũng chịu buông tôi ra rồi thở một cách gấp gáp.[p_]
[else]
Cuối cùng cô ấy cũng chịu buông tôi ra rồi ổn định lại hơi thở.[p_][endif]
[bg  time="800"  method="crossfade"  storage="bg/mod/eye_off_2.jpg" ]
Cô ấy ngước nhìn tôi một cách đắm đuối[p_]
[bg  time="800"  method="crossfade"  storage="bg/black.jpg" ]
[bg  time="800"  method="crossfade"  storage="bg/mod/eye_off_3.jpg" ]
#Sylvie
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
Em không có ý định dừng lại đâu [name] ♥♥♥[p_][sm_05][else]
Em sẽ không dừng lại đâu nhé! [name] ♥♥♥[p_][sm_05][endif]
[bg  time="500"  method="crossfade"  storage="bg/black.jpg" ]
#
Sylvie ấy ôm lấy tôi, Áp chặt cơ thể cô ấy vào người tôi.[l_] Cô ấy khẽ đẩy tôi nằm xuống, một tay đưa xuống phía dưới kéo khóa và lôi thằng nhỏ của tôi ra.[p_]
Tay tôi chưa kịp phản ứng thì cô ấy đã nhún vai ghì chặt lấy cánh tay tôi rồi nhanh chóng trườn xuống dưới[p_]
[jump storage="mod/H/H-lust.ks" target="*begin"] 

;;-----------------------------------------------

*doi
[cm]
[if exp="f.tiet_khi>=1 && f.tiet_khi<=6"][dress_random_spring]
[elsif exp="f.tiet_khi>=7 && f.tiet_khi<=12"][dress_random_summer]
[elsif exp="f.tiet_khi>=13 && f.tiet_khi<=18"][dress_random_autumn]
[elsif exp="f.tiet_khi>=19 && f.tiet_khi<=24"][dress_random_winter]
[endif]
[set_sit][show_sit]
#Sylvie
[f/sp]
Xin lỗi đã để anh phải chờ lâu [p_]
[end_talk]


;;-----------------------------------------------------------------------------------
*show_nade
[bg storage="bg/nade.jpg" time="0" ]
[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]
[chara_show name="body" time="0" wait="false" left="0.1" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=30 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="0.1" zindex=70 ][endif]

;[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="0.1" zindex=90 ][endif]
[if exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=110 ][endif]

[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="0.1" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=130 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]
[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=180 ]

;[chara_show name="hand_R" time="0" wait="false" left="0.1" zindex=185 ]
;[chara_mod name="window" time="1" storage="00.png" ][chara_show name="window" time="1" wait="false" left="20" top="30" zindex=190 ]
;[chara_mod name="other" time="1" storage="00.png" ][chara_show name="other" time="1" wait="false" height="38" width="430" left="31" top="41" zindex=195 ]
[if exp="f.last_act!='nade_conti'" ][hide_black][endif]
[return]

*show_dress
[chara_show name="hair_b" time="0" wait="false" left="0.1" ]
[chara_show name="ribbon_b" time="0" wait="false" left="0.1" ]
[chara_show name="body" time="0" wait="false" left="0.1" ]
[chara_show name="b_acc" time="0" wait="false" left="0.1" ]
[chara_show name="under_p" time="0" wait="false" left="0.1" ]
[chara_show name="under_b" time="0" wait="false" left="0.1" ]
;[chara_show name="ef2" time="0" wait="false" left="0.1" ]
[chara_show name="gloves" time="0" wait="false" left="0.1" ]
[chara_show name="socks" time="0" wait="false" left="0.1" ]
[chara_show name="dress" time="0" wait="false" left="0.1" ]
[chara_show name="neck" time="0" wait="false" left="0.1" ]

[chara_show name="head" time="0" wait="false" left="0.1" ]
[chara_show name="eyes" time="0" wait="false" left="0.1" ]
[chara_show name="mouth" time="0" wait="false" left="0.1" ]
[chara_show name="glasses" time="0" wait="false" left="0.1" ]
[chara_show name="mayu" time="0" wait="false" left="0.1" ]
[chara_show name="hair_f" time="0" wait="false" left="0.1" ]


[chara_show name="pin" time="0" wait="false" left="0.1" ]
[chara_show name="ribbon" time="0" wait="false" left="0.1" ]
[chara_show name="hat" time="0" wait="false" left="0.1" ]

[hide_black][return]


*show_mise_game1
[bg storage="H/Hxf.jpg" time="0" ]

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
;[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=130 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]

[chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=165 ]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=170 ]
;[chara_show name="other" time="0" wait="false" height="900" width="1350" left="0.1" zindex=180 ]

;[if exp="f.step!=6" ][chara_show name="h" time="0" wait="false" left="0.1" zindex=190 ][endif]
[hide_black][return]




