;;scrip by ichibikun
*dream_sachi_h
[random_10]
[if exp="f.r>=5"][jump target="*dream_sachi_1"][else]
[jump target="*dream_sachi_2"][endif][s]


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
Đúng ra thì cũng chả có gì đặc biệt nhưng vì ở đây cô ấy vốn là người lạ,[r] 
đi chung với tôi sẽ thu hút khá nhiều ánh mắt tò mò.[p]
[bg time="600" method="crossfade" storage="bg/mod/town_sachi.jpg" ]
Dường như cô bé cũng nhận ra là bị chú ý nên đến gần và núp sau tôi.[p]
Có lẽ ở thị trấn này cô ấy chỉ thân với mỗi tôi và bà chủ tiệm.[lr]
Tôi đoán do vẻ ngoài đặc biệt của cô ấy.[p]
[jump target="*sachi_cafe"]


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
[jump target="*sachi_cafe"]

*sachi_cafe
[cm]
[bg time="600" method="crossfade" storage="bg/mod/sachi_cafe.jpg" ]
Đến chiều tối, chúng tôi cùng vào một tiệm cafe và ăn tối luôn ở đó.[p]
Dĩ nhiên không thể tránh khỏi những cặp mắt tò mò vì vẻ ngoài kì lạ của cô bé.[p]
Thời gian tiếp tục trôi qua...[p]
và rồi
[black]
.[wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"][cm]
[bg time="600" method="crossfade" storage="H/mod/sachi_hotel.jpg" ]
[stopbgm][bgm_MT]
(Trời bỗng nhiên đổ mưa và chúng tôi phải trú tạm trong một nhà nghỉ ven đường...[p]
(Áo ngoài của Sachi đã thấm ướt, tôi lấy một chiếc khăn khô cho cô ấy lau người.[p]
[bg time="1000" method="crossfade" storage="H/mod/sachi_002_lag_.jpg" ][wait time="300"]
[bg time="1000" method="crossfade" storage="H/mod/sachi_002_lag.jpg" ][wait time="300"]
(Cô ấy cởi bỏ áo ngoài và nép sát vào tôi, khẽ run rẩy vì lạnh.[p]
[quake_3][wait time="300"]
[bg time="100" method="crossfade" storage="black.jpg"]
(Bỗng tiếng sấm vang lên, đèn đột ngột tắt...[lr]
[bg time="800" method="crossfade" storage="H/mod/sachi_001_lag.jpg" ][wait time="300"]
[bg time="800" method="crossfade" storage="H/mod/sachi_001_lag_.jpg" ][wait time="300"]
Sachi run rẩy sợ hãi khi ôm chặt lấy cánh tay tôi...[p]
Chúng tôi cứ ngồi như vậy trong phòng một hồi lâu...[lr]
...Và rồi....Thời gian cứ như kéo dài đến vô tận.[p]
[bg time="700" method="crossfade" storage="H/mod/sachi_002p.jpg" ]
(Cơ thể chúng tôi bắt đầu trở lên nóng hơn, cơn mưa ngoài kia cũng lớn hơn.[p]
[black]
.[wait time="300"].[wait time="300"].[wait time="300"] Tôi ôm lấy Sachi và đặt cô ấy nằm xuống giường.[p]
Mọi chuyện diễn ra một cách khá kì ảo (ảo lol).[lr]
Tôi khá chắc bản thân mình sẽ không làm như vậy.[p]
[bg time="800" method="crossfade" storage="H/mod/sa_1.jpg" ]
(Sachi không hề có phản ứng chống lại hay khó chịu gì.[r]
Nó thật khác với cô ấy thường ngày...[p][cm][wet_0]
[bg time="800" method="crossfade" storage="H/mod/sa_2.jpg" ][wait time="500"]
[bg time="600" method="crossfade" storage="H/mod/sa_3.jpg" ][wait time="500"]
[bg time="600" method="crossfade" storage="H/mod/sa_4.jpg" ][wait time="300"]
(Tôi bắt đầu chuyển động cơ thể, chà nhẹ thằng nhỏ của mình vào cô ấy.[lr]
Cô ấy cũng cuốn theo nhưng chuyển động của tôi và rên lên khe khẽ.[p]
[bg time="200" method="crossfade" storage="H/mod/sa.gif" ]
(Tôi đưa thằng nhỏ của mình thâm nhập vào trong cô ấy...[lr]
Chúng tôi bắt đầu "làm tình".[p]
Cơ thể chúng tôi trở lên nóng hơn, ướt át hơn...[lr]
Cơn khoái cảm từ từ dâng trào...[p]
Nhìn vào Sachi lúc này, tôi thấy cô ấy thật đáng yêu. Dù vẻ ngoài của cô bé có chút[r] 
khác thường.[p]
Điều đó hình như làm tôi càng thêm hưng phấn.[p]
#Sachi
Ah〜 ♥♥ Aaah〜♥!♥♥[p]
.[wait time="300"].[wait time="300"].[wait time="300"][cm]
[bg time="600" method="crossfade" storage="H/mod/sa02.jpg" ][wet_1][wait time="400"]
[bg time="600" method="crossfade" storage="H/mod/sa02_1.jpg" ][wait time="400"]
[bg time="600" method="crossfade" storage="H/mod/sa02_2.jpg" ][wait time="400"]
#
(Tôi tiếp tục chuyển động nhanh hơn chút nữa...[lr]
Gương mặt của Sachi cũng trở nên hưng phấn hơn (dâm hơn)[p]
(Cô ấy thật sự rất đáng yêu, tôi muốn hòa làm một với cô ấy thêm nữa...[p]
#Sachi
Ah〜 ♥♥ Aaah〜♥!♥♥[p]
[bg time="600" method="crossfade" storage="H/mod/sa01_1.jpg" ][wait time="400"][wet_2]
[bg time="600" method="crossfade" storage="H/mod/sa01_2.jpg" ][wait time="400"]
#
(Tôi "làm" với cô ấy từ đằng sau, và đưa dương vật của mình vào thật sâu trong cô ấy.[p]
(Sachi dường như đã mất kiểm soát.[p] 
Âm đạo cô ấy ẩm ướt và liên tục co bóp siết chặt lấy thằng nhỏ của tôi.[p]
Tôi đẩy nhanh và mạnh hơn, Thằng nhỏ của tôi cũng đã sắp không chịu nổi nữa.[p]
[bg time="600" method="crossfade" storage="H/mod/sa02_2.jpg" ][wait time="400"]
Tôi đã đến giới hạn [stopse]
[button target="*in" graphic="ch/in.png" x="0" y="200" ]
[button target="*out" graphic="ch/out.png" x="0" y="350" ][s]

*in
[cm]
[bg time="600" method="crossfade" storage="H/mod/sa03.jpg" ]
[swet_1][wait time="400"]
[bg time="600" method="crossfade" storage="H/mod/sa03_1.jpg" ][wait time="400"]
[bg time="600" method="crossfade" storage="H/mod/sa03_2.jpg" ][wait time="400"]
#Sachi
[quake_3]Aaah〜♥!♥♥...[p]
#
(Tôi bắn tất cả số tinh dịch của mình vào bên trong cô ấy.[lr]
Cơ thể cô ấy cong lên, khẽ run rẩy trong cơn cực khoái, âm đạo cô ấy bóp chặt lấy và hút sạch tinh dịch từ thằng nhỏ của tôi.[p]
[bg time="600" method="crossfade" storage="H/mod/sa02.jpg" ][wait time="400"]
(Tôi cảm thấy thỏa mãn và cơ thể dần dần mất sức.[p]
.[wait time="400"].[wait time="400"].[wait time="400"].[cm]
[bg time="1000" method="crossfade" storage="H/mod/sachi_com.jpg" ][wait time="400"]
(Cơn mưa ngoài kia có vẻ sẽ kéo dài suốt đêm.[lr]
Tôi kéo chăn lên và ôm lấy cô ấy rồi chìm vào giấc ngủ.[p]
[black][stopbgm]
[jump target="*end"]


*out
[cm]
[bg time="600" method="crossfade" storage="H/mod/sa03.jpg" ]
[swet_1][wait time="400"]
[bg time="600" method="crossfade" storage="H/mod/sa03_1.jpg" ][wait time="400"]
[bg time="600" method="crossfade" storage="H/mod/sa03_2.jpg" ][wait time="400"]
#Sachi
[quake_3]Aaah〜♥!♥♥...[p]
#
(Tôi bắn tất cả số tinh dịch của mình lên cơ thể cô ấy.[lr]
Cơ thể cô ấy cũng khẽ giật lên trong cơn cực khoái[p]
[bg time="600" method="crossfade" storage="H/mod/sachi_out1.jpg" ][wait time="400"]
[bg time="800" method="crossfade" storage="H/mod/sachi_out2.jpg" ][wait time="400"]
(Sachi nếm thử số tinh dịch bám trên mặt rồi lấy khăn giấy lau sạch chúng trên cơ thể mình.[p]
(Tôi cảm thấy thỏa mãn và cơ thể dần dần mất sức.[p]
.[wait time="400"].[wait time="400"].[wait time="400"].[cm]
[bg time="1000" method="crossfade" storage="H/mod/sachi_com.jpg" ][wait time="400"]
(Cơn mưa ngoài kia có vẻ sẽ kéo dài suốt đêm.[lr]
Tôi kéo chăn lên và ôm lấy cô ấy rồi chìm vào giấc ngủ.[p]
[black][stopbgm]
[jump target="*end"]


*end
...[p]
 #

[eval exp="f.sachi_talk=f.sachi_talk-8"][eval exp="f.dream='sachi'"][eval exp="f.sachi_d='non'"]
[jump storage="mod/morning_wekup.ks" target="*begin_"]

















