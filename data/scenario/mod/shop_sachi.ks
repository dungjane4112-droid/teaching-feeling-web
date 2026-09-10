*menu_button
[if exp="f.ch_win==1" ]
[button  target="*shop_dress"  graphic="clothe/button-c1.png"  x="816"  y="26" ][else]
[button  target="*shop_dress"  graphic="clothe/button-c1-.png"  x="816"  y="26" ][endif]
;[if exp="f.ch_win==2" ]
;[button  target="*shop_dress2"  graphic="clothe/button-c2.png"  x="864"  y="26" ][else]
;[button  target="*shop_dress2"  graphic="clothe/button-c2-.png"  x="864"  y="26" ][endif]
;[if exp="f.ch_win==3" ]
;[button  target="*shop_dress3"  graphic="clothe/button-c3.png"  x="910"  y="70" ]
;[else]
;[button  target="*shop_dress3"  graphic="clothe/button-c3-.png"  x="910"  y="70" ]
;[endif]
;[if exp="f.ch_win==4" ]
;[button  target="*shop_hair"  graphic="clothe/button-hr.png"  x="912"  y="26" ][else]
;[button  target="*shop_hair"  graphic="clothe/button-hr-.png"  x="912"  y="26" ][endif]
;[if exp="f.ch_win==5" ]
;[button  target="*shop_pin"  graphic="clothe/button-pin.png"  x="960"  y="26" ][else]
;[button  target="*shop_pin"  graphic="clothe/button-pin-.png"  x="960"  y="26" ][endif]
;[if exp="f.ch_win==6" ]
;[button  target="*shop_head"  graphic="clothe/button-hd.png"  x="1008"  y="26" ][else]
;[button  target="*shop_head"  graphic="clothe/button-hd-.png"  x="1008"  y="26" ][endif]
;[if exp="f.ch_win==7" ]
;[button  target="*shop_leg"  graphic="clothe/button-l.png"  x="1056"  y="26" ][else]
;[button  target="*shop_leg"  graphic="clothe/button-l-.png"  x="1056"  y="26" ][endif]
;[if exp="f.ch_win==8" ]
;[button  target="*shop_glasses"  graphic="clothe/button-gl.png"  x="1104"  y="26" ][else]
;[button  target="*shop_glasses"  graphic="clothe/button-gl-.png"  x="1104"  y="26" ][endif]
;[if exp="f.ch_win==9" ]
;[button  target="*shop_under"  graphic="clothe/button-u.png"  x="1152"  y="26" ][else]
;[button  target="*shop_under"  graphic="clothe/button-u-.png"  x="1152"  y="26" ][endif]
;[if exp="f.ch_win==10" ]
;[button  target="*shop_arm"  graphic="clothe/button-arm.png"  x="1200"  y="26" ][else]
;[button  target="*shop_arm"  graphic="clothe/button-arm-.png"  x="1200"  y="26" ][endif]
;[if exp="f.ch_win==11" ]
;[button  target="*shop_other"  graphic="clothe/button-o.png"  x="1248"  y="26" ][else]
;[button  target="*shop_other"  graphic="clothe/button-o-.png"  x="1248"  y="26" ][endif]
[button  target="*return_menu"  graphic="menu/home.png"  x="1188"  y="563" ]
[if exp="f.step>=6 && f.shop_t==0 ]
[button  target="*talk"  graphic="clothe/shop-talk.png"  x="816"  y="71" ]
[endif]
[return]

*shop
[cm][stop_bgm][black]
[bgm_BR]
[bg  time="400"  method="crossfade"  storage="bg/shop.jpg" ]
[eval exp="f.shop_c=0" ]
[sachi_show]
#
（Tôi đến cửa hàng bán quần áo.)[p]
[if exp="f.shop_sachi==0"]
[eval exp="f.ori_c=1"]
[sachi_x_smile]
#Sachi
Xin chào quý khách...[l][sachi_o_def] À, là bác sỹ.[p][sachi_x_def]
#
....[p]
#Sachi
[sachi_o_def]
Vâng. Aurelia dạo này khá bận rộn nên thỉnh thoảng em sẽ trông cửa hàng thay cô ấy[p]
[sachi_x_def]
Nhưng...ở đây chỉ bán...[lr]
[sachi_o_smile]
À, anh sẽ mua về tặng người khác nhỉ?[p] 
[eval exp="f.shop_sachi=1"][eval exp="f.ori_c=1"]
[eval exp="f.sachi_talk=f.sachi_talk+1"]
[else]
#Sachi
[sachi_x_smile]
Xin chào quý khách[p]
[endif]
[sachi_x_smile]
[eval exp="f.shop_t=0" ]
#
（Tôi nên mua gì bây giờ? )[p]
[chara_stop][anim name="sachi" time="300" left="150" ]
[chara_mod  name="window"  time="1"  storage="o/win/shop-win.png" ]
[chara_show  name="window"  time="1"  wait="true" left="613"  top="22" ]

*shop_dress
[cm][eval exp="f.ch_win=1" ][call  target="*menu_button" ]
;[anim name="sachi" time="300" left="150" ]
;[sachi_x_smile]
[if exp="f.D_cosplay[2]==1" ][button  target="*bought"  graphic="clothe/D_v2_.png"  x="675"  y="160" ]
[else][button  target="*D_v2"  graphic="clothe/D_v2.png"  x="675"  y="160" ][endif]

[if exp="f.D_cosplay[3]==1" ][button  target="*bought"  graphic="clothe/D_v3_.png"  x="785"  y="160" ]
[else][button  target="*D_v3"  graphic="clothe/D_v3.png"  x="785"  y="160"][endif]

[if exp="f.D_cosplay[4]==1" ][button  target="*bought"  graphic="clothe/D_v4_.png"  x="895"  y="160" ]
[else][button  target="*D_v4"  graphic="clothe/D_v4.png"  x="895"  y="160"][endif]

[if exp="f.D_cosplay[5]==1" ][button  target="*bought"  graphic="clothe/D_v5_.png"  x="1005"  y="160" ]
[else][button  target="*D_v5"  graphic="clothe/D_v5.png"  x="1005"  y="160" ][endif]

[if exp="f.D_cosplay[6]==1" ][button  target="*bought"  graphic="clothe/D_v6_.png"  x="1115"  y="160" ]
[else][button  target="*D_v6"  graphic="clothe/D_v6.png"  x="1115"  y="160" ][endif]


[s]

*D_v2
[cm]（Tôi mua một bộ cosplay "Witch"[r]
Giá 1000000 đồng [p]
[eval exp="f.zince_=f.zince1*f.zince1"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*show_menu" ]
[else]
[eval exp="f.D_cosplay[2]=1"][eval exp="f.D_cosplay_per[2]=100"]

Tài khoản còn [money][p_][jump target="*shop_dress" ][endif]

*D_v3
[cm]（Tôi mua một bộ cosplay "Halloween"[r]
Giá 1000000 đồng [p]
[eval exp="f.zince_=f.zince1*f.zince1"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*show_menu" ]
[else]
[eval exp="f.D_cosplay[3]=1"][eval exp="f.D_cosplay_per[3]=100"]

Tài khoản còn [money][p_][jump target="*shop_dress" ][endif]

*D_v4
[cm]（Tôi mua một bộ cosplay "Fantasy"[r]
Giá 1000000 đồng [p]
[eval exp="f.zince_=f.zince1*f.zince1"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*show_menu" ]
[else]
[eval exp="f.D_cosplay[4]=1"][eval exp="f.D_cosplay_per[4]=100"]

Tài khoản còn [money][p_][jump target="*shop_dress" ][endif]

*D_v5
[cm]（Tôi mua một bộ cosplay "Vampire"[r]
Giá 1000000 đồng [p]
[eval exp="f.zince_=f.zince1*f.zince1"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*show_menu" ]
[else]
[eval exp="f.D_cosplay[5]=1"][eval exp="f.D_cosplay_per[5]=100"]

Tài khoản còn [money][p_][jump target="*shop_dress" ][endif]

*D_v6
[cm]（Tôi mua một bộ cosplay "Christmas"[r]
Giá 1000000 đồng [p]
[eval exp="f.zince_=f.zince1*f.zince1"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*show_menu" ]
[else]
[eval exp="f.D_cosplay[6]=1"][eval exp="f.D_cosplay_per[6]=100"]

Tài khoản còn [money][p_][jump target="*shop_dress" ][endif]

*hl_1
[cm]（Tôi mua một bộ cosplay "haloween"[r]
giá 800000 đồng) [p]
[if exp="f.money>=800000"]
[eval exp="f.c_hl1=1" ]
[eval exp="f.money=f.money-800000" ]
[jump  storage=""  target="*show_menu" ]
[else]
[jump  storage=""  target="*money"]
[endif]


*sb_1
[cm]（Tôi mua một bộ cosplay succubus mầu trắng[r]
giá 1000000 đồng) [p]
[if exp="f.money>=1000000"]
[eval exp="f.c_sb1=1" ]
[eval exp="f.money=f.money-1000000" ]
[jump  storage=""  target="*show_menu" ]
[else]
[jump  storage=""  target="*money"]
[endif]

*cris
[cm]（Tôi mua một bộ christmas[r]
giá 900000 đồng) [p]
[if exp="f.money>=900000"]
[eval exp="f.c_cris=1" ]
[eval exp="f.money=f.money-900000" ]
[jump  storage=""  target="*show_menu" ]
[else]
[jump  storage=""  target="*money"]
[endif]

*po1
[cm]（Tôi mua một bộ "Mizugi"[r]
giá 900000 đồng) [p]
[if exp="f.money>=600000"]
[eval exp="f.c_po1=1" ]
[eval exp="f.money=f.money-600000" ]
[jump  storage=""  target="*show_menu" ]
[else]
[jump  storage=""  target="*money"]
[endif]

*po2
[cm]（Tôi mua một bộ "Mizugi" trắng [r]
giá 600000 đồng) [p]
[if exp="f.money>=600000"]
[eval exp="f.c_po2=1" ]
[eval exp="f.money=f.money-600000" ]
[jump  storage=""  target="*show_menu" ]
[else]
[jump  storage=""  target="*money"]
[endif]



*shop_dress2
[cm][eval exp="f.ch_win=2" ]
[chara_mod  name="window"  time="100"  storage="o/win/shop-win.png" ]
[call  target="*menu_button" ]
[s]

*shop_hair
[cm][eval exp="f.ch_win=4" ]
[chara_mod  name="window"  time="100"  storage="o/win/shop-win.png" ]
[call  target="*menu_button" ]
[s]

*shop_pin
[cm][eval exp="f.ch_win=5" ]
[chara_mod  name="window"  time="100"  storage="o/win/shop-win.png" ]
[call  target="*menu_button" ]
[s]


*shop_head
[cm][eval exp="f.ch_win=6" ]
[chara_mod  name="window"  time="100"  storage="o/win/shop-win.png" ]
[call  target="*menu_button" ]


[s]

*shop_leg
[cm][eval exp="f.ch_win=7" ]
[chara_mod  name="window"  time="0"  storage="o/win/shop-win.png" ]
[call  target="*menu_button" ]


[s]


*shop_glasses
[cm][eval exp="f.ch_win=8" ]
[chara_mod  name="window"  time="100"  storage="o/win/shop-win.png" ]
[call  target="*menu_button" ]


[s]

;;--------------------------------------------------------------------------------
*shop_under
[cm][eval exp="f.ch_win=9" ]
[chara_mod  name="window"  time="0"  storage="o/win/shop-win.png" ]
[call  target="*menu_button" ][s]


;;-------------------------------------------------------------------------------
*shop_arm
[cm][eval exp="f.ch_win=10" ]
[chara_mod  name="window"  time="0"  storage="o/win/shop-win.png" ]
[call  target="*menu_button" ]
[s]

*shop_other
[cm][eval exp="f.ch_win=11" ]
[chara_mod  name="window"  time="0"  storage="o/win/shop-win.png" ]
[call  target="*menu_button" ]


[s]


;;call------------------------------------------
*f_t
[cm][return]
*f_st
[cm][return]
*f_tp
[cm][return]
*f_t
[cm][return]

;;服------------------------------------------



*shop_t1
[cm ]

[jump  target="*shop_dress" ]
;;-----------------------------------------------------------------------------------------------------

*money
[cm]
Mình chỉ còn  [emb exp="f.money"]  đồng
Không đủ tiền,nên chọn bộ khác thôi[p]
[jump  storage=""  target="*show_menu" ]

*bought
[cm](mình đã mua nó rồi, nên tìm thứ khác vậy)[l]
[if exp="f.ch_win==1" ][jump  target="*shop_dress" ]
[elsif exp="f.ch_win==2" ][jump  target="*shop_dress2" ]
[elsif exp="f.ch_win==3" ][jump  target="*shop_dress3" ]
[elsif exp="f.ch_win==4" ][jump  target="*shop_hair" ]
[elsif exp="f.ch_win==5" ][jump  target="*shop_pin" ]
[elsif exp="f.ch_win==6" ][jump  target="*shop_head" ]
[elsif exp="f.ch_win==7" ][jump  target="*shop_leg" ]
[elsif exp="f.ch_win==8" ][jump  target="*shop_glasses" ]
[elsif exp="f.ch_win==9" ][jump  target="*shop_under" ]
[elsif exp="f.ch_win==10" ][jump  target="*shop_arm" ]
[elsif exp="f.ch_win==11" ][jump  target="*shop_other" ]
[endif]
*return_menu
[cm]
#Sachi
Quý khách đi thong thả[p]
[eval exp="f.shop_c=3" ]
[jump  storage=""  target="*end_shop" ]

*show_menu
[if exp="f.ch_win==1" ][jump  target="*shop_dress" ]
[elsif exp="f.ch_win==2" ][jump  target="*shop_dress2" ]
[elsif exp="f.ch_win==3" ][jump  target="*shop_dress3" ]
[elsif exp="f.ch_win==4" ][jump  target="*shop_hair" ]
[elsif exp="f.ch_win==5" ][jump  target="*shop_pin" ]
[elsif exp="f.ch_win==6" ][jump  target="*shop_head" ]
[elsif exp="f.ch_win==7" ][jump  target="*shop_leg" ]
[elsif exp="f.ch_win==8" ][jump  target="*shop_glasses" ]
[elsif exp="f.ch_win==9" ][jump  target="*shop_under" ]
[elsif exp="f.ch_win==10" ][jump  target="*shop_arm" ]
[elsif exp="f.ch_win==11" ][jump  target="*shop_other" ]
[endif]

*end_shop
[cm]
;[jump  target="*return_shop" ]
[black]

[bg  time="400"  method="crossfade"  storage="bg/shop.jpg" ]

[sachi_show]
[sachi_o_smile]
#Sachi
hẹn gặp lại quý khách lần sau[p]
[eval exp="f.act=f.act+1" ][eval exp="f.out=1" ][eval exp="f.last_act='shop'" ]
[black][_][bgm_SG]
[jump storage="act_alone/out_alone.ks" target="*home" ]
*talk
[cm]
[if exp="f.shop_sachi_talk>=1" ][jump  target="*talks" ]
[else]
#
（Tôi cứ nghĩ rằng bà chủ sẽ tự mình quản lý hết mọi việc ở cửa hàng này chứ …)[p]
#Sachi
[sachi_o_defp]Vâng! đúng vậy ạ.[lr]
Chỉ là...[l] thỉnh thoảng Aurelia-san đi vắng thôi ạ。[p]
[sachi_x_defp]Thường thì cửa hàng sẽ tạm đóng cửa khi cô ấy không có nhà.[lr]
Nhưng... Như vậy thật lãng phí, và Aurelia cũng cho em ở nhờ nhà cô ấy khi em đến thị trấn nên...[p]
[sachi_o_smile]Em muốn giúp được cô ấy một việc gì đó... như trông cửa hàng khi cô ấy đi vắng chẳng hạn...[p]
[eval exp="f.shop_sachi_talk=1" ]
[jump  target="*shop_dress" ]
[endif]

*talks
[eval exp="f.shop_t=1" ]
[iscript]
f.talk=Math.floor(Math.random() * 6 + 1);
[endscript]
#
[if exp="f.talk==1" ][jump  target="*shop_t1" ]
[elsif exp="f.talk==2" ][jump  target="*shop_t2" ]
[elsif exp="f.talk==3" ][jump  target="*shop_t3" ]
[elsif exp="f.talk==4" ][jump  target="*shop_t4" ]
[elsif exp="f.talk==5" ][jump  target="*shop_t5" ]
[elsif exp="f.talk==6" ][jump  target="*shop_t6" ]
[elsif exp="f.talk==7" ][jump  target="*shop_t7" ]
[elsif exp="f.talk==8" ][jump  target="*shop_t8" ]
[elsif exp="f.talk==9" ][jump  target="*shop_t9" ]
[elsif exp="f.talk==10" ][jump  target="*shop_t10" ]
[elsif exp="f.talk==11" ][jump  target="*shop_t11" ]
[elsif exp="f.talk==12" ][jump  target="*shop_t12" ]
[elsif exp="f.talk==13" ][jump  target="*shop_t13" ]
[elsif exp="f.talk==14" ][jump  target="*shop_t14" ]
[elsif exp="f.talk==15" ][jump  target="*shop_t15" ]
[endif]

*shop_t1
#Sachi
[sachi_x_smile_p]Có vẻ như anh là người thường xuyên ghé qua đây nhất nhỉ?[p]
#
（Dù là cửa hàng duy nhất của thị trấn nhưng ở đây thực sự vắng khách。[p]
[jump  target="*shop_dress" ]
*shop_t2
（Tôi tự hỏi, liệu khách hàng có ấn tượng gì với gương mặt cô ấy không)[p]
#Sachi
[sachi_x_smile_p]Mặt em ư？[p]
[sachi_o_shock]Lúc đầu thì mọi người cũng có vẻ tò mò...[lr]
[sachi_x_cry]Trẻ con thì sợ hãi... nhưng giờ thì mọi người cũng quen rồi ạ.[p][sachi_x_smile]
[jump  target="*shop_dress" ]
*shop_t3
（Cửa hàng có bán rất nhiều loại quần áo.）…[p]
#Sachi
[sachi_o_def]Vâng ạ! Tuy nhiên kiến thức của em về chúng rất có hạn.[p]
[sachi_o_smile]Cho nên... Nếu anh muốn biết thêm thì phải đợi khi Aurelia-san về thôi[lr]
Đó là lý do mà em chỉ bầy bán có nhiêu đây thôi ạ.[p]
[sachi_x_smile_p]Tuy nhiên...ở đây không bán đồ cho nam nên anh chỉ mua làm quà tặng được thôi.[p]
[jump  target="*shop_dress" ]
*shop_t4
（Tôi tám chuyện phiếm một chút với cô chủ nhỏ này chút.[p]
[sachi_o_smile]（Ánh mắt của cô ấy nhìn tôi... tôi thực sự chưa quen lắm.[p]
#Sachi
Em có gì lạ lắm sao？[p]
[_]...[p]
[jump  target="*shop_dress" ]
*shop_t5
（tôi chưa thấy người khách nào khác đến đây, không biết cửa hàng này kinh doanh ra sao nữa...）[p]
#Sachi
[sachi_o_def]À, không sao đâu ạ, Vì Aurelia-san thừng nhận đặt may trang phục ở khắp mọi nơi. Đó là lý do cô ấy thường hay đi văng đấy ạ.[lr]
Hơn nữa giờ chẳng phải đã có người đến rồi đó sao![sachi_x_smile] .[p]
#
[sachi_x_smile_p]（Cô bé mỉm cười và nhìn ra chỗ khác.[p]
[jump  target="*shop_dress" ]
*shop_t6
(Theo vóc dáng tôi đoán cô ấy khoảng 16-17 tuổi[r]
Tôi rất tò mò về cuộc sống thường ngày của cô ấy.[p] 
Không biết mọi người xung quanh có gặp rắc rối gì với vẻ ngoài của cô ấy không nữa.[lr]
Quan trong hơn,[l] Không biết cô ấy có bạn bè không nữa. Chắc phải thế nào thì mới quen được bà chủ của hàng này[p]
#Sachi
[sachi_o_shock]Aurelia-san ạ! Vâng, đúng là chị ấy có chút kì quặc nhưng thật sự chị ấy rất tốt ạ.[p]
[sachi_o_smile]Thực sự thì... em cũng không có nhiều bạn bè lắm [lr]
[sachi_x_smile_p]Aurelia-san là một người bạn rất tốt của em đấy ạ[p]
[jump  target="*shop_dress" ]
*shop_t7
[aurel]
Trên thực tế... tôi vẫn thích như vậy...[p]
Ehh...Không sao đâu...[p]
#
（Sylvie khẽ trộm nhìn và bắt gặp nụ cười của tôi.）[p]
[jump  target="*shop_dress" ]
*shop_t8
[aurel]
Này...quan hệ giữa anh và cô bé ấy có vẻ rất tốt...
Ahh... Không, không có gì...[p]
Fu...fu...[p]
#
（Cô ấy có vẻ ghen, cáu kỉnh về tôi và Aurelia）[p]
[jump  target="*shop_dress" ]
*shop_t9
（Tôi tự hỏi sẽ như thế nào nếu nhìn cô ấy ở bên ngoài cửa hàng.）[p]
（Giữa đường phố đông người và tấp nập.[r]
Vẻ đẹp của cô ấy có thể được nhìn thấy từ rất xa.）[p]
[aurel]
Trên mặt tôi đang dính gì à？[p]
[jump  target="*shop_dress" ]
*shop_t10
（Tôi nhìn ra các cửa hàng khác)[p]
[aurel]
Anh thấy đây là một nơi tuyệt vời chứ?[p]
品揃えにこだわるために[r]
Chúng tôi đã có một mặt bằng khá rộng。[p]
#
（Tôi cảm giác nó ít gây chú ý hơn các cửa hàng khác)[p]
[jump  target="*shop_dress" ]
*shop_t11
[aurel]
Tôi cũng hay tự may và thiết kế các loại quần áo。[lr]
Một vài trong số đó bán được rất nhiều…。[p]
Ví dụ bộ đầu tiên anh mua cho co bé này、[r]
Nó là một trong những thiết kế ban đầu của tôi。[p]
[jump  target="*shop_dress" ]
*shop_t12
[aurel]
Ở đây, tôi cũng có cả dịch vụ sửa chữa quần áo。[p]
Coi vậy chứ tôi cũng chưa già lắm đâu、[r]
Nếu có yêu cầu gì quý khách cũng đừng ngần ngại。[p]
[jump  target="*shop_dress" ]
*shop_t13
（Tôi cảm thấy không thoải mái lắm trong của hàng này。[p]
[aurel]
…[p]
#
có thể vì đôi mắt đỏ thẫm của cô chủ tiệm này chăng…[p]
[jump  target="*shop_dress" ]