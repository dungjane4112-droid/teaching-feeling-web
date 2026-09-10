;;========script_by_ichibikun============

*begin
[eval exp="f.bien=f.act"]
[cm][black][chara_00][hide_message_w][stopbgm]

[call storage="talk/step6.ks" target="*day_start_return"]

[bgm_RG][l]
[chara_mod name="tear" time="0" storage="o/sub/neph_H/dark_ne_town.png" ]
[chara_show name="tear" time="10" left="0" zindex="500" ]
[chara_mod name="ef" storage="mod/hand/bed_wekup.png" ]
[chara_show name="ef" time="1" zindex="10" ]
[chara_mod name="h" time="0" storage="00.png"]
[chara_show name="h" time="1" zindex="15" ]
[bg  time="800"  method="crossfade"  storage="bg/bed_un_m.jpg" ]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_1.png" ]
[chara_show name="sub" time="200" left="0" time="400" wait="true" zindex="5" ][anim name="sub" time="200" left="-200" ] [show_message_w]
[neph][neph_na_3]Này! mau tỉnh dậy đi [name_neph].[r]
Hôm nay tôi ghé qua làm bữa sáng cho anh đó. Bất ngờ không? [wait time="100"][neph_sm_11]Hehe![p]
[_]
[chara_mod name="tear" time="500" storage="00.png" ]
(...![lr]
[chara_mod name="tear" time="500" storage="o/sub/neph_H/dark_ne_town.png" ]
....[p]
[neph]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_f3.png" ]
[neph_a_4]Hah! Sao vậy? [name_neph].[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_f2.png" ]
[_](...[p]
(Là N-Nephy... cô ấy sao lại xuất hiện ở đây... lúc này.[lr]
Đầu óc tôi vẫn còn có chút mơ hồ...[p]
[font color="lightblue"][link target="*sleep" ]【Trùm chăn ngủ tiếp】
[r]--------------------------[link target="*wekup" ]【Thức dậy】
[r]---------------------------------------[link target="*neph_hug" ]【Tóm lấy nephy】[resetfont][s]

*sleep
[cm]
*wekup
[cm]
*neph_hug
[cm]
(C-Cái này... vẫn đang trong giấc mơ ư?[p]
[black]
[chara_mod name="ef" storage="00.png" ]
[chara_mod name="tear" time="500" storage="o/sub/neph_H/dark_sl.png" ]
[chara_show name="tear" time="10" left="0" zindex="500" ]
[bg  time="10"  method="crossfade"  storage="H/mod/bg_hotel.jpg" ]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/360/ne_non_f2.png" ]
[chara_show name="sub" time="1" left="0" time="0" wait="true" zindex="5" ]
[anim name="sub" time="300" left="-450" top="-250" ][wait time="200"]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/360/ne_non_f3.png" ]
[neph][neph_a_3]Ah!...[lr]
[neph_na_1]N-...[name_neph]... Có chuyện gì vậy.[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/360/ne_non_f2.png" ]
[_](Tôi kéo Nephy lên giường và ôm lấy cô ấy...[lr]
Nephy có chút ngạc nhiên và hơi lúng túng.[p]
(Cảm giác này hình như có chút chân thực hơn là một giấc mơ...[p]
[neph][chara_mod name="sub" time="0" storage="o/sub/ne_def/360/ne_non_f1.png" ]
[neph_na_2]S-Sylvie...vẫn còn đợi chúng ta dưới phòng ăn đó [name_neph].[wait time="600"].[wait time="600"].[wait time="600"][lr]
[neph_a_1]A-Anh...Tính làm gì...[wait time="100"][chara_mod name="sub" time="0" storage="o/sub/ne_def/360/ne_non_f2.png" ][p]
[_](...[p]
[random_6][if exp="f.r==2"][jump target="*neph_hug1"][else][jump target="*neph_hug2"][endif]
*neph_hug1
[cm][black]
[bg  time="10"  method="crossfade"  storage="bg/bed_un_m.jpg" ]
[chara_mod name="tear" time="0" storage="00.png" ]
[chara_show name="tear" time="0" left="0" zindex="500" ]
[chara_mod name="sub" time="100" storage="o/sub/ne_def/ne_non_f2.png" ]
[chara_show name="sub" time="1" left="0" time="0" wait="true" zindex="5" ]
[anim name="sub" time="300" left="-150" top="0" ]
(Tôi có chút lúng túng khi buông cô ấy ra và...[p]
[chara_mod name="tear" time="500" storage="o/sub/neph_H/dark_sl.png" ]
[neph][random_4]
[if exp="f.r==1"][neph_a_0]
[elsif exp="f.r==2"][neph_a_1]
[elsif exp="f.r==2"][neph_a_2]
[else][neph_a_3]
[endif]Hah?...
[wait time="500"]
[black]
[neph][neph_na_2]K-khoan đã...[name_neph]...Anh không định dậy nữa à...[p]
;[neph_sa_1]Thật đáng ghét [name_neph]. Làm nhăn hết áo của tôi... Hừ hừ![p]
[_](...âm thanh của Nephy bỗng trở nên nhỏ dần....[p]
[random_10][if exp="f.r>=3 && f.r<=6"][jump target="*nomal"]
[else][jump target="*sy_ne_out"][endif]

*neph_hug2
[cm][black]
[neph][neph_na_2]K-khoan đã...[name_neph]...áo tôi...[p]
[_](Tôi mơ hồ cảm thấy mình đã ôm chặt lấy thứ gì đó mềm mại và ấm áp...[p]
[neph_sa_1]Thật đáng ghét [name_neph]. Làm nhăn hết áo của tôi rồi... Hừ hừ![p]
[_](...âm thanh của Nephy bỗng trở nên nhỏ dần....[r]
Ý thức của tôi lại dần mơ hồ...[p]
[random_10][if exp="f.r>=3 && f.r<=6"][jump target="*nomal"]
[else][jump target="*sy_ne_out"][endif]

;--------------------------------------------------------------------
*sy_ne_out
[cm][stopbgm]
(.[wait time="600"].[wait time="600"].[wait time="600"].[p]
[chara_mod name="tear" time="0" storage="o/sub/neph_H/dark_ne_town.png" ]
[chara_show name="tear" time="10" left="0" zindex="500" ]
[chara_mod name="ef" storage="mod/hand/bed_wekup.png" ]
[chara_show name="ef" time="1" zindex="10" ]
[chara_mod name="h" time="0" storage="00.png"]
[chara_show name="h" time="1" zindex="15" ]
[bg  time="1000"  method="crossfade"  storage="bg/bed_un_m.jpg" ][wait time="50"]
[bgm_JH]
[random_3][if exp="f.r==1"]
(Trong cơn mê man, tôi dần tỉnh giấc...[lr]
[elsif exp="f.r==2"]
(Tôi dần tỉnh lại khi đầu óc còn mê man...[lr]
[else]
(Tôi dần tỉnh lại Dù đầu óc còn chút mê man...[lr]
[endif]
Sau một giấc ngủ thoải mái, Tôi cảm thấy cơ thể rất nhẹ nhàng.[p]
[chara_mod name="tear" time="800" storage="00.png" ]
(!...[p]
(Vẫn chưa muộn lắm nhưng xung quanh có chút yên tĩnh...[p]
[black]
(.[wait time="500"].[wait time="500"].[wait time="800"]
[cm][bg  time="800"  method="crossfade"  storage="bg/room.jpg" ]
[_](Xuống phòng khách nhưng không thấy Sylvie đâu...[p]
[chara_mod name="h" time="0" storage="o/food/tbl_a.png" ]
[bg  time="800"  method="crossfade"  storage="bg/db-e.jpg" ]
[chara_show name="h" time="800" left="0" zindex="5" ]
[_](Trong bếp cũng không thấy cô ấy![p]
(Nhà tắm cũng yên tĩnh và không mở đèn...[p]
(Chắc do tôi dậy muộn nên cô ấy tự ra ngoài mua sắm gì đó.[p]
[chara_mod name="ef" time="0" storage="o/food/f-sand.png" ]
[chara_show name="ef" time="200" left="0" zindex="15" ]
Tôi lấy ra bàn phần bữa sáng trong tủ lạnh cô ấy đã chuẩn bị.[lr] 
Nó có vẻ không cần hâm nóng lại.[p]
(.[wait time="500"].[wait time="500"].[wait time="300"][cm]
[chara_mod name="ef" time="300" storage="00.png" ]
[_](Hương vị hoàn hảo quen thuộc này... thật giống như ăn ngoài tiệm.[p]
[_](Thưởng thức bữa sáng xong,[r] tôi rửa chén đĩa và nghỉ ngơi một chút rồi...[p]
[font color="lightblue"][link target="*wait" ]【Ra phòng khách đọc sách】
[r]--------------------------------[link target="*work" ]【Làm việc】
[r]----------------------------------------------[link target="*town" ]【Xuống phố đi dạo】[resetfont][s]

*wait
[cm][black][stopbgm]
[bg  time="800"  method="crossfade"  storage="bg/room.jpg" ]
[_]...[p][bgm_DS]
(Tôi mở một bản nhạc nhẹ nhàng[r] rồi lấy 1 quyển sách trên kệ xuống lật từng trang.[p]
(.[wait time="500"].[wait time="500"].[wait time="800"][p]
(Thời gian trôi qua một cách nhanh chóng...[p]
#Tiếng động
...*cạch*...[p]
[_](Ngoài sảnh có tiếng cửa mở...[l]Chắc Sylvie đã về.[p]
[set_black][set_stand][call target="*show_stand"]
[chara_mod name="sub" time="1" storage="00.png" ]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a2.png"]
[chara_show name="sub" time="100" left="150" zindex="1" ]
[bg  time="800"  method="crossfade"  storage="bg/room.jpg" ]
[f/s_nt]
[hide_black]
#Syl-Nephy
?...[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a3.png"]
[f/sp]
[neph_a_3]Ah~! [name] ([name_neph]) Đã dậy rồi à?[p_]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d3.png"]
[neph][neph_na_3]Không biết [name_neph] tối qua có làm gì quá sức mà sáng nay gọi mãi không chịu dậy...[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d2.png"]
[if exp="f.bien=='sex' || f.bien=='sexxx' || f.bien=='wood' || f.bien=='nurse' || f.bien=='sexmax' || f.bien=='morning_missional' || f.bien=='drunk1' || f.bien=='drunk2' || f.act_mod=='townsex' "]
[eval exp="f.act_mod='non'"]
[syl][f/cp_nt][um_05]!~..[p]

[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d3.png"]
[neph][neph_a_2] Sao vậy Sylvie-kun?[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d2.png"]

[syl][f/scp][um_01]K-Không có gì ạ!...[p_][f/sp_nt]

[endif]

[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d1.png"]
[neph][neph_sone_1]Vậy Tôi về trước nhé.[r] Rời khỏi tiệm lâu vậy không biết có sao không nữa...[p]
[anim name="sub" time="2800" left="900" ] 
[playse loop="false" storage="neph/voice_bs/jaane_1.ogg"  clear="true" ]
Chào nhé! hai người.[p]
[chara_mod name="sub" time="0" storage="00.png"]
[syl][f/sp][na_1]Đi thong thả, Nephy-san![p_]
[f/scp_nt]
[_](Có vẻ hai người họ đã có một buổi dạo phố vui vẻ....[p]
[cm][black][chara_00][stopbgm][bgm_SG][eval exp="f.act=2"]
;[set_sit][set_time][show_sit]
[return_bace]


*work
[cm][black][stopbgm]

*town
[cm][black][stopbgm]
;---------------------------------------------------------------
*nomal
[jump target="*sy_ne_out"]
[cm][stopbgm]
[eval exp="f.act='nephwekup'"][eval exp="f.last_act='non'"]
[jump storage="talk/step6.ks" target="*show_bace"]

[s]




-----------macro---------
*show_stand
[chara_show name="hair_b" time="0" wait="false" left="-300" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-300" zindex=6 ][endif]

[chara_show name="body" time="0" wait="false" left="-300" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-300" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="-300" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-300" zindex=50 ][endif]
[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="-300" zindex=60 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="-300" zindex=70 ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="-300" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="-300" zindex=105 ][endif]

[chara_show name="arm" time="0" wait="false" left="-300" zindex=80 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-300" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="-300" zindex=100 ][endif]

[chara_show name="head" time="0" wait="false" left="-300" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="-300" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="-300" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="-300" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="-300" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="-300" zindex=130 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-300" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="-300" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="-300" zindex=180 ]
[return]