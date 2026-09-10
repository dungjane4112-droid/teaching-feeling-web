
*step4
[eval exp="f.step=4" ][eval exp="f.act='non'" ][eval exp="f.nade=1" ]
[eval exp="f.talk=1" ][eval exp="f.intro_flag='lost'" ][eval exp="f.day=f.day+1" ][day_reset_mod][bgm_SG]

*show_bace
[cm][clearstack][set_sit][f/s_nt][set_time][show_sit]

[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG]
[syl][f/s]Chào buổi sáng, chủ nhân。[p_][endif]
[_]

*before_menu
[set_time][if exp="f.act>=7" ][jump target="*night" ][endif]
[show_button_intro]

*night
[eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][eval exp="f.out=0" ]
[stop_bgm][f/nt][_]…。[p_]（Cũng đã tối rồi... có lẽ mình nên chuẩn bị đi ngủ。[p_][day_reset_mod][day_up]
[dress_per_begin][hair_per_begin][head_per_begin][leg_per_begin][glass_per_begin][under_per_begin][other_per_begin][cloth_per_check]
[if exp="f.intro_flag=='bed'" ][jump storage="intro/event.ks" target="*remind" ]
[elsif exp="f.day>=28 && f.intro_flag=='trust'" ][jump storage="intro/event.ks" target="*to_step5" ]
[elsif exp="f.day>=25 && f.intro_flag=='lost'" ][jump storage="intro/event.ks" target="*ask" ]

[else][syl][f/s]Chúc ngủ ngon。[p_]
[_][black]…。[p_][jump target="*show_bace" ][endif]


*talk_lead4
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[elsif exp="f.talk==9" ][jump target="*talk9" ][elsif exp="f.talk==10" ][jump target="*talk10" ]
[elsif exp="f.talk==11" ][jump target="*talk11" ][elsif exp="f.talk==12" ][jump target="*talk12" ]
[elsif exp="f.talk==13" ][jump target="*talk13" ][elsif exp="f.talk==14" ][jump target="*talk14" ]
[elsif exp="f.talk==15" ][jump target="*talk15" ][elsif exp="f.talk==16" ][eval exp="f.talk=0" ][jump target="*talk16" ][endif]

*talk1
[syl][f/nt]…。[p_]
[_]（Có lẽ cô ấy đang suy tư về một điều gì đó。[p_][after_talk]
*talk2
[syl][f/]...Chủ nhân？[lr_]
[f/s]Có chuyện gì vậy ạ？[p_]
[_]（Giọng em ấy có vẻ dịu dàng hơn trước kia。[p_][after_talk]
*talk3
[syl][f/cl]Mặc dù bị cảm lạnh vẫn không là gì so với nỗi đau、[lr_]
[f/clc]Khi em ngủ một mình em thấy hơi sợ。[p_]
[f/sc]Nhưng bởi vì chủ nhân ở đó nên em thấy thoải mái hơn。[p_][after_talk]
*talk4
[syl][f/cl]Chủ nhân rất... 「tốt」.[p_][after_talk]
*talk5
[syl][f/]Như mong muốn từ một bác sĩ。[lr_]
[f/scl]Nhờ chủ nhân chăm sóc nên em thấy đỡ hơn rất nhiều。[p_]
[f/s]Trong cả cơ thể...và tâm trí。[p_][after_talk]
*talk6
[syl][f/]Em đã từng bị bệnh trong quá khứ。[p_]
[f/cl]Em cũng đã được nhận thuốc và nghỉ ngơi, nhưng、[lr_]
[f/clc]Cách đối xử đối với em sau khi em hồi phục còn tệ hơn bình thường…。[p_][after_talk]
*talk7
[syl][f/]Em sẽ cẩn thận để không bị bệnh。[lr_]
[f/sc]Bởi...em không muốn khiến chủ nhân gặp rắc rối。[p_][after_talk]
*talk8
[syl][f/c]Um... Chủ nhân…。[lr_]
[f/re]Ngài sẽ không bỏ rơi em...đúng không？[p_]
[f/clc]…Em xin lỗi. Làm ơn đừng nhớ đến những gì em vừa nói。[p_][after_talk]
*talk9
[syl][f/c]Tại sao chủ nhân lại tốt bụng thế?[p_][after_talk]
*talk10
[syl][f/c]Em có hữu dụng cho ngài không, Chủ nhân？[p_][after_talk]
*talk11
[syl][f/clc]Nếu em cố gắng để không cảm thấy hạnh phúc và hi vọng、[lr_]
[f/re]mang theo cơn đau và nỗi buồn có lẽ sẽ dễ dàng hơn。[p_]
[f/clc]]Nhưng em vẫn…。[p_][after_talk]
*talk12
[syl][f/c]Ngài sẽ không làm gì đáng sợ với em, đúng không, chủ nhân？[p_][after_talk]
*talk13
[syl][f/clc]Liệu...có ổn để em tin ngài không, Chủ nhân…。[p_][after_talk]
*talk14
[syl][f/clc]Em nên làm gì bây giờ…。[p_][after_talk]
*talk15
[syl][f/c]Nhận quần áo như thế này…。[lr_]
[f/re]Em gần như cảm thấy mình không phải nô lệ…。[p_][after_talk]
*talk16
[syl][f/clc]Chủ nhân, ngài thật sự... quá tốt với em…。[p_][after_talk]

*nade_lead4
[set_nade][if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][jump target="*nade8" ]
[elsif exp="f.nade==9" ][jump target="*nade9" ][elsif exp="f.nade==10" ][jump target="*nade10" ]
[elsif exp="f.nade==11" ][jump target="*nade11" ][elsif exp="f.nade==12" ][jump target="*nade12" ]
[elsif exp="f.nade==13" ][jump target="*nade13" ][elsif exp="f.nade==14" ][eval exp="f.nade=0" ][jump target="*nade14" ][endif]

*nade1
[f/s_nt][show_nade][syl]…？[p_][after_nade]
*nade2
[f/s_nt][show_nade][syl]…。[p_]
[_]（Tôi không còn cảm nhận được sự thận trọng từ em mà tôi đã thấy khi trước。[p_][after_nade]
*nade3　
[f/nt][show_nade][syl]…。[p_]
[f/sclc]Không biết sao nữa, có lẽ như em đã gần quen với việc này。[p_][after_nade]
*nade4
[f/nt][show_nade][syl]…。[p_]
[f/clp]Nó, Umm... Cũng không phải là một cảm giác xấu…。[p_][after_nade]
*nade5
[f/nt][show_nade][syl]…。[p_]
[f/re]…Ano~、[lr_]
[f/s]Cảm ơn anh rất nhiều。[p_][after_nade]
*nade6
[f/cl_nt][show_nade][syl]…。[p_]
[f/cl]Chủ nhân thật sự rất thích làm việc này。[p_]
[f/s]…Em cũng không ghét nó lắm。[p_][after_nade]
*nade7
[f/cl_nt][show_nade][syl]…。[p_]
[f/clp]Điều này làm lòng em dịu lại, có lẽ thế。[p_][after_nade]
*nade8
[f/nt][show_nade][syl]…。[p_]
[f/sc]Chủ nhân？[p_][after_nade]
*nade9
[f/nt][show_nade][syl]…。[p_]
[f/sc]Chủ nhân, ngài có ...thích những điều kì lạ không。[p_][after_nade]
*nade10
[f/nt][show_nade][syl]…。[p_]
[f/sc]Sẽ rất tuyệt nếu em được chủ nhân sử dụng để xoa đầu thế này。[p_][after_nade]
*nade11
[f/nt][show_nade][syl]…。[p_]
[f/cl]Kiểu phản ứng nào sẽ làm cho chủ nhân vui？[p_][after_nade]
*nade12
[f/nt][show_nade][syl]…。[p_]
[f/re]Như thế này…。[lr_]
[f/cl]Làm em... rất vui, em nghĩ thế。[p_][after_nade]
*nade13
[f/nt][show_nade][syl]…。[p_]
[f/cl]Chủ nhân thật tốt。[p_][after_nade]
*nade14
[f/sclp][show_nade]
[syl]Ah, chỗ đó..。[p_]
[f/p]Ah、sono~..。[lr_]
[f/clp]…không có gì đâu。[p_][after_nade]


*hiroba_lead4
[cm][syl][if exp="f.hiroba_t==1" ][jump target="*hiroba1" ][elsif exp="f.hiroba_t==2" ][jump target="*hiroba2" ]
[elsif exp="f.hiroba_t==3" ][jump target="*hiroba3" ][elsif exp="f.hiroba_t==4" ][jump target="*hiroba4" ]
[elsif exp="f.hiroba_t==5" ][eval exp="f.hiroba_t=0" ][jump target="*hiroba5" ][endif]

*hiroba1
[f/nt]…。[p_]
[_]（Một cái bóng mờ nhạt không hài lòng xuất hiện trên mặt Sylvie。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba2
[f/nt]…gì thế ạ？[p_]
[_]（Ánh mắt của Sylvie lập tức hướng về phía tôi。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba3
[f/nt][_]（Sylvie đang dõi theo từng sắc thái của thị trấn。[p_]
Thị trấn này có vẻ yên tĩnh hơn trước。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba4
[f/cl_nt][_]（Sylvie có vẻ bình thản hơn so với lúc ở nhà、[r]
Chắc tại không gian chật hẹp của căn phòng。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba5
[f/nt][_]（Sylvie đôi khi nhìn ra những chỗ khác nhưng dương như cô ấy luôn cố gắng để khuôn mặt không ngước lên quá cao。[lr_]
Có vẻ cô ấy đang cố tránh những ánh mắt nhìn theo của người trong thị trấn。[p_]
[jump storage="intro/town.ks" target="*choice" ]
