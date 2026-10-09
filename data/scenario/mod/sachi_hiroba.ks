;;-----------------------------------------------------------------talk_other
;;=========================================sachi_talk=============================================
*sachi_talk_lead
[cm ]
[if exp="f.sachi_wait>=1 || f.thoi_tiet==1 || f.thoi_tiet==2 || f.thoi_tiet==4 || f.thoi_tiet==5"]
[jump storage="mod/hiroba_alone.ks" target="*hiroba_random_other"]
[endif]
[eval exp="f.sachi_wait=1"]
[if exp="f.sachi_date_w>=0"]
[else][eval exp="f.sachi_date_w=0"][endif]
[if exp="f.sachi_talk>=10 && f.sachi_date_w==0"]
[eval exp="f.sachi_date=1"]
[eval exp="f.sachi_date_w=1"]
[jump target="*sachi_date1"]
[endif]
[if exp="f.sachi_talk>=1" ][else]
[eval exp="f.sachi_talk=1"]
[endif]
[if exp="f.sachi_name=='sachi'"]
[else]
[jump target="*sachi_name" ]
[endif]
#
Có một cô bé đang đứng ngắm đài phun nước[p]
(Tôi nên làm gì đây)[r]
[sachi_show]
[sachi_x_smile]
[mod_win st="o/win/out_win.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[set_time]
[button  target="*sachi_random"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*tranh_mat"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[s ]

*tranh_mat
[cm ]
[sachi_hide]
#
(Tôi quyết định tránh đi)[p]
[jump storage="mod/hiroba_alone.ks" target="*choice" ]

*sachi_random
[cm ]
...[p]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk==1" ][jump  target="*sachi_talk1" ]
[elsif exp="f.talk==2" ][jump  target="*sachi_talk2" ]
[elsif exp="f.talk==3" ][jump  target="*sachi_talk3" ]
[elsif exp="f.talk==4" ][jump  target="*sachi_talk4" ]
[elsif exp="f.talk==5" ][jump  target="*sachi_talk5" ]
[elsif exp="f.talk==6" ][jump  target="*sachi_talk6" ]
[elsif exp="f.talk==7" ][jump  target="*sachi_talk7" ]
[elsif exp="f.talk==8" ][jump  target="*sachi_talk8" ]
[elsif exp="f.talk==9" ][jump  target="*sachi_talk9" ]
[else][jump  target="*sachi_talk10" ]
[endif][jump storage="mod/hiroba_alone.ks" target="*re" ]

*sachi_name
[cm ]
[sachi_show]
[sachi_x_def]
#
Bỗng có một cô bé kì lạ đứng trước đài phun nước[lr]
(Tôi sẽ thử bắt chuyện)[p]
...[p]
#Cô gái
[sachi_o_shock]
Vâng!...Anh gọi em ạ?[lr]
[sachi_o_defp]
Anh là...?[p]
#
...[p]
#Cô gái
[sachi_x_defp]
Vâng, em không phải người dân ở đây[lr]
Anh là bác sĩ ở thị trấn này phải không ạ[p]
[sachi_o_defp]
Em có nghe Aurelia-san nói về anh rồi[p]
#
...[p]
[sachi_x_shock]
#Cô gái
Không đâu ạ[lr]
[sachi_x_def]
Em không phải người nhà cô ấy đâu,[l] chỉ là ở thị trấn này em biết có mỗi cô ấy thôi ạ[p]
#
...[p]
#Cô gái
[sachi_x_shock]
À vâng, em vẫn chưa giới thiệu bản thân[p]
[sachi_o_defp]
Em là Sachi Usui[lr]
#Sachi
Em sẽ sống ở thị trấn này một thời gian, tại nhà của Aurelia-san ạ[p]
Xin hãy quan tâm đến em[p]
...[p]
#Sachi
[sachi_o_shock]
Eh![r]
Hình như em vừa nói gì kì cục[p]
[sachi_x_defp]
#
...[p]
[sachi_o_defp]
#Sachi
Vâng ạ, cảm ơn anh vì đã không để tâm đến điều đó[lr]
em xin phép ạ[p]
[sachi_hide]
#
(Cô bé cúi chào tôi rồi rời khỏi đài phun nước)[p]
[eval exp="f.sachi_name='sachi'"]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

;;-talk_random-----------------------------------------------------
*sachi_talk1
#Sachi
[sachi_o_def]
Chào bác sỹ ạ[lr]
[sachi_x_defp]
Thời tiết hôm nay thật tuyệt để đi dạo [p]
[sachi_x_smile]
Chắc anh cũng cảm thấy như vậy[p]
[sachi_o_def]
#
(Cô bé khẽ cúi đầu chào tôi rồi tiếp tục bước đi trên phố)[p]
[sachi_hide]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*sachi_talk2
#Sachi
[sachi_o_def]
Ơ!Chào bác sỹ ạ[lr]
[sachi_x_def]
Anh hôm nay cũng có tâm trạng đi dạo nhỉ. [p]
[sachi_x_smile]
Cái đài phun nước thực sự khá nổi bật trên con phố này nhỉ[p]
[sachi_o_def]
#
(Cô bé cúi đầu chào tôi rồi tiếp tục bước đi)[p]
[sachi_hide]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*sachi_talk3
#Sachi
[sachi_o_def]
Chào bác sỹ ạ![lr]
[sachi_o_defp]
Hôm nay anh lại đi dạo một mình nhỉ. [p]
[sachi_o_smile]
Tại em thường thấy anh đi cùng với một cô gái...[lr]
[sachi_o_smile_p]
Là người nhà anh nhỉ[p]
[sachi_o_def]
#
(Cô bé chào tôi và rời khỏi đài phun nước)[p]
[sachi_hide]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*sachi_talk4
#Sachi
[sachi_o_def]
Chào bác sỹ ạ![lr]
[sachi_o_defp]
Hôm nay anh lại đi dạo phố nhỉ. [p]
[sachi_o_def]
Aurelia-san dạo này khá bận rộn[lr]
Cô ấy thường ít có thời gian trông coi cửa hàng[p]
[sachi_o_defp]
#
(Cô bé chào tôi và rời khỏi đài phun nước)[p]
[sachi_hide]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*sachi_talk5
#Sachi
[sachi_o_def]
Chào bác sỹ ạ![lr]
[sachi_o_smile]
Hôm nay anh lại đi dạo một mình. [p]
[sachi_o_def]
Anh có vẻ không mấy ngạc nhiên khi lần đầu gặp em[lr]
[sachi_o_smile_p]
Vì anh là "bác sỹ" nhỉ![p]
[sachi_o_defp]
#
(Cô bé chào tôi và rời đi)[p]
[sachi_hide]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*sachi_talk10
#Sachi
[sachi_o_def]
Chào bác sỹ ạ![lr]
Hôm nay anh lại đi dạo một mình ạ. [p]
[sachi_o_def]
Em không có nhiều bạn bè lắm[lr]
[sachi_o_smile]
Có lẽ vì vẻ ngoài kì dị của mình[p]
[sachi_o_def]
#
(Cô bé chào tôi và rời khỏi đài phun nước)[p]
[sachi_hide]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*sachi_talk6
[sachi_x_smile]
#
(Cô ấy ngắm đài phun nước với một nụ cười bình thản[lr]
Có lẽ tôi không nên làm phiền cô ấy)[p]
[sachi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*sachi_talk7
#Sachi
[sachi_o_smile]
Chào bác sỹ ạ![lr]
Hôm nay anh lại đi dạo một mình ạ. [p]
[sachi_o_def]
Em mới chuyển về một trường gần đây[lr]
Nên em sẽ sống ở đây một thời gian[p]
[sachi_o_defp]
#
(Cô bé chào tôi và rời khỏi đài phun nước)[p]
[sachi_hide]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*sachi_talk8
#Sachi
[sachi_o_smile]
Chào bác sỹ ạ![lr]
Hôm nay anh lại đi dạo một mình nhỉ. [p]
[sachi_o_defp]
Cuộc sống ở thị trấn này thật yên bình[lr]
Có lẽ đây là nơi phù hợp nhất với em[p]
[sachi_o_smile_p]
#
(Cô bé chào tôi và rời khỏi đài phun nước)[p]
[sachi_hide]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*sachi_talk9
#Sachi
[sachi_o_smile_p]
Chào bác sỹ ạ![lr]
#
(Tôi vừa bước tới thì cô ấy cũng rời khỏi đài phun nước.[r]
chỉ kịp cúi chào một tiếng...)[p]
[sachi_hide]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]
;;===================================sachi_firt==============================
*sachi_talk_first
[cm ]
[eval exp="f.sachi_wait=1"]
Bỗng một cô bé với dáng vẻ kì lạ đứng lại bên đài phun nước[p]
[sachi_show]
[sachi_x_def]
(Tôi nên làm gì đây?)[r]
#Choice
[mod_win st="o/win/out_win.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[set_time]
[button  target="*s_chao"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*s_thoi"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[s ]

*s_chao
[cm ]
#
....[p]
[sachi_x_defp]
#Cô gái
Vâng!...[r]
Chào anh ạ.[p]
#
...[p]
#Cô gái
[sachi_o_def]
Vâng! Em chỉ đi dạo quanh đây thôi[p]
[sachi_x_def]
T...tại vì... cái đài phun nước này... rất ấn tượng[p]
#
...[p]
#Cô gái
[sachi_x_shock]
Vâng, em đến từ một thị trấn khác gần đây[p]
#
...[p]

(Cô bé kì lạ này có vẻ hơi nhát[lr]
[sachi_o_defp]
Khuôn mặt cô ấy cũng thật đặc biệt[p]
[sachi_hide]
Cô bé cúi chào tôi rồi rời đi[p]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*s_thoi
[cm ]
[sachi_hide]
#
(Chỉ là một người lạ, tôi lặng lẽ đi theo hướng khác.)[p]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]


;;================================sachi_date==================
*sachi_date1
[cm ][eval exp="f.sachi_wait=1"]
[sachi_show]
[sachi_x_def]
#
hình như cô bé sachi đang có vẻ lúng túng điều gì đó mà đứng thẩn thơ ngoài phố[p]
[mod_win st="o/win/out_win.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[set_time]
[button  target="*d_chao"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*d_thoi"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[s ] 

*d_thoi
[cm ]
[sachi_hide]
#
(Tôi quyết định tránh đi)[p]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[eval exp="f.sachi_date=0"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*d_chao
[cm ]
#
...[p]
#Sachi

[anim name="sachi" time="100" left="380" ]
[sachi_o_def]
Vâng...![r]
Chào bác sỹ ạ[p]
#
...[p]
#Sachi
[anim name="sachi" time="100" left="370" ]
[sachi_x_defp]
Dạ!...là vì...[r]
Aurelia-san có nhờ em lấy hộ cô ấy số vải nhập khẩu mà cô ấy đặt từ ông [font color="lightsteelblue"]Ferrum[resetfont][lr]
[sachi_o_defp]
Em có ra chợ rồi... nhưng ở đó đông người quá nên em không tìm được ông ta...[p]
[button  target="*d_continue"  graphic="s_menu/sachi_date1_continue.png"  x="845"  y="240" ]
[button  target="*d_bad"  graphic="s_menu/luke.png"  x="845"  y="320" ]
[s ]

*d_bad
[cm ]
#Sachi
[sachi_o_smile_p]
Vâng ạ![p]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[eval exp="f.sachi_date=0"]
[chara_stop]
[sachi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*d_continue
[cm ]
#Sachi
[anim name="sachi" time="100" left="360" ]
[sachi_o_shock]
Eh![r]
Như vậy thì làm phiền anh quá[p]
[sachi_o_defp]
#
...
#Sachi
[sachi_x_def]
Vâng, cảm ơn anh ạ![p]
[chara_stop]
[sachi_hide]
[black]
[if exp="f.mua<=2"]
[bg time="500" method="crossfade" storage="bg/mod/sachi_date1.jpg" ][else]
[bg time="500" method="crossfade" storage="bg/mod/sachi_date1_.jpg" ][endif]
#
Cô bé lặng lẽ theo tôi ra chợ.[p]
[eval exp="f.sachi_talk=f.sachi_talk+3"]
[stopbgm]
[jump storage="mod/sachi_date.ks" target="*sachi_date_1"]