;;========script_by_ichibikun============

*sachi_date_1
[cm]
[eval exp="f.sachi_date=1"]
[bgm_RG]
[bg  time="1000"  method="crossfade"  storage="bg/market.jpg" ]
[sachi_show]
[sachi_o_def]
#
(Hôm nay chợ cũng không đông lắm[lr]
Cũng không khó để tìm được [font color="lightsteelblue"]Ferrum[resetfont][p]
[anim name="sachi" time="200" left="700" ]
[chara_mod  name="sub"  time="1"  storage="o/sub/smile.png" ]
[chara_show  name="sub"  time="300"  wait="true" left="390" top="0" ]
[anim name="sub" time="200" left="-180" ]
#Ferrum
Oh! Chào bác sỹ.[lr]
[sachi_o_shock]
Hôm nay ngài lại có nhã hứng mua sắm vào giờ này sao?[p]
Và... ai đây nào ?[lr]
Một cô bé mới sao? vậy ra đó thực sự là sở thích của ngài nhỉ?[p]
[sachi_o_cry]
#
...[p]
#Ferrum
Ah! Thật thất lễ quá, ra là khách hàng của tôi à[lr]
Xin lỗi cô bé nhé. Tôi thật vô ý quá[p]
Tôi đã chuẩn bị đủ số hượng cửa hàng yêu cầu đây rồi.[p]
#Sachi
[sachi_o_def]
Cảm ơn ông ạ![p]
#
...[p]
#Ferrum
Quý khách đi thong thả nhé [p]
[black]
[chara_stop]
#
...[lr]
[stopbgm]
(Tôi cùng Sachi rời khỏi khu chợ và cùng về thị trấn)[p]
[bg  time="2000"  method="crossfade"  storage="bg/shop.jpg" ]
[bgm_BR]
[sachi_show]
[sachi_o_defp]
#Sachi
Cảm ơn anh vì đã dẫn em đi...và[lr]
[sachi_o_smile_p]
Còn mang đồ về tận đây hộ em nữa...[p]
[sachi_o_def]
Không có anh em không biết làm thế nào...[lr]
[sachi_o_defp]
Thật sự cảm ơn anh rất nhiều ạ.[p]
#
...[p]
Tôi chào cô ấy rồi rời khỏi cửa hàng[p]
[eval exp="f.shop_sachi=0"]
[stopbgm]
[cm]
[stop_bgm][black][bg_town][act_win_stand]

[jump storage="mod/hiroba_alone.ks" target="*choice"]



























