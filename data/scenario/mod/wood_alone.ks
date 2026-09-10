
*wood
[cm][stop_bgm][black][bg_outside][set_weather]
#
…[p]
[eval exp="f.out=1"]
[bgm_AT]
[act_win_stand]
[if exp="f.wood==0" ]
[eval exp="f.wood=1" ]
[endif]
#
[if exp="f.act==1 || f.act==3"]
（Dù chỉ là một thị trấn nhỏ nhưng ở ven thị trấn này vẫn có một khu rừng ）[p]
[else]
（Có lẽ tôi cần một không gian yên tĩnh nên quyết định đi dạo một chút trước khi về nhà）[p]
[endif]
[jump target="*choice"]


*re
[cm]
[mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 18 + 1);
[endscript]
[jump  target="*walk" ]


*choice
[timer]
;[eval exp="f.love=f.love+1" ]
[if exp="f.act==6" ]
#
（Mặt trời cũng sắp lặn ...）[p]
[jump  target="*go_home" ]
[endif]

[mod_win st="o/win/out_win_s.png" ][set_time][set_weather]
[if exp="f.book==1" ]
[button  target="*find"  graphic="s_menu/find.png"  x="845"  y="270" ]
[endif]
[button  target="*re"  graphic="s_menu/walk_again.png"  x="845"  y="190" ]
[button  storage="mod/hiroba_alone.ks" target="*hiroba"  graphic="s_menu/back_hiroba.png"  x="845"  y="350" ]
[button  target="*go_home"  graphic="s_menu/go_home.png"  x="845" y="450" ]
[s ]

*go_home
[cm]
[eval exp="f.sachi_wait=0"]
[eval exp="f.akemi_wait=0"]
[eval exp="f.rui_wait=0"]
[eval exp="f.aurelia_wait=0"]
[eval exp="f.neph_wait=0"]
[eval exp="f.neph_th=0"]
[eval exp="f.neph_wh=0"]
[eval exp="f.neph_mh=0"]
[mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]

[if exp="f.s_studi=='yet' && f.thu<=5 && f.act<=3"]
[cm][_](Tôi sẽ về nhà...[p]
[jump storage="mod/home_alone.ks" target="*home"][endif]

[stop_bgm]
[if exp="f.act>=5"]
[jump storage="act_alone/out_alone.ks" target="*back_home_n"][else]
[jump storage="act_alone/out_alone.ks" target="*back_home"][endif]
#
（Đã đến lúc tôi nên về nhà...）[p]
[chara_stop]
[black]
[bgm_SG]
...[p]
[return_bace]

*find
[cm]
[mod_win st="00.png" ]
[chara_mod name="other" time="1" storage="00.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 5 + 1);
[endscript]
[if exp="f.talk==1 || f.talk==2" ]
[jump  target="*walk_flower" ]
[elsif exp="f.talk==3 || f.talk==4" ]
[jump  target="*walk_flower_b" ]
[elsif exp="f.talk==5" ]
[jump  target="*re" ]
[endif]

*walk
[_]
[if exp="f.talk==1" ][jump  target="*walk1" ]
[elsif exp="f.talk==2" ][jump  target="*walk2" ]
[elsif exp="f.talk==3" ][jump  target="*walk3" ]
[elsif exp="f.talk==4" ][jump  target="*walk_akemi" ]
[elsif exp="f.talk==5" ][jump  target="*walk5" ]
[elsif exp="f.talk==6" ][jump  target="*walk_akemi" ]
[elsif exp="f.talk==7" ][jump  target="*walk7" ]
[elsif exp="f.talk==8" ][jump  target="*walk_akemi" ]
[elsif exp="f.talk==9" ][jump  target="*walk9" ]
[elsif exp="f.talk==10" ][jump  target="*walk10" ]
[elsif exp="f.talk==11" ][jump  target="*walk_akemi" ]
[elsif exp="f.talk==12" ][jump  target="*walk4" ]
[elsif exp="f.talk==13" ][jump  target="*walk6" ]
[elsif exp="f.talk==14" ][jump  target="*walk_akemi" ]
[elsif exp="f.talk==15" ][jump  target="*walk8" ]
[elsif exp="f.talk==16" ][jump  target="*walk_akemi" ]
[elsif exp="f.talk==17" ][jump  target="*walk_akemi" ]
[else]
[jump  target="*walk_akemi" ]
[endif]

*walk_alone
[_]
[if exp="f.talk==1" ][jump  target="*walk1" ]
[elsif exp="f.talk==2" ][jump  target="*walk2" ]
[elsif exp="f.talk==3" ][jump  target="*walk3" ]
[elsif exp="f.talk==4" ][jump  target="*walk4" ]
[elsif exp="f.talk==5" ][jump  target="*walk5" ]
[elsif exp="f.talk==6" ][jump  target="*walk6" ]
[elsif exp="f.talk==7" ][jump  target="*walk7" ]
[elsif exp="f.talk==8" ][jump  target="*walk8" ]
[elsif exp="f.talk==9" ][jump  target="*walk9" ]
[elsif exp="f.talk==10" ][jump  target="*walk10" ]
[elsif exp="f.talk==11" ][jump  target="*walk5" ]
[elsif exp="f.talk==12" ][jump  target="*walk4" ]
[elsif exp="f.talk==13" ][jump  target="*walk6" ]
[elsif exp="f.talk==14" ][jump  target="*walk3" ]
[elsif exp="f.talk==15" ][jump  target="*walk8" ]
[elsif exp="f.talk==16" ][jump  target="*walk2" ]
[elsif exp="f.talk==17" ][jump  target="*walk1" ]
[else]
[jump  target="*walk10" ]
[endif]

*walk1
Vì chỉ là một thị trấn nhỏ nên khu rừng cũng không rộng lắm[p]
[jump  target="*choice" ]
*walk2
Khu rừng này tuy nhỏ nhưng vẫn có nhiều loại động-thực vật mà tôi chưa biết[p] 
[jump  target="*choice" ]
*walk3
Tôi không nghĩ ngợi nhiều và tiếp tục bước đi
[jump  target="*choice" ]
*walk4
[if exp="f.mua==1"]
Khí hậu mùa này có vẻ ẩm ướt, ẩm đến nỗi trên thảm cỏ và thân cây vẫn đọng lại vô số những giọt nước mặc dù trời không mưa[p]
[elsif exp="f.mua==2"]
Dù thời tiết hôm nay khá nóng nhưng trong rừng luôn mát mẻ thế này, khác hẳn với sự oi bức trong thị trấn[p]
[elsif exp="f.mua==3"]
Thời tiết mùa này thật tuyệt, tôi lặng ngắm bầu trời trong vắt trong cái thời tiết hơi se se lạnh này[p]
[else]
Hôm nay có vẻ không có tuyết rơi, Trong cái lạnh cắt da cắt thị này tôi lại cảm thấy dễ chịu hơn khi đi bộ trong rừng[p]
[endif]
[jump  target="*choice" ]
*walk5
[if exp="f.mua==1"]
Thời tiết hôm nay thật ẩm ướt.[p]
[elsif exp="f.mua==2"]
So với trong thị trấn thì ở đây thật mát mẻ[p]
[elsif exp="f.mua==3"]
Thời tiết mùa này khiến tôi thấy hay buồn ngủ...[p]
[else]
Hôm nay tuy tuyết không rơi nhưng có vẻ vẫn lạnh như mọi ngày[p]
[endif]
[jump  target="*choice" ]
*walk6
Khu rừng này tuy nhỏ nhưng động-thực vật vẫn rất phong phú[p]
[jump  target="*choice" ]
*walk7
Có một con sông nhỏ chảy qua cánh rừng...[p]
[if exp="f.mua==1"]
Thảm cỏ hai bên bờ sông bắt đầu đâm chồi và có một mầu xanh non.[p]
[elsif exp="f.mua==2"]
Có lẽ vì mùa này mưa nhiều nên dòng nước có vẻ chảy khá dữ dội[p]
[elsif exp="f.mua==3"]
Dòng nước của nó trong veo...[p]
[else]
Dù mùa đông khs lạnh, tuyết có thể phủ kín khu rừng nhưng có vẻ nước sông không bao giờ đóng băng[p]
[endif]
[jump  target="*choice" ]
*walk8
Khu rừng này không quá rậm rạp nhưng việc di chuyển cũng không mấy dễ dàng[p]
[jump  target="*choice" ]
*walk9
Một cơn gió nhẹ thổi qua khiến tôi hơi xao nhãng [p]
[jump  target="*choice" ]
*walk10
Có lẽ cũng nên nghỉ chân một chút[p]
[jump  target="*choice" ]

*walk_akemi
[cm ]
[if exp="f.s_studi=='yet' && f.thu<=5 && f.act<=3"]
[jump target="*walk_alone"][endif]
[if exp="f.akemi_wait>=1"]
[jump target="*akemi_non"][endif]
[if exp="f.akemi_bad==1"]
[jump target="*akemi_non"]
[endif]
[if exp="f.akemi>=1" ]
[jump target="*akemi_talk_lead"]
[else]
[eval exp="f.akemi=1"]
[jump target="*akemi_talk_first"]
[endif]

;;==========================Akemi======================
;;-----------firts------------------
*akemi_talk_first
[eval exp="f.akemi_wait=1"]
[akemi_show]
[akemi_x_def]
Hình như có ai đó trong rừng[p]
...[p]
[mod_win st="o/win/out_win_s.png" ]
[anim name="akemi" time="300" left="170" ]
[set_time]
[button  target="*a_chao"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*a_thoi"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[s ]

*a_chao
[cm ]
[eval exp="f.akemi_talk=1"]
...[p]
#Cô gái
[anim name="akemi" time="200" left="140" ]
[akemi_o_shock]
Vâng![lr]
[anim name="akemi" time="200" left="170" ]
[akemi_x_shock]
Xin lỗi đã làm phiền, anh là người ở đây ạ?[p]
#
...[p]
#Cô gái
[akemi_x_conf]
[anim name="akemi" time="200" left="190" ]
Em là người nơi khác đến.[lr]
[akemi_x_def]
Vì khu rừng bên này có khá nhiều thảo dược nên em muốn xem xét một chút[p]
[akemi_o_conf]
[anim name="akemi" time="200" left="170" ]
Anh không thấy phiền chứ[p]
#
...[p]
[button  target="*ok"  graphic="s_menu/ok_yup.png"  x="845"  y="240" ]
[button  target="*chim_cut"  graphic="s_menu/chim_cut.png"  x="845"  y="320" ]
[s ]

*ok
#Cô gái
[cm ]

[anim name="akemi" time="200" left="140" ]
[akemi_o_smile]
Cảm ơn anh ạ![p]
[akemi_hide]
#
Cô gái vẫy chào tôi rồi đi mất mà tôi vẫn chưa kịp hỏi tên[lr]
Có lẽ cô bé này cũng khá hứng thú với nghiên cứu dược liệu[p]
[eval exp="f.akemi_bad=0"]
[eval exp="f.akemi_name='non'"]
[jump  target="*choice" ]

*chim_cut
[cm ]
#Cô gái

[anim name="akemi" time="150" left="140" ]
[akemi_o_shock]
Ơ, vậy sao![p]
[anim name="akemi" time="150" left="170" ]
[akemi_o_x]
Em xin lỗi ạ![p]
[anim name="akemi" time="170" left="190" ]
Lần sau em không dám đến đây nữa đâu ạ[p]
[akemi_hide]
#
Cô gái có vẻ hoảng hốt trước sự đe dọa của tôi[lr]
Có lẽ mình làm cũng hơi quá... Nhưng thôi, quên đi[p]
[eval exp="f.akemi_bad=1"]
[jump  target="*choice" ]

*a_thoi
[akemi_hide]
[jump  target="*choice" ]
;;----------------------------name-------------
*akemi_talk_name
[cm ]
[akemi_show]
[akemi_x_def]
(Hình như có ai đó đang ở trước mặt tôi)[p]
[mod_win st="o/win/out_win_s.png" ]
[anim name="akemi" time="300" left="170" ]
[set_time]
[button  target="*n_chao"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*n_thoi"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[s ]

*n_thoi
[cm ]
Có lẽ không nên làm phiền cô gái đó[p]
[jump  target="*choice" ]

*n_chao
[cm]
(Có lẽ nên làm quen cô bé này một chút)[p]
...[p]
[akemi_x_shock]
[anim name="akemi" time="150" left="190" ]
#Cô gái
Vâng!...[p]
[anim name="akemi" time="150" left="160" ]
[akemi_o_conf]
Ah! Anh là người hôm nọ nhỉ[p]
#
...[p]
#Cô gái
[anim name="akemi" time="150" left="190" ]
[akemi_o_conf]
Dạ! Em cũng không thường xuyên tới đây lắm[lr]
[akemi_o_smile]
Nhưng em rất hứng thú với những loại thào dược ở đây[p]
[akemi_o_conf]
Anh cũng vậy sao?[p]
#
...[p]
#Cô gái
[anim name="akemi" time="150" left="160" ]
[akemi_o_conf]
Ah! Vậy ra anh là bác sỹ trong thị trấn[p]
[akemi_x_smile]
Chắc anh biết rất nhiều về dược liệu nhỉ?[p]
[akemi_o_smile]
#
...[p]
#Cô gái
[akemi_x_shock]
À, em quên chưa giới thiệu[lr]
[akemi_x_smile]
#Akemi
Em là Akemi Tsunemi.[lr]
[akemi_x_def]
Em sống ở một thị trấn gần đây[p]
[akemi_x_smile]
Từ nay mong anh giúp đỡ nhiều ạ[p]
#
...[p]
(Cô bé này có vẻ khá thân thiện. [p]
[akemi_hide] 
[eval exp="f.akemi_name='akemi'"]
[eval exp="f.akemi_talk=f.akemi_talk+1"]
[jump  target="*choice" ]

;;--------------------------lead-----------------------------------
*akemi_talk_lead
[cm ]
[akemi_show][mod_win st="o/win/out_win_s.png" ]
[eval exp="f.akemi_wait=1"]
[if exp="f.akemi_name=='non'"]
[jump target="*akemi_talk_name"]
[elsif exp="f.akemi_name=='akemi'"]
[eval exp="f.akemi_talk=f.akemi_talk+1"]
[jump target="*akemi_talk_ch"]
[else]
[jump target="*akemi_non"]
[endif]

;;-----------------------------------------------------

*akemi_talk_ch
[cm]
[if exp="f.akemi_dr=='yet'"][else]
[jump target="*akemi_dr"][endif]
Tôi bỗng thấy cô bé Akemi cũng đang đi dạo trong rừng
[button  target="*akemi_talk_random"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*n_thoi"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[s]
*akemi_talk_random
[cm]
#
(...)[p]
[iscript]
f.talk=Math.floor(Math.random() * 15 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*akemi_talk1"]
[elsif exp="f.talk==2"][jump target="*akemi_talk2"]
[elsif exp="f.talk==3"][jump target="*akemi_talk3"]
[elsif exp="f.talk==4"][jump target="*akemi_talk4"]
[elsif exp="f.talk==5"][jump target="*akemi_talk5"]
[elsif exp="f.talk==6"][jump target="*akemi_talk6"]
[elsif exp="f.talk==7"][jump target="*akemi_talk7"]
[elsif exp="f.talk==8"][jump target="*akemi_talk8"]
[elsif exp="f.talk==9"][jump target="*akemi_talk9"]
[else][jump target="*akemi_talk10"][endif]

*akemi_dr
[cm]
Tôi bỗng thấy cô bé Akemi cũng đang hái thảo dược trong rừng.
[button  target="*akemi_dr_"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*n_thoi"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[s]
*akemi_dr_
[cm]
[eval exp="f.akemi_dr='yet'"]
#
(...)[p]
[akemi_x_def]
#Akemi
Ah! Chào bác sỹ![lr]
Anh cũng đến đây hái thảo dược à[p][akemi_x_smile]
#
(...)[p]
#Akemi
[akemi_o_smile]Vâng! Em cũng hứng thú với việc pha chế các loại thuốc lắm ạ.[p]
#
....[p]
#Akemi
[akemi_x_smile] Vâng! Em chỉ có thể điều chế được những loại thuốc chữa bệnh cảm[r] 
từ những loại hoa này thôi.[lr]
Làm theo một quyển sách mà em từng đọc trong thư viện[p]
#
.....?[p]
#Akemi
[akemi_x_shock]
Anh chưa biết sao?[p]
#
....![p]
#Akemi
[akemi_x_def]
Thực ra em đã đọc được nó theo tài liệu của người Trung Quốc về công dụng chữa bệnh[r] 
của hai loại hoa thường mọc ở đây.[p]
Nếu lấy cánh hoa xay nhỏ rồi trộn với chút rượu nhẹ[r] 
có thể điều chế được một loại thuốc công hiệu như thuốc chữa cảm.[p]
#
...?[p]
#Akemi
Vâng, em có mang theo đây ạ![p]
#
Cô bé cho tôi một tập tài liệu nhỏ gồm cả chữ hán cổ và phần dịch[r] 
về công dụng và cách pha chế thảo dược. Đó là một tài liệu tốt với tôi.[p]
Tôi cũng luôn hứng thú với những loại thuốc có thể tìm thấy trong tự nhiên[r] 
vì tuy chúng có tác dụng nhẹ nhưng lại rất an toàn khi sử dụng.[p]
...![p]
#Akemi
[akemi_o_x]Eh!~ Không có gì đâu ạ,[r] 
Sau này em còn phải học hỏi anh nhiều mà.[p][akemi_x_smile]
#
(...)[p]
[akemi_hide]
Cô bé cúi chào tôi rồi rời khỏi khu rừng.[p]
[jump target="*choice"]

*akemi_talk1
[cm ]
[akemi_x_def]
#Akemi
Ah! Chào bác sỹ[lr]
Anh lại đến đây đi dạo nhỉ?[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Những lúc rảnh rỗi em cũng thường hay đến đây và tìm hiểu những loại thực vật trong khu rùng này.[p]
[akemi_x_def]
Xin lỗi vài đã làm phiền anh.[p]
(Cô bé khẽ cúi đầu chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

*akemi_talk2
[cm ]
[akemi_x_def]
#Akemi
Ah! Là bác sỹ[lr]
Hôm nay anh cũng đến đây đi dạo nhỉ[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Khu rừng này thực sự có rất nhiều loại thực vật lạ mà em chưa thấy bao giờ.[p]
Thật tuyệt khi gần thị trấn có một nơi thế này[p]
[akemi_x_def]
Vậy em đi trước nhé.[p]
(Cô bé chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

*akemi_talk3
[cm ]
[akemi_x_def]
#Akemi
Ah! Là bác sỹ[lr]
Thời tiết hôm nay thật tuyệt và anh cũng đến đây đi dạo nhỉ[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Khu rừng này có vẻ yên tĩnh hơn so với thị trấn.[p]
Có vẻ anh là người thích yên tĩnh nhỉ?[p]
[akemi_x_def]
Đã làm phiền anh rồi.[p]
(Cô bé chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

*akemi_talk4
[cm ]
[akemi_x_def]
#Akemi
Ah! Chào bác sỹ[lr]
Anh hôm nay lại đến đây đi dạo nhỉ.[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Uhmm~![l] Em sống cùng với một người quen làm ở một quán cà phê trong tị trấn.[lr][akemi_x_smile]
Cô ấy cũng có hay nhắc đến anh đấy.[p][akemi_x_conf]
Và một cô bé nào đó hay đi cùng anh nữa.[p]
[akemi_x_def]
Đã làm phiền anh rồi.[p]
(Cô bé chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

*akemi_talk5
[cm ]
[akemi_x_def]
#Akemi
Ah! Chào bác sỹ[lr]
Anh hôm nay lại đến đây đi dạo nhỉ.[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Uhmm~![l] Em sống cùng với một người quen làm ở một quán cà phê trong tị trấn.[lr][akemi_x_smile]
Cô ấy cũng có hay nhắc đến anh đấy.[p][akemi_x_conf]
Và một cô bé nào đó hay đi cùng anh nữa.[p]
[akemi_x_def]
Đã làm phiền anh rồi.[p]
(Cô bé chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

*akemi_talk6
[cm ]
[akemi_x_def]
#Akemi
Ah! Chào bác sỹ[lr]
Anh hôm nay lại đến đây đi dạo nhỉ.[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Chắc anh cũng biết ở khu rừng này có nhiều loại thảo dược rất tốt.[lr][akemi_x_smile]
Em cũng từng thấy anh vào đây hái thảo dược với một cô bé.[p][akemi_x_conf]
....[p]
[akemi_x_def]
Đã làm phiền anh rồi.[p]
(Cô bé chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

*akemi_talk7
[cm ]
[akemi_x_def]
#Akemi
Ah! Chào bác sỹ[lr]
Anh hôm nay lại đến đây đi dạo nhỉ.[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Sẽ thật đáng tiếc nếu một ngày nào đó người ta phá bỏ mất khu rừng này nhỉ.[lr][akemi_x_smile]
Có vẻ như em lại nói lung tung rồi.[p][akemi_x_conf]
Đã làm phiền anh rồi.[p][akemi_x_def]
(Cô bé chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

*akemi_talk8
[cm ]
[akemi_x_def]
#Akemi
Ah! Chào bác sỹ[lr]
Anh hôm nay lại đến đây đi dạo à.[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Anh là một bác sỹ nên chắc biết rất nhiều cách pha chế dược liệu nhỉ.[lr][akemi_x_smile]
Em cũng rất thích công việc đó.[p][akemi_x_conf]
....[p]
[akemi_x_def]
Đã làm phiền anh rồi.[p]
(Cô bé chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

*akemi_talk9
[cm ]
[akemi_x_def]
#Akemi
Ah! Chào anh bác sỹ[lr]
Anh hôm nay lại đến đây đi dạo nữa nhỉ.[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Nơi em sống trước đây cũng từng có một khu rừng như thế này.[lr][akemi_x_smile]
Tuy nhiên ở đó rất náo nhiệt chứ không yên tĩnh như ở đây.[p][akemi_x_conf]
....[p]
[akemi_x_def]
Umm~ Anh cứ tiếp tục nhé, em đi trước đây.[p]
(Cô bé chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

*akemi_talk10
[cm ]
[akemi_x_def]
#Akemi
Ah! Chào bác sỹ[lr]
Anh hôm nay lại đến đây đi dạo nhỉ.[p]
#
(.........[p]
#Akemi
[akemi_x_conf]
Thời tiết hôm nay thật tuyệt.[lr][akemi_x_smile]
Thật là một ngày thích hợp để đi dạo.[p][akemi_x_conf]
....[p]
[akemi_x_def]
Đã làm phiền anh rồi nhỉ.[p]
(Cô bé chào tôi rồi tiếp tục bước đi )[p]
[akemi_hide]
[jump target="*choice"]

;;===========================end_mod==================
*walk_flower
#
（Có một bông hoa hồng bên đường.）[p]
（Đây là một nguyên liệu để làm thuốc).[p]
[eval exp="f.flower=f.flower+f.talk" ]
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[jump  target="*choice" ]
*walk_flower_b
#
（Có một bông hoa xanh lam bên đường.）[p]

（Đây là một loại thảo dược có tác dụng an thần)[lr]
Có thể cho vào trà hoặc sử dụng nó để làm thuốc.)[p]
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[eval exp="f.flower_b=f.flower_b+f.talk" ]
[jump  target="*choice" ]

*akemi_non
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk==1" ][jump  target="*walk1" ]
[elsif exp="f.talk==2" ][jump  target="*walk2" ]
[elsif exp="f.talk==3" ][jump  target="*walk3" ]
[elsif exp="f.talk==4" ][jump  target="*walk4" ]
[elsif exp="f.talk==5" ][jump  target="*walk5" ]
[elsif exp="f.talk==6" ][jump  target="*walk6" ]
[elsif exp="f.talk==7" ][jump  target="*walk7" ]
[elsif exp="f.talk==8" ][jump  target="*walk8" ]
[elsif exp="f.talk==9" ][jump  target="*walk9" ]
[elsif exp="f.talk==10" ][jump  target="*walk10" ]
[else][jump  target="*walk10" ][endif]
