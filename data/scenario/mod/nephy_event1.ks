;;========script_by_ichibikun============

*begin
[cm]
;[black][stopbgm]
;[bg_market][set_weather]
;[bgm_AS]
[_](Phía trước hình như có ai đó trông khá quen[p]
Tôi nên làm gì đây[r]
[mod_win st="o/win/out_win.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" zindex="10"][set_time]
[button  target="*neph_date1"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*tranh_mat"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[chara_mod name="h" time="0" storage="00.png"]
[chara_show name="h" time="1" left="300" zindex="1" ]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a2.png"]
[chara_show name="sub" time="1" left="0" zindex="10" ]
[anim name="sub" time="200" left="-250" ] 
[s ]

*tranh_mat
[cm ]
[chara_mod name="sub" time="600" storage="00.png" ]
#
(Tôi quyết định tránh đi)[p]
[eval exp="f.neph_st=0"]
[jump storage="mod/market_alone.ks" target="*maker_lead"]

*neph_date1
[cm][neph]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a3.png"]
[random_4][if exp="f.r==1"][neph_a_0]
[elsif exp="f.r==2"][neph_a_1]
[elsif exp="f.r==3"][neph_a_2]
[else][neph_a_3][endif]
Ah~ Là bác sỹ![p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a2.png"]
[_](...?[p]
[neph]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a3.png"]
[neph_na_3]Tôi không có đang trốn việc đâu nhé![p]
[_](...![p]
[neph]
[wait time="300"]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a2.png"]
[neph_ne_3]Ừm...[l]Anh có biết...[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a3.png"]
Có một người đàn ông tầm trung niên, thường mặc áo măng tô mầu nâu,[r]
đầu đội mũ phới cũng mầu nâu, có vẻ mặt rất "đáng ghét" thường hay[r] lảng vảng quanh khu chợ này không?[p] 
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a2.png"]
Hừ hừ...[p]
[_](Cách cô ấy miêu tả thật tệ nhưng tôi hơi có ấn tượng về một người...[p]
[font color="lightblue"][link target="*neph_date1_ch1" ]【Ý cô là ông thương nhân Ferrum】[r][r][link target="*neph_date1_ch2" ]【Tôi không có ấn tượng gì về người này】[resetfont][s]

*neph_date1_ch1
[cm][neph]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d3.png"]
[neph_sone_1]Đúng là ông ta. Anh có biết ông ta thường hay ẩn núp chỗ nào không?[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d2.png"]
[font color="lightblue"][link target="*neph_date1_ch1_ok" ]【Tôi thử xem】[r][r][link target="*neph_date1_ch2" ]【Tôi không rõ】[resetfont][s]

*neph_date1_ch1_ok
[cm][_](Tôi dẫn cô ấy tới nơi mà tôi thường gặp ông ferrum[p]
[anim name="sub" time="200" left="-370" ]
[mod_win st="00.png" ]
[chara_mod name="h" time="100" storage="o/sub/def.png"][wait time=500]
[chara_mod name="h" time="10" storage="o/sub/smile.png"]
#Ferrum
Oh! Chào bác sỹ[lr]
Và cô Nephy?[p]
[_](...![p]
#Ferrum
[chara_mod name="h" time="10" storage="o/sub/def.png"]
Là cô Nephy muốn gặp tôi?[p]
[neph][chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d3.png"]
[neph_hora_3]Tôi kiếm ông từ sáng tới giờ đây...[lr]
Cái máy làm kem bên ông cung cấp đã không hoạt động mấy ngày nay rồi[p]
Tôi đã liên hệ bên cung cấp, họ nói ông là người phụ trách. Hừ![lr]
[neph_haa_1]Tôi cố liên lạc với ông mấy hôm nay nhưng không được.[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d2.png"]
#Ferrum
[chara_mod name="h" time="10" storage="o/sub/smile.png"]
Ah! có chuyện như vậy.[lr]
Mấy hôm nay tôi không có mặt ở thị trấn.[p]
Không vấn đề gì,[lr]
Tôi sẽ sớm xử lý cho cô[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d3.png"]
[neph][neph_mo_3]Đừng có giỡn với tôi, lão gian thương.[r]
Mấy ngày nay tiệm của tôi đã đủ rắc rối rồi.[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d2.png"]
[neph_haa_1]Tôi không có tâm trạng trông chờ ông tới "sớm" đâu. Hừ hừ![p]
#Ferrum
Ồ! Không gấp...không cần gấp như vậy.[r] 
khoảng 1h nữa bên cung cấp sẽ qua xử lý cho cô. Tôi cam đoan.[p]
Tôi đoán nó không có vấn đề gì nghiêm trọng, thiết bị còn rất mới.[p]
[neph][chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d3.png"]
[neph_na_3]Ông hãy cầu mong như thế đi..[l][wait time="400"] 
[neph][chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d2.png"]
[neph_haa_3]Hazz~...[p]
#Ferrum
Được rồi, tôi đi xắp xếp ngay. hai vị thong thả nhé![p]
[chara_mod name="h" time="100" storage=00.png"]
[anim name="sub" time="200" left="-250" ]
[mod_win st="o/win/out_win.png" ]
[_](Ông ta cúi chào chúng tôi rồi rời đi[p]
[neph][chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a1.png"]
[neph_sone_1]Được rồi, Vấn đề đã được xử lý[p]
[wait time="300"][neph_do_1]Nếu không bận gì anh có muốn qua tiệm cà phê không?[lr]
Tôi muốn mời anh một ly để cảm ơn[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a1a.png"]
[_](...[p]
[random_4]
[eval exp="f.ne_love=f.ne_love+f.r+1"]
[eval exp="f.neph_st=2"]
[font color="lightblue"][link target="*cafe" ]【Được thôi!】[r][r][link target="*cafe_non" ]【Tôi nghĩ để khi khác.】[resetfont][s]

*cafe
[cm][black]
[eval exp="f.ne_love=f.ne_love+1"]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_1.png"]
[_](Tôi cùng cô ấy về tiệm cà phê[p]
[bg_restaurant][stopbgm][bgm_DS]
[chara_show name="sub" time="400" zindex="10" ]
[neph]
[neph_hora_5]Tôi sẽ mời anh một món điểm tâm đặc biệt[p]
[_](...[p]
[cm][black]
(Cô ấy dẫn tôi tới một vị trí khá yên tĩnh.[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_1a_c.png"]
[bg time="500" method="crossfade" storage="bg/mod/cafe_aur.jpg" ][stop_bgm][bgm_LS]
[chara_mod name="h" time="0" storage="o/food/aur_ban.png"]
[chara_mod name="tear" time="0" storage="00.png"]
[chara_show name="sub" time="1" zindex="10" ]
[chara_show name="h" time="1" zindex="15" ]
[chara_show name="tear" time="1" zindex="20" ]
[neph]...[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_2.png"]
[chara_mod name="tear" time="1" storage="o/food/neph_food.png"]
[_](Cô ấy mang tới một tách cà phê và một phần bánh táo.[p]
[neph][chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_1.png"]
[neph_na_1]Anh cứ từ từ thưởng thức nhé. Món này được ưa thích nhất ở đây đó.[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_1a.png"]
Chúc quý khách ngon miệng.[p]
[chara_mod name="sub" time="50" storage="00.png"]
[_](Tôi thưởng thức cà phê và điểm tâm. Trong khi Nephy bắt đầu bận rộn trong tiệm[p]
Sau đó tôi ra hiệu chào Nephy rồi rời khỏi tiệm và không làm phiền cô ấy nữa [p]
[black]
[neph][playse loop="false" storage="neph/voice_bs/jaane_1.ogg"  clear="true" ]...![p]
[_]
(.[wait time="500"].[wait time="500"].[wait time="500"][p]
[cm]
[jump storage="mod/hiroba_alone.ks" target="*begin"]


*cafe_non
[cm][neph]
[playse loop="false" storage="neph/voice_bs/jaane_1.ogg"  clear="true" ]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a1.png"]
Vậy tôi về tiệm trước, anh cứ thong thả nhé.[p]
[anim name="sub" time="2800" left="900" ] 
[chara_mod name="sub" time="2600" storage="00.png"]
[_](Cô ấy rời đi khu chợ...[p]
[jump storage="mod/market_alone.ks" target="*choice"]

*neph_date1_ch2
[cm]
[eval exp="f.neph_st=0"]
[neph][neph_haa_3]Oh! Vậy sao[lr]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a3.png"]
Tôi tự đi kiếm vậy![p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a1.png"]
[neph_na_3]Có lẽ mất chút thời gian. Nếu anh có qua tiệm hôm nay thì cứ thong thả nhé.[lr]
Tôi sẽ về kịp.[p]
[anim name="sub" time="2800" left="900" ] 
[chara_mod name="sub" time="2600" storage="00.png"]
[_](Cô ấy rời đi một cách vội vã[p]
[jump storage="mod/market_alone.ks" target="*choice"]

[s]





















