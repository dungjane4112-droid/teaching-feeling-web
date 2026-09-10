
*step2
[eval exp="f.step=2" ][eval exp="f.act='non'" ]
[eval exp="f.nade=1" ][eval exp="f.talk=1" ][eval exp="f.day=f.day+1" ][day_reset_mod][bgm_SG]

*show_bace
[cm][clearstack][set_sit][f/r_nt][set_time][show_sit]
[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG][syl][f/cl]…Chào buổi sáng, chủ nhân。[p_][endif]
[_]

*before_menu
[if exp="f.act>=7" ][jump target="*night" ][endif]
[set_time][show_button_intro]

*night
[eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][stop_bgm]
[_][f/r_nt]…。[p_]（Trời đã tối ... Tôi nên chuẩn bị đi ngủ。[p_]

[if exp="f.day>=9" ][syl][f/r]…Chúc ngủ ngon。[p_][jump storage="intro/event.ks" target="*to_step3" ]

[else][syl][f/r]…Chúc ngài ngủ ngon。[p_]
[_][black]…。[p_][day_reset_mod][day_up][jump target="*show_bace" ][endif]

*talk_lead2
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[elsif exp="f.talk==9" ][jump target="*talk9" ][elsif exp="f.talk==10" ][jump target="*talk10" ]
[elsif exp="f.talk==11" ][jump target="*talk11" ][else][eval exp="f.talk=0" ][jump target="*talk12" ][endif]

*talk1
[f/a_r_nt][syl]…。[p_]
[_]（Sylvie đang nhìn chằm chằm vào một khoảng không。[p_][after_talk]
*talk2
[syl][f/r]…Có chuyện gì sao? chủ nhân？[p_]
[_]（Nhìn có vẻ như tôi đang làm phiên cô ấy。[p_][after_talk]
*talk3
[syl][f/cl]Em đã quen với những nỗi đau... So với lần đầu tiên。[p_][after_talk]
*talk4
[syl][f/cr]uhm..., Ngài không đi làm à…？[p_][after_talk]
*talk5
[syl][f/r]Nếu ngài có gì cần sai bảo,em sẽ cố gắng hết sức có thể …。[p_][after_talk]
*talk6
[syl][f/clLàm như ngài muốn, chủ nhân。[lr_]
[f/clc]Dù gì tôi chỉ là một nô lệ。[p_][after_talk]
*talk7
[syl][f/r]Em... Vô cảm？[p_]
[f/cl]Em xin lỗi[r]khuôn mặt như trở thành một khói quen。[p_][after_talk]
*talk8
[if exp="f.intro_flag=='pet'" ][eval exp="f.talk=f.talk+1" ][jump storage="sys/talk_lead.ks" target="*talk" ][endif]
[f/r]Các bữa ăn master chuẩn bị luôn trông rất đẹp。[p_]
[_]（Tôi cá là vậy,so với bánh mì và nước。[p_][after_talk]
*talk9
[syl][f/cl]Sẽ tốt hơn nếu người em không còn linh hồn…。[p_][after_talk]
*talk10
[syl][f/cl]Em sẽ chấp nhận mọi việc mà master muốn làm。[lr_]
[f/re]Em biết rằng em không thể cưỡng lại。[p_][after_talk]
*talk11
[syl][f/r]Anh sẽ không làm những việc mà chủ cũ đã từng làm với em？[p_][after_talk]
*talk12
[syl][f/cl]Em không thể làm những việc nặng nhọc, la hét và bị đánh đập là việc của em。[p_][after_talk]

*nade_lead2
[set_nade][if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][jump target="*nade8" ]
[elsif exp="f.nade==9" ][jump target="*nade9" ][elsif exp="f.nade==10" ][jump target="*nade10" ]
[elsif exp="f.nade==11" ][jump target="*nade11" ][elsif exp="f.nade==12" ][eval exp="f.nade=0" ][jump target="*nade12" ][endif]

*nade1
[f/clc_nt][show_nade][syl]…。[p_]
[f/cr]Ngài đang xoa đầu em? Vỗ đầu em？[lr_]
[f/re]Em không hiểu…。[p_][after_nade]
*nade2
[f/cl_nt][show_nade][syl]…。[p_]
[_]（Tôi có thể cảm nhận được mái tóc mềm mại của em ấy qua đôi tay này。[p_][after_nade]
*nade3
[f/cr_nt][show_nade][syl]…？[p_]
[_]（Có một biểu hiện lạ trên vẻ mặt em ấy。[p_][after_nade]
*nade4
[f/a_r_nt][show_nade][syl]…。[p_]
[f/r]... Việc này có ý nghĩa gì không ？[p_][after_nade]
*nade5
[f/a_r_nt][show_nade][syl]…。[p_]
[f/cr]Em không nghĩ em có thể phản ứng theo ý ngài để giúp ngài giải trí…。[p_][after_nade]
*nade6
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]Nếu đây là những điều ngài muốn làm... Xin theo ý ngài, chủ nhân。[p_][after_nade]
*nade7
[f/cr_nt][show_nade][syl]…。[p_]
[f/re]…Việc này có vui không？[p_][after_nade]
*nade8
[f/a_r_nt][show_nade][syl]…。[p_]
[f/r]Vỗ đầu em giúp ngài cảm thấy... tốt？[p_][after_nade]
*nade9
[f/clc_nt][show_nade][syl]…。[p_]
[f/re]Em không hiểu…。[p_][after_nade]
*nade10
[f/a_r_nt][show_nade][syl]…。[p_]
[_]（Em ấy dường như không có phản ứng gì đặc biệt。[p_][after_nade]
*nade11
[f/cl_nt][show_nade][syl]…。[p_]
[f/re]Không phải em không thích nó... nhưng…。[p_][after_nade]
*nade12
[f/cl_nt][show_nade][syl]…。[p_]
[f/cr]Không phải em không thích nó... nhưng...[p_][after_nade]



