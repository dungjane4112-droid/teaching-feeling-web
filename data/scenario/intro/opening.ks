
*opening
;-----------------------------
[call storage="intro/awekup.ks" target="*sa"]
[call storage="intro/awekup.ks" target="*mcr"]


[eval exp="f.fix_mouth=1"]
[call storage="intro/awekup.ks" target="*begin"]
[eval exp="f.config_mod='max'"]
[eval exp="f.sound_off=0"]
[eval exp="f.ngay=3"][eval exp="f.thang=2"][eval exp="f.nam=2025"][eval exp="f.thu=7"]
[cm][chara_config ptext="chara_name_area" pos_mode="false" time="600" anim="true" effect="" ]
[call storage="pre/exp.ks" ]
[show_role][bg_door][show_message_w][bgm_IF]
[chara_anim]
[chara_config pos_mode="true" anim="true" ]
[_]（Hôm nay vào lúc mặt trời lên。[lr_]
tôi nghe thấy tiếng gõ cửa。[p_]
（tôi thì không có cuộc hẹn nào cả[r]
Có vẻ là một cuộc hẹn với người quen。[p_]
Có thể là ai đấy nhỉ?[p_]
[chara_mod name="sub" time="1" storage="o/sub/def.png" ]
[chara_show name="sub" time="100" wait="true" ]
#Người đàn ông
[chara_mod name="sub" time="100" storage="o/sub/smile.png" ]

Kính chào, bác sĩ。[p_]
[_]（Tôi mở cửa ra, và có một Người đàn ông khá nghi ở độ tưởi trung niên đang đứng trước nhà tôi。[p_]
#Người đàn ông
Ngài còn nhớ tôi chứ?[lr_]
Ngài đã từng cứu tôi một lần。[p_]
[_]（Tôi nhìn Người đàn ông ấy và cố gắng nhớ ra。[lr_]
Và rồi ông ấy đề cập một vài chi tiết, Tôi cảm thấy một chút nhận ra khuôn mặt đó[p_]

#Người đàn ông
Đúng rồi đấy. Lúc trước tôi và ngài bị hôn mê ở ngoại thành đấy nhớ chứ。[p_]
Mặc dù ngài đã biết không thể chữa lành vết thương cho tôi, chúng rất khó khăn、[lr_]
Nhưng ngài vẫn thực hiện trách nhiệm của bác sĩ và chữa lành nó。[p_]

Tôi xin lỗi vì lúc đó tôi đã bỏ đi trong khi chưa cảm ơn ngài tử tế。[lr_]
Hôm nay tôi tình cờ đi ngang qua đây đặc biệt để cảm ơn ngài。[p_]
[_]（Tôi nhìn Người đàn ông ấy và cố gắng nhớ ra。[r]
một chút nhận ra khuôn mặt đó…[p_]
#Người đàn ông
Không, tôi không có ý định ở lại đây lâu. Không cần khách khí。[lr_]
Nói ra.[lr_]
Lúc đó tôi không có đem tiền để trả phí điều trị。[p_]
[_]（Người đàn lấy phong bì đưa tôi。[lr_]
đó là khoản tiền lớn cho điều trị。[p_]
#Người đàn ông
Xin lỗi đã để nợ quá lâu。[lr_]
Xin hay lấy nó。[p_]
Tôi còn có một thứ nữa, nhưng... [r]
Tôi có thể vào bên trong nhà để bàn chuyện này?[p_]
…Đây là một cuộc nói chuyện tốt。[lr_]
…Xin chào. Mời vào。[p_]
[chara_mod name="body" time="1" storage="s/body/stand.png" ]
[chara_show name="body" time="100" wait="true" ]
[_]（Người đàn ông quát lớn lên về phía cánh cửa, có một cô bé bước vào[p_]

#Người đàn ông
Gần đây, một chủ nhà qua đời vì một tai nạn。[p_]
Ông ấy không có họ hàng gần, nên người dân yêu cầu cơ quan chính phủ, người thân, và bạn bè của ông ta đến lấy đi tài sản cảu ông ta。[p_]
Tôi cũng hưởng được ít trong số đó、[lr_]
Nhưng mà tôi gặp một chút rắc rối bởi。[p_]
Cô gái trẻ là một trong số đó。[p_]
Bởi vì tôi là một doanh nhân nghèo [lr_]
Châm ngôn của tôi là “Cái gì cũng bán”. Nhưng lun có “thứ” không thể bán được.…。[p_]
Nếu đó là một nô lệ lao động mạnh mẽ thì bán rất tốt. Tuy nhiên, nếu đứa trẻ này hoàn toàn không phải。[lr_]
Vì vậy, Nếu cô bé theo tôi suốt một thời gian dài rất phiền。[p_]
Bây giờ trong tay tôi không có tiền、[r]
Cho dù tôi có lòng thương hay lương tâm…。[p_]
Tôi vẫn muốn tránh đi những nỗi phiền,nhưng tôi không biết nên trao cô bé nơi nào cả。[p_]
Tôi đang bận công tác ở thị trấn này, và rồi tới lập tức nhớ đến công ơn của ngài、[lr_]
Từ những điều tôi nói có vẻ như ngài đang sống một mình。[p_]
và có thể nó không thuộc công việc của tôi、[lr_]
Nhưng tôi nghĩ ngài đang hơi cô đơn…。[lr_]
Nó có thể khá là bất đắc dĩ, nhưng ngài có thể sống chung với cô bé này chứ?[p_]
[_]（Tôi nên làm gì？[p_]

[button target="*no" graphic="ch/first1.png" x="0" y="350" ]
[button target="*ok" graphic="ch/first2.png" x="0" y="200" ][s]

*no
[cm]
#Người đàn ông
[chara_mod name="sub" time="1" storage="o/sub/def.png" ]
Như vậy đi。[lr_]
Thôi vậy, nó khá bất đắc dĩ cho nên không thể trách ngài được。[p_]
Cảm ơn vì đã dành thời gian với tôi。[lr_]
Xin cáo từ。[p_]
[black]
[_]（Người đàn ông đó đưa cô gái đi khỏi.[p_]
[jump storage="sys/system.ks" target="*game_over" ]

*ok
[cm]
#Người đàn ông
Thật chứ! Điều này chắc chắn sẽ vừa giúp tôi và cô bé này。[p_]
Cô gái này là một đứa trẻ mồ côi。[p_]
Ngài có thể kêu cô bé giúp phụ ngài trong nhà, hoặc nếu anh có một sở thích riêng thì anh có thể coi cô bé như món đồ chơi. Vì không ai khó có thể từ chối được…。[p_]
nếu ngài muốn hiểu hơn về cô bé, ngài có thể hỏi cô bé đó。[p_]
Thôi, Tôi nghĩ tôi sẽ cáo từ。[lr_]
Một lần nữa, cảm ơn ngài vì đã cứu tôi ngày hôm đó。[p_]
;[chara_hide_all wait=false time=300 ] 
[chara_hide name="sub" time="100" ]
[_]（Người đàn ông lạ mặt đã đi[p_]
[chara_mod name="body" time="100" storage="s/body/stand-t.png" ]
[chara_mod name="sub" time="1" storage="00.png" ]
#Cô gái
Rất vui được gặp ngài em tên là Sylvie。[lr_]
Cảm ơn đã nhận em。[p_]
Mặc dù không thể làm việc nặng, nhưng em tin rằng em có thể tất cả việc nhà mà ngài có thể sẽ yêu cầu。[p_]
[chara_mod name="body" time="100" storage="s/body/stand-c.png" ]
Tuy nhiên, chủ nhân trước rất thích đánh đập và la hét em vì em không có giá trị sử dụng...。[p_]
[chara_mod name="body" time="100" storage="s/body/stand-t.png" ]
…Cho nên...Nếu có thể... xin ngày hãy đối xử với em tử tế。[p_]
[stop_bgm][black][chara_stop]
[day_up]
[jump storage="intro/step1.ks" target="*step1" ]



