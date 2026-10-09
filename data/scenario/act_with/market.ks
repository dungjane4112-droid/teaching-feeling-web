;;
*market
[if exp="f.syl_game1=='out'"]
[eval exp="f.syl_game1='non'"][eval exp="f.love=f.love+3"][eval exp="f.hp=f.hp+5"][hp_return][endif]
[cm][set_black][f/s_nt][bg_market][set_weather]
[act_win_stand][show_stand][bgm_AS]

[if exp="f.market==0" ][eval exp="f.market=1" ]
[_]（Chúng tôi đến chợ, nơi bán nhiều thứ từ cửa hàng tạp hóa với hàng gia công。[p_]
（Tôi thường đi mua sắm ở đâu đó gần hơn,[r]
nhưng kể từ khi tôi sống cùng với Sylvie tôi chắc rằng cô có thể cảm thấy vui hơn khi nhìn thấy những thứ mới lạ.[p_]
[syl][f/]Ở đây có một khu buôn bán。[lr_]
[f/re]Ra chợ là như thế này à..[lr_]
Nhiều người thật đó….[p_]
[f/s]Có vẻ như có rất nhiều thứ.[p_]
[else]（Chúng tôi đến chợ。[p_][endif]

*choice
[cm][timer][eval exp="f.love=f.love+1" ][eval exp="f.daily_market=f.daily_market+1" ]
[_][if exp="f.act==6" ][set_weather]
（Tôi có thể thấy khá nhiều cửa tiệm đã đóng cửa。[p_][jump target="*go_home" ][endif]
[mod_win st="o/win/out_win_s.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[set_time][set_weather]
[if exp="f.act<=5"]
[button storage="mod/market_buy.ks" target="*choice"  graphic="s_menu/buy_market.png"  x="845"  y="160" ][endif]
[button target="*re" graphic="s_menu/look_around.png" x="845" y="240" ]
[button target="*leave" graphic="s_menu/leave_market.png" x="845" y="320" ]
[button target="*go_home" graphic="s_menu/go_home.png" x="845" y="400" ]
[cancelskip][s]

*re
[cm][eval exp="f.last_act='market'" ][mod_win st="00.png" ]
[chara_mod name="other" time="1" storage="00.png" ]
[random_5][if exp="f.book=='non' && f.r<=3" ][jump target="*book_event" ][endif]
[random_30][jump target="*market_lead" ]

*go_home
[cm][mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]
[_]（Chúng ta về nhà nhé…）。[p_]
[f/s][syl]Vâng, chúng ta sẽ cùng về。[p_]
[black]…[p_][bgm_SG][eval exp="f.out=1"][return_bace]

*market_lead
[cm][syl][if exp="f.r==1" ][jump target="*market1" ][elsif exp="f.r==2" ][jump target="*market2" ]
[elsif exp="f.r==3" ][jump target="*market3" ][elsif exp="f.r==4" ][jump target="*market4" ]
[elsif exp="f.r==5" ][jump target="*market5" ][elsif exp="f.r==6" ][jump target="*market6" ]
[elsif exp="f.r==7" ][jump target="*market7" ][elsif exp="f.r==8" ][jump target="*market8" ]
[elsif exp="f.r==9" ][jump target="*market9" ][elsif exp="f.r==10" ][jump target="*market10" ]
[elsif exp="f.r==11" ][jump target="*market11" ][elsif exp="f.r==12" ][jump target="*market12" ]
[elsif exp="f.r==13" ][jump target="*market13" ][elsif exp="f.r==14" ][jump target="*market14" ]
[elsif exp="f.r==15" ][jump target="*market15" ][elsif exp="f.r==16" ][jump target="*market16" ]
[elsif exp="f.r==17" ][jump target="*market17" ][elsif exp="f.r==18" ][jump target="*market18" ]
[elsif exp="f.r==19" ][jump target="*market19" ][elsif exp="f.r==20" ][jump target="*market20" ]
[elsif exp="f.r==21" ][jump target="*market21" ][elsif exp="f.r==22" ][jump target="*market22" ]
[elsif exp="f.r==23" ][jump target="*market23" ][elsif exp="f.r==24" ][jump target="*market24" ]
[elsif exp="f.r==25" ][jump target="*market25" ][elsif exp="f.r==26" ][jump target="*market26" ]
[elsif exp="f.r==27" ][jump target="*market27" ][elsif exp="f.r==28" ][jump target="*market28" ]
[elsif exp="f.r==29" ][jump target="*market29" ][elsif exp="f.r==30" ][jump target="*market30" ]
[elsif exp="f.r==31" ][jump target="*market31" ][elsif exp="f.r==32" ][jump target="*market32" ]
[elsif exp="f.r==33" ][jump target="*market33" ][endif]

;;トーク
*market1
[f/re]Có những gian hàng bán rượu quanh đây。[p_]
[if exp="f.wine_c>=1" ]
[f/s]Em tự hỏi mình có nên uống một chút?[p_]
[else]Em chưa bao giờ say rượu nhưng chắc nó rất ngon？[p_]
[f/s]Khi lớn lên, một ngày nào đó em cũng muốn uống thử。[p_][endif]
[jump target="*choice" ]
*market2
[f/c]Đây là khoai tây ư? Nó dài và đỏ thật[p_]
Khoai tây？[lr_]
Khoai tây trông thế này mà ngọt thật nhỉ？[p_]
[f/re]Em tự hỏi chúng ta sẽ làm gì với nó…[p_]
[jump target="*choice" ]
*market3
[f/re]Họ đang bán cà chua ở đây.[p_]
[f/c]Em không thích ăn cà chua sống lắm.[p_]
Mặc dù… em cũng rất thích nước sốt cà chua[p_]
[jump target="*choice" ]
*market4
[f/s]Hương thơm của cà phê…[lr_]
Họ dường như đang bán hạt cà phê.[p_]
[f/c]Mùi nó rất thơm, nhưng cà phê vị lại rất đắng…[p_]
Tôi không hiểu sao mọi người lại thích uống nó.[p_]
[jump target="*choice" ]
*market5
[f/re]Cà rốt được xếp ở đây…[p_]
Củ cà rốt cũng đặt dưới đất như gốc của một cây, phải không？[lr_]
[f/s]Gốc cây màu cam… thật là kì lạ[p_]
[jump target="*choice" ]
*market6
[f/re]Có nhiều màu bột ớt khác nhau ở đây…[p_]
[f/s]Thật buồn cười khi chúng đều là ớt cựa gà nhưng lại có nhiều màu sắc khác nhau[p_]
Chúng trông sặc sỡ như một bức tranh vậy[lr_]
[f/cl]Có lẽ họ sử dụng nó cho sơn … Tất nhiên là không.[p_]
[jump target="*choice" ]
*market7
[f/c]Ở đây nhiều người quá….[lr_]
[f/tp]Umm…em có thể…nắm tay anh chặt hơn một chút chứ？[p_]
[jump target="*choice" ]
*market8
[f/s]Họ đang bán rất nhiều thứ khác nhau ở đây.[lr_]
Các loại rau, trái cây, thực phẩm bảo quản, và các phụ kiện.[p_]
Các kệ hàng đầu là một dãi đầy màu sắc, và có mùi khác nhau..[p_]
[jump target="*choice" ]
*market9
[f/s]Nhiều hành tây như vầy[lr_]
Mình có thể sử dụng chúng cho các món ăn khác nhau, phải hông？[p_]
Em muốn có thể nấu nhiều món ăn một ngày nào đó.[p_]
[jump target="*choice" ]
*market10
[f/s]Bí ngô lớn quá…[p_]
[f/re]Em nghĩ anh chỉ có thể dùng chúng để làm bánh…[r]
nhưng anh vẫn có thể làm những món khác từ nó, đúng không？[p_]
[f/ss]Nếu chúng ta chuyển toàn bộ bí ngô thành một chiếc bánh, tôi không nghĩ rằng chỉ [name] và em sẽ có thể ăn hết[p_]
[jump target="*choice" ]
*market11
[f/re]Có rất nhiều loại gia vị xếp ở đây[p_]
Có lẽ mùi sẽ thơm hơn nếu nó chỉ để một ít,[r]
Nhưng mùi vị ở đây có lẽ quá mạnh[p_]
[f/c]Tất cả những mùi khác nhau khiến em chóng mặt.[p_]
[jump target="*choice" ]
*market12
[f/c]Đây là cần tây… em thật sự không thích nó lắm[p_]
[f/cl]Thứ này… có hương vị như cây cỏ？[lr_]
Em không thích mùi cỏ này cho lắm…[p_]
[jump target="*choice" ]
*market13
[f/s]Ah, họ đang bán mứt khác nhau ở đây…[p_]
Hiện có rất nhiều lọ màu khác nhau của mứt.[lr_]
[f/ss]Chỉ tưởng tượng những hương vị khác nhau thôi cũng khiến em thấy thích thú[p_]
[jump target="*choice" ]
*market14
[f/re]Ah, một màu da cam này khiến em thấy…[lr_]
*cough*…*cough*…[p_]
[f/s]Em nghĩ nên đặt nó về chỗ cũ[p_]
[jump target="*choice" ]
*market15
[f/re]Đây là… [lr_]
…Không phải là một màu cam.[p_]
[f/c]Một trái cam màu da？[lr_]
Nó nhỏ hơn so với một màu cam bình thường, nhưng nó có ngon không?[p_]
[jump target="*choice" ]
*market16
[f/s]Nhìn quả táo đỏ nè… thơm thật đó.[p_]
[f/s]Nhìn thấy quả táo thế này…[r]
chỉ làm em muốn ăn ngay mà không cần phải cắt vỏ ra[p_]
[jump target="*choice" ]
*market17
[f/s]Ah, dưa hấu được bán.[p]
[f/cl]Nhưng nó sẽ rất nặng để mang về,[r]
vì vậy chúng ta chỉ nên mua những thứ chúng ta có thể mang theo dễ dàng.[p_]
[jump target="*choice" ]
*market18
[f/re]Một tiệm toàn dứa … lớn thật.[p_]
[f/c]Ngay cả khi chúng mình mua nó, nó có vẻ như nó sẽ khó để gọt vỏ và cắt…[lr_]
Em tự hỏi anh có thể bóc nó mà không cần dụng cụ đặc biệt.？[p_]
[jump target="*choice" ]
*market19
[f/s]Có rất nhiều nho…[p_]
Eh, em có thể nếm một quả ư？？[p_]
[f/ssp]…Mn♡Ngọt thật đấy♡♡[p_]
[jump target="*choice" ]
*market20
[f/s]Có rất nhiều dâu tây.[p_]
Có lẽ sẽ ngon hơn nếu ăn dâu tây còn tươi..[lr_]
[f/ss]Nó làm em nhớ đến dâu trên bánh.[p_]
[jump target="*choice" ]
*market21
[f/re]Nó trông giống như một loại trái cây có màu trắng?[lr_]
Starfruit？[p_]
[f/s]Ah, bởi vì hình dáng nó được cắt như một ngôi sao. Thú vị thật đấy…[p_]
[jump target="*choice" ]
*market22
[f/re]Có chuối chất đống ở đây.[p_]
[f/s]Chuối là tốt đẹp và dễ ăn bởi vì ngài không cần một con dao để cắt hay gọt.[p_]
Có vẻ như anh có thể sử dụng chúng cho bánh nướng xốp và bánh ngọt .[lr_]
[f/ss]Em muốn thử làm một ít bánh cho anh, [name][p_]
[jump target="*choice" ]
*market23
[f/re]Ah, anh đào[lr_]
…hoặc ko phải.[p_]
[f/c]Em tự hỏi đây là gì?[lr_]
…sơ ri?[p_]
[f/re]Mùi là khá khác so với quả anh đào.[lr_]
Không biết hương vị có ngon không?[p_]
[jump target="*choice" ]
*market24
[f/re]Có cái gì đó trông giống gai nhọn và cứng…[lr_]
Em tự hỏi đây là gì?[p_]
Sầu riêng?[lr_]
[f/c]…Nó có mùi thật ngọt?[p_]
Thật khó để tưởng tượng trái này có hương vị như thế…[lr_]
[f/cl]Em cũng muốn thử ăn nó, nhưng em cũng không hẳn…[p_]
[jump target="*choice" ]
*market25
[f/s]Có những màu sắc khác nhau thật đẹp, nhưng em tự hỏi đây là gì?.[p_]
Ah, ra đó là những chiếc nến[p_]
[f/re]Nến thơm?[lr_]
Vì vậy, ra là nó khác với nến sử dụng để thắp sáng.[p_]
[jump target="*choice" ]
*market26
[f/s]Có kiếng bàn này…[p_]
[f/s]Trông chúng thật lấp lánh…[p_]
[f/c]Nhưng ý tưởng thế này，[r]
chỉ để bày bán một mặt hàng hằng ngày thì quả thật là thú vị[p_]
[jump target="*choice" ]
*market27
[f/re]Ah, chúng ta đã đến gần cuối.[lr_]
Nó có vẻ như các cửa hàng được kết thúc ở đây.[p_]
[f/s]Chúng ta nên quay trở lại và đi theo hướng khác.[p_]
[jump target="*choice" ]
*market28
[f/s]Ah, họ đang bán rất nhiều loại trà ở đây.[p_]
Em không thể uống cà phê,[r]
nhưng em có thể uống trà vì hương vị của nó rất thanh khiết, mà cũng đôi lúc bí ẩn, thú vị[p_]
[jump target="*choice" ]
*market29
[f/re]Họ đang bán một số đồ trang trí kỳ lạ …[p_]
Có rất nhiều thứ nhìn thú vị, nhưng…[r]
Có vẻ như chúng không hợp mấy trong việc trang trí nhà của anh…[p_]
[jump target="*choice" ]
*market30
[f/re]Một cái gì đó có mùi giống như gia vị…[p_]
Ah, họ đang bán thịt khô.[lr_]
[f/c]etou…nó khá là đắt[p_]
[f/cl]Có lẽ như nó tốn khá nhiều thời gian để làm ra, nên em cũng hiểu giá tiền của nó…[p_]
[jump target="*choice" ]


*book_event
[black][bgm_IF][bg_market]
[chara_mod name="sub" time="1" storage="o/sub/smile.png" ]
[chara_show name="sub" time="100" wait="true" ]
#Người đàn ông
Ồ Chào bác sỹ。[p_]
[_]（Tôi rẽ theo hướng giọng nói và nhìn thấy một người đàn ông lạ mặt。[p_]
#Người đàn ông
Nó có vẻ như ngươi đã quen với việc này nhỉ。[p_]
[_]（Ông vừa nhìn Sylvie vừa nói, như xem lại tình trạng của cô ấy。[p_]
#Người đàn ông
Các cuộc đàm phán đã được đi đều quanh ở đây gần đây.[lr_]
Tôi thường đến và rời thị trấn thường xuyên.[p_]
Có thể nói là chúng tôi đã có một thời gian đi khắp nơi.[p_]
[chara_mod name="sub" time="1" storage="o/sub/def.png" ]
Tuy nhiên, tôi đã gặp một chút rắc rối hiện nay,[r]
và tôi đã được mang vào theo một phần của hàng hóa…[p_]
Tôi đang chờ đợi vào chúng ngay bây giờ.[p_]
[_]（Người đàn ông làm cho một khuôn mặt khó chịu khi ông đặt tay lên hành lý lớn bên cạnh anh ta.）[p_]
[chara_mod name="sub" time="1" storage="o/sub/smile.png" ]
#Người đàn ông
Tôi biết. Kể từ khi tôi đã tình cờ gặp nhau, ngài sẽ có một cái nhìn xung quanh, bác sĩ?？[p_]
Tôi sẽ không thể đi đâu đó trong khoảng thời gian này, [r] và chúng tôi cũng không có một khách hàng nào, nếu ngài không phiền thì xin ngài mua vài thứ được chứ.[p_]
Thứ gì có thể thú vị ngài … Hãy xem … gì về điều gì đó như thế này?[p_]
[_]（Người đàn ông lấy một cuốn sách ra từ bên trong hành lý của mình）[p_]
#Người đàn ông
Đây rõ ràng là một cuốn sách từ một công ty dược phẩm nước ngoài đã được dịch, do đó nó khá hiếm.[p_]
[_]（Tôi từ tốn lướt qua các trang, và đôi mắt của tôi dừng lại trên một mục nào đó.）[p_]
[_]（Đa số các thành phần là các loại thuốc mà tôi đã không bao giờ nghe nói đến,[r]
nhưng nó có vẻ như tôi vẫn có thể làm cho nó với nguyên liệu tôi có trong tay…）[p_]
#Người đàn ông
Có vẻ như ngài khá là quan tâm đến nó.[p_]
Nó khá đắt tiền, nhưng đối với ngài … Tôi sẽ giữ nó ở một mức giá hợp lý.[p_]
[_]（Vâng, đã có vấn đề với Sylvie, vì vậy tôi sẽ mua nó cải thiện chi phí và khả năng điều trị của mình…）[p_]
#Người đàn ông
Vâng tốt. Cảm ơn vì sự ủng hộ của ngài.[p_]
Oh, hoàn hảo. Có vẻ như người tôi cần gặp cũng vừa đến.[p_]
Hãy gặp lại nhau nếu chúng ta còn có cơ hội.[p_]
[chara_hide name="sub" time="100" wait="true" ]
[_]（Người đàn ông rời đi）[p_]
[bgm_AS][set_stand][f/s_nt][bg_market][show_stand]
[act_win_stand][eval exp="f.book=1" ]
[jump target="*choice" ]

;;end
*leave
[cm][set_black][_]（Chúng tôi rời khỏi chợ。[p_][eval exp="f.act=f.act-1" ]
[f/s_nt][bgm_OB][bg_town][set_weather][act_win_stand][show_stand]
[jump storage="act_with/hiroba.ks" target="*choice" ]

