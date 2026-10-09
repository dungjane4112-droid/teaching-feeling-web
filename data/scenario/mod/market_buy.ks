;;========script_by_ichibikun============

*choice
[cm]
# 
Nên mua thêm gì đây.
[mod_win st="o/win/out_win_s.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[button  target="*rice"  graphic="s_menu/buy_rice.png"  x="845"  y="170" ]
[button  target="*food"  graphic="s_menu/buy_food.png"  x="845"  y="240" ]
[if exp="f.akemi_dr=='yet'"]
[button  target="*medi"  graphic="s_menu/buy_medi.png"  x="845" y="310" ][endif]
[button  target="*non"  graphic="s_menu/remind.png"  x="845" y="390" ]
[s ]

*non
[cm][chara_stop][black]
[eval exp="f.act=f.act-1"]
[chara_mod name="sachi" time="1" storage="00.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[chara_show name="sachi" time="1" wait="false" left="865" top="53" ]
[set_stand]
[bg_market][show_stand][act_win_stand]
[jump storage="act_with/market.ks" target="*choice"]

*non_
[cm]
[freeimage layer=0][chara_stop][black]
[chara_mod name="sachi" time="1" storage="00.png" ]
[mod_win st="00.png" ]
[chara_show name="window" time="1" wait="false" left="855" top="41" ]
[mod_win st="o/win/00.png" ]
[chara_show name="sachi" time="1" wait="false" left="865" top="53" ]
[set_time]
[set_stand]
[bg_market][show_stand]
[jump target="*choice"]


;;==============================================shop Rice=========================

*rice
[cm]
[freeimage layer=0]
[mod_win st="00.png" ]
[chara_mod name="sachi" time="1" storage="00.png" ]
[chara_show name="sachi" time="1" wait="false" left="400" top="-20" ]
[chara_show name="window" time="1" wait="false" left="613" top="22" ]
[bg  time="100"  method="crossfade"  storage="bg/bg-market_shop.jpg" ]
[chara_mod name="sachi" time="1" storage="mod/yuko/smile_up.png" ]
#Yuko
Kính chào quý khách[p]
[chara_mod name="sachi" time="1" storage="mod/yuko/smile_down.png" ]
[anim name="sachi" time="300" left="150" ]
[mod_win st="o/win/shop-win.png" ]
Mời quý khách tham quan cửa hàng.[p]
[jump target="*rice_choice"]

*rice_choice
[cm]
[button  target="*rice_buy"  graphic="s_ch/rice_buy.png"  x="650"  y="180" ]
[button  target="*non_"  graphic="s_ch/remind.png"  x="650"  y="420" ][s]

*rice_buy
[cm]
#
Đơn giá: 25000 đồng. 
[button  target="*rice_1"  graphic="s_ch/buy_1.png"  x="650"  y="130" ]
[button  target="*rice_5"  graphic="s_ch/buy_5.png"  x="650"  y="220" ]
[button  target="*rice_10"  graphic="s_ch/buy_10.png"  x="650"  y="310"]
[button  target="*rice_30"  graphic="s_ch/buy_30.png"  x="650"  y="400" ]
[button  target="*rice_choice"  graphic="s_ch/remind.png"  x="650"  y="490" ][s]


*rice_1
[cm]
[if exp="f.rice>=30"]
[jump target="*rice_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince1*f.zince5_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*rice_choice" ]
[else]
[eval exp="f.rice=f.rice+1"]

Tài khoản còn [money][p_][jump target="*rice_choice" ][endif]

*rice_5
[cm]
[if exp="f.rice>=26"]
[jump target="*rice_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince2_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*rice_choice" ]
[else]
[eval exp="f.rice=f.rice+5"]

Tài khoản còn [money][p_][jump target="*rice_choice" ][endif]

*rice_10
[cm]
[if exp="f.rice>=21"]
[jump target="*rice_full"][endif]
[eval exp="f.zince_=f.zince2*f.zince1*f.zince2_+f.zince1*f.zince3*f.zince4_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.rice=f.rice+10"]

Tài khoản còn [money][p_][jump target="*rice_choice" ][endif]

*rice_30
[cm]
[if exp="f.rice>=1"]
[jump target="*rice_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince7_+f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*rice_choice" ]
[else]
[eval exp="f.rice=f.rice+30"]

Tài khoản còn [money][p_][jump target="*rice_choice" ][endif]

*rice_full
[cm]
Chỉ có thể mua tối đa với số lượng 30. Hiện đã có [emb exp="f.rice"], [p]
[jump target="*rice_buy"]

*rice_not_money
[cm]
Hiện tại chỉ còn [money"] Đồng. Không đủ tiền.[p]
[jump target="*rice_buy"]

;;-==========================================shop food=========================================
*food
[cm]
[freeimage layer=0]
[mod_win st="00.png" ]
[chara_mod name="sachi" time="1" storage="00.png" ]
[chara_show name="sachi" time="1" wait="false" left="400" top="-20" ]
[chara_show name="window" time="1" wait="false" left="613" top="22" ]
[bg  time="100"  method="crossfade"  storage="bg/bg-market_shop.jpg" ]
[chara_mod name="sachi" time="1" storage="mod/meiko/meiko_smile.png" ]
#Meiko
Kính chào quý khách[p]
[anim name="sachi" time="300" left="150" ]
[mod_win st="o/win/shop-win.png" ]
Mời quý khách tham quan cửa hàng.[p]
[jump target="*food_choice"]

*food_choice
[cm]
[button  target="*food_buy"  graphic="s_ch/food_buy.png"  x="650"  y="130" ]
[button  target="*egg_buy"  graphic="s_ch/egg_buy.png"  x="650"  y="220" ]
[button  target="*veget_buy"  graphic="s_ch/veget_buy.png"  x="650"  y="310" ]
[button  target="*crem_buy"  graphic="s_ch/crem_buy.png"  x="650"  y="400" ]
[button  target="*non_"  graphic="s_ch/remind.png"  x="650"  y="490" ][s]
;-----------------------------------------------------------------------------
*food_buy
[cm]
[cm]
#
Đơn giá: 60000 đồng. 
[button  target="*food_1"  graphic="s_ch/buy_1.png"  x="650"  y="130" ]
[button  target="*food_5"  graphic="s_ch/buy_5.png"  x="650"  y="220" ]
[button  target="*food_10"  graphic="s_ch/buy_10.png"  x="650"  y="310"]
[button  target="*food_30"  graphic="s_ch/buy_30.png"  x="650"  y="400" ]
[button  target="*food_choice"  graphic="s_ch/remind.png"  x="650"  y="490" ][s]

*food_1
[cm]
[if exp="f.foods>=30"]
[jump target="*food_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.foods=f.foods+1"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

*food_5
[cm]
[if exp="f.foods>=26"]
[jump target="*food_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince2_*f.zince1*f.zince3*f.zince9_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.foods=f.foods+5"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]


*food_10
[cm]
[if exp="f.foods>=21"]
[jump target="*food_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_+f.zince8_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.foods=f.foods+10"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]


*food_30
[cm]
[if exp="f.foods>=1"]
[jump target="*food_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3+f.zince1*f.zince2*f.zince7_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][after_shop]
[else]
[eval exp="f.foods=f.foods+30"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]





;------------------------------------------------------------------------------

*egg_buy
[cm]
#
Đơn giá: 10000 đồng. 
[button  target="*egg_1"  graphic="s_ch/buy_1.png"  x="650"  y="130" ]
[button  target="*egg_5"  graphic="s_ch/buy_5.png"  x="650"  y="220" ]
[button  target="*egg_10"  graphic="s_ch/buy_10.png"  x="650"  y="310"]
[button  target="*egg_30"  graphic="s_ch/buy_30.png"  x="650"  y="400" ]
[button  target="*food_choice"  graphic="s_ch/remind.png"  x="650"  y="490" ][s]

*egg_1
[cm]
[if exp="f.egg>=30"]
[jump target="*egg_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.egg=f.egg+1"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]


*egg_5
[cm]
[if exp="f.egg>=26"]
[jump target="*egg_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince5_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.egg=f.egg+5"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

*egg_10
[cm]
[if exp="f.egg>=21"]
[jump target="*egg_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.egg=f.egg+10"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

*egg_30
[cm]
[if exp="f.egg>=1"]
[jump target="*egg_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.egg=f.egg+30"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

;----------------------------------------------------------------------------------

*veget_buy
[cm]
#
Đơn giá: 15000 đồng. 
[button  target="*veget_1"  graphic="s_ch/buy_1.png"  x="650"  y="130" ]
[button  target="*veget_5"  graphic="s_ch/buy_5.png"  x="650"  y="220" ]
[button  target="*veget_10"  graphic="s_ch/buy_10.png"  x="650"  y="310"]
[button  target="*food_choice"  graphic="s_ch/remind.png"  x="650"  y="400" ][s]

*veget_1
[cm]
[if exp="f.veget>=10"]
[jump target="*veget_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince3+f.zince5_*f.zince1"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.veget=f.veget+1"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

*veget_5
[cm]
[if exp="f.veget>=6"]
[jump target="*veget_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince7_+f.zince2_*f.zince1"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.veget=f.veget+5"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

*veget_10
[cm]
[if exp="f.veget>=1"]
[jump target="*veget_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince4_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.veget=f.veget+10"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

;------------------------------------------------------------------------------------

*crem_buy
[cm]
#
Đơn giá: 30000 đồng. 
[button  target="*crem_1"  graphic="s_ch/buy_1.png"  x="650"  y="130" ]
[button  target="*crem_5"  graphic="s_ch/buy_5.png"  x="650"  y="220" ]
[button  target="*crem_10"  graphic="s_ch/buy_10.png"  x="650"  y="310"]
[button  target="*crem_30"  graphic="s_ch/buy_30.png"  x="650"  y="400" ]
[button  target="*food_choice"  graphic="s_ch/remind.png"  x="650"  y="490" ][s]

*crem_1
[cm]
[if exp="f.crem>=30"]
[jump target="*crem_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.crem=f.crem+1"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

*crem_5
[cm]
[if exp="f.crem>=26"]
[jump target="*crem_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince5_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.crem=f.crem+5"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

*crem_10
[cm]
[if exp="f.crem>=21"]
[jump target="*crem_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince3_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.crem=f.crem+10"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]

*crem_30
[cm]
[if exp="f.crem>=1"]
[jump target="*crem_full"][endif]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince9_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*food_choice"]
[else]
[eval exp="f.crem=f.crem+30"]

Tài khoản còn [money][p_][jump target="*food_choice" ][endif]
;----------------------------------------------

*food_full
[cm]
Chỉ có thể mua tối đa với số lượng 30. Hiện đã có [emb exp="f.foods][p]
[jump target="*food_buy"]

*egg_full
[cm]
Chỉ có thể mua tối đa với số lượng 30. Hiện đã có [emb exp="f.egg][p]
[jump target="*egg_buy"]

*veget_full
[cm]
Chỉ có thể mua tối đa với số lượng 10. Hiện đã có [emb exp="f.veget], [p]
[jump target="*veget_buy"]

*crem_full
[cm]
Chỉ có thể mua tối đa với số lượng 30. Hiện đã có [emb exp="f.crem"], [p]
[jump target="*crem_buy"]

*food_not_money
[cm]
Chỉ còn [money] Đồng, không đủ tiền.[p]
[jump target="*food_choice"]

;;==================================================shop medi=============================
 
*medi
[cm]
[freeimage layer=0]
[mod_win st="00.png" ]
[chara_mod name="sachi" time="1" storage="00.png" ]
[chara_show name="sachi" time="1" wait="false" left="400" top="-70" ]
[chara_show name="window" time="1" wait="false" left="613" top="22" ]
[bg  time="100"  method="crossfade"  storage="bg/bg-market_shop.jpg" ]
[if exp="f.mua>=3"]
[chara_mod name="sachi" time="1" storage="mod/akemi/a3_def.png" ][else]
[chara_mod name="sachi" time="1" storage="mod/akemi/a1_def.png" ][endif]
#Akemi
Kính chào quý khách[p]
[anim name="sachi" time="300" left="150" ]
[mod_win st="o/win/shop-win.png" ]
Mời quý khách tham quan cửa hàng.[p]
[jump target="*medi_choice"]

*medi_choice
[cm]
[button  target="*flower_buy"  graphic="s_ch/red_flower_buy.png"  x="650"  y="130" ]
[button  target="*flower_b_buy"  graphic="s_ch/blue_flower_buy.png"  x="650"  y="220" ]
[button  target="*c_medi_buy"  graphic="s_ch/c_medi_buy.png"  x="650"  y="310" ]
[button  target="*h_medi_buy"  graphic="s_ch/h_medi_buy.png"  x="650"  y="400" ]
[button  target="*non_"  graphic="s_ch/remind.png"  x="650"  y="490" ][s]

;;-------------------------------------------------------------------------------
*flower_buy
[cm]
#
Đơn giá: 25000 đồng. 
[button  target="*flower_1"  graphic="s_ch/buy_1.png"  x="650"  y="130" ]
[button  target="*flower_5"  graphic="s_ch/buy_5.png"  x="650"  y="220" ]
[button  target="*flower_10"  graphic="s_ch/buy_10.png"  x="650"  y="310"]
[button  target="*medi_choice"  graphic="s_ch/remind.png"  x="650"  y="400" ][s]

*flower_1
[cm]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_+f.zince5_*f.zince1"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.flower=f.flower+1"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

*flower_5
[cm]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince2_*f.zince1*f.zince3+f.zince1*f.zince5_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.flower=f.flower+5"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

*flower_10
[cm]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince2_+f.zince4_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]

[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.flower=f.flower+10"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

;;-------------------------------------------------------------------

*flower_b_buy
[cm]
#
Đơn giá: 20000 đồng. 
[button  target="*flower_b1"  graphic="s_ch/buy_1.png"  x="650"  y="130" ]
[button  target="*flower_b5"  graphic="s_ch/buy_5.png"  x="650"  y="220" ]
[button  target="*flower_b10"  graphic="s_ch/buy_10.png"  x="650"  y="310"]
[button  target="*medi_choice"  graphic="s_ch/remind.png"  x="650"  y="400" ][s]

*flower_b1
[cm]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince2_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.flower_b=f.flower_b+1"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

*flower_b5
[cm]
[eval exp="f.zince_=f.zince1*f.zince2"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.flower_b=f.flower_b+5"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

*flower_b10
[cm]
[eval exp="f.zince_=f.zince1*f.zince2+f.zince9_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.flower_b=f.flower_b+10"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

;;-----------------------------------------------------------------
*c_medi_buy
[cm]
#
Đơn giá: 60000 đồng. 
[button  target="*medi_c1"  graphic="s_ch/buy_1.png"  x="650"  y="130" ]
[button  target="*medi_c5"  graphic="s_ch/buy_5.png"  x="650"  y="220" ]
[button  target="*medi_c10"  graphic="s_ch/buy_10.png"  x="650"  y="310"]
[button  target="*medi_choice"  graphic="s_ch/remind.png"  x="650"  y="400" ][s]

*medi_c1
[cm]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.drugk_c=f.drugk_c+1"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

*medi_c5
[cm]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince2_+f.zince8_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.drugk_c=f.drugk_c+5"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

*medi_c10
[cm]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_+f.zince5_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.drugk_c=f.drugk_c+10"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

;;----------------------------------------------------------
*h_medi_buy
[cm]
#
Đơn giá: 60000 đồng. 
[button  target="*medi_h1"  graphic="s_ch/buy_1.png"  x="650"  y="130" ]
[button  target="*medi_h5"  graphic="s_ch/buy_5.png"  x="650"  y="220" ]
[button  target="*medi_h10"  graphic="s_ch/buy_10.png"  x="650"  y="310"]
[button  target="*medi_choice"  graphic="s_ch/remind.png"  x="650"  y="400" ][s]

*medi_h1
[cm]
[eval exp="f.zince_=f.zince1*f.zince3*f.zince6_"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.drugk_h=f.drugk_h+1"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

*medi_h5
[cm]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince2_+f.zince8_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.drugk_h=f.drugk_h+5"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]

*medi_h10
[cm]
[eval exp="f.zince_=f.zince1*f.zince2*f.zince5_+f.zince5_*f.zince1*f.zince3"]
Tính tiền...[p_]
Số tiền phảỉ trả là: [money_] đồng [lr_]
[zin_t]
[if exp="f.ch_check=='false'"][eval exp="f.ch_check='true'"]
#
Chỉ còn [money] đồng nên không đủ tiền.[p][jump target="*medi_choice"]
[else]
[eval exp="f.drugk_h=f.drugk_h+10"]

Tài khoản còn [money][p_][jump target="*medi_choice"][endif]
;;-------------------------------------

*medi_not_money
[cm]
#
Chỉ còn [emb exp="f.money"] đồng, không đủ tiền[p]
[jump target="*medi_choice"]