;;
*market
[cm][black][f/s_nt][set_weather]
[act_win_stand][bgm_AS][bg_market]
[_]（tôi sẽ đi dạo quanh khu chợ một lúc。[p_]


*choice
[cm][eval exp="f.act_al=f.act_al+1"]
[if exp="f.thoi_tiet==1 && f.act_al>=0"]
[eval exp="f.act=f.act+1" ][eval exp="f.act_al=0"]
[elsif exp="f.act_al>=3"]
[eval exp="f.act=f.act+1" ][eval exp="f.act_al=0"][endif]
[_][if exp="f.act==6 && f.act_al>=2 || f.thoi_tiet==1 && f.act>=6" ][set_weather]
（Tôi có thể thấy khá nhiều cửa tiệm đã đóng cửa, đã đến lúc trở về。[p][jump target="*go_home" ][endif]

[mod_win st="o/win/out_win.png" ]
[set_time]
[button  target="*maker_lead"  graphic="s_menu/market_walk_alone.png"  x="845"  y="240" ]
[button  storage="mod/hiroba_alone.ks" target="*hiroba"  graphic="s_menu/back_hiroba.png"  x="845"  y="320" ]
[button  target="*go_home"  graphic="s_menu/go_home.png"  x="845"  y="480" ]
[s]


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
[mod_win st="00.png" ]
[chara_mod name="other" time="1" storage="00.png" ]
[stop_bgm]
#
Và như vậy, đã kết thúc một ngày.[p]
[eval exp="f.out=1"][eval exp="f.act_al=0"]
[black]…[p][eval exp="f.last_act='non'"]
[if exp="f.act>=5"]
[jump storage="act_alone/out_alone.ks" target="*back_home_n"][else]
[jump storage="act_alone/out_alone.ks" target="*back_home"][endif]

*maker_lead
[cm]
[random_10]
[if exp="f.ne_love>=30 && f.neph_st==1 && f.r>=4"]
[jump storage="mod/nephy_event1.ks" target="*begin"][endif]
[random_3]
[if exp="f.r==1" ][jump  target="*walk1" ]
[elsif exp="f.r==2" ][jump  target="*walk2" ]
[elsif exp="f.r==3" ][jump  target="*walk3" ]
[elsif exp="f.r==4" ][jump  target="*walk4" ]
[elsif exp="f.r==5" ][jump  target="*walk5" ]
[elsif exp="f.r==6" ][jump  target="*walk6" ]
[endif]

*walk1
Tôi chậm rãi bước từng bước, trong bầu không khí nhộn nhịp của khu thương mại.[p]
[jump  target="*choice" ]

*walk2
Tôi quan sát xung quanh,[r] không khí nhộn nhịp của khu thương mại khác hẳn vẻ yên tĩnh của thị trấn này. [p]
[jump  target="*choice" ]

*walk3
Cảnh sắc ở đây dường như thay đổi theo từng khoảnh khắc,[r] không khí hối hả của khu thương mại tạo ra sự khác biệt với thị trấn. [p]
[jump  target="*choice" ]

*walk4
(...*tiếng ồn ào*... [p]
[jump  target="*choice" ]

*walk5
Tôi có thấy một vài người quen thuộc đang bận rộn bên những gian hàng... [p]
[jump  target="*choice" ]

*walk6
Tiếng ồn từ khu chợ khiến tôi hơi xao nhãng... [p]
[jump  target="*choice" ]
