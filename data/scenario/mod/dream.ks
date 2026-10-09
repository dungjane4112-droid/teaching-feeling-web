*begin
[if exp="f.vgf>=1"][else][jump storage="mod/morning_wekup.ks" target="*begin_"][endif]
[cm]
[random_10]
[if exp="f.aurelia_tl=='yet' && f.r>=2"][jump target="*dream_aurelia"]
[elsif exp="f.sachi_talk>=13 && f.sachi_date>=1 && f.r>=3"][jump target="*dream_sachi"]
[else][jump storage="mod/morning_wekup.ks" target="*begin_"][endif]

[random_10]
[if exp="f.r>=6"][random_Dc_i][jump target="*maid_check_1"][endif]
[jump target="*dream"]

*maid_check_1
[if exp="f.dress>=81 && f.dress<=86"][else][random_Dc_i][jump target="*maid_check_2"][endif][jump target="*dream"]
*maid_check_2
[if exp="f.dress>=81 && f.dress<=86"][else][random_Dc_i][jump target="*maid_check_3"][endif][jump target="*dream"]
*maid_check_3
[if exp="f.dress>=81 && f.dress<=86"][else][random_Dc_i][jump target="*dream"][endif]

*dream
[eval exp="f.dream='meme'"]
[cm][stopbgm][bgm_ST]
[_](Hôm nay khi thức dậy,[lr]
[set_dinner][f/shp_nt]
[chara_mod name="hand_L" time="1" storage="00.png" ]
[call target="*show_dinner"]
[random_3]
[if exp="f.r==1"]
tôi thấy Sylvie đang ngồi trên ghế với ánh mắt chăm chú nhìn về phía tôi.[p]
[elsif exp="f.r==2"]
tôi thấy Sylvie đang ngồi trên ghế nhìn chăm chú về phía tôi như đang mong đợi[r] điều gì đó.[p]
[else]tôi thấy Sylvie đang ngồi cạnh tôi và ánh mắt cô ấy chăm chú nhìn về phía tôi[r] như đang mong tôi tỉnh lại.[p][endif]

[syl]
[random_3]
[if exp="f.r==1"]
[f/hp]Chào buổi sáng! [name][p_]
[elsif exp="f.r==2"]
[f/hp]C-Chào buổi sáng!~... [name][p_]
[else]A-Anh đã tỉnh dậy rồi...[l_]Umm~[lr_]
[f/clp]Chào buổi sáng! [name][p_][endif]

[f/clp_nt][um_09]Umm~!...[p_]

[random_3][if exp="f.r==1"]
[f/hp][name].[p_]
[elsif exp="f.r==2"][f/clp][name] à!~.[p_]
[else][f/clp]Ano~...[l_][f/hp][name] à!~[p_][endif]

[random_3][if exp="f.r==1"]
[f/clp]Tự nhiên hôm nay em cảm thấy hơi chóng mặt...[lr_]
[f/hp] và mệt nữa ạ![p_]
[elsif exp="f.r==2"]
[f/hp]Tự nhiên hôm nay em cảm thấy chóng mặt, buồn nôn...[lr_]
[f/clp]và mệt nữa ạ[p_]
[else][f/hp]Hôm nay em cảm thấy chóng mặt, buồn nôn...[l_]
[f/clp]và mệt nữa ạ.[p_]
[f/hp_nt][um_01]Umm~.[lr_]
[f/clp]E-Em... vẫn chưa chuẩn bị được bữa sáng cho anh hôm nay...[p_]
[f/hp]Em xin lỗi...[p_][endif]


[f/shp]Và...gần đây anh có "làm" với em hơi nhiều nên... [lr_]
[dinner_sleeve_up][chara_mod name="hand_L" time="100" storage="mod/hand/meme.png" ]
[f/sclp][um_01]E-Em đã thử dùng thứ này...[lr_]
[f/scp]N-Nó đã hiện lên 2 vạch...[p_]

[random_3][if exp="f.r==1"]
[f/sp]Nên có lẽ chúng ta nên tìm một cái tên cho đứa trẻ nhé.[sm_09][lr_]
[f/shp]Được không ạ?[a_01][p_]
[elsif exp="f.r==2"]
[f/hp]Nên nếu được thì anh hãy đặt một cái tên cho đứa trẻ nhé.[um_01][lr_]
[f/shp]Được không ạ?[p_]
[else]
[f/shp]Nên em nghĩ anh hãy đặt một cái tên cho đứa trẻ nhé.[sm_09][lr_]
[f/shp]Được không ạ?[a_01][p_][endif]
[_]...[p]
[black][stopbgm]
...[p]
[syl][na_1][name]... [name]...[lr]
Muộn rồi đó... anh làm ơn hãy tỉnh dậy đi ạ...[p]
[jump storage="mod/morning_wekup.ks" target="*begin_"]

*dream_sachi
[random_10]
;[emb exp="f.r"], [emb exp="f.sachi_up"][p]
[if exp="f.sachi_up=='true' && f.r>=2"]
[eval exp="f.sachi_up='good'"]
[jump storage="mod/H/sachi_H.ks" target="*dream_sachi_h"][endif]
[random_5]
[if exp="f.r<=3"][jump target="*dream_sachi_1"]
[else][jump target="*dream_sachi_2"][endif]

*dream_sachi_1
[cm][black][stopbgm][bgm_AT]
[random_3]
[_]
[if exp="f.r==1"]
(Hôm nay, tôi có hứa với Sachi-chan sẽ dẫn cô bé đi tham quan thị trấn này.[p]
[elsif exp="f.r==2"]
(Hôm nay,[l] Tôi lại ra ngoài một mình vào sáng sớm.[p]
(Như thường lệ thì tôi đi tham quan các cửa hàng xem có dụng cụ hay nguyên liệu mà tôi cần không.[p]
(Tuy nhiên hôm nay tôi lại có hẹn với cô bé ở cửa hiệu thời trang, hứa dẫn cô ấy đi tham quan thị trấn.[p]
[else]
(Thường thì tôi chỉ ra ngoài khi cần mua đồ hoặc đưa Sylvie đi dạo.[p]
(Tuy nhiên hôm nay tôi ra ngoài một mình vì có hẹn đưa Sachi đi tham quan thị trấn[p][endif]
[bg time="600" method="crossfade" storage="bg/town.jpg" ]
(...[p]
(Có lẽ tôi đến hơi sớm[p]
[chara_mod name="sachi" time="10" storage="mod/sachi/s5_defp.png" ]
[sachi_show]
#Sachi
Chào anh ạ![lr]
Xin lỗi vì em đến hơi muộn[p]
[_](Không, cô ấy đến đúng giờ, là tôi đến sớm thôi.[p]
[chara_mod name="sachi" time="10" storage="mod/sachi/s5_smile_p.png" ]
#Sachi
Cảm ơn anh vì đã đến ạ![p]
[chara_mod name="sachi" time="10" storage="mod/sachi/s6_smile_p.png" ]
Nhờ anh giúp đỡ ạ[p]
[sachi_hide][bg time="600" method="crossfade" storage="bg/mod/sachi_date1.jpg" ]
[_](Thời tiết hôm nay khá tốt, rất thích hợp để đi dạo phố[p]
(Tôi dẫn Sachi đi quanh thị trấn. [p]
Đúng ra thì cũng chả có gì đặc biệt nhưng vì ở đây cô ấy vốn là người lạ, đi chung với tôi sẽ thu hút khá nhiều ánh mắt tò mò.[p]
[bg time="600" method="crossfade" storage="bg/mod/town_sachi.jpg" ]
Dường như cô bé cũng nhận ra là bị chú ý nên đến gần và núp sau tôi.[p]
Có lẽ ở thị trấn này cô ấy chỉ thân với mỗi tôi và bà chủ tiệm.[lr]
Tôi đoán do vẻ ngoài đặc biệt của cô ấy.[p]
Nghĩ đến đó tôi có chút lo lắng cho Sylvie[lr]
Dù tôi cũng có hay để Sylvie ở nhà một mình nhưng...[p]
Tôi nghĩ tôi nên về nhà sớm hôm nay...[p]
[eval exp="f.sachi_talk=f.sachi_talk-8"][eval exp="f.dream='sachi'"][eval exp="f.sachi_d='true'"]
[jump storage="mod/morning_wekup.ks" target="*begin_"]

*dream_sachi_2
[cm][black][stopbgm][bgm_AT]
[random_3]
[_]
[if exp="f.r==1"]
(Hôm nay, tôi có hứa với Sachi-chan sẽ dẫn cô bé đi tham quan thị trấn này.[p]
[elsif exp="f.r==2"]
(Hôm nay,[l] Tôi lại ra ngoài một mình vào sáng sớm.[p]
(Như thường lệ thì tôi đi tham quan các cửa hàng xem có dụng cụ hay nguyên liệu mà tôi cần không.[p]
(Tuy nhiên hôm nay tôi lại có hẹn với cô bé ở cửa hiệu thời trang, hứa dẫn cô ấy đi tham quan khu rừng nhỏ của thị trấn.[p]
[else]
(Thường thì tôi chỉ ra ngoài khi cần mua đồ hoặc đưa Sylvie đi dạo.[p]
(Tuy nhiên hôm nay tôi ra ngoài một mình vì có hẹn đưa Sachi đi tham quan thị trấn[p][endif]
[bg time="600" method="crossfade" storage="bg/outside.jpg" ]
(...[p]
(Có lẽ tôi đến hơi sớm[p]
[chara_mod name="sachi" time="10" storage="mod/sachi/s5_defp.png" ]
[sachi_show]
#Sachi
Chào anh ạ![lr]
Xin lỗi vì bị lạc nên em đến hơi muộn ạ[p]
[_](Không, cô ấy đến đúng giờ, là tôi đến sớm thôi.[p]
[chara_mod name="sachi" time="10" storage="mod/sachi/s5_smile_p.png" ]
#Sachi
Cảm ơn anh vì đã đến ạ![p]
[chara_mod name="sachi" time="10" storage="mod/sachi/s6_smile_p.png" ]
Nhờ anh giúp đỡ ạ[p]
[sachi_hide][bg time="600" method="crossfade" storage="bg/mod/sachi_wood_date1.jpg" ]
[_](Thời tiết hôm nay khá tốt, rất thích hợp để đi dạo[p]
(Đúng ra thì cũng chả có gì đặc biệt nhưng vì ở đây cô ấy vốn là người lạ, đi chung với tôi sẽ thu hút khá nhiều ánh mắt tò mò.[p]
(Nhưng cũng may khu rừng này không có nhiều người qua lại[p]
[bg time="600" method="crossfade" storage="bg/mod/wood_sachi.jpg" ]
Dường như cô bé hơi e sợ bởi sự yên tĩnh của khu rừng nên đến gần và núp sau tôi.[p]
Có lẽ ở thị trấn này cô ấy chỉ thân với mỗi tôi và bà chủ tiệm.[lr]
Tôi đoán do vẻ ngoài đặc biệt của cô ấy.[p]
Nghĩ đến đó tôi có chút lo lắng cho Sylvie[lr]
Dù tôi cũng có hay để Sylvie ở nhà một mình nhưng...[p]
Tôi nghĩ tôi nên về nhà sớm hôm nay...[p]
[eval exp="f.sachi_talk=f.sachi_talk-8"][eval exp="f.dream='sachi'"][eval exp="f.sachi_d='true'"]
[jump storage="mod/morning_wekup.ks" target="*begin_"]

*dream_aurelia
[eval exp="f.aurelia_tl='non'"]
[if exp="f.au_first_d=='yet'"]
[eval exp="f.dream='aurelia'"]
[else]
[eval exp="f.au_first_d='yet'"]
[eval exp="f.dream='aureliaf'"][endif]
[jump target="*dream_aurelia_"]

*dream_aurelia_
[random_10]
[if exp="f.r>=8 && f.aur_dream=='yet'"]
[jump storage="mod/H/Aurelia_snow_after.ks" target="*begin"][else]
[jump storage="mod/H/Aurelia_snow.ks" target="*begin"][endif]

;*dream_aurelia_after
;[jump storage="mod/H/Aurelia_snow_after.ks" target="*begin"]

*dream_aurelia_beore
[cm][black][jump storage="mod/morning_wekup.ks" target="*begin_"]



*show_dinner
[chara_mod name="hand_R" time="0" storage="00.png" ]
[bg time="1" method="crossfade" storage="bg/db-e.jpg" ]

[chara_show name="other" time="0" height="900" width="1350" wait="false" left="0.1" zindex=4 ]

[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]

[chara_show name="arm_b" time="0" wait="false" left="0.1" zindex=10 ]
[if exp="f.gloves>=1" ][chara_show name="gloves_b" time="0" wait="false" left="0.1" zindex=15 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve_b" time="0" wait="false" left="0.1" zindex=20 ][endif]

[chara_show name="body" time="0" wait="false" left="0.1" zindex=30 ]
[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="0.1" zindex=60 ][endif]
;[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="0.1" zindex=70 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="0.1" zindex=80 ][endif]
[chara_show name="arm" time="0" wait="false" left="0.1" zindex=90 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="0.1" zindex=100 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="0.1" zindex=110 ][endif]

[if exp="f.neck>=11 && f.neck<=20" ]
[chara_show name="neck" time="0" wait="false" left="0.1" zindex=85 ]
[elsif exp="f.neck>=1" ]
[chara_show name="neck" time="0" wait="false" left="0.1" zindex=120 ][endif]

[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="0.1" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=140 ]
[chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=141 ]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]


[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=165 ][endif]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=170 ]

[chara_show name="hand_R" time="0" wait="false" left="0.1" zindex=175 ]
[chara_show name="hand_L" time="0" wait="false" left="0.1" zindex=180 ]
[chara_hide name="black" layer=1 time="800" ][return] 

































