*step1
[set_sit][f/a_r_nt][show_sit][bgm_SG][_]（Giờ, tôi cần làm gì đây nhỉ…。[p_][jump target="*before_menu" ]

*show_bace
[set_sit][f/a_r_nt][set_time][show_sit]
[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG][syl][f/cl]…Chào buổi sáng, Chủ nhân。[p_][endif]
[_]

*before_menu
[if exp="f.act>=7" ][jump target="*night" ][endif]
[set_time][show_button_intro]

*night
[eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][stop_bgm]

[if exp="f.intro_flag==0" ][jump storage="intro/event.ks" target="*feed" ][endif]
[if exp="f.day>=4" ][jump storage="intro/event.ks" target="*to_next" ][endif]
[f/a_r_nt][_]…。[p_]（Trời cũng đã tối rồi... tôi nghĩ tôi sẽ đi ngủ。[p_]
[syl][f/r]…Chúc ngài ngủ ngon。[p_][_][black]…。[p_][day_reset_mod][day_up][jump target="*show_bace" ]

*talk_lead1
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[else][eval exp="f.talk=0" ][jump target="*talk9" ][endif]

*talk1
[syl]…。[p_]
[_]（Sylvie không có gì để làm và vẫn đang ngồi ở đây。[p_][after_talk]
*talk2
[syl][f/r]…Gì thế ạ？[p_]
[_]（Đôi mắt em ấy như vô hồn khi tôi nhìn em。[p_][after_talk]
*talk3
[_]（Có những vết sẹo đỏ rực trên khắp thân thể nhợt nhạt của em。[p_]
[syl][f/r]Ngài đang nhìn ... những vết sẹo？[lr_]
[f/cl]Chúng đã có từ rất lâu nên em không còn thấy đau đớn nữa。[p_]
[_]（Sau một hồi quan sát, những vết sẹo có vẻ đã lành nên không cần phải băng bó。[p_][after_talk]
*talk4
[syl][f/r]Một cuộc trò chuyện？[lr_]
[f/a_r]Em không giỏi trong việc này…。[p_]
[_]（Có vẻ như cô ấy không dự định sẽ tiếp tục cuộc trò chuyện。[p_][after_talk]
*talk5
[_]（Cuộc sống trước kia của cô ấy thế nào nhỉ。[p_]
[syl][f/r]Với chủ nhân trước kia của em ạ？[lr_]
[f/cl]Hàng ngày phải làm việc rất vất vả, và... nhiều việc tồi tệ nữa ạ…。[p_][after_talk]
*talk6
[syl][f/r]Em không có bất kỳ người thân nào, vì thế em được gửi vào nhà chủ cũ của em trước đây。[lr_]
[f/cl]Nó cũng chẳng có gì đặc biệt…。[p_]
[_]（Có vẻ đó không phải là việc ta nên nói。[p_][after_talk]
*talk7
[_]（Tôi quan sát những vết sẹo của Sylvie…。[p_]
[syl][f/r]Những vết sẹo này là do em bị tạt các hoá chất ăn mòn vào người。[lr_]
[f/clc]Em thà ... không nghĩ về nó。[p_][after_talk]
*talk8
[syl][f/cl]Em không thích bị hành hạ đau đớn nhưng...。[lr_]
[f/re]Em không có ý phản kháng lại điều chủ nhân muốn làm。[p_]
[_]（Có vẻ nó không giống như cô ấy không có bất cứ điều gì cô không thích。[p_][after_talk]
*talk9
[_][f/a_r_nt]（Tôi có thể thấy thân hình nhỏ và mảnh mai của cô ấy qua tấm vải rách。[lr_]
cô ấy có mái tóc mầu bạc và đôi mắt bình thản。[p_]
[syl][f/r]…Có điều gì sai sao？[p_][after_talk]

*nade_lead1
[set_nade][_]
[if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][eval exp="f.nade=1" ][jump target="*nade8" ][endif]

*nade1
[f/a_r_nt][show_nade][_]
（Tôi xoa đầu Sylvie。[p_]
[syl][f/r]…Ano~, ngài đang làm gì vậy?[p_]
[f/re]…Ngài đang vỗ đầu em ？[lr_]
[f/re]Nó ổn nhưng,...。[p_][after_nade]
*nade2
[f/a_cr_nt][show_nade]
[syl]…？[p_]
[_]（Cô ấy trông có vẻ bối rối。[p_][after_nade]
*nade3
[f/cl_nt][show_nade]
[syl]…。[p_]
[_]（Không có phản ứng gì đặc biệt。[p_][after_nade]
*nade4
[f/cl_nt][show_nade]
[syl]…。[p_]
[f/r]Nó có ý nghĩa gì không ạ？[p_][after_nade]
*nade5
[f/cr_nt][show_nade]
[syl]…。[p_]
[f/re]Em, Thật sự không hiểu。[p_][after_nade]
*nade6
[f/r_nt][show_nade]
[syl]…。[p_]
[f/re]…đây có phải là...một sở thích？[p_][after_nade]
*nade7
[f/r_nt][show_nade]
[syl]…。[p_]
[_]（Tôi có thể cảm nhận được mái tóc mềm mại ấy qua đôi tay này。[p_][after_nade]
*nade8
[f/cl_nt][show_nade]
[syl]…。[p_]
[f/re]Xin vui lòng, làm theo ngài muốn…。[p_][after_nade]


