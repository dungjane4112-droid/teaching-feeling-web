
*choise_intro
[mod_win st="o/win/out_win.png" ][set_time]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[chara_show name="other" time="1" wait="false" height="38" width="430" left="865" top="53" ]

[if exp="f.act<=4 && f.shop==1 && f.first_wear==1" ]
[button storage="act_with/shop.ks" target="*shop" graphic="s_menu/shop.png" x="845" y="400" ]
[elsif exp="f.act<=4 && f.shop==1" ]
[button storage="act_with/shop.ks" target="*shop" graphic="s_menu/shop.png" x="845" y="400" ]
[elsif exp="f.act<=4" ]
[button storage="intro/event.ks" target="*shop_first" graphic="s_menu/road_s.png" x="845" y="400" ][endif]

[if exp="f.act==3 || f.act==4 && (f.cafe==1)" ]
[button storage="act_with/cafe.ks" target="*cafe" graphic="s_menu/cafe.png" x="845" y="320" ]
[elsif exp="f.act==3 || f.act==4" ]
[button storage="intro/event.ks" target="*cafe_first" graphic="s_menu/road_l.png" x="845" y="320" ][endif]

[button target="*hiroba" graphic="s_menu/stay_hiroba.png" x="845" y="160" ]
[button target="*back_home" graphic="s_menu/go_home.png" x="845" y="480" ]
[cancelskip][s]

*back_home
[cm][_]（Tôi đã mua đủ những gì cần thiết. Có lẽ nên về nhà thôi…。[p_]
[stop_bgm][jump storage="act_with/go_out.ks" target="*after_town" ]


*hiroba
[cm][bgm_ST][set_stand][f/nt][bg_town][show_stand]
[mod_win st="00.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[chara_mod name="other" time="1" storage="00.png" ]
[chara_show name="other" time="1" wait="false" height="38" width="430" left="865" top="53" ]

[_]（Chúng ta hãy nghỉ ngơi ở đây。[lr_]
（Chúng tôi ngồi nghỉ một chút trên mép của đài phun nước。[p_]

*re
[cm][eval exp="f.last_act='hiroba'" ][mod_win st="00.png" ]
[eval exp="f.hiroba_t=f.hiroba_t+1" ]
[chara_mod name="other" time="1" storage="00.png" ]
[if exp="f.step==3" ][jump storage="intro/step3.ks" target="*hiroba_lead3" ]
[elsif exp="f.step==4" ][jump storage="intro/step4.ks" target="*hiroba_lead4" ]
[else][jump storage="intro/step5.ks" target="*hiroba_lead5" ][endif]


*choice
[cm][eval exp="f.act=f.act+1" ][eval exp="f.love=f.love+1" ]
[_][if exp="f.act==6" ]
（Trời đã bắt đầu tối。[p_]
[jump target="*go_home" ][endif]

[mod_win st="o/win/out_win.png" ]
[set_time]
[if exp="f.act<=4 && f.shop==1 && f.first_wear==1" ]
[button storage="act_with/shop.ks" target="*shop" graphic="s_menu/shop.png" x="845" y="400" ]
[elsif exp="f.act<=4 && f.shop==1" ]
[button storage="intro/event.ks" target="*shop_second" graphic="s_menu/shop.png" x="845" y="400" ]
[elsif exp="f.act<=4" ]
[button storage="intro/event.ks" target="*shop_first" graphic="s_menu/road_s.png" x="845" y="400" ][endif]

[if exp="f.act==3 && f.cafe==1 || f.act==4 && f.cafe==1" ]
[button storage="act_with/cafe.ks" target="*cafe" graphic="s_menu/cafe.png" x="845" y="320" ]
[elsif exp="f.act==3 || f.act==4" ]
[button storage="intro/event.ks" target="*cafe_first" graphic="s_menu/road_l.png" x="845" y="320" ][endif]

[button target="*re" graphic="s_menu/stay_hiroba.png" x="845" y="160" ]
[button target="*go_home" graphic="s_menu/go_home.png" x="845" y="480" ]
[cancelskip][s]


*go_home
[cm][mod_win st="00.png" ]
[chara_mod name="other" time="1" storage="00.png" ]
[f/s_nt]
[_]（Như vậy là đã kết thúc một ngày。[p_]
[eval exp="f.out=1"][black]…[p_][bgm_SG]
[return_bace]

