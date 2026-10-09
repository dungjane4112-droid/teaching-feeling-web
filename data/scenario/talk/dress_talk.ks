*check
[cm][eval exp="f.r=0" ][eval exp="f.last_act='non'"]
[if exp="f.dress_save==f.dress" ][eval exp="f.system_act=1" ][return_menu][endif]
[eval exp="f.last_act='dress_up'" ]

[random_2][syl]
;;落ち着いた服
[if exp="f.dress>=11 && f.dress<=19 && f.r==1" ]
[f/s]Đây là bộ đầu tiên anh mua cho em phải không?。[lr_]
[f/scl][name] Nó làm em nhớ lại quãng thời gian sống cùng anh。[p_]
[elsif exp="f.dress>=11 && f.dress<=19" ]
[f/s]Đó là bộ anh mua cho em đầu tiên。[lr_]
[f/scl]Cảm giác thật quen thuộc、em cảm thấy thật thoải mái khi mặc bộ này。[p_]

;;ひらひらした服
[elsif exp="f.dress>=21 && f.dress<=29 && f.r==1" ]
[f/s]Thật là một bộ váy dễ thương。[lr_]
[f/re]Trông em đáng yêu khi mặc nó chứ？[lr_]
[f/cl]Mặc dù em nghĩ mình không tương xứng với bộ đồ này…。[p_]
[elsif exp="f.dress>=21 && f.dress<=29" ]
[f/s]Dù được làm từ sợi nhân tạo nhưng nó vẫn thật mềm mại và thoải mái。[lr_]
[f/re]Nó không hề gây cản trở cho hoạt đông chân tay。[p_]

;;ワンピース
[elsif exp="f.dress>=41 && f.dress<=49 && f.r==1" ]
[f/s]Thật là một bộ đồ hoàn hảo cho những ngày nóng。[lr_]
[f/cl]…Dù nhìn có chút trẻ con[p_]
[elsif exp="f.dress>=41 && f.dress<=49" ]
[f/s]Những họa tiết in trên vải thật đáng yêu、[r]
[f/re]Không kiểu cách nhưng vẫn rất thời trang。[p_]

;;ナース服
[elsif exp="f.dress>=51 && f.dress<=59 && f.r==1" ]
[f/s]Đây là trang phục làm việc mà。[lr_]
[f/ss]Em sẽ cố hết sức giúp anh！[p_]
[elsif exp="f.dress==51" ]
[f/s]Mầu trắng, cảm giác thật tinh khiết。[lr_]
[f/re]Thật sự nó rất phù hợp với công việc của em。[p_]
[elsif exp="f.dress>=52 && f.dress<=59" ]
[f/]Mầu trắng là mầu đặc trưng của hầu hết bác sĩ và y tá、[r]
[f/re]Nhưng mầu này cũng không tệ。[p_]

;;和服
[elsif exp="f.dress>=61 && f.dress<=69 && f.r==1" ]
[f/s]Thật khó để mặc được bộ này… nhưng thiết kế này thực sự rất đẹp。[lr_]
[f/re]Nó rất bắt mắt。[p_]
[elsif exp="f.dress>=61 && f.dress<=69" ]
[f/cl]có vẻ sẽ rất khó để làm việc khi mặc bộ này、[lr_]
[f/s]Nhưng đổi lại, mọi cử động khi mặc nó đều thật duyên dáng。[p_]

;;セーラー
[elsif exp="f.dress>=71 && f.dress<=79 && f.r==1" ]
[f/s]Có vẻ sẽ dễ dàng di chuyển khi mặc bộ này。[lr_]
[f/re]Cũng vì nó là đồng phục thủy thủ chăng。[p_]
[elsif exp="f.dress>=71 && f.dress<=79" ]
[f/s]Phần cổ áo này là đặc trưng của nó nhỉ。[lr_]
[f/re]Thêm cái khăn quàng mầu đỏ làm nó thật hấp dẫn。[p_]

;;メイド
[elsif exp="f.dress>=81 && f.dress<=89 && f.r==1" ]
[f/ss]Em sẽ cố gắng làm việc nhà thật tốt。[lr_]
[f/s]Dọn dẹp và giặt giũ, một ngày nào đó em sẽ có thể nấu ăn và may vá nữa。[p_]
[elsif exp="f.dress==81" ]
[f/s]Dù là trang phục làm việc nhưng nó thật cầu kì với đường viền xếp và cái nơ lớn này、[lr_]
[f/re]Em cảm thấy như một bộ thời trang vậy。[p_]
[elsif exp="f.dress>=82 && f.dress<=89" ]
[f/s]Chất liệu và kiểu cách này giống với phương tây。[lr_]
[f/ss]Nó giúp em bớt lo lắng mình sẽ làm bẩn nó khi làm việc。[p_]

;;ブレザー
[elsif exp="f.dress>=91 && f.dress<=99 && f.r==1" ]
[f/s]Bộ đồ này làm em có cảm giác chín chắn hơn khi mặc nó。[lr_]
[f/re]Cách mà nó ôm sát cơ thể khiến em thận trọng hơn trong mọi hành động。[p_]
[elsif exp="f.dress>=91 && f.dress<=99" ]
[f/s]Chất liệu tuy không mềm mại nhưng em không hề thấy khó chịu。[lr_]
[f/re]bằng cách nào đó, em cảm thấy chất kiệu của nó khá tốt。[p_]

;;ネクタイとシャツ
[elsif exp="f.dress>=101 && f.dress<=109 && f.r==1" ]
[f/s]Tuy không nữ tính cho lắm nhưng khi mặc nó em thấy dễ di chuyển và cũng rất thoải mái。[p_]
[elsif exp="f.dress>=101 && f.dress<=109" ]
[f/]Trước đây em chưa từng nghĩ mình mặc kiểu áo này。[lr_]
[f/s]Không biết có hợp không nữa？[p_]

;;清楚
[elsif exp="f.dress>=111 && f.dress<=119 && f.r==1" ]
[f/]Mặc bộ váy này em thấy mình đẹp lên theo một cách nào đó。[lr_]
[f/scl]Cũng có một chút khó khăn để mặc được nó。[p_]
[elsif exp="f.dress>=111 && f.dress<=119" ]
[f/s]Bộ váy kiểu phương tây, thật dễ thương。[p_]

;;カジュアル
[elsif exp="f.dress>=121 && f.dress<=129 && f.r==1" ]
[f/cl]Em thực sự chưa quen với việc mặc quần, nhưng nó cũng rất thoải mái[p_]
[elsif exp="f.dress>=121 && f.dress<=129" ]
[f/s]Bộ đồ này khá nam tính nhỉ、[r]
Những nếp gấp ở cổ áo thì lại nữ tính hơn。[p_]

;;タイト
[elsif exp="f.dress>=131 && f.dress<=139 && f.r==1" ]
[f/s]Được thiết kế bó sát lấy cơ thể, có lẽ bộ váy này sẽ khiến em cảm thấy hơi chật。[lr_]
[f/re]Nhưng nó có vẻ thoải mái hơn em tưởng。[p_]
[elsif exp="f.dress>=131 && f.dress<=139" ]
[f/ss]Chất liệu bộ đồ này khá mềm và mịn。[lr_]
[f/s]Dù kiểu thiết kế bó sát thế này nhưng cũng không khó chịu lắm。[p_]

;;ベルト
[elsif exp="f.dress>=141 && f.dress<=149 && f.r==1" ]
[f/c]Mất khá nhiều công để mặc được bộ đồ này。[lr_]
[f/s]Những cái đai này thì thật cá tính và mạnh mẽ。[p_]
[elsif exp="f.dress>=141 && f.dress<=149" ]
[f/]Em cảm thấy nó hơi nặng nên chắc sẽ hơi khó di chuyển。[lr_]
[f/s]Nhưng cũng không thấy khó chịu gì với nó。[p_]

;;大リボン
[elsif exp="f.dress>=151 && f.dress<=159 && f.r==1" ]
[f/]Chất liệu của bộ này thật đáng ngạc nhiên。[lr_]
[f/s]Nó ấm áp hơn em tưởng。[p_]
[elsif exp="f.dress>=151 && f.dress<=159" ]
[f/s]Chất liệu của nó rất nhẹ và mịn。[lr_]
[f/re]Mềm thế này, như lông cừu vậy![p_]

;;彼シャツ
[elsif exp="f.dress>=5 && f.dress<=6 && f.lust>=500" ]
[f/clp][font size=20]Cái áo sơ mi của [name]…。[lr_]
[f/re]Và mùi của [name]…。[resetfont][p_]
[f/hcp]Kh..không có gì đâu ạ..。[p_]
[elsif exp="f.dress>=5 && f.dress<=6" ]
[f/p][name],cái áo sơ mi này…。[lr_]
[f/sp]Nó thật lớn so với cơ thể em。[p_]

;;ベビド1
[elsif exp="f.dress>=1001 && f.dress<=1009 && f.lust>=500" ]
[f/p]Dù mặc nó mà cũng chả che đi được gì…。[lr_]
[f/hcp]…Mặc nó trước mặt [name] như vậy có ổn không？[p_]
[elsif exp="f.dress>=1001 && f.dress<=1009" ]
[f/clp]Em cảm thấy ổn ạ、[lr_]
[f/cp]cái này、Trong suốt…。[p_]

;;ベビド2
[elsif exp="f.dress>=1011 && f.dress<=1019 && f.lust>=500" ]
[f/sp]Loại ren này… người lớn hay thích。[lr_]
[f/shp]Nó, rất (sexy) se-kushi phải không ạ[p_]
[elsif exp="f.dress>=1011 && f.dress<=1019" ]
[f/p]Nó thực sự dễ thương phải không ạ?[lr_]
[f/cp][um_01]Nó trong suốt thế này…Um anh thích thế này ạ…。[p_]

;;透けワンピース
[elsif exp="f.dress>=1021 && f.dress<=1029 && f.lust>=500" ]
[f/p]cái váy này có quá mỏng không ạ…？[p_]
[f/p]…Nó gần như trong suốt。[p_]
[elsif exp="f.dress>=1021 && f.dress<=1029" ]
[f/cp][um_01]Anou~、Anh đừng nhìn em quá nhiều như vậy…。[lr_]
[f/p]Nó có hơi…sono~…。[p_]

;;上のみ
[elsif exp="f.dress>=1031 && f.dress<=1059 && f.lust>=500" ]
[f/cp][um_01]Anou~、Anh đừng nhìn em quá nhiều như vậy…。[lr_]
[f/re]Nó có hơi…sono~…。[p_]
[f/clcp][font size=15]lạnh…[resetfont]。[p_]
[elsif exp="f.dress>=1031 && f.dress<=1059" ]
[f/p][um_01]Anou~、Cái váy này…。[lr_]
[f/cp]Chỉ có mỗi phần bên trên…？[p_]

;;スカート
[elsif exp="f.dress>=1061 && f.dress<=1079 && f.lust>=500" ]
[f/cp][[um_01]Tại sao cái váy này…[lr_]
[f/re]Không có phần bên trên？[p_]
[f/p]…Vậy cũng được à？[p_]
[elsif exp="f.dress>=1061 && f.dress<=1079" ]
[f/cp]Chỉ có mỗi váy thôi ạ？[lr_]
[f/clcp]Uum…Em cũng không rõ…。[p_]

;;
;[elsif exp="f.dress>=1101 && f.dress<=1119 && f.lust>=500" ]
;[elsif exp="f.dress>=1101 && f.dress<=1119" ]
;;
;[elsif exp="f.dress>=1001 && f.dress<=1009 && f.lust>=500" ]
;[elsif exp="f.dress>=1001 && f.dress<=1009" ]
;;
;[elsif exp="f.dress>=1001 && f.dress<=1009 && f.lust>=500" ]
;[elsif exp="f.dress>=1001 && f.dress<=1009" ]

;;タイト一部
[elsif exp="f.dress==2002 && f.lust>=500" ]
[f/cp]bộ này…Chỉ có vai và cánh tay được che đi thôi。[lr_]
[f/hcp]Em cảm thấy có chút kì kì…。[p_]
[elsif exp="f.dress==2002" ]
[f/cp]Cái này…Nó còn xấu hổ hơn là không mặc gì。[lr_]
[f/re]Không ạ、Em sẽ mặc mọi kiểu theo ý thích của [name]…。[p_]

[elsif exp="f.dress==0 && f.under_b==1000" ]
[f/cp]Cái này…Thật lạ。[p_]
[f/re]Không ạ、Em không hề thấy khó chịu với nó.[l][um_01] Nhưng sở thích của [name]…。[p_]
;;
[endif]
[return_menu]

