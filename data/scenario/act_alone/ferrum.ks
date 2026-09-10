;;
*ferrum

[if exp="f.wine_left>=0"][else][eval exp="f.wine_left=0"][endif]
[cm][bg_market]
（Khi nhìn quanh tôi thấy hình như có một khu mua sắm mới)。[l_]
[button target="*call" graphic="ch/call.png" x="0" y="180" ]
[button target="*not_call" graphic="ch/stop.png" x="0" y="300" ][s]

*not_call
[cm]
（Tôi đã mua những thứ mình cần)。[p_]
[jump target="*choice_"]
;[jump storage="act_alone/out_alone.ks" target="*not_call" ]

*call
[cm][if exp="f.ferrum>=1" ][else][jump target="*first_time" ][endif]

[bgm_RG][eval exp="f.miyage='nothing'" ][eval exp="f.ferrum_t=0" ]
[mod_win st="00.png" ]
[chara_show name="window" time="1" wait="false" left="755" top="41" ]
[chara_mod name="sub" time="1" storage="o/sub/smile.png" ]
[chara_show name="sub" time="100" wait="true" left="-0.1" top="0" ]
#Ferrum
Oh chào bác sĩ, hôm nay ngài lại có nhã hứng đi mua sắm。[p_]
Có lẽ ngài sẽ quan tâm đến đồ gốm sứ của tôi？[p_]
[anim name="sub" time="300" left="-290" ]
[_][jump target="*choice"]

*choice_
[mod_win st="o/win/out_win_s.png" ]
[chara_show name="window" time="1" wait="false" left="755" top="41" ]
[button  storage="mod/hiroba_alone.ks" target="*hiroba"  graphic="s_menu/back_hiroba.png" x="745" y="190" ]
[button storage="act_alone/out_alone.ks" target="*not_call" graphic="s_menu/go_home.png" x="745" y="270" ][s]

*choice
[mod_win st="o/win/out_win_s.png" ]
[button target="*buy" graphic="s_menu/buy_alc.png" x="745" y="190" ]
[if exp="f.ferrum_t==0" ]
[button target="*talk_lead" graphic="s_menu/talk.png" x="745" y="270" ][endif]
[button  storage="mod/hiroba_alone.ks" target="*hiroba"  graphic="s_menu/back_hiroba.png" x="745" y="350" ]
[button target="*go_home" graphic="s_menu/go_home.png" x="745" y="430" ][s]


*buy
[cm]
[if exp="f.zince<=249999"]
[_]Chỉ còn [money] đồng, không đủ tiền mua rượu. [p] 
[jump target="*choice"][endif]
[if exp="f.wine_left>=30" ]
（Cái này... tôi mua lần trước vẫn còn nhiều)。[p_]
[jump target="*choice" ][endif]

[eval exp="f.wine_left=f.wine_left+10" ]
#Ferrum
Vâng, của ngài đây。[p_]
#
（Tôi mua một chai rượu mận)。[p_]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince2_+f.zince2*f.zince1*f.zince5_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
Tài khoản còn [money][p_]
#Vật phẩm
[if exp="f.wine_c>=0" ][r][else][endif]
[if exp="f.wine_left>=31" ]-Nhiều hơn ba chai rượu chưa mở
[elsif exp="f.wine_left>=30" ]-Ba chai rượu chưa mở
[elsif exp="f.wine_left>=21" ]-Hai chai rượu chưa mở và một chai đang dùng dở
[elsif exp="f.wine_left>=20" ]-Hai chai rượu chưa mở
[elsif exp="f.wine_left>=11" ]-Một chai rượu đã mở và một chai còn nguyên
[elsif exp="f.wine_left>=10" ]-Một chai rượu chưa mở
[elsif exp="f.wine_left>=7" ]-Một chai rượu đang uống dở
[elsif exp="f.wine_left>=4" ]-Một chai rượu đã uống hết một nửa
[elsif exp="f.wine_left>=3" ]-Một chai rượu chỉ còn lại một ít
[elsif exp="f.wine_left>=1" ]-Chỉ còn đủ cho một ly[endif]
[jump target="*choice"]

*go_home
[cm]
#Ferrum
[if exp="f.roof=='yet'"][else]
Vâng! Tôi còn thứ này quên chưa đưa cho ngài trước đây.[p] 
Nó được dùng những lúc đám nô lệ của tôi không nghe lời.[lr]
Còn ngài thích dùng vào việc gì cũng được.[p]
[eval exp="f.roof='yet'"][endif]
Hẹn gặp lại quý khách。[p_]
[black][stop_bgm][jump storage="act_alone/out_alone.ks" target="*home" ]

;;トーク
*talk_lead
[cm][eval exp="f.ferrum_t=1" ]
[if exp="f.ferrum==2" ][jump target="*sec" ][endif]
[random_6]
#Ferrum
[if exp="f.r==1" ][jump target="*talk1" ][elsif exp="f.r==2" ][jump target="*talk2" ]
[elsif exp="f.r==3" ][jump target="*talk3" ][elsif exp="f.r==4" ][jump target="*talk4" ]
[elsif exp="f.r==5" ][jump target="*talk5" ][elsif exp="f.r==6" ][jump target="*talk6" ]
[elsif exp="f.r==7" ][jump target="*talk7" ][elsif exp="f.r==8" ][jump target="*talk8" ]
[elsif exp="f.r==9" ][jump target="*talk9" ][elsif exp="f.r==10" ][jump target="*talk10" ][endif]

*talk1
Đây là một thị trấn tốt。[lr_]
Về cơ bản, tuy xa lạ nó là một thị trấn bình yên。[p_]
…Tuy vậy cũng có một số điều đáng ngạc nhiên.[lr_]
Ví dụ như sự tồn tại của một vị bác sĩ dễ dãi như ngài。[p_]
[jump target="*choice" ]
*talk2
Như đã nói trước đây, doanh nghiệp của tôi kinh doanh rất nhiều loại hàng hóa。[lr_]
Ở đây, chúng tôi chủ yếu kinh doanh các loại mặt hàng đặc biệt để ít phải cạnh tranh[r]
Nhưng có rất ít nơi có thể tiêu thụ。[p_]
Giống như thị trấn này, nơi có thể đem đến lợi nhuận cho tôi。[lr_]
Thị trường ở đây rất phong phú, có khá nhiều người quan tâm đến các mặt hàng của chúng tôi。[p_]
Các cửa hàng quanh đây nếu có bán thứ gì kì lạ thì có thể họ chính là đối tác của tôi。[lr_]
Nếu ngài cần bất cứ thứ gì xin vui lòng liên hệ với chúng tôi trước。[p_]
[jump target="*choice" ]
*talk3
Đây là một thị trấn yên bình。[lr_]
Tuy nhiên yên bình cũng làm cho nó trở nên khác thường.[p_]
Thường thì nó sẽ không thích hợp cho việc kinh doanh[r]
Nhưng bằng cách nào đó, nó lại có sự khác biệt。[p_]
[jump target="*choice" ]
*talk4
Loanh quanh ở thị trấn này, tôi tìm được vài mối làm ăn rât thuận lợi[lr_]
Không kể đến các mặt hằng thông thường thì ở đây tôi có thể kinh doanh vài món khá đặc biệt[p_]
[jump target="*choice" ]
*talk5
Doanh thu, tiền bạc, tiêu thụ hàng hóa[r]
Nó có thể ồn ào nhưng thị trường là phải vậy[p_]
Đống này là hàng hóa tôi đang rao bán ở thành phố này.[p_]
[jump target="*choice" ]
*talk6
Tôi bán hầu hết là hàng nhập khẩu。[p_]
Thực phẩm, rượu và các quần áo...。[lr_]
Tôi không nói quá nhưng đa số mặt hàng của tôi đều rất khó tìm được ở những nơi khác。[p_]
Luôn có những người thu mua các mặt hàng của tôi chứng tỏ việc cung cấp vẫn chưa đáp ứng đủ。[lr_]
...。[p_]
[jump target="*choice" ]

;;初回イベント
*first_time
[eval exp="f.ferrum=1" ][eval exp="f.wine_c=0" ][eval exp="f.wine_left=0" ]
[bg_market]
（Ông ta cách tôi không xa, tiện bước tôi lại gần.)[p_]

[bgm_RG][eval exp="f.miyage='nothing'" ]
[chara_mod name="sub" time="1" storage="o/sub/def.png" ]
[chara_show name="sub" height="900" time="100" wait="true" ]
#Người đàn ông
Uh？[p_]
[chara_mod name="sub" time="1" storage="o/sub/smile.png" ]
…Ồ, chào bác sỹ。[lr_]
Một lần nữa lại được gặp ngài。[lr_]
Chỉ cần gọi tôi là tôi sẽ tới, anh không cần ra tận đây đâu。[p_]
[chara_mod name="sub" time="1" storage="o/sub/def.png" ]
…Ồ, ra vậy, tôi chưa giới thiệu bản thân nhỉ。[lr_]
Tôi là Ferrum。[p_]
#Ferrum
Chúng ta coi như là đã quen biết[r]
Xin lỗi vì trước đây đã làm phiền ngài。[p_]
[chara_mod name="sub" time="1" storage="o/sub/smile.png" ]
Tôi không thường xuyên đến thị trấn này, nếu không do việc kinh doanh gần đây khá thuận lợi[lr_]
Vì thế từ giờ, tôi sẽ thường xuyên ở đây。[p_]
Chúng ta sẽ được gặp nhau nếu ngài quay lại khu này。[p_]
Mọi hàng hóa tôi bán đều hợp pháp。[lr_]
Nên ngài không cần lo lắng gì。[p_]
Ngài đang đi mua sắm nhỉ? Mời ngài xem qua[p_]
Xem nào…。[lr_]
Bác sỹ, ngài uống rượu chứ？[p_]
Đây là một loại rượu được làm từ loại quả thuộc họ với quả mơ. Nó gọi là "rượu mận。[p_]
Nó là một loại rượu hoa quả, không thích hợp với người thích rượu mạnh、[r]
Nhưng ngài cũng có thể coi nó là một loại nước hoa quả nếu ngài không thích rượu。[p_]
Ngài thấy thế nào？[p_]
[button target="*buy_f" graphic="ch/buy.png" x="0" y="180" ]
[button target="*not_buy" graphic="ch/not-buy.png" x="0" y="300" ][s]
*buy_f
[cm][if exp="f.zince<=249999"]
[_]Chỉ còn [money] đồng, không đủ tiền mua rượu. [p] 
[jump target="*not_buy"][endif][eval exp="f.wine_left=f.wine_left+15" ]
Vậy của ngài đây。[p_]
#
（Tôi đã mua một chai rượu mận。[p_]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince2_+f.zince1*f.zince2*f.zince5_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
Tài khoản còn [money][p_]
#Ferrum
[if exp="f.roof=='yet'"][else]
Vâng! Tôi còn thứ này quên chưa đưa cho ngài trước đây.[p] 
Nó được dùng những lúc đám nô lệ của tôi không nghe lời.[lr]
Còn ngài thích dùng vào việc gì cũng được.[p]
[eval exp="f.roof='yet'"][endif]
Tôi sẽ ở đây, vào thời điểm này mọi ngày。[lr_]
Nếu còn hàng, tôi rất sẵn lòng bán cho ngài。[p_]
[black][stop_bgm][jump storage="act_alone/out_alone.ks" target="*home" ]
*not_buy
[cm]
Tôi hiểu, ngài có thể quay lại bất cứ khi nào[p_]
[jump target="*go_home" ]

;;伝言イベント
*sec
#Ferrum
[chara_mod name="sub" time="1" storage="o/sub/def.png" ]
Một thông điệp của tôi tới cô gái nô lệ đó.[p_]
Tôi không xứng đáng để nhận được lời cảm ơn từ cô ta。[p_]
Chẳng qua tôi muốn đẩy rắc rối sang cho người khác thôi[lr_]
Ngài hiểu ý tôi nhỉ[p_]
[chara_mod name="sub" time="1" storage="o/sub/smile.png" ]
[eval exp="f.ferrum=3" ][jump target="*choice" ]
