;--script by ichibikun
*talk_h_medi
[cm]
#Sylvie
[f/clp]
[na_1][name] à!~[lr_]
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
Anh có khát không?[l_][f/sp] Chúng ta uống một chút trà nhé![p_][else]
Anh có khát không?[l_][f/sp] Em đi pha trà nhé![p_][endif]
[black][chara_00]
[bg  time="40"  method="crossfade"  storage="bg-room.jpg" ]
#
(Sylvie vào bếp và pha trà[lr_]
Một lúc sau, cô ấy mang ra hai tách trà nóng và...[p_]
[eval exp="f.pin=0"]
[eval exp="f.neck=0"]
[eval exp="f.hat=0"]
[eval exp="f.hair_band=0]
[eval exp="f.hair_style=0"]
[eval exp="f.dress=0"]

[iscript]
f.talk=Math.floor(Math.random() * 8 + 1);
[endscript]

[if exp="f.talk==1 && f.Dc_xa[0]=='got'"]
[eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.neck=0"]
[random_Dc_xa]
[elsif exp="f.talk==2 && f.Dc_xb[0]=='got'"]
[eval exp="f.under_b=0"][eval exp="f.neck=0"]
[random_Dc_xb]
[elsif exp="f.talk==3 && f.Dc_xc[0]=='got'"]
[eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.dress=0"]
[random_Dc_xc]
[elsif exp="f.talk>=4 && f.Dc_xb[0]=='got'"]
[eval exp="f.under_b=0"][eval exp="f.neck=0"]
[random_Dc_xb]
[elsif exp="f.Dc_xa[0]=='got'"][eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.neck=0"]
[random_Dc_xa]
[elsif exp="f.Dc_xb[0]=='got'"][eval exp="f.under_b=0"][eval exp="f.neck=0"]
[random_Dc_xb]
[elsif exp="f.Dc_xc[0]=='got'"][eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.neck=0"]
[random_Dc_xc]
[else][eval exp="f.neck=0"]
[endif]

[stopbgm]
[set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][bg  time="1"  method="crossfade"  storage="bg/db-a.jpg" ][eval exp="f.r='a'"][f/s_nt]
[show_dinner][chara_mod  name="hand_L"  time="300"  storage="o/food/t-tea_ppink.png"  ]
[bgm_IF]
#Sylvie
[f/sclp]
[um_07]Ah!~ [name][l_] xin lỗi đã để anh phải đợi lâu.[p_]
Em cảm thấy hơi nóng nên có mặc thoáng mát một chút.[l_][f/ssp] Anh không phiền đâu nhỉ![p_]
#
(Cũng chẳng có vấn đề gì, tôi bắt đầu uống tách trà mà Sylvie pha[lr_]
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up][endif]
[if exp="f.dress==9004 || f.dress==9005"][else]
[chara_mod  name="hand_L"  time="10"  storage="o/food/t-tea_ppink_.png"  ][endif]
[um_09]Umm- .[wait time=300].[wait time=300].[p_]
[na_1]Vị hơi khác một chút...[p_]
[chara_mod  name="hand_L"  time="1"  storage="o/food/t-tea_ppink.png"  ][dinner_sleeve_down]
#Sylvie
[f/clp][um_14]Hahh~...[l_]trà này hơi nóng thật~♥[p_]
[f/sp][name] à!~♥[lr_]
[f/sclp] Cũng đã lâu rồi chúng ta không làm chuyện đó...[p_]
[f/sclp]Tự nhiên em thấy trong người hơi nóng một chút...♥[lr_]
[f/sp]Anh có nghĩ rằng chúng ta nên làm gì đó không ♥♥♥?[p_]
[quake_3]
#
?...[p_]
(Sau khi uống tách trà.[l_]Tự nhiên tôi cảm thấy Sylvie trở nên dễ thương hơn ngày thường và...[p_]
trong ngưởi đột nhiên rạo rực ham muốn.)[p_]
[iscript]
f.talk=Math.floor(Math.random() * 6 + 1);
[endscript]
[if exp="f.talk<=4"]
[jump target="*event_2"]
[else]
[jump target="*event_1"]
[endif]

*event_1
#Sylvie
[f/sclp][name] à!~♥[lr_]
[f/sp]Em nghĩ rằng anh đã kiềm chế lâu rồi đó.[p_]
[f/p]Hay anh không còn muốn...[l_]với em nữa?[p_]
#
...[p_]
(Những lời nói của Sylvie như tác động trực tiếp vào cơ thể tôi.[lr_]
Tôi có thể cảm nhận rõ nhịp tim của mình ngày một mạnh)[p_]
(Cơ thể tôi tự tiến lại gần Sylvie)[p_]
[chara_mod name="window" time="0" storage="00.png" ]
;[camera  zoom="2"  x="-180"  y="110"  time="1300"  ]
#Sylvie
[f/clp]
[name] à!~[l_] Em sẽ xin lỗi anh về vụ này sau..[lr_]
[f/sp]nhưng anh cũng không cần quá gấp gáp đâu ♥♥♥ [sm_05][p_]
[black]
;[reset_camera]
[set_nade][f/sclp_nt]
[call storage="mod/game/game1_win.ks" target="*show_nade"]
[u_02]
#
Tôi khẽ hôn Sylvie[p_]
#Sylvie
[f/ssp]Chúng ta sẽ tiếp tục ở trong phòng ngủ nhé!♥♥♥[l_][sm_09][f/sp][name] ♥♥♥~[p_]
[random_3]
[if exp="f.r>=2"]
[jump storage="mod/H/H_bj_tear.ks" target="*begin"][else]
[jump storage="mod/H/sexless1.ks" target="*sexless1"][endif]
*event_2
(Tôi đã cố gắng bình tâm lại khi đối diện với Sylvie.[p_]
#Sylvie
[f/clp]
Vậy!~ Em sẽ thu dọn nhé[lr_]
[f/sp] Anh ra ngoài đợi em nhé!♥[p_]
[black][bg  time="100"  method="crossfade"  storage="bg/room.jpg" ]
#
(Sylvie thu dọn hai tách trà.[p_]
...
[quake_3][p_]
...hzzzzz...[l]
[quake_3][p_]
(Cơ thể tôi...[l_]bỗng tự di chuyển[p_][black]
Tôi bước vào phòng bếp.)[p_]
[jump storage="mod/H/H_morning.ks" target="*morning"]

;;------------------------------------------------------------------------------------------
*talk_h_medi_
[cm]
#Sylvie
[f/clp]
[na_1][name] à!~[lr_]
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
[f/cp]Anh có khát không?[l_][f/sp] Chúng ta uống một chút trà nhé![p_][else]
[f/cp]Anh có khát không?[l_][f/sp] Em đi pha trà nhé![p_][endif]
[black][chara_00]
[bg  time="40"  method="crossfade"  storage="bg/room.jpg" ]
#
(Sylvie vào bếp và pha trà[lr_]
Một lúc sau, cô ấy mang ra hai tách trà nóng và...[p_]
[eval exp="f.pin=0"]
[eval exp="f.neck=0"]
[eval exp="f.hat=0"]
[eval exp="f.hair_band=0]
[eval exp="f.hair_style=0"]
[eval exp="f.dress=0"]

[iscript]
f.talk=Math.floor(Math.random() * 6 + 1);
[endscript]

[if exp="f.talk==1 && f.Dc_xa[0]=='got'"]
[eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.neck=0"]
[random_Dc_xa]
[elsif exp="f.talk==2 && f.Dc_xb[0]=='got'"]
[eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.neck=0"]
[random_Dc_xb]
[elsif exp="f.talk==3 && f.Dc_xc[0]=='got'"]
[eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.dress=0"]
[random_Dc_xc]
[elsif exp="f.talk>=4 && f.Dc_xb[0]=='got'"]
[eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.neck=0"]
[random_Dc_xa]
[elsif exp="f.Dc_xa[0]=='got'"][eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.neck=0"]
[random_Dc_xa]
[elsif exp="f.Dc_xb[0]=='got'"][eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.neck=0"]
[random_Dc_xb]
[elsif exp="f.Dc_xc[0]=='got'"][eval exp="f.under_b=0"][eval exp="f.under_p=0"][eval exp="f.neck=0"]
[random_Dc_xc]
[else][eval exp="f.neck=0"]
[endif]

[stopbgm]
[set_dinner][if exp="f.dress==9002"][chara_mod name="sleeve" time="0" storage="00.png" ][chara_mod name="sleeve_b" time="0" storage="00png" ][endif][bg  time="1"  method="crossfade"  storage="bg/db-a.jpg" ][eval exp="f.r='a'"][f/s_nt]
[show_dinner][chara_mod  name="hand_L"  time="300"  storage="o/food/t-tea_ppink.png"  ]
[bgm_IF]
#Sylvie
[f/sclp]
[um_07]Ah!~ [name][l_] xin lỗi đã để anh phải đợi lâu.[p_]
[f/sp]Em cảm thấy hơi nóng nên có mặc thoáng mát một chút.[l_][f/ssp] Anh không phiền đâu nhỉ![p_]
#
(Cũng chẳng có vấn đề gì, tôi bắt đầu uống tách trà mà Sylvie pha[lr_]
Umm- ...[p_]
Vị hơi khác một chút...[p_]
#Sylvie
[if exp="f.dress==9004 || f.dress==9005"][else][dinner_sleeve_up][endif]
[if exp="f.dress==9004 || f.dress==9005"][else]
[chara_mod  name="hand_L"  time="10"  storage="o/food/t-tea_ppink_.png"  ][endif]
[f/clp][um_14]Hahh~.[wait time="300"].[wait time="300"].[wait time="300"][l_]trà này hơi nóng thật~♥[p_]
[chara_mod  name="hand_L"  time="1"  storage="o/food/t-tea_ppink.png"  ][dinner_sleeve_down]
[f/sp][name] à!~♥[lr_]
[f/sclp] Cúng đã lâu rồi chúng ta không làm chuyện đó...[p_]
[f/p]Tự nhiên em thấy trong người hơi nóng một chút...♥[lr_]
[f/p]Anh có nghĩ rằng chúng ta nên làm gì đó không ♥♥♥?[p_]
[quake_3]
#
?...[p_]
(Sau khi uống tách trà.[l_]Tự nhiên tôi cảm thấy Sylvie trở nên dễ thương hơn ngày thường và...[p_]
trong ngưởi đột nhiên rạo rực ham muốn.)[p_]
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
[black][chara_00]...[p]
[set_sit][f/sclp][show_sit]
[after_talk]
[else][jump target="*talk_h_bj_plus"][endif]

;;------------------------------------------------------------------------------------------
*talk_h_bj_plus
#Sylvie
[f/sclp]
[na_1][name] à~ ♥![lr_]
[f/clp]Cũng đã lâu rồi chúng ta không làm chuyện đó.[p_]
[f/p]Umm~♥♥♥[l_] Thực sự thì...[lr_]
[f/p]Em không muốn đợi thêm nữa...[p_]
[f/p]Nên anh có muốn...bây giờ không ♥♥♥?[p_]
#
[quake_3]
...[p]
Cơ thể của tôi...[l] nó không còn theo sự kiểm soát của tôi nữa...[p_]
[black]
(Tôi lại gần Sylvie và hôn cô ấy[p]
[set_nade]
[f/sp_nt]
[call storage="mod/game/game1_win.ks" target="*show_nade"]
[bg  time="100"  method="crossfade"  storage="bg/mod/tear_nade.jpg" ]
[f/clp_nt]
#Sylvie
[um_01][l_]
[k_01]Umm~♥♥♥...[p_]
[u_05]Umm~ [f/sp][name], chúng ta hãy hoàn thành việc này trong phòng ngủ nhé![p_]
[jump storage="mod/H/H_bj.ks" target="*begin"]


*talk_h_bj
#Sylvie
[f/sclp]
[na_1][name] à~ ♥![lr_]
[f/clp]Cũng đã lâu rồi chúng ta không làm chuyện đó.[p_]
[f/p]Umm~♥♥♥[l_] Thực sự thì...[lr_]
[f/p]Em không muốn đợi thêm nữa...[p_]
[f/p]Nên anh có muốn...bây giờ không ♥♥♥?[lr_]
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==1"]
[button storage="mod/H/H_bj.ks" target="*begin"  graphic="s_ch/de_co_ay_xuong.png"  x="650"  y="200" ]
[else]
[button storage="mod/H/sexless1.ks" target="*sexless1"  graphic="s_ch/de_co_ay_xuong.png"  x="650"  y="200" ][endif]
[button  target="*not"  graphic="s_ch/dress_remiddle.png"  x="650"  y="320" ][s ]

*not
[cm]
Em hiểu rồi ạ.[p_]
[after_talk]
;;----------------------------------------------------------------------------------------------

*talk_h_bj_
#Sylvie
[f/sclp]
[name] à~ ♥![lr_]
[f/p]Cũng đã lâu rồi chúng ta không làm chuyện đó.[p_]
[f/cp]Umm~♥♥♥[l_] Thực sự thì...[lr_]
[f/p]Em không muốn đợi thêm nữa...[p_]
[f/p]Nên anh có muốn...bây giờ không ♥♥♥?[p_]
[after_talk]








