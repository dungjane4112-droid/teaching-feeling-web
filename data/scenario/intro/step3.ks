
*step3
[eval exp="f.step=3" ][eval exp="f.act=2" ][eval exp="f.nade=1" ]
[eval exp="f.talk=1" ][eval exp="f.out=1" ][eval exp="f.day=f.day+1" ][day_reset_mod][bgm_SG]

*show_bace
[cm][clearstack][set_sit][f/nt][set_time][show_sit]
[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG][syl][f/]…Chào buổi sáng, chủ nhân。[p_][endif]
[_]

*before_menu
[if exp="f.act>=7" ][jump target="*night" ][endif]
[set_time][show_button_intro]

*night
[eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][eval exp="f.out=0" ][stop_bgm]
[_]…。[p_]（Cũng tối rồi... có lẽ mình nên chuẩn bị đi ngủ。[p_][syl][f/]…Chúc ngài ngủ ngon。[p_][day_reset_mod][day_up]
[dress_per_begin][hair_per_begin][head_per_begin][leg_per_begin][glass_per_begin][under_per_begin][other_per_begin][cloth_per_check]
[if exp="f.day>=16" ][jump storage="intro/event.ks" target="*to_step4" ][else]
[_][black]…。[p_][jump target="*show_bace" ][endif]

*talk_lead3
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[elsif exp="f.talk==9" ][jump target="*talk9" ][elsif exp="f.talk==10" ][jump target="*talk10" ]
[elsif exp="f.talk==11" ][jump target="*talk11" ][elsif exp="f.talk==12" ][jump target="*talk12" ]
[elsif exp="f.talk==13" ][jump target="*talk13" ][elsif exp="f.talk==14" ][eval exp="f.talk=0" ][jump target="*talk14" ]
[endif]

*talk1
[if exp="f.intro_flag=='alone'" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/nt]…。[p_]
[_]（Sylvie đang nhìn ngắm ra cửa sổ。[lr_]
Có lẽ cô ấy đang nhớ về khoảng thời gian cô ấy không ở đây。[p_][after_talk]
*talk2
[syl][f/nt]…？[p_]
（Chúng tôi chạm mặt nhau nhưng Sylvie chẳng nói gì。[p_][after_talk]
*talk3
[syl][f/]Ngài là một bác sĩ đúng không ạ。[p_]
[f/re]…Là một bác sĩ khiêm tốn？[lr_]
[f/re]Có điều gì đó khác biệt？[p_][after_talk]
*talk4
[syl][f/cl]Ngài thật...「tử tế 」...Em nghĩ vậy？[p_][after_talk]
*talk5
[if exp="f.shop==0" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/]Liệu em sẽ có một cơ hội khác để cùng ngài đi shopping？[p_][after_talk]
*talk6
[if exp="f.intro_flag=='alone'" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/]Trước đây, em chưa từng đi ra ngoài、[lr_]
[f/sclc]Em rất vui... em nghĩ thế。[p_][after_talk]
*talk7
[syl][f/c]…Tại sao ngài lại đưa em đi cùng？[p_][after_talk]
*talk8
[syl][f/]Có bất cứ việc gì để giúp đỡ ngài？[p_][after_talk]
*talk9
[syl][f/cl]Em.. rất biết ơn ngài đã chấp nhận em。[lr_]
[f/c]Cách mà em sống ở đây... cũng khá đáng sợ…。[p_][after_talk]
*talk10
[syl][f/clc]Sẽ tốt hơn nếu em không có một linh hồn…[p_][after_talk]
*talk11
[if exp="f.sand==1" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/s]Em... thích những điều tuyệt vời。[lr_]
[f/cl]Em không nghĩ mình có thể ăn nhiều như vậy từ trước đến giờ。[p_][after_talk]
*talk12
[syl][f/]Ngài có vẻ rất ít gặp người khác trong công việc。[p_][after_talk]
*talk13
[if exp="f.intro_flag=='alone'"][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[syl][f/c]Ngài không phiền khi đi ra ngoài cùng em？[p_][after_talk]
*talk14
[syl][f/cl]…Theo em nghĩ dù ngài là bác sĩ cũng không thể làm cho vết sẹo biến mất。[p_][after_talk]


*nade_lead3
[set_nade][if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][jump target="*nade8" ]
[elsif exp="f.nade==9" ][jump target="*nade9" ][elsif exp="f.nade==10" ][jump target="*nade10" ]
[elsif exp="f.nade==11" ][jump target="*nade11" ][elsif exp="f.nade==12" ][jump target="*nade12" ]
[elsif exp="f.nade==13" ][jump target="*nade13" ][elsif exp="f.nade==14" ][eval exp="f.nade=0" ][jump target="*nade14" ][endif]

*nade1
[f/nt][show_nade][syl]…。[p_]
[_]（Tôi có thể cảm thấy nhiệt độ cơ thể của Sylvie qua mái tóc của cô ấy。[p_][after_nade]
*nade2
[f/cl_nt][show_nade][syl]…。[p_]
[_]（Sylvie nhắm mắt lại và giữ yên lặng。[p_][after_nade]
*nade3　
[f/nt][show_nade][syl]…。[p_]
[f/re]Vuốt ve đầu em... khiến ngài cảm thấy tốt？[lr_]
[f/re]Em không nghĩ đầu em thú vị lắm…。[p_][after_nade]
*nade4
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]Em nghĩ em bắt đầu quen với việc này。[p_][after_nade]
*nade5
[f/nt][show_nade][syl]…。[p_]
[f/cl]Em không biết phải biểu hiện thế nào trong tình huống này…。[p_][after_nade]
*nade6
[f/nt][show_nade][syl]…。[p_]
[f/re]…Thứ gì khiến ngài thích nhất vậy。[p_][after_nade]
*nade7
[f/nt][show_nade][syl]…。[p_]
[f/re]Em chỉ được sử dụng chỉ để làm những việc này？[p_][after_nade]
*nade8
[f/nt][show_nade][syl]…。[p_]
[f/clc]Em...Cảm thấy một chút bối rối。[p_][after_nade]
*nade9
[f/nt][show_nade][syl]…。[p_]
[f/c]Em nên phản ứng thế nào ạ…。[p_][after_nade]
*nade10
[f/c_nt][show_nade][syl]…。[p_]
[f/c]Thưa chủ nhân？[p_][after_nade]
*nade11
[f/cl_nt][show_nade][syl]…。[p_]
[f/]Đây là thứ mà họ thường gọi là "Sự dịu dàng"？[p_][after_nade]
*nade12
[f/nt][show_nade][syl]…。[p_]
[f/cl]Một cảm giác em không thể diễn tả thành lời。[p_][after_nade]
*nade13
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]…Không phải em không thích nó。[p_][after_nade]
*nade14
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]「Em cảm ơn ngài rất nhiều」、[lr_]
[f/sc]Đó là điều em nên nói chăng？[p_][after_nade]


*hiroba_lead3
[cm][syl][if exp="f.hiroba_t==1" ][jump target="*hiroba1" ][elsif exp="f.hiroba_t==2" ][jump target="*hiroba2" ]
[elsif exp="f.hiroba_t==3" ][jump target="*hiroba3" ][elsif exp="f.hiroba_t==4" ][jump target="*hiroba4" ]
[elsif exp="f.hiroba_t==5" ][eval exp="f.hiroba_t=0" ][jump target="*hiroba5" ][endif]

*hiroba1
[f/nt]…。[p_]
[_]（Sylvie cứ giữ nguyên sự yên lặng mà chẳng nói câu nào。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba2
[f/cl_nt]…。[p_]
[_]（Sylvie vẫn yên lặng, có lẽ nơi này khiến cô ấy không thoải mái lắm。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba3
[f/c]…Ano~、Công việc của anh vẫn ổn chứ？[p_]
[_]（Sylvie lẩm bẩn một mình như thể cô ấy cũng không chịu được sự yên lặng。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba4
[f/nt][_]（Sylvie lặng lẽ nhìn xung quanh thị trấn。[p_]
Tôi không thể biết được cô ấy đang nghĩ gì。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba5
[f/nt][_]（Sylvie vẫn yên lặng y như khi cô ấy ở nhà、[r]
Có vẻ quanh đây không có chỗ nào để nghỉ một chút。[p_]
[jump storage="intro/town.ks" target="*choice" ]

*hiroba6




