
*a
[eval exp="f.step=5" ][eval exp="f.act='non'" ][eval exp="f.nade=1" ]
[eval exp="f.talk=1" ][eval exp="f.day=f.day+1" ][day_reset_mod]

*show_bace
[cm][clearstack][set_sit][f/s_nt][set_time][show_sit]

[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG]
[syl][f/s]Chào buổi sáng, Chủ nhân。[p_][endif]
[_]

*before_menu
[if exp="f.act>=7" ][jump target="*night" ][endif]
[set_time][show_button_intro]

*night
[eval exp="f.day=f.day+1" ][eval exp="f.act='non'" ][eval exp="f.out=0" ][stop_bgm]

[if exp="f.day>=35" ][jump storage="intro/event.ks" target="*to_step6" ]
[else][_]…。[p_]（Cũng đã tối rồi... có lẽ mình nên chuẩn bị đi ngủ。[p_][syl][f/s]Chúc ngủ ngon, chủ nhân。[p_][day_reset_mod][day_up]
[dress_per_begin][hair_per_begin][head_per_begin][leg_per_begin][glass_per_begin][under_per_begin][other_per_begin][cloth_per_check]
[_][black]…。[p_][jump target="*show_bace" ][endif]

*talk_lead5
[if exp="f.talk==1" ][jump target="*talk1" ][elsif exp="f.talk==2" ][jump target="*talk2" ]
[elsif exp="f.talk==3" ][jump target="*talk3" ][elsif exp="f.talk==4" ][jump target="*talk4" ]
[elsif exp="f.talk==5" ][jump target="*talk5" ][elsif exp="f.talk==6" ][jump target="*talk6" ]
[elsif exp="f.talk==7" ][jump target="*talk7" ][elsif exp="f.talk==8" ][jump target="*talk8" ]
[elsif exp="f.talk==9" ][jump target="*talk9" ][elsif exp="f.talk==10" ][jump target="*talk10" ]
[elsif exp="f.talk==11" ][jump target="*talk11" ][elsif exp="f.talk==12" ][jump target="*talk12" ]
[elsif exp="f.talk==13" ][eval exp="f.talk=0" ][jump target="*talk13" ][endif]

*talk1
[syl][f/nt]…。[p_]
[f/s_nt]…？[p_]
[_]（Sylvie cười khi chúng tôi nhìn nhau。[p_][after_talk]
*talk2
[syl][f/s]…chủ nhân？[p_]
[_]（Cách cư xử của cô ấy đã trở nên vui vẻ và hoạt bát hơn so với lúc đầu cô ấy vào đây。[p_][after_talk]
*talk3
[syl][f/cl]Chủ nhân không làm điều gì xấu với em, ngay cả khi em vui hay buồn。[p_][after_talk]
*talk4
[syl][f/s]Chủ nhân, anh có thể chỉ em cách nấu ăn được không？[lr_]
[f/re]Em nghĩ sẽ rất tuyệt nếu em có thể nấu ăn cho anh, Chủ nhân…。[p_][after_talk]
*talk5
[syl][f/scl]Em thật sự rất may mắn khi được vào đây, Chủ nhân。[lr_][after_talk]
*talk6
[syl][f/cl]Em đã gần như quên rằng em là một nô lệ。[p_]
[f/c]…Em tự hỏi liệu nó có ổn không nếu em quên điều đó...？[p_][after_talk]
*talk7
[syl][f/clc]Làm ơn, xin đừng bỏ rơi em。[p_][after_talk]
*talk8
[syl][f/cl]Anh nấu những món ăn ngon cho em、[lr_]
[f/re]Anh còn mua những bộ quần áo rất đẹp cho em、[lr_]
[f/re]thậm chí anh còn chăm sóc cho em khi em bệnh nữa。[p_]
[f/s]Cảm ơn anh rất nhiều。[lr_]
[f/sc]Em thật sự, thật sự rất biết ơn anh。[p_][after_talk]
*talk9
[syl][f/scl]"sự dịu dàng" mà chủ nhân mang đến cho em khiến em không còn sợ nữa。[p_][after_talk]
*talk10
[syl][f/p]Um... Em có thể ngồi gần anh một tí được không？[p_][after_talk]
*talk11
[syl][f/clc]Sự thật là, điều đó thật sự làm em rất tổn thương。[lr_]
[f/re]Nó đau lắm. Em không thích điều đó。[p_][after_talk]
*talk12
[syl][f/c]Sẽ ổn nếu em có niềm vui và cười tươi, đúng không？[lr_]
[f/sc]Anh sẽ.... tha thứ cho em chứ？[p_][after_talk]
*talk13
[syl][f/s]Nếu có việc gì đó ngoài dọn dẹp và làm việc nhà mà em có thể giúp, hãy nói với em。[p_]
[f/re]Nếu có việc gì em có thể làm để giúp cho công việc của chủ nhân, em sẽ làm mọi thứ mà em có thể。[p_][after_talk]


*nade_lead5
[set_nade][if exp="f.nade==1" ][jump target="*nade1" ][elsif exp="f.nade==2" ][jump target="*nade2" ]
[elsif exp="f.nade==3" ][jump target="*nade3" ][elsif exp="f.nade==4" ][jump target="*nade4" ]
[elsif exp="f.nade==5" ][jump target="*nade5" ][elsif exp="f.nade==6" ][jump target="*nade6" ]
[elsif exp="f.nade==7" ][jump target="*nade7" ][elsif exp="f.nade==8" ][jump target="*nade8" ]
[elsif exp="f.nade==9" ][jump target="*nade9" ][elsif exp="f.nade==10" ][jump target="*nade10" ]
[elsif exp="f.nade==11" ][jump target="*nade11" ][elsif exp="f.nade==12" ][jump target="*nade12" ]
[elsif exp="f.nade==13" ][eval exp="f.nade=0" ][jump target="*nade13" ][endif]

*nade1
[f/scl_nt][show_nade][syl]…。[p_]
[_]（Cô ấy trông có vẻ thoải mái。[p_][after_nade]
*nade2
[f/scl_nt][show_nade][syl]…。[p_]
[f/sc]Em đã quen với việc này。[p_][after_nade]
*nade3　
[f/cl_nt][show_nade][syl]…。[p_]
[f/sc]Anh có thể... xoa đầu em thêm một lúc nữa được không？[p_][after_nade]
*nade4
[f/s_nt][show_nade][syl]…。[p_]
[f/re]Điều này... không còn đáng sợ nữa rồi…。[p_][after_nade]
*nade5
[f/s_nt][show_nade][syl]…。[p_]
[f/re]Em thấy... thoải mái lắm。[p_][after_nade]
*nade6
[f/scl_nt][show_nade][syl]…。[p_]
[f/s]Cảm giác thoải mái này…。[r]có phải chủ nhân cũng cảm thấy vậy。[p_][after_nade]
*nade7
[f/s_nt][show_nade][syl]…。[p_]
[f/re]Bàn tay của anh lớn thật đó。[p_][after_nade]
*nade8
[f/scl_nt][show_nade][syl]…。[p_]
[f/s]Đây là một sự ấm áp em chưa từng cảm thấy từ trước đến giờ。[p_][after_nade]
*nade9
[f/scl_nt][show_nade][syl]…。[p_]
[f/p]Em nghĩ rằng tiếp xúc với người khác cũng sẽ rất tuyệt。[lr_]
[f/c]Gần đây em cảm thấy hơi sợ…。[p_][after_nade]
*nade10
[f/scl_nt][show_nade][syl]…。[p_]
[f/s]Em thấy hơi buồn ngủ rồi。[p_][after_nade]
*nade11
[f/s_nt][show_nade][syl]…。[p_]
[f/re]Em... thích anh xoa đầu em lắm。[p_][after_nade]
*nade12
[f/scl_nt][show_nade][syl]…。[p_]
[f/s]Thật tuyệt, và ấm áp…。[p_][after_nade]
*nade13
[f/s_nt][show_nade][syl]…。[p_]
[f/re]Em không biết nói sao nữa, nó... ấm áp lắm…。[p_][after_nade]

*hiroba_lead5
[cm][syl][if exp="f.hiroba_t==1" ][jump target="*hiroba1" ][elsif exp="f.hiroba_t==2" ][jump target="*hiroba2" ]
[elsif exp="f.hiroba_t==3" ][jump target="*hiroba3" ][elsif exp="f.hiroba_t==4" ][jump target="*hiroba4" ]
[elsif exp="f.hiroba_t==5" ][jump target="*hiroba5" ][elsif exp="f.hiroba_t==6" ][eval exp="f.hiroba_t=0" ][jump target="*hiroba6" ][endif]

*hiroba1
[f/s_nt]…。[p_]
[_]（Sylvie tiến sát gần tôi…。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba2
[f/]…Em tự hỏi [name] chắc cũng thường đến đây trước kia？[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba3
[_][f/nt]（Đột nhiên mắt tôi và Sylvie "chạm nhau"。[p_]
[syl][f/s_nt]…？[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba4
[_]（Sylvie đang dõi theo những đám mây đang "lạc trôi"。[p_]
[f/s]…Ở trên bầu trời、chúng thật đẹp。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba5
[f/s_nt]…[p_]
[_]（Sylvie đang quan sát thị trấn với một ánh mắt bình thản。[p_]
[jump storage="intro/town.ks" target="*choice" ]
*hiroba6
[f/s]Dù là ở trong đám đông nhưng nếu [name]vẫn ở bên cạnh、[r]
Em vẫn thấy thoải mái。[p_]
[jump storage="intro/town.ks" target="*choice" ]





