;;==============================aurelia_talk=================================
*aurelia_talk_lead
[cm ]
[if exp="f.aurelia_wait>=1 || f.thoi_tiet==1 || f.thoi_tiet==2 || f.thoi_tiet==4 || f.thoi_tiet==5"]
[jump storage="mod/hiroba_alone.ks" target="*hiroba_random_other"]
[endif]
[eval exp="f.aurelia_wait=1" ]
Phía trước hình như có ai đó mà tôi quen[p]
(Tôi nên làm gì đây)[r]
[set_lady_x]
[eval exp="f.lady=8"]
[aur_s]

[chara_show name="sub" time="400" wait="true" zindex="10" ]
[mod_win st="o/win/out_win.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" zindex="80"]
[set_time]
[button  target="*aurelia_random"  graphic="s_menu/chao_hoi.png"  x="845"  y="240" ]
[button  target="*tranh_mat"  graphic="s_menu/thoi.png"  x="845"  y="320" ]
[s ]

*tranh_mat
[cm ]
[chara_mod name="sub" time="600" storage="00.png" ]
#
(Tôi quyết định tránh đi)[p]
[jump storage="mod/hiroba_alone.ks" target="*choice" ]

*aurelia_random
[cm ]
#
...[p]
;test
[jump target="*aurelia_date_2"]
;test
[random_100]
[if exp="f.act>=5"]

[elsif exp="f.aur_hx=='date' && f.r>=25"]
[jump target="*aurelia_date_2"]
;;hoanthanh
[elsif exp="f.aur_hx=='yet' && f.r<=40 && f.aur_cafe=='feeling'"]
[jump target="*aurelia_cafe_1"]

;;racroi
[elsif exp="f.aur_hx=='yet' && f.r<=70 && f.aur_cafe=='non'"]
[jump target="*aurelia_cafe_1"]
;;henho
[elsif exp="f.aur_hx=='yet' && f.r<=70 && f.aur_cafe=='yet'"]
[jump target="*aurelia_cafe_1"]
[endif]
[if exp="f.aurelia_talk>=0"][else][eval exp="f.aurelia_talk=0"][endif]
[eval exp="f.aurelia_talk=f.aurelia_talk+1"]
;;ket thuc dream 2
[if exp="f.aurelia_talk>=4 && f.aur_dream=='yet'"]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]

[elsif exp="f.aurelia_talk>=4 && f.aurelia_tl=='bad'"]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]

;;bat dau dream
[elsif exp="f.aurelia_talk>=4"]
[iscript]
f.talk=Math.floor(Math.random() * 20 + 1);
[endscript]

;;begin
[else]
[iscript]
f.talk=Math.floor(Math.random() * 8 + 1);
[endscript][endif]

#Aurelia
[aur_sm]
;[jump target="*aurelia_cafe_1"]
[if exp="f.talk==1" ][jump  target="*aurelia_talk1" ]
[elsif exp="f.talk==2" ][jump  target="*aurelia_talk2" ]
[elsif exp="f.talk==3" ][jump  target="*aurelia_talk3" ]
[elsif exp="f.talk==4" ][jump  target="*aurelia_talk4" ]
[elsif exp="f.talk==5" ][jump  target="*aurelia_talk5" ]
[elsif exp="f.talk==6" ][jump  target="*aurelia_talk6" ]
[elsif exp="f.talk==7" ][jump  target="*aurelia_talk7" ]
[elsif exp="f.talk==8" ][jump  target="*aurelia_talk8" ]
[elsif exp="f.talk==9" ][jump  target="*aurelia_talk9" ]
[elsif exp="f.talk==10" ][jump  target="*aurelia_talk10" ]
[elsif exp="f.talk==11" ][jump  target="*aurelia_talk9" ]
[elsif exp="f.talk==12" ][jump  target="*aurelia_talk10" ]
[elsif exp="f.talk==13" ][jump  target="*aurelia_talk9" ]
[elsif exp="f.talk==14" ][jump  target="*aurelia_talk10" ]
[elsif exp="f.talk==15" ][jump  target="*aurelia_talk15" ]
[elsif exp="f.talk==16" ][jump  target="*aurelia_talk16" ]
[elsif exp="f.talk==17" ][jump  target="*aurelia_talk17" ]
[elsif exp="f.talk==18" ][jump  target="*aurelia_talk18" ]
[elsif exp="f.talk==19" ][jump  target="*aurelia_talk10" ]
[elsif exp="f.talk==20" ][jump  target="*aurelia_talk9" ]
[else][jump  target="*aurelia_talk4" ]
[endif]

*aurelia_talk1
#Aurelia
[aur_ara_2]A~ra~! Chào bác sỹ[lr]
Hôm nay anh đi dạo có một mình thôi à?[p]
Tôi muốn ra chợ lấy một số vải vóc đã đặt trước.[lr]
[aur_sa_1]Tuy nhiên nếu anh muốn ghé qua cửa hàng thì vẫn có người coi đó.[p]
Chào anh nhé!~ [p][aur_s][wait time="100"]
[chara_mod name="sub" time="600" storage="00.png" ]
[_](Cô ấy có vẻ rất bận rộn so với cách mà cô ấy nói chuyện.[p]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk2
#Aurelia
[aur_ara_4]A~ra~! Chào quý khách[lr]
À không, là bác sỹ chứ nhỉ[p]
[aur_ne_1]Thật lạ là hôm nay anh lại không đi cùng với cô gái nhỏ như mọi khi[p]
[if exp="f.aurelia_talk>=10"]
Thời tiết hôm nay rất tốt, tôi cũng ra ngoài đi dạo để rời xa công việc[r] 
một chút đây[p]
Nhưng đi một mình thì cũng buồn thật đó[lr]
[aur_sa_1]Anh không phiền nếu đi cùng tôi một lúc chứ?[p]
[_][aur_s](Tôi cũng chẳng bận gì nên cũng không ngại đi cùng cô ấy một lúc.[p]
[else]
Tôi sẽ ra chợ một lúc nên xin phép đi trước nhé![p][endif][aur_s][wait time="200"]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk3
#Aurelia
[aur_ara_3]A-ra~! Chào bác sỹ[r]
Thật trùng hợp khi gặp anh ở đây[p]
Có lẽ vì thị trấn này quá nhỏ bé đây mà[p]
[aur_sa_1]À, tôi không có ý ghét nó đâu.[lr]
Tôi muốn thư giãn ở đây một chút, anh cứ thong thả nhé[p][aur_s][wait time="200"]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk4
#Aurelia
[aur_ne_1]O~ya~!Thật là trùng hợp[lr]
Ngài bác sỹ của thị trấn nhỏ này hôm nay rảnh rỗi đi dạo ở đây sao?[p]
Cũng có thể tôi đang nhầm lẫn gì chăng,[l] nhưng không giống như anh đang đi làm[r] 
gì đó.[p]
Công việc của anh dường như luôn bận rộn chứ không nhàm chán như việc của tôi.[r] 
Tuy nhiên tôi không hề ghét nó đâu fu~fu~[wait time="10"][aur_aha_1][wait time="500"][p]
[aur_sone_1]Nếu rảnh thì ghé qua cửa hàng của tôi nhé! Anh và cô bé của anh sẽ luôn được[r] 
chào đón[p][aur_s][wait time="200"]
[_](Thật là một bà chủ kì lạ và bí ẩn[p]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk5
#Aurelia
[aur_ara_4]O~ya~! Chào bác sỹ! Thật là trùng hợp[lr]
Ngài bác sỹ của thị trấn nhỏ này hôm nay cũng rảnh rỗi đi dạo ở đây sao?[p]
Chắc anh cũng thấy lạ khi một người bận rộn như tôi đôi lúc cũng rảnh rỗi đi dạo[r] 
phố nhỉ.[p]
Nếu cả ngày cứ sống trong bận rộn thì tôi sẽ trở nên kì quặc mất. fu~fu~[wait time="10"][aur_aha_1][p][aur_s][wait time="200"]
[_](Cô ấy có vẻ cũng ý thức được bản thân đó chứ?[p]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk6
#Aurelia
[aur_ara_2]A~ra~~! Chào bác sỹ![lr]
Anh hôm nay không làm việc sao?[p]
Chắc anh cũng thấy lạ khi một người bận rộn như tôi đôi lúc cũng rảnh rỗi ở đây[r] 
nhỉ.[p]
Tại sao lại không nghỉ ngơi thư giãn khi thời tiết tốt thế này chứ fu~fu~[wait time="10"][aur_aha_1][p]
Tuy mọi người luôn có cái nhìn kì quặc về tôi nhưng tôi vẫn không hề thấy có gì bất[r]
thường cả[p]
Phụ nữ là sinh vật luôn đầy những bí ẩn mà, anh có nghĩ thế không?[p][aur_s][wait time="200"]
[_](Cô ấy đúng là luôn gây tò mò cho tôi, nhưng tôi cũng không hề muốn tìm hiểu[r] 
nhiều về cô ấy[p]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk7
#Aurelia
[aur_ara_4]A~ra~~! Chào bác sỹ![lr]
Trông có vẻ như anh vừa đi mua đồ về.[p]
Có thể anh nghĩ rằng tôi cũng đang rảnh rỗi[lr]
Nhưng thực ra tôi đang tìm kiếm ý tưởng cho những sản phẩm mới của mình đó[r] 
fu~fu~[wait time="10"][aur_aha_1][p]
Thị trấn này có vẻ khá yên tĩnh, nhưng tôi không hề ghét điều đó.[lr]
Nó khiến tôi có nhiều cảm xúc hơn cho những tác phẩm của mình.[p][aur_s][wait time="200"]
[_](Những bộ trang phục ở cửa hàng cô ấy đũng là có chút kì quặc.[p]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk8
#Aurelia
[aur_ne_1]Vâng! Chào bác sỹ.[r]
Gặp được anh ở đây cũng thật trùng hợp. Nó khiến tâm trạng của tôi hôm nay tốt hơn[r] 
rồi.[p]
Có vẻ như anh vừa đi mua sắm về... [lr]
[aur_ara_2]Ồ... Thôi nào! Thôi nào! Thỉnh thoảng tôi lại cảm thấy bản thân mình có chút bất ổn[r]
trước cái nhìn của mọi người thôi.[p]
Nếu không phiền anh có thể đi dạo với tôi một lát chứ. Tôi cảm thấy hôm nay khá tệ.[p][aur_s][wait time="200"]
#
(.[wait time="500"].[wait time="500"].[wait time="500"][cm]
(Tôi đi dạo cùng cô ấy một lúc và cùng trò chuyện về mọi thứ trong thị trấn rồi dừng[r]
lại trước cửa hàng của cô ấy.[p]
[bg  time="500"  method="crossfade"  storage="bg/shop.jpg" ]
#Aurelia
[aur_sm][aur_sone_3]Đến đây được rồi.[lr] 
Tôi thấy khá hơn rất nhiều rồi, cảm ơn ngài bác sỹ. Có lẽ anh cũng có thể làm bác sỹ[r]
Tâm lý được đấy.[p]
Tôi nghĩ mình nên quay về làm việc. Nếu không quý cô nhỏ bé kia sẽ lại không hài lòng[r]
mất.[p][aur_s][wait time="200"]
[chara_mod name="sub" time="600" storage="00.png" ]
[_](Thật khó để đưa ra một đánh giá chính xác về cô ấy. Tuy nhiên tôi cảm thấy cô ấy [r]
luôn biết cách khiến bản thân nổi bật.[p]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk9
[eval exp="f.aurelia_talk=f.aurelia_talk+1"]
#Aurelia
[aur_ara_2]Vâng! Chào bác sỹ.[r]
Gặp được anh ở đây cũng thật trùng hợp. Nó khiến tâm trạng của tôi hôm nay tốt hơn[r] 
rồi.[p]
Có vẻ như anh vừa đi mua sắm về... [lr]
Ồ... Thôi nào! Thôi nào! Thỉnh thoảng tôi lại cảm thấy bản thân mình có chút bất ổn[r]
trước cái nhìn của mọi người.[p]
[aur_sa_1]Nếu không phiền anh có thể đi dạo với tôi một lát chứ. Tôi cảm thấy hôm nay khá tệ.[p][aur_s]
#
(.[wait time="500"].[wait time="500"].[wait time="500"][cm]
(Tôi đi dạo cùng cô ấy một lúc và cùng trò chuyện về mọi thứ trong thị trấn rồi dừng[r]
lại trước cửa hàng của cô ấy.[p]
[bg  time="500"  method="crossfade"  storage="bg/shop.jpg" ]
#Aurelia
[aur_sone_3][aur_sm]Đến đây được rồi.[lr] 
Tôi thấy khá hơn rất nhiều rồi, cảm ơn ngài bác sỹ. Có lẽ anh cũng có thể làm bác sỹ[r]
Tâm lý được đấy.[p]
Tôi nghĩ mình nên quay về làm việc. Nếu không quý cô nhỏ bé kia sẽ lại không hài lòng[r]
mất.[p][aur_s][wait time="200"]
[chara_mod name="sub" time="600" storage="00.png" ]
[_](Thật khó để đưa ra một đánh giá chính xác về cô ấy. Tuy nhiên tôi cảm thấy cô ấy... 
[button target="*aurelia_talk9_non"  graphic="s_menu/au_dg1.png"  x="845"  y="200" ]
[button target="*aurelia_talk9_non"  graphic="s_menu/au_dg3.png"  x="845"  y="280" ]
[button  target="*aurelia_talk9_next"  graphic="s_menu/au_dg2.png"  x="845"  y="360" ][s]

*aurelia_talk10
[eval exp="f.aurelia_talk=f.aurelia_talk+1"]
#Aurelia
[aur_sa_1]Chào bác sỹ.[r]
Gặp được anh ở đây cũng thật may quá. Nó khiến tâm trạng của tôi hôm nay tốt hơn[r] 
rồi.[p]
Có vẻ như anh vừa đi mua sắm về... [lr]
[aur_ara_1]Thôi nào! Thôi nào! Thỉnh thoảng tôi lại cảm thấy tâm trạng mình có chút nặng nề[p]
Nếu không phiền anh có thể đi dạo với tôi một lát chứ?[p][aur_s]
#
(.[wait time="500"].[wait time="500"].[wait time="500"][cm]
(Tôi đi dạo cùng cô ấy một lúc và cùng trò chuyện để giải tỏa áp lực cho cô ấy và[r]
dừng lại đến khi đứng trước trước cửa hàng của cô ấy.[p]
[bg  time="500"  method="crossfade"  storage="bg/shop.jpg" ]
#Aurelia
[aur_sone_2][aur_sm]À...đã đến nơi cần đến rồi nhỉ?[lr] 
Tôi thấy khá hơn rất nhiều rồi, cảm ơn ngài bác sỹ. Có lẽ anh cũng có thể làm bác sỹ[r]
tâm lý được đấy.[p]
Tôi nghĩ mình nên quay về làm việc. Nếu không quý cô nhỏ bé kia sẽ lại lo lắng mất.[lr][aur_s][wait time="200"]
Tôi chợt nhận ra là ở đây cũng có người quan tâm tới mình đó chứ.[p]
[chara_mod name="sub" time="600" storage="00.png" ]
[_](Thật khó để đưa ra một đánh giá chính xác về cô ấy. Tuy nhiên tôi cảm thấy cô ấy... 
[button target="*aurelia_talk9_non"  graphic="s_menu/au_dg1.png"  x="845"  y="200" ]
[button target="*aurelia_talk9_non"  graphic="s_menu/au_dg3.png"  x="845"  y="280" ]
[button  target="*aurelia_talk9_next"  graphic="s_menu/au_dg2.png"  x="845"  y="360" ][s]

*aurelia_talk11
[jump target="*aurelia_talk10"]

*aurelia_talk12
[jump target="*aurelia_talk9"]

*aurelia_talk13
[jump target="*aurelia_talk10"]

*aurelia_talk14
[jump target="*aurelia_talk9"]

*aurelia_talk15
#Aurelia
[aur_ne_!]Ồ! Chào bác sỹ![lr]
Trước đây, thật hiếm khi thấy anh trên phố.[p]
Có thể anh nghĩ rằng tôi cũng đang rảnh rỗi như thế[lr]
Nhưng thực ra tôi đang tìm kiếm ý tưởng cho những sản phẩm mới của mình đó[r] 
fu~fu~[wait time="10"][aur_aha_1][p]
Anh có cảm thấy một thị trấn yên bình khá là buồn tẻ không?[lr]
Tôi thì không hề chán ghét điều đó đâu.[p]
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_a_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_b_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_c_x.png" ]
[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_xa_00.png"][endif]
Dù... đôi lúc cũng thấy nó buồn tẻ thật.[lr]
Nhưng chẳng phải như vậy cũng rất thú vị sao...[p]
[_](Dù không hiểu lắm những lời cô ấy nói nhưng tôi vẫn cảm nhận được[r] 
hôm nay tâm trạng cô ấy có chút tiêu cực.[p][aur_s][wait time="200"]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk16
#Aurelia
[aur_sa_1]Chào bác sỹ![lr]
Thật tốt khi gặp lại anh trên phố.[p]
Trông như tôi đang khá rảnh rỗi nhưng tâm trang tôi lại chẳng hề rảnh chút nào[lr]
[aur_ne_1]Thỉnh thoảng anh có thường hay cảm thấy lo lắng về điều gì đó mà không biết đó là điều gì không?[p] 
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_a_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_b_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_c_x.png" ]
[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_xa_00.png"][endif]
#
(...[p]
#Aurelia
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_a.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_b.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_c.png" ]
[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_xa_00.png"][endif]
[aur_ara_2]A~ra! Xem ra tôi lại nói nhảm nữa rồi...[lr]
Anh hãy tạm quên những lời vừa rồi đi nhé![p][aur_s][wait time="200"]
[_](Tôi thật sự chưa bao giờ cảm nhận được cô ấy đang vui hay đang buồn.[r]
Bản thân cô ấy luôn rất bí ẩn[p]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk17
#Aurelia
[aur_sa_1]Chào bác sỹ![lr]
Thật tốt khi gặp lại anh trên phố.[p] 
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_a_x.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_b_x.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_c_x.png" ]
[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_xa_00.png"]
[endif]
Hmm~! Tự nhiên đi trên con phố này tôi lại cảm thấy chẳng còn gì để lo lắng nữa...[p]
Thật không giống như mọi khi. Là tốt hay xấy đây...[p]
#
(Tôi khá chắc là cô ấy thường hay than thở vì có quá nhiều phiền muộn trong cuộc sống.[p]
Nhưng lúc này đây thì lại....[lr]
(Dù sao hôm nay trông cô ấy đã khá tốt.[p]
#Aurelia
[if exp="f.lady==6"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_a.png" ]
[elsif exp="f.lady==7"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_b.png" ]
[elsif exp="f.lady==8"][chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_c.png" ]
[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/Aurelia_xa_00.png"][endif]
[aur_ara_2]A~ra! Xem tôi lại nói nhảm nữa rồi...[lr]
Anh hãy tạm quên những lời vừa rồi đi nhé![p][aur_s][wait time="200"]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk18
[jump target="*aurelia_talk10"]


*aurelia_talk9_next
[cm][eval exp="f.aur_hx='non'"][eval exp="f.aurelia_tl='yet'"]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_talk9_non
[eval exp="f.aurelia_tl='bad'"]
[cm]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_date_2
[eval exp="f.aurelia_talk=f.aurelia_talk+1"]
[eval exp="f.aurelia_date='not'"]
#Aurelia
[aur_sm][aur_ara_2]A~ra~~! Chào ngài bác sỹ![lr]
Dạo này hay thấy anh đi dạo trên phố vậy![p]
[aur_sa_1]Ừm.[wait time="500"].[wait time="500"].[wait time="500"][r]
Hôm nay lại có một số rắc rối khiến tôi không mấy dễ chịu.[p][aur_s][wait time="200"]
[_]
[button target="*aurelia_date_2_non"  graphic="s_menu/au_date_2_false.png"  x="845"  y="200" ]
[button target="*aurelia_date_2_yet"  graphic="s_menu/au_date_2_true.png"  x="845"  y="280" ][s]

*aurelia_date_2_non
[cm][eval exp="f.aurelia_tl='bad'"]
[_](Tôi không làm phiền cô ấy thêm nữa...[p]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_date_2_yet
[cm][eval exp="f.aur_hx='yet'"][eval exp="f.aur_cafe='non'"]
#Aurelia
[aur_sm][aur_ara_2]Vậy thì tốt quá.[p]
Tôi đang cần một chút nguyên liệu cho cửa hàng của mình. Nhưng dạo này việc vận[r] 
chuyển khó khăn. Tôi muốn đến hỏi bên vận chuyển và yêu cầu họ chuyển tới sớm.[p]
Tuy nhiên...sẽ gặp chút rắc rối nếu tôi đi một mình.[lr]
Ông thương nhân đó không phải người xấu nhưng nếu anh đi cùng tôi thì sẽ hiệu[r]
quả hơn.[p][aur_s]
(.[wait time="500"].[wait time="500"].[wait time="500"][cm]
[black][jump storage="mod/Aurelia_date.ks" target="begin"]

*aurelia_cafe_1
[cm][aur_sm]
#Aurelia
[random_5][if exp="f.r==1"]
[aur_ara_4]Ara~♪! Chào bác sỹ.[lr]
Anh hôm nay lại đi mua sắm nữa à.[p]
[aur_sa_1]Trông anh hôm nay có nhiều tâm sự quá đấy.[p][aur_s]
[elsif exp="f.r==2"]
[aur_ara_4]Ồ! Chào bác sỹ.[lr]
Anh hôm nay lại đi mua sắm à.[p]
[aur_ne_1]Trông anh hôm nay không được tốt cho lắm.[p][aur_s]
[elsif exp="f.r==3"]
[aur_ara_4]Vâng! Chào bác sỹ.[lr]
Anh lại đi mua sắm à.[p]
Hôm nay hình như anh không được tốt cho lắm.[p][aur_s]
[elsif exp="f.r==4"]
Chào bác sỹ.[lr]
Anh lại đi mua sắm à.[p]
[aur_sa_1]Anh cần gì ở tôi?.[wait time="600"][aur_s]
[else]
Ồ! Chào bác sỹ.[lr]
Anh lại đi mua sắm à.[p]
[aur_sa_1]Tôi có thể giúp được gì?.[wait time="600"][aur_s][endif]

[button target="*aurelia_walk"  graphic="s_menu/au_walk.png"  x="845"  y="200" ]
[button target="*aurelia_talk_town"  graphic="s_menu/au_talk_town.png"  x="845"  y="280" ][s]

*aurelia_talk_town
[cm]
[_](Tôi cùng cô ấy nói chuyện phiếm một lúc trước khi rời đi...[p]
[chara_mod name="sub" time="600" storage="00.png" ]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]

*aurelia_walk
[cm]
[_](.[wait time="300"].[wait time="300"].[wait time="500"][cm]
#Aurelia
[aur_sm]
[random_10][if exp="f.r<=7 && f.act<=4"]
[aur_ara_4]Ara~♪! Vậy thì hay quá. Tôi cũng đang rảnh mà.[p][aur_s]
[jump target="*aurelia_walk_next"]
[else]
[aur_zanene_1]Oya~! Thật ngại quá. Tôi lại phải về mất rồi.[lr][aur_s]
Để khi khác vậy.[p]
[chara_mod name="sub" time="600" storage="00.png" ]
[_](Cô ấy chào tôi rồi rời đi...[p]
[jump storage="mod/hiroba_alone.ks"  target="*choice" ]
[endif]

*aurelia_walk_next
[mod_win st="00.png" ][chara_mod name="other" time="0" storage="00.png" ]
[_]
[aur_sl][wait time="100"]
[if exp="f.lady==6"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_a_x_hug_00.png"]
[elsif exp="f.lady==7"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_b_x_hug_00.png"]
[elsif exp="f.lady==8"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_c_x_hug_00.png"]
[elsif exp="f.lady==12"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_xa_hug_00.png"][endif]
[chara_show name="h" time="100" wait="true" zindex="1" ]
[jump storage="mod/Aurelia_walk.ks" target="*begin"]

