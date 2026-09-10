;;
*hiroba
[if exp="f.syl_game1=='out'"]
[eval exp="f.syl_game1='non'"][eval exp="f.love=f.love+3"][eval exp="f.hp=f.hp+5"][hp_return][endif]
[cm][bgm_ST][set_black][f/s_nt][bg_town]
[set_weather][act_win_stand][show_stand]
[if exp="f.thoi_tiet==1"]
[_]Sylvie và tôi cùng đi dạo dưới cơn mưa của thị trấn[p_]
[elsif exp="f.thoi_tiet==3"]
[_]Sylvie và tôi cùng đi dạo dưới trong thị trấn[lr_]
Ngoài trời hiện giờ đang có tuyết rơi[p_]
[else]
[_]Sylvie và tôi cùng ngồi thư giãn trên cạnh của đài phun nước。[p_][endif]

*choice
[cm][bg_town][eval exp="f.hp=f.hp+1"][hp_return]
[timer][eval exp="f.love=f.love+1" ][eval exp="f.daily_hiroba=f.daily_hiroba+1" ]
[_][if exp="f.act==6" ][free_layermode time="100" wait="false" ]
（Dần dần, ánh mặt trời cũng bắt đầu suy yếu。[p_]
[jump target="*go_home" ][endif]

[mod_win st="o/win/out_win.png" ][set_time][set_weather]
[if exp="f.act>=5"][free_layermode time="100" wait="false" ][endif]
[if exp="f.act<=4" ]
[button storage="act_with/shop.ks" target="*shop" graphic="s_menu/shop.png" x="845" y="400" ][endif]
[if exp="f.act==3 || f.act==4" ]
[button storage="act_with/cafe.ks" target="*cafe_hiroba" graphic="s_menu/cafe.png" x="845" y="320" ][endif]
[button storage="act_with/market.ks" target="*market" graphic="s_menu/market.png" x="845" y="240" ]
[button target="*re" graphic="s_menu/stay_hiroba.png" x="845" y="160" ]
[button target="*go_home" graphic="s_menu/go_home.png" x="845" y="480" ]
[cancelskip][s]

*re
[cm][eval exp="f.last_act='hiroba'" ][mod_win st="00.png" ]
[chara_mod name="other" time="1" storage="00.png" ]
[if exp="f.sexless>=1 && f.sexless_c>=1 && f.lust>=300"][random_27]
[elsif exp="f.sexless>=1 && f.sexless_c>=2 && f.lust>=250"][random_28]
[elsif exp="f.sexless>=1 && f.sexless_c>=3 && f.lust>=200"][random_29]
[elsif exp="f.sexless>=2 && f.sexless_c>=3 && f.lust>=150"][random_30][else]
[random_23][endif][jump target="*hiroba_lead" ]

*go_home
[cm][mod_win st="00.png" ]
[chara_mod name="other" time="1" storage="00.png" ]
[_]（Và như vậy, đã kết thúc một ngày。[p_]
[f/s][syl]Vâng, chúng ta sẽ cùng về nhà thôi ạ。[p_]
[eval exp="f.out=1"][black]…[p_][bgm_SG]
[return_bace]

*hiroba_lead
[cm]
[syl][if exp="f.r==1" ][jump target="*hiroba1" ][elsif exp="f.r==2" ][jump target="*hiroba2" ]
[elsif exp="f.r==3" ][jump target="*hiroba3" ][elsif exp="f.r==4" ][jump target="*hiroba4" ]
[elsif exp="f.r==5" ][jump target="*hiroba5" ][elsif exp="f.r==6" ][jump target="*hiroba6" ]
[elsif exp="f.r==7" ][jump target="*hiroba7" ][elsif exp="f.r==8" ][jump target="*hiroba8" ]
[elsif exp="f.r==9" ][jump target="*hiroba9" ][elsif exp="f.r==10" ][jump target="*hiroba10" ]
[elsif exp="f.r==11" ][jump target="*hiroba11" ][elsif exp="f.r==12" ][jump target="*hiroba12" ]
[elsif exp="f.r==13" ][jump target="*hiroba13" ][elsif exp="f.r==14" ][jump target="*hiroba14" ]
[elsif exp="f.r==15" ][jump target="*hiroba15" ][elsif exp="f.r==16" ][jump target="*hiroba16" ]
[elsif exp="f.r==17" ][jump target="*hiroba17" ][elsif exp="f.r==18" ][jump target="*hiroba18" ]
[elsif exp="f.r==19" ][jump target="*hiroba19" ][elsif exp="f.r==20" ][jump target="*hiroba20" ]
[elsif exp="f.r==21" ][jump target="*hiroba21" ][elsif exp="f.r==22" ][jump target="*hiroba22" ]
[elsif exp="f.r==23" ][jump target="*hiroba23" ][elsif exp="f.r==24" ][jump target="*hiroba24" ]
[elsif exp="f.r==25" ][jump target="*hiroba25" ][elsif exp="f.r==26" ][jump target="*hiroba26" ]
[elsif exp="f.r==27" ][jump target="*hiroba27" ][elsif exp="f.r==28" ][jump target="*hiroba28" ]
[elsif exp="f.r==29" ][jump target="*hiroba29" ][elsif exp="f.r==30" ][jump target="*hiroba30" ]
;[elsif exp="f.r==31" ][jump target="*hiroba31" ]
;[elsif exp="f.r==32" ][jump target="*hiroba32" ]
;[elsif exp="f.r==33" ][jump target="*hiroba33" ]
[endif]

;;トーク
*hiroba1
[f/s]Chỉ đi dạo trong thị trấn thế này, cảm giác thật mới mẻ[lr_]
[f/re]Em chưa bao giờ được làm điều đó trước khi đến sống với anh, [name][p_]
[jump target="*choice" ]
*hiroba2
[f/s]So với ở chợ thì ở đây có vẻ yên tĩnh hơn。[p_]
[jump target="*choice" ]
*hiroba3
[f/s]…Em cảm thấy thị trấn lúc này trông hơi lạ. [p_]
[jump target="*choice" ]
*hiroba4
[f/cl]Thế giới này thật rộng lớn, có nhiều người và rất nhiều cuộc sống khác nhau.[lr_]
[f/]Trước khi gặp [name] … thật nhỏ bé.[r]
Vì vậy, dù có biết thế giới này rộng lớn thế nào, em cũng chưa một lần được cảm nhận nó.[p_]
*hiroba5
[f/s]Dù ở một nơi đông đúc thế này, chỉ cần có [name] bên cạnh thì em vẫn cảm thấy an tâm.[p_]
[jump target="*choice" ]
*hiroba6
[f/c]Trước đây, ít khi có cơ hội ra ngoài nên đi bộ một quãng đường dài như vậy làm em thấy hơi đuối sức.[lr_]
[f/ss]Tuy nhiên, nếu được nghỉ một chút bên cạnh [name] thì thật tuyệt.[p_]
[jump target="*choice" ]
*hiroba7
[f/s]Cái đài phun nước thật là đẹp.[p_]
[f/re]Nó phun nước ra khắp mọi hướng.[r]
Em cảm thấy có thể ở đây và ngắm nó mãi.[p_]
[jump target="*choice" ]
*hiroba8
[f/]Em chưa bao giờ thấy đài phun nước trước khi đến thị trấn này.[lr_]
[f/cl]Không biết nơi em sống trước đây có thú vị như thế này không?[p_]
[f/]Hồi đó, em chưa bao giờ có cơ hội quan sát xung quanh thị trấn.[p_]
[jump target="*choice" ]
*hiroba9
[f/]Thị trấn này có bầu không khí thật kì lạ.[lr_]
[f/scl]Có rất nhiều tòa nhà ở đây、nhưng dòng người di chuyển lại chậm chạp、[r]
Thời gian dường như trôi qua rất chậm。[p_]
[jump target="*choice" ]
*hiroba10
[f/s_nt]…[p_]
[_]（Sylvie bỗng siết chặt tay tôi)。[p_]
[jump target="*choice" ]
*hiroba11
[f/ss]…[name][p_]
[_]（Sylvie bỗng siết chặt tay tôi)。[p_]
[jump target="*choice" ]
*hiroba12
[f/cl]Một thị trấn nên có cả người giàu và người nghèo phải không ạ?[lr_]
[f/s]Nhưng những người giàu thường nổi bật hơn phải không ạ?。[p_]
[jump target="*choice" ]
*hiroba13
[_]（Sylvie lặng lẽ quan sát đám mây đang trôi lại gần)。[p_]
[f/s]Quảng trường này thật tuyệt vời, có thể quan sát được bầu trời rộng lớn đến vậy。[p_]
[jump target="*choice" ]
*hiroba14
[f/cl]Trước đây, em đã có một quá khứ tồi tệ.[r]
Bất cứ khi nào gặp người lạ, em đều rất sợ hãi。[p_]
[f/s]Giờ thì nó đã hoàn toàn biến mất[r]
Miễn là có [name] ở bên, em không còn thấy sợ điều gì nữa。[p_]
[jump target="*choice" ]
*hiroba15
[f/scl]Cùng đi dạo qua các cửa hàng vui quá nhưng、[r]
Có lẽ chúng ta cũng nên nghỉ một chút đã.[p_]
[jump target="*choice" ]
*hiroba16
[_][f/nt]（Đôi mắt của tôi vô tình nhìn sang Sylvie) 。[p_]
[syl][f/s_nt]…？[p_]
[jump target="*choice" ]
*hiroba17
[f/]Liệu em có thể như những người trong thị trấn này?[lr_]
[f/scl]Không phải là một nô lệ, nhưng như một người bình thường[p_]
[jump target="*choice" ]
*hiroba18
[f/]Nhà của [name] nằm ở ngoại ô thị trấn ?。[lr_]
[f/re]Không biết có phải do anh không muốn nhiều người làm phiền không？[p_]
[jump target="*choice" ]
*hiroba19
[f/]Cảnh quan ở đây khác với nơi em đã sống trước kia。[r]
[f/cl]Thị trấn đó có rất nhiều người, khuôn mặt họ luôn mệt mỏi và đáng sợ、[r]
Thỉnh thoảng còn nghe thấy tiếng la hét hay âm thanh xô xát của những người ngoài đường。[p_]
[f/]Ngay cả có thể được tự do đi lại dưới phố, em cũng không nghĩ mình dám đi xa như thế này。[p_]
[jump target="*choice" ]
*hiroba20
[f/s]Có ai đó đang chơi đàn trên phố。[lr_]
[f/]Đó là âm thanh của vĩ cầm phải không nhi？[p_]
[f/s]Nó rất hay mặc dù em không biết gì nhiều về nó。[p_]
[jump target="*choice" ]
*hiroba21
[f/s_nt]…。[p_]
[_]（Một cơn gió nhẹ thổi trên mái tóc của Sylvie)[p_]
[jump target="*choice" ]
*hiroba22
…
Sylvie đang ngồi trên đài phun nước, bàn chân cô ấy bám chặt mặt đất và khẽ run lên。[p_]
[jump target="*choice" ]
*hiroba23
Cảm giác có gió thổi từ đằng trước, mắt Sylvie hơi khép lại một chút。[p_]
*hiroba24
[_](Tôi bỗng thấy có một con hẻm nhỏ bên đường.
[mod_win st="o/win/out_win.png" ]
[button storage="mod/H/town_h.ks" target="*begin" graphic="s_menu/hem_in.png" x="845" y="160" ]
[button target="*re" graphic="s_menu/walk_again.png" x="845" y="240" ][s]

*hiroba25
[_](Hình như bên đường có một con hẻm nhỏ. Nó làm tôi cảm thấy có chút hồi hộp khi[r] 
liếc nhìn sang Sylvie.
[mod_win st="o/win/out_win.png" ]
[button storage="mod/H/town_h.ks" target="*begin" graphic="s_menu/hem_in.png" x="845" y="160" ]
[button target="*re" graphic="s_menu/walk_again.png" x="845" y="240" ][s]
*hiroba26
[_](Bên kia đường hình như có một con hẻm nhỏ. Tôi có nên đưa Sylvie vào đó không.
[mod_win st="o/win/out_win.png" ]
[button storage="mod/H/town_h.ks" target="*begin" graphic="s_menu/hem_in.png" x="845" y="160" ]
[button target="*re" graphic="s_menu/walk_again.png" x="845" y="240" ][s]
*hiroba27
[_](Bỗng tôi bắt gặp một con hẻm nhỏ ngay bên đường. Nhìn sang Sylvie tôi cảm thấy coc chút bối rối.
[mod_win st="o/win/out_win.png" ]
[button storage="mod/H/town_h.ks" target="*begin" graphic="s_menu/hem_in.png" x="845" y="160" ]
[button target="*re" graphic="s_menu/walk_again.png" x="845" y="240" ][s]

*hiroba28
[jump target="*hiroba27" ]
*hiroba29
[jump target="*hiroba26" ]
*hiroba30
[jump target="*hiroba25" ]


