;;==============================akemi_talk=================================
*akemi_talk_lead
[cm ]
[if exp="f.akemi_wait>=1 || f.thoi_tiet==1 || f.thoi_tiet==2 || f.thoi_tiet==4 || f.thoi_tiet==5"]
[jump storage="mod/hiroba_alone.ks" target="*hiroba_random_other"]
[endif]
[eval exp="f.akemi_wait=1" ]
Phía trước hình như có ai đó mà tôi quen[p]
(Tôi nên làm gì đây)[r]
[akemi_a3_ang][akemi_show]
[mod_win st="o/win/out_win.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[set_time]
[button  target="*akemi_random"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*tranh_mat"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[s ]

*tranh_mat
[cm ]
[akemi_hide]
#
(Tôi quyết định tránh đi)[p]
[jump storage="mod/hiroba_alone.ks" target="*choice" ]

*akemi_random
[cm ][eval exp="f.akemi_talk=f.akemi_talk+1"]
#
...[p]

[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
#Akemi
[if exp="f.talk==1" ][jump  target="*akemi_talk1" ]
[elsif exp="f.talk==2" ][jump  target="*akemi_talk2" ]
[elsif exp="f.talk==3" ][jump  target="*akemi_talk3" ]
[elsif exp="f.talk==4" ][jump  target="*akemi_talk4" ]
[elsif exp="f.talk==5" ][jump  target="*akemi_talk5" ]
[elsif exp="f.talk==6" ][jump  target="*akemi_talk6" ]
[elsif exp="f.talk==7" ][jump  target="*akemi_talk7" ]
[elsif exp="f.talk==8" ][jump  target="*akemi_talk8" ]
[elsif exp="f.talk==9" ][jump  target="*akemi_talk9" ]
[elsif exp="f.talk==10" ][jump  target="*akemi_talk10" ]
[else][jump  target="*akemi_talk4" ]
[endif]

*akemi_talk1
[akemi_x_def]
#Akemi
Vâng! Chào bác sỹ ạ.[lr]
Hôm nay lại gặp được anh ở đây, thật trùng hợp.[p]
[akemi_x_conf]
Thị trấn này thật tuyệt. Tuy nhiên nó có phần hơi yên tĩnh quá ạ.[p]
[akemi_o_x]Ah~ Em lại nói nhảm nữa rồi!~[lr]
Anh làm ơn đừng để ý nhé![p]
[akemi_x_smile]...
[_](Cô bé cúi chào tôi rồi rời đi[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*akemi_talk2
[akemi_x_smile]
#Akemi
Ồ! Chào anh bác sỹ.[lr]
Hôm nay lại gặp anh ở đây nữa nhỉ.[p]
[akemi_x_conf]
Thị trấn này rất tốt nhưng nó lại yên tĩnh quá nên chẳng hợp với em chút nào.[p]
[akemi_o_smile]Ah!~ nếu em có nói gì kỳ cục thì xin anh đừng để ý nhé[p]
[akemi_x_smile]...
[_](Cô bé vội vã chào tôi rồi rời đi[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*akemi_talk3
[akemi_x_smile]
#Akemi
Ồ! là anh bác sỹ.[lr]
Hôm nay anh đi dạo một mình à.[p]
[akemi_x_def] 
Thì...bình thường em vẫn thấy anh hay đi dạo cùng một cô bé nào đó.[p]
[akemi_o_shock]Ah!~ em không có ý kiến gì đâu[p]
[akemi_x_def] Chỉ là Nếu phải đi dạo một mình thì cũng thật ...[l]buồn.[p]
[_](Tôi đã cùng cô bé đi dạo phố một lúc rồi tạm biệt cô bé.[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*akemi_talk4
[akemi_x_smile]
#Akemi
Ah! là bác sỹ.[lr]
Hôm nay lại anh đi dạo à.[p]
[akemi_x_def] 
Thì...bình thường em vẫn nghĩ rằng là một bác sỹ thật sự rất bận rộn.[p]
[akemi_o_shock]Ah!~ em không có ý gì đâu[p]
[akemi_x_def] Chỉ là có một công việc như vậy nó thật ...[l]tốt.[p]
[_](Cô bé nói không sai. Tuy nhiên tôi chỉ là một bác sỹ ở thị trấn nhỏ bé này nên khó mà bận rộn được.[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*akemi_talk5
[akemi_x_def]
#Akemi
Ah! chào bác sỹ.[lr]
Anh cũng đi dạo phố ạ?[p]
[akemi_x_conf]
Công việc của anh hàng ngày chắc rất bận rộn nhỉ?.[p]
[akemi_o_shock]Ah!~ Thực ra em khá là ngưỡng mộ một công việc như vậy đó[p]
[akemi_x_def] Một ngày nào đó, em cũng muốn làm một bác sỹ như anh.[p]
[_](Cô bé tám chuyện với tôi một lúc rồi rời đi.[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*akemi_talk6
[akemi_x_def]
#Akemi
Ồ! chào bác sỹ.[lr]
Thật trùng hợp khi gặp anh ở đây[p]
Thời tiết hôm nay thật tuyệt để đi dạo phố nhỉ![p]
[akemi_x_smile]Em có coi một cửa tiệm bán dược liệu ở khu chợ gần đây.[lr]
Nếu rảnh anh lại ghé qua nhé.[p]
[_](Cô bé chào tôi rồi rời đi.[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*akemi_talk7
[akemi_x_def]
#Akemi
chào bác sỹ.[lr]
Thật trùng hợp khi gặp anh ở đây[p]
Thời tiết hôm nay thật tuyệt nhỉ![p]
[akemi_x_smile]Em cũng đang tận dụng chút thời gian rảnh rỗi khi không phải coi cửa hàng.[lr]
 Thật tuyệt khi được nghỉ ngơi sau một ngày bận rộn.[p]
[_](Cô bé nói chuyện với tôi một lúc rồi rời đi.[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*akemi_talk8
[akemi_x_def]
#Akemi
chào bác sỹ ạ.[lr] 
Hôm nay anh nghỉ việc à?[p]
Em cũng vừa giao hàng xong nên có chút thời gian rảnh ạ![p]
[_]...[p]
#Akemi
[akemi_x_smile] Vâng! Khi rảnh em thường trông coi một cửa tiệm dược liệu của người quen.[lr]
Em luôn cảm thấy những việc liên quan đến dược liệu nó thật thú vị.[p]
[_](Cô bé nói chuyện với tôi một lúc rồi rời đi.[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*akemi_talk9
[akemi_x_def]
#Akemi
chào bác sỹ ạ![lr] 
Hôm nay anh có vẻ rảnh nhỉ?[p]
[akemi_x_smile]
Thời tiết hôm nay thật tuyệt quá.[lr]
Nó khiến em chẳng còn muốn làm việc nữa.[p]
[_](...[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*akemi_talk10
[akemi_x_smile]
#Akemi
Vâng! chào bác sỹ![lr] 
Hôm nay anh cũng nghỉ việc ạ?[p]
[akemi_o_smile]
Thời tiết hôm nay thật tuyệt quá.[lr]
Nó thật phù hợp cho việc nghỉ ngơi.[p]
[_](...[p][akemi_hide]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]