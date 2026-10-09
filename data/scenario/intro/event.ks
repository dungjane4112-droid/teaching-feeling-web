;;夕食初回-----------------------------------------------------------
*feed
[eval exp="f.r='a'" ][set_dinner][_]…。[p_]
（Trời tối rồi。[r]
Tôi nên chuẩn bị bữa tối sớm…。[p_]
（Tôi nói với Sylvie ngồi vào bàn ăn。[p_]
[bgm_IF][f/r_nt][show_dinner]…。[p_]
[syl][f/r]Bữa tối？Em có được ăn mặc dù chưa bị ngài đánh đập？[p_]
[f/cl]Chủ nhân rất có lòng。[lr_]
[f/r]Cảm ơn chủ nhân rất nhiều。[p_]

[_]（Bây giờ, mình nên nấu gì cho Sylvie nhỉ？[p_]
[button target="*human" graphic="ch/food2.png" x="0" y="200" ]
[button target="*pet" graphic="ch/food1.png" x="0" y="350" ]
[cancelskip][s]

*pet
[cm][_]（Tôi không muốn phải tốn tiền。[lr_]
tôi lấy bánh mì với nước để cho cô ấy ăn。[p_]
[chara_mod name="hand_L" time="100" storage="o/food/food-a.png" ]
[syl][f/re]Cảm ơn ngài rất nhiều。[p_]
[_]（Sylvie bắt đầu ăn thức ăn mà tôi đưa cho cô ấy…。[p_]
[eval exp="f.intro_flag='pet'" ][jump target="*her_room" ]

*human
[cm][eval exp="f.love=f.love+3" ][eval exp="f.trust=f.trust+1" ][eval exp="f.intro_flag='human'" ]
[set_dinner][f/a_r_nt][chara_mod name="hand_L" time="100" storage="o/food/food-b.png" ]
[_]（Tôi bắt đầu nấu bữa ăn cho hai người。[lr_]
Đâu có tốn kém khi nấu thêm một phần。[p_]
[show_dinner]…。[p_]

[syl][f/r]Tối nay sẽ có khách ư,chủ nhân？[lr_]
[f/re]Có lẽ tốt hơn em nên kiếm chỗ chốn…。[p_]
[_]（Sylvie không nghĩ rằng thức ăn trên bàn đó là dành cho cố ấy。[p_]
[syl][f/a_cr]…Đây là bữa ăn ngài chuẩn bị cho em？[p_]
[f/re]Chủ trước chỉ cho em ăn bánh mì mốc và nước…。[p_]
[f/re]Thật sự em có thể ăn chứ？[p_]
…。[lr_]
[f/re]…Vậy...itadakimasu。[p_]
[black][chara_mod name="hand_L" time="100" storage="00.png" ][set_dinner]
[_]（Sylvie bắt đầu ngại ngùng cầm cái nĩa lên và lúng túng ăn。[lr_]
Hành động của cô ấy rất cứng, và có vẽ cô ấy không cảm thấy thoải mái khi ăn cho lắm。[p_]
…。[p_][f/cl][show_dinner]
[syl]…Em ăn xong rồi。[p_]
[f/a_cr_nt]
[_]（Sylvie cảm thấy bối rối sau bữa ăn。[p_]
[syl][f/cr]Ummm, Chủ nhân...。[lr_]
[f/re]…Lần đầu tiên em ăn đồ ngon như vậy。[p_]
[f/re]Và lần đầu tiên em ăn。[lr_]
[f/clc]…Cảm ơn ngài。[p_]
[_]（Có vẻ như cô ấy không nói dối, vì cô ấy nhìn rất thật lòng。[lr_]
Có lẽ cô ấy cảm thấy bối rối vì những thay đổi ảnh hưởng từ các hình thức tra tấn từ trước tới giờ。[p_]

;;寝床案内-----------------------------------------------------------
*her_room
[set_stand][f/r_nt]（Đã tối rồi, tôi nên chuẩn bị đi ngủ…。[p_][bg_room][show_stand]

[syl][f/r]Chủ nhân。[r]
Em ngủ ở nơi nào？[p_]
[_]（Phòng cho cô ấy…。[lr_]
Thật may mắn, có một căn phòng trống。[p_]
	[set_stand][bg_bed][f/r][show_stand]
[syl][f/r]Ngài không phiền khi em dùng chứ？[lr_]
[f/cr]Điều này，ngủ trên giường? thực sự không có vấn đề gì chứ…。[p_]
[_]（Phòng này dùng làm phòng khám, nhưng đây là phòng dư và giường dự phòng khi có trường hợp bệnh nhân khẩn cấp。[p_]
[syl][f/cl_nt]…。[p_]
[f/r]…Vậy,...em sẽ dùng nó với lòng biết ơn ngài。[p_]

[if exp="f.intro_flag=='pet' || f.rape>=1" ]
	[f/r]Ngủ ngon nhé, Chủ nhân。[p_]
	[stop_bgm][black]…。[p_][jump storage="intro/step1.ks" target="*show_bace" ]
[elsif exp="f.intro_flag=='human'" ]
	[f/cr]...Umm, Chủ nhân。[p_]
	[f/re]em nên làm gì tiếp theo？[lr_]
	[f/re]Em sẽ phải chịu những thứ đau đớn và tệ hại nữa ư？[p_][endif]

[_]（Có vẽ cô ấy đang nghĩ mình đang có một mục đích khác trong việc đối xử cô ấy như thế。[p_]
[button target="*ll_not" graphic="ch/noidont.png" x="0" y="200" ]
[button target="*silent" graphic="ch/silent-r.png" x="0" y="350" ]
[cancelskip][s]

*ll_not
[cm][eval exp="f.trust=f.trust+1" ]
[syl][f/re]Thật sao？[p_]
[f/re]Em không ngại khi chịu những hình phạt đau đớn nếu nó làm ngài cảm thấy vừa lòng, chủ nhân。[lr_]
[f/re]Chủ nhân trước của em cảm thấy rất thích thú với những việc này…。[p_]
[f/re]Em sẽ làm tất cả mọi thứ để giúp ngài。[lr_]
[f/clc]Em ổn với... một bữa ăn ít。[p_]
[f/re]Cho nên ngài không cần đối xử tốt với em.[lr_] Bởi vì em là một nô lệ[p_]
[_]（Xem ra cô ấy không tin tôi。[p_]
[syl][f/cr]Ahh…[lr_]EEE..Em xin lỗi。[p_]
[f/clc]Um... Chúc ngài ngủ ngon, chủ nhân。[p_]
[black]…。[p_][stop_bgm][return_bace]

*silent
[cm][_]（Tôi bỏ qua những lời nói và rời khỏi căn phòng。[p_]
[syl][f/re]Ah…。[p_][black]…。[p_][stop_bgm][return_bace]

;;家事申し出/step2へ---------------------------------------------------------
*to_next
[stop_bgm][set_stand]…。[p_][f/r_nt][bg_room][bgm_IF][show_stand]
[syl][f/re]Um, chủ nhân。[lr_]
[f/re]Có việc gì mà em có thể giúp cho ngài không？[p_]
[_]（Sylvie nói với giọng nhỏ nhẹ vừa lúc tôi đang chuẩn bị đi ngủ。[p_]
[syl][f/cr]Đến đây với thân phận là một nô lệ, em hy vọng được có việc làm…。[p_]
[_]（Cô ấy có lẽ lo sợ rằng cô sẽ bị bỏ rơi nếu cô ấy không làm bất cứ việc gì。[p_]

[button target="*job" graphic="ch/job.png" x="0" y="200" ]
[button target="*ignore" graphic="ch/ignore.png" x="0" y="350" ]
[cancelskip][s]

*job
[cm][eval exp="f.trust=f.trust+1" ]
	[syl][f/cl]Em hiểu rồi。[lr_]
	[f/r] Lau nhà và rửa bát。[p_]
	[f/re]Em sẽ cố gắng hết sức。[p_]
	[stop_bgm][jump storage="intro/step2.ks" target="*step2" ]
*ignore
[cm][syl]
	[f/cr]Ah... Em xin lỗi。[lr_]
	[t/clc]Không có gì đâu ạ。[p_]
	[stop_bgm][jump storage="intro/step2.ks" target="*step2" ]

;;between2-3死亡エンド-----------------------------------------------------------
*dead_end
[cm][bgm_IF][bg_room][_]（Mặc dù đã là buổi sáng, Sylvie chưa không chịu ra khỏi phòng。[lr_]
[black]
Tôi vào phòng xem, và thấy có vẻ Sylvie đang cố chịu một cơn đau。[p_]
（Tôi đặt tay lên trán cô ấy. cô ấy đang bị sốt nặng。[p_]
cô ấy dường như không bị làm phiền bới bất cứ thứ gì nên tôi đã không kiểm tra, nhưng giờ tôi nhận ra cô ấy trở nên mệt mỏi từ hôm qua。[p_]
（Cô ấy không thể ăn bất cứ thứ gì。[lr_]
Và em ấy quăng hết tất cả thuốc mà tôi đưa cho em ấy。[p_]
（…Vài ngày sau, em ấy đã qua đời。[lr_]
em ấy chắc chắn đã yếu từ khi lúc bắt đầu đến đây.）[p_]
…[p_]。[p_]
…。[p_][stop_bgm]
[jump storage="sys/system.ks" target="*game_over" ]

;;初外出/step3へ---------------------------------------------------------
*to_step3
[if exp="f.rape>=1 || f.intro_flag=='pet'" ][jump target="*dead_end" ][endif]
[eval exp="f.syl_fun=100"]
[day_reset_mod][set_stand][stop_bgm][bg_room][f/nt][show_stand][eval exp="f.act=0" ]
…。[p_][bgm_IF]
[eval exp="f.step=3" ][eval exp="f.act=2" ][eval exp="f.nade=1" ]
[eval exp="f.hiroba_t=0" ][eval exp="f.talk=1" ][eval exp="f.out=1" ][eval exp="f.day=f.day+1" ]

[_]（Sáng hôm nay, khi tôi rời khỏi phòng. Tôi thấy Sylvie nhìn ra ngoài cửa sổ。[p_]
[syl][f/]Chào buổi sáng!。[lr_]
[f/re]Hôm nay ngài không làm việc ạ。[p_]
[f/re]Thay vào đó ngài...sẽ đi shopping cả ngày ạ。[lr_]
[f/re]Vâng，Ngài đi đường cẩn thận。[p_]

[_]（….Bây giờ tôi đang nghĩ về điều này, Sylvie đã không đi ra ngoài một lần nào từ lúc cô ấy đến đây。[p_]
[button target="*together" graphic="ch/together.png" x="0" y="200" ]
[button target="*alone" graphic="ch/alone.png" x="0" y="350" ]
[cancelskip][s]

*alone
[cm][syl][f/re]Đi đường cẩn thận。[lr_]
[f/re]Em sẽ dọn dẹp nhà trong khi ngài ra ngoài。[p_]
[eval exp="f.intro_flag='alone'" ][eval exp="f.trust=f.trust-3" ]

[black][_]（Tôi đi một mình, mua một số nhu yếu phẩm, và trờ về nhà…。[p_]
[stop_bgm][_][bgm_SG][return_bace]

*together
[cm][eval exp="f.trust=f.trust+1" ]

[syl]…。[lr_]
[f/]Em... em đi cùng có ổn không？[p_]
[f/cl_nt]…。[p_]
[f/]Em hiểu rồi。[lr_]
[f/re]Em có thể không mang được nhiều đồ nặng, nhưng em sẽ đi cùng ngài…。[p_]

[set_stand][stop_bgm][bg_town]…。[p_][f/nt][show_stand][bgm_OB]

[_]…。[p_]
（Sylvie lặng lẽ theo sau tôi。[p_]
（Lúc đầu cô ấy có vẻ bình tĩnh, nhưng sau đó đôi mắt của cô ấy đảo qua lại một cách lo lắng。[lr_]
Có vẻ cô ấy chưa từng ở thị trấn。[p_]

[button target="*cafe_first" graphic="ch/road_l.png" x="0" y="200" ]
[button target="*shop_first" graphic="ch/road_s.png" x="0" y="350" ]
[cancelskip][s]

;;初喫茶---------------------------------------------------------
*cafe_first
[cm]
	（Chúng tôi đi bộ qua một cửa hàng mà tôi vẫn thường vào。[p_]
[eval exp="f.out=1" ][eval exp="f.act=f.act+1" ]
[set_stand][stop_bgm][bg_town]…。[p_][f/nt][show_stand][bgm_OB]
	[syl]…。[p_]
	[_]（Sau một hồi đi bộ, Sylvie dừng lại。[p_]
	[syl][f/cl]Ah... Em xin lỗi. Không có gì đâu。[p_]
	[_]（Một hương thơm ngọt ngào chạm vào mũi tôi。[lr_]
	Có vẻ như một quán cà phê gần đó đã thu hút sự chú ý của cô ấy。[p_]
	（Nó gần đây thôi, có lẽ chúng tôi sẽ đến đó ăn trưa。[p_]
	[syl][f/]…Chúng ta sẽ... ăn bữa trưa ở đây sao？[p_]
[black][bg_cafe][bgm_JH]…。[p_]
[chara_mod name="hand_L" time="1" storage="00.png" ]
[chara_mod name="sub" time="500" storage="o/sub/nephy.png" ]
[chara_show name="sub" time="100" wait="true" ]
[eval exp="f.cafe=1" ]

#Cô bồi bàn
Chào mừng quý khách![p_]
[_]（Đi vào tiệm có 1 nữ phục vụ với những cử chỉ rất kì quặc。[p_]

#Cô bồi bàn
Quý khách đi 2 người ạ？[p_]
Xin quý khách ngồi ở đây？[p_]
[_]（Chúng tôi ngồi gần bên cửa sổ。[p_]

[black][eval exp="f.r='b'" ][set_dinner][f/nt]…。[p_][show_dinner]
…。[p_]
（Tôi gọi cho mình một phần sandwich。[p_]
Sylvie nhìn xung quanh cửa hàng một cách tò mò, và ánh mắt của cô ấy không ngừng nhìn chiếc bánh kếp bên bàn của một khách hàng ngang qua bàn chúng tôi。[p_]
（Mình nên cho Sylvie ăn…。[p_]
[button target="*pancake" graphic="ch/pancake.png" x="0" y="200" ]
[button target="*sand" graphic="ch/sand.png" x="0" y="350" ]
[cancelskip][s]

*sand
[cm][_]（Sylvie sẽ có phần ăn giống tôi。[lr_]
Tôi gọi 2 phần sandwiches。[p_]
[set_dinner][f/nt]
[chara_mod name="hand_L" time="100" storage="o/food/f-sand.png" ]
…。[p_][show_dinner]
（Thức ăn tôi đặt tới rồi。[p_]
[syl][f/a]Đây... đây là phần ăn của em??[lr_]
[f/cl]Cám ơn ngài về bửa ăn。[p_]
[_]（Chúng tôi ăn Sandwiches vừa đem tới。[lr_]
Tôi muốn nhanh chóng trở về nhà。[p_]
[black][stop_bgm]…。[p_]
[_][bgm_SG][return_bace]

*pancake
[cm][eval exp="f.trust=f.trust+1" ]
[eval exp="f.love=f.love+5" ][eval exp="f.f_pancake=1" ]
[set_dinner][f/a_nt]
[chara_mod name="hand_L" time="100" storage="o/food/f-pancake.png" ]
…。[p_][show_dinner]
（Một lúc sau, thức ăn tôi gọi đã tới。[p_]
	[syl][f/re]Ah, Cái này... Cho em sao?[lr_]
	[f/c]...Eh? Không, Trước đây em chưa bào giờ ăn nó。[p_]
	[f/]Có... được không khi em ăn món này？[p_]
[set_stand][bg_cafe][f/cl_nt]…。[p_][show_stand]
	[syl][f/]Cảm ơn ngài về bữa ăn…。[p_]
	…。[p_]
	[f/cl]…Mmm, nó mềm。[lr_]
	[f/s]…ngọt。[p_]
[_]（Sylvie luôn luôn cư xử nhút nhát khi cô ấy ăn, nhưng bất ngờ thay cô ấy bắt đầu ăn chiếc bánh kẹp một cách tự nhiên、[r]
Có vẻ như cô ấy rất thích bữa trưa này。[p_]
[set_stand][bg_cafe][f/cl_nt]…。[p_][show_stand]
	[syl][f/re]Ahh，Em cảm thấy no rồi。[p_]
	[f/s]Thực sự rất ngon,[r] rất ngọt。[lr_]
	[f/re]…Cám ơn ngài về bữa ăn。[p_]
[_]（Lần đầu tiên thấy Sylvie nở nụ cười trên gương mặt。[p_]
[syl][f/cl_nt]…っ[p_]
（Có lẽ cô ấy để ý tới cách cư xử bản thân, cô ấy lập tức cư xử như ban đầu。[p_]
（Cũng vừa lúc tôi ăn xong。[lr_]
Tôi nên đi mua đồ và trở về nhà。[p_]
[_][stop_bgm][black]…。[p_]
[bgm_SG][return_bace]


;;初服屋---------------------------------------------------------
*shop_first
[cm][black][chara_anim][eval exp="f.shop=1" ][eval exp="f.out=1" ][_]
（Tôi đi bộ trên thị trấn, vào một con đường mà thường tôi không hay đến。[p_]
（…Bỗng dưng, một cửa hàng lạ ập vào mắt tôi。[lr_]
Từ ngoài tôi không thể thấy gì ở bên trong, và tôi không thể đoán được nó là cửa hàng gì。[lr_]
Hãy đi xem thử。[p_]
[bgm_BR][chara_mod name="other" time="100" storage="s/body/stand-.png" ]
[bg_shop][chara_show name="other" time="100" wait="true" width="304" height="900" ]
…。[p_]
（Có vẻ là một cửa hàng quần áo, nhưng phần lớn là quần áo phụ nữ。[lr_]
Có rất nhiều quần áo với mẫu lạ và thiết kế lập dị。[p_]

[chara_mod name="sub" time="100" storage="o/sub/Aurelia_1.png" ]
[chara_show name="sub" time="100" wait="true" ]

[aurel]
Ôi, Chào mừng。[p_]
[_]（Khi tôi nhìn xung quanh cửa hàng, một người phụ nữ lạ đến gần tôi。[p_]
[aurel]
Ồ, hôm nay anh kiếm quần áo cho em bé này à？[lr_]
Tôi nói đúng chứ? Hãy cho biết rằng tôi đã đúng。[r] À không, tôi chắc chắn đã đúng。[p_]
Ý tôi là, tôi có thể sẽ bị bỏ đi nếu nói quá nhiều、[r] nhưng như một người bán quần áo như tôi không thể tha thứ cái mà em bé ấy đang mặc。[p_]
Anh có thể đợi một lát được không？[r]Tôi sẽ chọn thứ gì đó làm cho em bé đẹp hơn。[p_]
Coi nào, hãy đến xem nào。[p_]
[chara_mod name="other" time="100" storage="s/body/stand-t-.png" ]

[syl]Eh....Ah...。[p_]
[_]（Tôi chưa kịp nói, người phụ nữ dẫn Sylvie vào trong cửa hàng。[p_]

[chara_stop][black]…。[p_][bg_shop]
[chara_mod name="sub" time="100" storage="o/sub/Aurelia_1.png" ]
[chara_mod name="other" time="100" storage="s/body/stand-cl.png" ]
[chara_show name="other" time="200" wait="true" left="750" ]
[chara_show name="sub" time="100" wait="true" left="-180" ]

[aurel]
Xin lỗi vì để anh phải chờ。[p_]
Ngài có hài lòng chứ, thưa quý khách？[lr_]Có phải ngài nhận không ra em ấy chứ？[p_]
[_]（Sylvie đang mặc một bộ quần áo duyên dáng。[lr_]
Có lẽ em ấy chưa từng mặc những thứ như vậy,em ấy có vẻ như không thoải mái。[p_]
[aurel]
Để một em gái dễ thương thế mà cho mặc một miếng giẻ như thế thì có hơi quá đáng。[lr_]
Anh không nghĩ rằng như thế này là hợp với em bé à？[p_]
Tôi khuyên anh một cách chân thành anh nên mua bộ này cho em bé。[p_]
[_]（Mình nên làm gì đây？[l_]
[button target="*buy" graphic="ch/buy.png" x="0" y="200" ]
[button target="*not_buy" graphic="ch/not-buy.png" x="0" y="350" ]
[cancelskip][s]

*not_buy
[cm][aurel]Ôi trời, Thật tiếc…。[lr_]
Tuy nhiên, nếu anh thay đổi quyết định thì cứ đến đây。[p_]
Tôi sẽ luôn chào đón。[p_]
[_][stop_bgm][black]…。[p_][bgm_SG][return_bace]


*buy
[cm][eval exp="f.Dc_b=['got',1]" ][eval exp="f.Dr_a=['got',1]" ][eval exp="f.Dp_a=['got',1]" ][eval exp="f.Ds_a=['got',1]" ]

[eval exp="f.dress=11" ][eval exp="f.socks=1" ]
[eval exp="f.front_hair=1" ][eval exp="f.pin=1" ]
[eval exp="f.hair_style=1" ][eval exp="f.hair_band=11" ]
[eval exp="f.under_p=1" ][eval exp="f.under_b=1" ]
[eval exp="f.trust=f.trust+1" ][eval exp="f.love=f.love+3" ]
[eval exp="f.first_wear=1" ]
[eval exp="f.Du_a[1]=1" ][eval exp="f.Du_a_per[1]=100" ]
[eval exp="f.Dp_a[1]=1" ][eval exp="f.Dp_a_per[1]=100" ]
[eval exp="f.Dc_b[1]=1" ][eval exp="f.Dc_b_per[1]=100" ]
[eval exp="f.Dp_a[1]=1" ][eval exp="f.Dp_a_per[1]=100" ]
[eval exp="f.Ds_a[1]=1" ][eval exp="f.Ds_a_per[1]=100" ]
[eval exp="f.Dr_a[1]=1" ][eval exp="f.Dr_a_per[1]=100" ]
[aurel]Ôi, khách hàng thân mến. Đó là một quyết định rất khôn ngoan。[lr_]
ngoại hình của một người có thể ảnh hưởng đến phẩm giá của một con người。[p_]
Bây giờ em bé này trông giống như một người phụ nữ đàng hoàng rồi đấy。[p_]
[_]（Tôi một phần buộc phải mua quần áo mới cho Sylvie。[p_]
[set_stand][f/][bgm_OB]…。[p_]
[bg_town][show_stand]

[syl][f/c]…Cái này... Chủ nhân。[p_]
[f/re]Cái áo này ngài mua thật lãng phí…。[lr_]
[f/re]Có lẽ sẽ tốt hơn nếu trả chúng lại…。[p_]
[button target="*cute" graphic="ch/cute.png" x="0" y="200" ]
[button target="*bought" graphic="ch/bought.png" x="0" y="350" ]
[cancelskip][s]

*bought
[cm][f/re]Ngài có chắc không, thưa chủ nhân…？[p_]
[f/clc]…Cám ơn ngài rất nhiều，Em sẽ mặc nó mỗi ngày。[p_]
[_][stop_bgm][black]…。[p_][bgm_SG][return_bace]

*cute
[cm][eval exp="f.trust=f.trust+1" ][eval exp="f.love=f.love+5" ]
[f/p]Cái này…。[lr_]
[f/re]…Cám ơn ngài rất nhiều。[p_]
[f/c]Nhưng em…chỉ là một nô lệ…。Nên ngài không cần phải làm điều này…。[lr_]
[f/clc]…K-không、không có gì đâu ạ。[p_]
[_][stop_bgm][black]…。[p_][bgm_SG][return_bace]


*shop_second
[cm][chara_anim][bgm_BR][bg_shop]
[chara_mod name="sub" time="100" storage="o/sub/Aurelia_1.png" ]
[chara_show name="sub" time="100" wait="true" ][chara_stop]

[aurel]
Ara-ara, Kính chào quý khách。[r]Tôi tự hỏi liệu ngài đã thay đổi ý định？[p_]
Bộ đồ đó vẫn còn đấy ạ。[p_]
[_]（Anh sẽ lấy chúng chứ？[l_]
[button target="*buy" graphic="ch/buy.png" x="0" y="200" ]
[button target="*not_buy" graphic="ch/not-buy.png" x="0" y="350" ]
[cancelskip][s]

;;風邪/step4へ---------------------------------------------------------
*to_step4
[bgm_IF][set_stand][f/clcp_nt]…。[p_][bg_room][show_stand]
[syl][f/re]Chào buổi sáng…*khụ khụ*。[p_]
[_]（Buổi sáng ra khỏi phòng, thấy cô ấy trông mệt。[lr_]
Tiếng ho có vẻ cô ấy bị bệnh rồi。[p_]
[syl][f/hcp]Xin lỗi ngài…*khụ khục*…。[lr_]
[f/re]Có thể em đã bị cảm lạnh。[p_]
[_]（Tôi đặt tay lên trán cô ấy…。[lr_]
Cô ấy bị sốt khá cao。[p_]

[if exp="f.trust>=5 && f.love>50 && f.f_pancake==1 && f.first_wear==1" ][else]
[jump target="*leave" ][endif]

[button target="*care" graphic="ch/care.png" x="0" y="200" ]
[button target="*leave" graphic="ch/leave.png" x="0" y="350" ]
[cancelskip][s]

*leave
[cm][_]（Tôi sẽ bảo cô ấy đi nghỉ ngơi。[p_]
[syl][f/clcp]Em hiểu rồi. Em xin lỗi. Em sẽ nghỉ ngày hôm nay…。[p_]
[black]
[_]（Sáng hôm sau Sylvie vẫn chưa rời khỏi phòng。[lr_]
Tôi đi vào phòng xem，em ấy trông giống như chịu đau đớn。[p_]
（Tôi đặt tay lên trán em ấy，cảm thấy em ấy sốt rất cao、[r]
Nhớ lại những đêm trước, em ấy khá yếu。[p_]（Không muốn ăn[lr_]Vứt hết thuốc đã uống.[p_]
（Một vài ngày sau, em ấy đã trút hơi thở cuối cùng.[lr_]Tôi sợ rằng em ấy đã bệnh trước khi đến đây…。[p_]
[jump storage="sys/system.ks" target="*game_over" ]

*care
[cm][set_stand][bg_bed][f/clcp_nt]…。[p_][show_stand]
[_]（em ấy đi ngủ để có thể tiêu hóa thức ăn và thuốc。[p_]
[syl][f/hcp]…Chủ nhân？không cần ngài phải lo lắng cho em。[p_]
[_]（Mặc dù nó chỉ là cảm lạnh thông thường, nhưng sẽ gặp rắc rối nếu nó tệ đi。[p_]
[stop_bgm]
[black]…。[p_]
[bgm_IF]
[_]（tôi sẽ chăm sóc Sylvie vào ngày kế tiếp。[p_]
[bg_ st="ev/a.jpg" ]
[syl][f/clcp]*khụ*...*khụ*…。[p_]
[_]（Cơ thể cô bé khá yếu trước khi đến đây。[lr_]
Chỉ cần nhiễm lạnh một chút là có thể bị cảm。[p_]
[bg_ st="ev/b.jpg" ]
[syl][f/re]Lần cuối cùng em bị cảm lạnh , không tốt nếu nó kéo dài quá lâu…。[p_]
[_]（Không thể để cô ấy mặc bộ đồ đã ướt đẫm mồ hôi nên tôi đã thay chúng。[lr_]
Giọng nói yếu ớt của Sylvie khiến tôi không thể giấu nổi cảm giác lo lắng này。[p_]
[black]…。[p_]
[bg_ st="ev/a.jpg" ]
[syl]…Un……umm[p_]
[_]（Tôi sẽ cố gắng hết sức có thể, Sylvie vẫn đang chống chọi với bệnh tật rất khó khăn ở đây。[p_]
[syl]…Em xin lỗi…xin lỗi chủ nhân[p_]
[_]（Trong cơn mê sảng, cô ấy liên tục nói lời xin lỗi。[lr_]
[chara_mod name="h" time="1" storage="o/hand/sick.png" ]
…Có vẻ cô ấy đang gặp ác mộng。[p_]
[chara_show name="h" time="300" wait="true" left=" 0.1" ]
（Tránh tóc cô ấy bị ướt bởi mồ hôi trên trán, tôi nhẹ nhàng vuốt lên trán cô ấy。[p_]
[syl]…Un……[p_]
[_]…。[p_]
[bg_ st="ev/c.jpg" ]
（Sau một thời gian, sắc mặt cô ấy cũng khá hơn một chút。[p_]
[stop_bgm]
[black][set_stand]…。[p_][bg_bed][f/][show_stand]

[syl][f/cl]…Chào buổi sáng。[lr_]
[f/]Em cảm thấy đỡ hơn rồi。[p_]
[_]（Tôi đặt tay lên trán Sylvie。[p_]
…。[p_]
（Có vẻ như cơn sốt đã hết rồi。[p_]
[syl][f/clc]Em xin lỗi vì sự bất tiện mà em đã gây ra。[lr_]
[f/]Em khỏe rồi.Em có thể làm việc nhà。[p_]
[f/s]…Cảm ơn ngài rất nhiều, chủ nhân。[p_]
[eval exp="f.day=f.day+5" ][eval exp="f.ngay=f.ngay+4"][day_reset_mod]
[stop_bgm][black][jump storage="intro/step4.ks" target="*step4" ]


;;信頼？---------------------------------------------------------
*ask
[set_stand][bg_room][bgm_IF][f/c_nt]…。[p_][show_stand]

[syl][f/re]Chủ nhân。[lr_]
[f/re]anh sẽ không làm những điều tồi tệ với em chứ?[p_]
[f/clc]Trước khi em đến đây, mỗi ngày đều quá đau đớn...[lr_]
[f/re]Dù em có cười tươi thế nào đi chăng nữa, hay khóc thảm đến mức nào đi chăng nữa, cũng không có gì thay đổi。[p_]
[f/re]Em không thể làm gì khác cả, chỉ biết đành chấp nhận。[lr_]
[f/re]Nếu em cảm thấy buồn về nó mỗi thời gian, em sẽ không có được thể chịu đựng được。[p_]
[f/c]Đó là lý do tại sao em đã cố gắng để không nghĩ về bất cứ điều gì。[lr_]
[f/re]Đó là lý do tại sao em nghĩ ... em ngừng khóc khi em cảm thấy buồn, hay ... ngừng mỉm cười khi em cảm thấy hạnh phúc。[p_]
[f/re]Bởi vì dù em hi vọng nhiều cỡ nào,  hay nguyền rủa số phận thế nào đi chăng nữa, thì cũng không có gì tốt xảy ra。[p_]
[f/re]Khi em lần đầu tiên đến đây, anh đã không làm bất cứ điều gì khủng khiếp với em…。[lr_]
[f/re]em nghĩ rằng có lẽ anh là khác tất cả mọi người em đã gặp trước đây。[p_]
[f/re]Nhưng, em đã cố gắng dừng bản thân mình từ suy nghĩ đó。[lr_]
[f/re]Nếu em lại tiếp tục hi vọng và lại bị phản bội ... em không nghĩ rằng em có thể chịu đựng được nữa…。[p_]
[f/clc]Kể cả thế, Chủ Nhân vẫn rất tốt bụng và trìu mến…。[lr_]
[f/re]em ... không biết phải làm gì nữa。[p_]
[f/c]Chủ nhân, em ... em có thể ... em có thể tin tưởng anh, phải ko, Chủ nhân?[p_]

[button target="*say" graphic="ch/say.png" x="0" y="200" ]
[button target="*act" graphic="ch/act.png" x="0" y="350" ]
[cancelskip][s]


*say
[cm][f/cl_nt]…。[p_]
[f/re]…Em biết em chỉ là một。[lr_]
[f/re]nô lệ。[p_]
[f/c]Em đã từng vô cảm，em cũng không hiểu lòng tốt anh、[lr_]
[f/re]em thật sự xin lỗi。[p_][jump target="*c" ]

*act
[cm][f/cl]…Chủ nhân anh thật tốt、[lr_]
[f/re]và anh chưa bao giờ phản bội em…。[p_]

*c
[f/c]…Em sẽ cố gắng hết sức để trở nên có ích với anh。[lr_]
[f/re]Sau này bất kể chuyện gì xảy ra ，xin đừng bỏ em…。[p_]
[f/clc]anh rất tốt với em. Nên em sẳn sàng làm bất cứ điều gì…。[p_]
[eval exp="f.intro_flag='trust'" ][stop_bgm][black]
[jump storage="intro/step4.ks" target="*show_bace" ]


;;一緒のベッド/step5へ---------------------------------------------------------
*to_step5
[set_stand][f/nt][bg_bed][bgm_IF]…。[p_][show_stand]

[_]（Tôi đang chuẩn bị đi ngủ và Sylvie đến phòng của tôi。[p_]
[syl][f/c]Ano~、Chủ nhân。Em…。[lr_]
[f/re]Em vừa gặp ác mộng。[p_]
[f/re]Mơ về quá khứ, khi chủ cũ hành hạ[lr_]
[f/re]Em cũng hay hay bị thức dậy giữa đêm…。[p_]
[f/clc]Thế nên…。[lr_]
[f/re]Ano~…。[p_]
[_]（Khuôn mặt Sylvie bắt đầu tỏ vẻ ngại ngùng。[p_]
[syl][f/c]Vì vậy, nếu có thể em muốn nhờ anh một chuyện ạ。[lr_]
[f/re]…anh có thấy phiền không nếu em ngủ chung phòng với anh chứ？[p_]
[_]（Vì phòng này chỉ có một giường…。[p_]
[syl][f/cp]Ahh...Nếu không phiền em sẽ ngủ chung với anh trên 1 giường…。[lr_]
[f/re]Bởi vì ngủ chung với anh em cảm thấy rất yên tâm…。[p_]

[button target="*agree" graphic="ch/sleep-with.png" x="0" y="200" ]
[button target="*disagree" graphic="ch/cant.png" x="0" y="350" ]
[cancelskip][s]

*agree
[cm][f/sp]Thật chứ?[p_]
[f/cp]em cảm thấy thật có lỗi vì đã hỏi như vậy, nhưng…。[lr_]
[f/clp]Xin lỗi đã làm phiền anh。[p_]
[stop_bgm][black][set_stand]

[_]（Sylvie liền lên giường tôi ngủ。[p_]
（Mất một lúc tôi mới ngủ được, bởi vì bên cạnh tôi là một cô gái nhỏ…。[p_]
…。[p_][bg_bed][bgm_IF]

[_]（Sáng thức dậy thì em đã thấy Sylvie dậy trước、[r]
 Em ấy đã thay đồ xong và đang ngồi trên giường。[p_]
（Có lẽ tôi đã ngủ quên。[p_]
[f/s_nt][show_stand]

[syl][f/re]Ahh，Chào buổi sáng chủ nhân。[p_]
[f/s]Đêm qua em ngủ rất ngon。[p_]
[f/re]Em không còn gặp ác mộng nữa。[lr_]
[f/scl]Cám ơn anh。[p_]
[f/s]Em đã làm xong bữa sáng rồi, mời anh dùng ạ。[lr_]
[f/re]Mặc dù đó chỉ là bánh mì ,trứng chiên, thịt xông khói。[p_]

[f/cl_nt]…。[p_]
[f/cp]Ahh ừm…。[lr_]
[f/re]Nếu được em có thể ngủ chung với anh từ giờ chứ？[p_]
[stop_bgm][black]…。[p_]
[jump storage="intro/step5.ks" target="*a" ]

*disagree
[cm][f/cl]…Vâng. Em đã làm phiền anh。[p_]
[f/re]Không có gì。[lr_]
[f/re]anh quên nó đi。[p_]
[_]（Sylvie về phòng của mình。[p_]

[eval exp="f.intro_flag='bed'" ][stop_bgm][black]…。[p_]
[jump storage="intro/step4.ks" target="*show_bace" ]

;;一緒にのベッドRe---------------------------------------------------------
*remind
[black][_]（Trước khi ngủ, những lời của Sylvie bỗng thoảng qua tâm trí tôi。[p_]

[button target="*second" graphic="ch/second.png" x="0" y="200" ]
[button storage="intro/step4.ks" target="*show_bace" graphic="ch/nop.png" x="0" y="350" ]
[cancelskip][s]

*second
[cm][set_stand][f/nt][bg_bed][bgm_IF]…。[p_][show_stand]
（Bỗng có tiếng Sylvie gọi。[p_]
[syl][f/re]Eh!...Em có thể ngủ chung với anh chứ?[p_][jump target="*yes" ]

;;勇気の提案---------------------------------------------------------
*to_step6
[eval exp="f.code_w='event5'"]
[jump storage="talk/words.ks" target="*event5"]
*choice_5x
[set_stand][bg_bed][bgm_IF][f/nt]…。[p_][show_stand]
[syl][f/re]Ano~、[name]…？[p_]

[_]（Khi tôi chuẩn bị đi ngủ và đang ngồi trên giường của mình, Sylvie đi vào phòng。[p_]
（gần đây, Sylvie thường ngủ chung giường với tôi hằng ngày。[p_]

[syl][f/cl_nt]…。[p_]
[_]（Sylvie ngồi xuống giường phía bên cạnh tôi và nhìn tôi。[lr_]
Có một điều đó khác thường thể hiện rõ qua hành động của em ấy。[p_]
[syl][f/cp]Em đã nói rất nhiều lần rồi,。[r]
[f/re]nhưng thật lòng em cảm thấy biết ơn [name]。[lr_]
[f/clcp]Em nhận được nhiều trang phục và nhiều món ăn ngon từ anh。[lr_]
[f/re]Chính vì vậy em mong rằng em có thể đáp trả lại sự tốt bụng của anh。[p_]
[f/cp]Và em suy nghĩ về nhiều thứ、[r]
[f/re]nhưng em lại chỉ có thể làm những công việc nhà。[p_]
[f/re]Đó là lý do, um…。[p_]
[f/re]…Um... [name]。[lr_]
[f/re][name], anh vẫn chưa có người yêu chứ。[p_]
[f/re]Um... Nếu anh muốn có một em bạn tình ngủ với anh buổi tối。[lr_]
[f/re]L-Là em…[l_][f/re]V-Vậy anh... Vậy anh sẽ chấp nhận em chứ?[p_]
[f/re]Em... chưa có kinh nghiệm cho lắm, nhưng、[lr_]
[f/re]Đây chính là điều... Mà em có thể làm với tư cách như một nô lệ của [name]... đúng chứ？[p_]
[f/clcp]Em... Nếu làm điều đó với [name]...。[lr_]
[f/re]Không... Em cũng có thể... làm điều đó với [name]、[lr_]
[f/cp]Cho dù nó chỉ là nhu cầu sinh lý... Em vẫn muốn luôn mãi mãi bên anh。[p_]
[f/clcp]Không, đó chỉ là... sự tự phụ của em。[lr_]
[f/cp]Em vẫn đang thắc mắc rằng liệu có việc gì đó để em làm cho [name]。[p_]
[f/re]Em... chưa thực sự phát triển hết... và em có những vết sẹo xấu khắp cơ thể mình…。[lr_]
[f/re]Em nghĩ rằng em chẳng quyến rũ tí nào。[p_]
[f/re]Nhưng... Nếu... [name] chấp nhận em, thì em sẽ…。[p_]
[button target="*kiss" graphic="ch/kiss.png" x="0" y="200" ]
[button target="*sleep" graphic="ch/sleep.png" x="0" y="350" ][s]

*sleep
[cm][f/clc]…Em hiểu rằng。[lr_]
[f/re]Một người như em.…。[p_]
[f/]Tuy nhiên, nếu anh có thay đổi suy nghĩ của anh, hãy nói với em。[p_]
[f/cl]Cho nên, ngủ ngon nhé anh…。[p_]
[eval exp="f.sex='yet'" ][stop_bgm][black][jump storage="talk/step6.ks" target="*a" ]

*kiss
[cm][f/clp]ん…。[p_]
[_]（Mặc dù biểu hiện của em ấy hơi ép bị ép buộc, nhưng Sylvie đang muốn trao cơ thể em ấy cho tôi。[p_]
[syl][f/re][name]…。[p_]


[chara_mod name="neck" time="200" storage="00.png" ]
[chara_mod name="dress" time="200" storage="00.png" ]
[chara_mod name="sleeve" time="200" storage="00.png" ]
[chara_mod name="pin" time="200" storage="00.png" ]
[chara_mod name="hair_f" time="200" storage="s/body/stn_fh.png" ]
…。[p_]
[if exp="f.hat==1 || f.hat==2" ][else][chara_mod name="hat" time="200" storage="00.png" ][endif]
[chara_mod name="ribbon_b" time="200" storage="00.png" ]
[chara_mod name="ribbon" time="200" storage="00.png" ]
[chara_mod name="head" time="200" storage="s/body/stn_h1.png" ]
[chara_mod name="hair_b" time="200" storage="s/hair/F/nr.png" wait="true" ]

[_]（Chúng tôi hôn nhau và tôi bắt đầu vén quần áo của Sylvie。[p_]

[chara_mod name="under_b" time="200" storage="00.png" ]
[chara_mod name="under_p" time="200" storage="00.png" ]


[syl][f/p]Ah…。[p_]
[_]（Tôi di chuyển cánh tay của tôi từ trên má của cô ấy và từ từ chậm rãi xuống cơ thể của cô ấy cho đến khi tôi chạm đến bụng cô ấy。[p_]
[syl][f/clp_nt]ん…。[p_]
[_]（Tôi bắt đầu vuốt ve cô ấy một cách nhẹ nhàng và cơ thể của cô ấy bắt đầu trở nên ướt hơn。[p_]
[syl][f/p][name] đang... 。[lr_][l_14]
[f/re]chuẩn bị chấp nhận em sao…。[p_]
[_]（Tôi nhẹ nhàng đưa cô ấy nằm xuống giường。[p_]
[stop_bgm][black]

[jump storage="H/first.ks" target="*H_first" ]

