;;
*cafe
[cm]
[if exp="f.cafe_wait=='alone'"]
[_](Tôi vừa mua đồ ở đó rồi.[p]
[jump storage="mod/hiroba_alone.ks" target="*choice" ]
[endif]

[eval exp="f.cafe_wait='alone'" ]
[eval exp="f.cafe_t=0" ][stop_bgm][black]…。[p]
[bgm_LS][bg_cafe]
（Tôi thường xuyên đến quán coffe này với Sylvie.[lr_]
Tôi sẽ mua vài món mang về.[p_]

[chara_mod name="sub" time="1" storage="o/sub/nephy.png" ]
[chara_show name="sub" time="100" wait="true" ]

[if exp="f.takeout==1" ]
[neph]
[neph_do_1]Tôi có thể giúp gì cho anh?[p_]
[neph_na_2]a…oh~? Hình như hôm nay chỉ có anh nhỉ?[lr_]
Anh muốn mua mang về nhà?[p_]
Có rất nhiều loại để mang về?[p_]

[else][eval exp="f.takeout=1" ]
[neph]
[neph_do_1]Tôi có thể giúp gì cho anh?[p_]
[neph_na_2]a…oh?Hình như hôm nay chỉ có mỗi anh nhỉ ?[lr_]
Anh muốn mua mang về nhà?[p_]
[endif]

[_](Giờ tôi nên mua gì nhỉ.[p_]
[anim name="sub" time="300" left="-250" ][mod_win st="o/win/food-win.png" ]
[chara_show name="window" time="1" wait="true" left="770" top="22" ]

*menu
[cm]
[button target="*cookie" graphic="sw/cookie.png" x="804" y="427" ]
[button target="*rusk" graphic="sw/rusk.png" x="804" y="256" ]
[button target="*cake" graphic="sw/cake.png" x="1031" y="256" ]
[button target="*blow" graphic="sw/blow.png" x="1076" y="427" ]
[if exp="f.love>=400" ]
[button target="*pding" graphic="sw/pding.png" x="864" y="142" ]
[button target="*tarte" graphic="sw/taruto.png" x="804" y="199" ]
[button target="*eclair" graphic="sw/eclair.png" x="804" y="313" ]
[button target="*rollcake" graphic="sw/rollcake.png" x="1030" y="199" ][endif]
[if exp="f.love>=800" ]
[button target="*puff" graphic="sw/puff.png" x="1032" y="313" ]
[button target="*dorayaki" graphic="sw/dorayaki.png" x="1072" y="370" ]
[button target="*youkan" graphic="sw/youkan.png" x="804" y="370" ][endif]

[if exp="f.cafe_t==0" ]
[button target="*talk" graphic="sw/shop-talk.png" x="1076" y="605" ]
[endif]
[cancelskip][s]

;;トーク
*talk
[if exp="f.ne_love>=0"][eval exp="f.ne_love=f.ne_love+1"][else][eval exp="f.ne_love=1"][endif]
[cm][if exp="f.cafe_talk==1" ][jump target="*talks" ][endif]
[neph]
[neph_ne_3]Hôm nay anh không đi với cô bạn nhỏ kia sao?[p_]
Tên là gì nhỉ? có lẽ tôi đã nghe đâu đó một lần? [lr_]
[neph_a_3]Anh đang hỏi về tên tôi ?[p_]
Tôi tên là Nephy.[lr_]
Tôi cảm ơn anh đã ủng hộ cửa hàng.[p_]
#Nephy
mong anh có thể tiếp tục ủng hộ trong tương lai.[p_]
[eval exp="f.cafe_talk=1" ][eval exp="f.cafe_t=0" ]
[jump target="*menu" ]

*talks
[if exp="f.ne_love>=0"][eval exp="f.ne_love=f.ne_love+1"][else][eval exp="f.ne_love=1"][endif]
[cm][eval exp="f.cafe_t=1" ][random_10]
[_][if exp="f.r==1" ][jump target="*talk1" ][elsif exp="f.r==2" ][jump target="*talk2" ]
[elsif exp="f.r==3" ][jump target="*talk3" ][elsif exp="f.r==4" ][jump target="*talk4" ]
[elsif exp="f.r==5" ][jump target="*talk5" ][elsif exp="f.r==6" ][jump target="*talk6" ]
[elsif exp="f.r==7" ][jump target="*talk7" ][elsif exp="f.r==8" ][jump target="*talk8" ]
[elsif exp="f.r==9" ][jump target="*talk9" ][elsif exp="f.r==10" ][jump target="*talk10" ]
[elsif exp="f.r==11" ][jump target="*talk11" ][elsif exp="f.r==12" ][jump target="*talk12" ]
[elsif exp="f.r==13" ][jump target="*talk13" ][elsif exp="f.r==14" ][jump target="*talk14" ]
[elsif exp="f.r==15" ][jump target="*talk15" ][elsif exp="f.r==16" ][jump target="*talk16" ]
[elsif exp="f.r==17" ][jump target="*talk17" ][endif]

*talk1
（Mặc dù khá quen , nhưng tôi vẫn cảm thấy lo lắng khi thấy cô giải quyết các bộ đồ dùng ăn uống.[p_]
[neph]
[neph_na_3]Anh không cần phải lo lắng về điều đó.[p_]
Đừng đánh giá thấp tôi, tôi chưa từng làm rớt đồ ăn của khách hàng.[p_]
[jump target="*menu" ]
*talk2
[neph]
[neph_na_1]Có tin đồn về chủ đề anh và cô gái nhỏ của anh .[p_]
Mặc dù không biết nội dung thế nào?[lr_]
Có vẻ anh không thích những tin đồn liên quan tới mình?[p_]
[jump target="*menu" ]
*talk3
(Nhìn cô ấy, đóng gói thức ăn một cách dễ dàng[p_]
[neph]
[neph_na_3]Có nhiều người nói tôi có những hành động lạ.[lr_]
Có lẽ nó đã trở thành thói xấu và không chữa được …[p_]
[jump target="*menu" ]
*talk4
[neph]
[neph_do_1]Thức ăn có vừa miệng?[p_]
#
（Tôi nghĩ chăm sóc khách hàng là cách các cửa hàng tận dụng để kinh doanh[p_]
[neph]
[neph_na_1]Điều này…[r]ra là vậy…[p_]
Thậm chí có những khách hàng rời đi khi thấy không hợp khẩu vị của họ.[p_]
[jump target="*menu" ]
*talk5
#
(Có vẻ như tôi đã nhìn cô bán hàng này khá lâu[r]
Có lẽ tôi không nhớ gì về người phục vụ khi Sylvie đến).[p_]

[neph]
[neph_na_3]Mỗi ngày tôi luôn thay đổi tâm trạng khác nhau trong công việc.[p_]
Có vẻ chủ đề về phục vụ ngày càng phổ biến nhỉ[p_]
[jump target="*menu" ]
*talk6
[neph]
[neph_na_3]Ah… nói về cô gái nhỏ của anh.[lr_]
Bộ đồ em ấy mặc có vẻ nhìn rất quen.[p_]
Có phải anh mua từ một cửa hàng lạ gần đây?[p_]
#
(Tôi thường không thấy khách hàng đến cửa hàng đó, có vẻ như nó ít được biết tới)[p_]
[neph]
Sau tất cả, thì có thể nó…[lr_]
Có vẻ như có một ý nghĩa sâu xa khác[p_]
[jump target="*menu" ]
*talk7
（Có lẽ dáng đi kì quái của cô ấy sẽ gây chú ý cho mọi người 、[r]
Nhưng có vẻ như cô ta không dễ gì vấp ngã。[p_]
Là hầu bàn, cô ấy đã làm rất tốt。[p_]
[neph]
[neph_na_3]Anh muốn mua thêm thứ gì không-?[lr_]
Các món ăn hôm nay rất hấp dẫn đóー？[p_]
#
（Cô ấy có vẻ rất tận tâm với công việc[p_]
[jump target="*menu" ]
*talk8
[neph]
[neph_sone_1]Anh thấy đó, tôi là một cô hầu bàn hoàn hảo, không hay mắc sai lầm trong công việc。[lr_]
Nên anh cứ tự nhiên đưa ra yêu cầu của mình[p_]
#
（Tôi nghĩ ai lần đầu nhìn cách làm việc của cô ấy cũng rất lo lắng…。[p_]
[jump target="*menu" ]
*talk9
[neph]
[neph_na_3]Thực đơn buổi tối của chúng tôi chỉ gồm các món chỉ dành cho quán cà phê[r]
Nhưng tôi có thể làm các món khác đó[p_]
Ngay cả những món như sushi và cà ri[lr_]
[neph_na_2]Ah~ Anh biết những món đó chứ？[p_]
#
（Tôi không nghĩ có thể ăn chúng khi uống cà phê…[p_]
[neph]
[neph_haa_1]Mà…Ở đây cũng chả có nguyên liệu nên anh có muốn thì cũng chịu thôi ^^[p_]
[jump target="*menu" ]
*talk10
[neph]
[neph_na_3]Trong thực đơn mặc dù chỉ có những món ăn nhẹ khi uống cà phê nhưng tôi có thể làm mọi món ăn đó[p_]
Có nên thêm pizza vào thực đơn của quán không nhỉ？loại tôi tự làm đó.[wait time="100"][neph_uhm_1][p_]
#
（Không biết có ổn không với ý tưởng của cô ta…。[p_]
[neph]
[neph_na_2]Có được phép biểu diễn đá đầu gối không nhỉ? Đá đầu gối。[p_]
[_]（…Không biết cô ấy đang nói gì.[p_]
[jump target="*menu" ]
*talk11
（Cô ta là phục vụ duy nhất ở đây, mà cái bộ đồ đó thật khó hiểu。[p_]
[neph]
[neph_a_4]Bộ đồ này ư？ Đây là bộ đồ rất thích hợp cho công việc.[p_]
#
（Bộ đồng phục này chắc chỉ dành riêng cho cô ấy。[p_]
[neph]
[neph_sm_11]Đó là trang phục dành riêng cho tôiー[p_]
#
（…biết ngay mà …[p_]
[jump target="*menu" ]

;;購入
*cookie
[cm][eval exp="f.miyage='cookie'" ][jump target="*bought" ]
*rusk
[cm][eval exp="f.miyage='rusk'" ][jump target="*bought" ]
*cake
[cm][eval exp="f.miyage='cake'" ][jump target="*bought" ]
*blow
[cm][eval exp="f.miyage='browine'" ][jump target="*bought" ]
*pding
[cm][eval exp="f.miyage='pudding'" ][jump target="*bought" ]
*tarte
[cm][eval exp="f.miyage='tart'" ][jump target="*bought" ]
*rollcake
[cm][eval exp="f.miyage='rollcake'" ][jump target="*bought" ]
*eclair
[cm][eval exp="f.miyage='eclair'" ][jump target="*bought" ]
*puff
[cm][eval exp="f.miyage='puff'" ][jump target="*bought" ]
*youkan
[cm][eval exp="f.miyage='youkan'" ][jump target="*bought" ]
*dorayaki
[cm][eval exp="f.miyage='dorayaki'" ][jump target="*bought" ]

*bought
[cm]
[_]（Tôi mua [miyage]。[p_]
[eval exp="f.cafe_t=0" ]
[neph]
[neph_sone_1][miyage] phải không ạー？[lr_]
Cảm ơn quy khách đã ủng hộ。[p_]
#
（...[p_]
[black]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince2_*f.zince1*f.zince3"]
Tính tiền…[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t][eval exp="f.ch_check='true'"]
Tài khoản còn [money][p_]
[neph]
[playse loop="false" storage="neph/voice_bs/sorejamata_1.ogg"  clear="true" ]
Hẹn gặp lại quý khách.[p][_]
[random_2]
[if exp="f.ne_love>=0"][eval exp="f.ne_love=f.ne_love+f.r"][else][eval exp="f.ne_love=1"][endif]
[stop_bgm]

[_][jump storage="act_alone/out_alone.ks" target="*home" ]
