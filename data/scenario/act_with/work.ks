;;
*work
[if exp="f.reven>=0"][else][eval exp="f.reven=0"][endif]
[if exp="f.thu==6 || f.thu==7"][cm]
#
Hôm nay là ngày nghỉ, không có việc gì để làm hôm nay.[p]
Có thể dẫn Sylvie đi đâu đó chơi cũng tốt.[p][end_talk][endif]
[cos_work_rei]
[cm][f/ss]
[if exp="f.dress>=51 && f.dress<=53 " ]Vâng, em hiểu rồi。[p_]
[else]Vâng, em sẽ đi thay đồ。[p_][endif]

[set_work][f/nt][show_work]
[mod_win st="00.png" ][chara_show name="window" time="1" wait="false" left="0.1" ]
[chara_mod name="other" time="1" storage="00.png" ]
[chara_show name="other" time="1" wait="false" left="865" top="53" ]

[eval exp="f.work_c=1" ]
[if exp="f.code_ss=='ful' && f.step>=6 || f.step<=5"][else][c_ch][endif]
[syl][f/s]Em sẽ nỗ lực hết sức đễ hỗ trợ anh trong công việc.[p_]
[_]tôi quyết định để Sylvie giúp tôi một số công việc đơn giản [p_]

*re
[cm][eval exp="f.last_act='work'" ]
[mod_win st="00.png" ][chara_mod name="other" time="1" storage="00.png" ]
[random_15]
[jump target="*talk" ]

*choice
[cos_work]
[timer][eval exp="f.love=f.love+1" ]
[_][if exp="f.act>=6" ][jump target="*stop" ][endif]
[mod_win st="o/win/work_win.png" ]
[set_time]
[button target="*re" graphic="s_menu/conti.png" x="845" y="190" ]
[button target="*stop" graphic="s_menu/stop.png" x="845" y="270" ][s]

*talk
[cm]
[syl][if exp="f.r==1" ][jump target="*work1" ][elsif exp="f.r==2" ][jump target="*work2" ]
[elsif exp="f.r==3" ][jump target="*work3" ][elsif exp="f.r==4" ][jump target="*work4" ]
[elsif exp="f.r==5" ][jump target="*work5" ][elsif exp="f.r==6" ][jump target="*work6" ]
[elsif exp="f.r==7" ][jump target="*work7" ][elsif exp="f.r==8" ][jump target="*work8" ]
[elsif exp="f.r==9" ][jump target="*work9" ][elsif exp="f.r==10" ][jump target="*work10" ]
[elsif exp="f.r==11" ][jump target="*work11" ][elsif exp="f.r==12" ][jump target="*work12" ]
[elsif exp="f.r==13" ][jump target="*work13" ][elsif exp="f.r==14" ][jump target="*work14" ]
[elsif exp="f.r==15" ][jump target="*work15" ][elsif exp="f.r==16" ][jump target="*work16" ]
[elsif exp="f.r==17" ][jump target="*work17" ][elsif exp="f.r==18" ][jump target="*work18" ]
[elsif exp="f.r==19" ][jump target="*work19" ][elsif exp="f.r==20" ][jump target="*work20" ][endif]

*stop
[cm][_]（Hôm nay chúng ta dừng ở đây thôi…。[p_]
[syl][f/]Chúng ta xong việc rồi ư？[p_]
[f/s]Vâng, anh đã vất vả rồi、[name][p_]
[black]
[if exp="f.mood=='calm'" ]
[elsif exp="f.sexless_c>=1 && f.lust>=200 && f.act>=6 || f.sexless_c>=1 && f.mood=='lust' && f.act>=6" ]
[jump target="*stop_h" ][endif]
[cos_work_union]…[p_]
[_]Thu nhập hôm nay được thêm [emb exp="f.money_work"]
[random_40][eval exp="f.r=f.r+10"]
[eval exp="f.r=f.r*2000+f.money_work/100*35"]
[eval exp="f.reven=f.reven+f.money_work+f.r"]
[p][return_bace]

*stop_h
[cm]

[if exp="f.vgf>=1"][else]
[cos_work_union]…
[show_gif][p]
[_]Thu nhập hôm nay được thêm [emb exp="f.money_work"][p]
[random_40]][eval exp="f.r=f.r+10"]
[eval exp="f.r=f.r*2000+f.money_work/100*35"]
[eval exp="f.reven=f.reven+f.money_work+f.r"]
[return_bace][endif]
[if exp="f.gift>=1"][else]
[cos_work_union]…
#
[_]Thu nhập hôm nay được thêm [emb exp="f.money_work"][p]
[random_40][eval exp="f.r=f.r+10"]
[eval exp="f.r=f.r*2000+f.money_work/100*35"]
[eval exp="f.reven=f.reven+f.money_work+f.r"]
[return_bace][endif]
[jump storage="H/nurse.ks" target="*nurse" ]

;;トーク
*work1
[f/][name]、Em nên đặt tài liệu này ở đâu ?[p_]
[jump target="*choice" ]
*work2
[f/]Mặc dù là công việc khó khăn, nhưng em không quá bận rộn.[p_]
[f/s]Bởi vì đây là công việc tốt giúp ích cho mọi người[p_]
[jump target="*choice" ]
*work3
[f/s]Một ngày nào đó em sẽ học cách pha chế các loại thuốc.[r]
[f/sp]Để có thể thực hiện tốt công việc như một trợ lý của anh [p_]
[jump target="*choice" ]
*work4
[f/s]Em sẽ dọn dẹp một chút[p_]
[f/]Sau đó em sẽ cố định các tài liệu và dụng cụ y tế theo đúng thứ tự.[p_]
[jump target="*choice" ]
*work5
[f/c]Thềm có vẻ bẩn[p_]
[f/s]Em sẽ dọn dẹp cẩn thận[p_]
[jump target="*choice" ]
*work6
[f/s]Hôm nay là ngày kiểm tra phòng bệnh.vvv.[p_]
[f/]Và các hồ sơ y tế, bệnh nhân?… Có phải là cái này?…[p_]
[jump target="*choice" ]
*work7
[f/ss]Em vẫn ổn ạ、[r]
Em sẽ cố gắng giúp đỡ anh.[p_]
[jump target="*choice" ]
*work8
[f/]…Em có thể giúp gì cho anh?[p_]
[jump target="*choice" ]
*work9
[f/]Băng gạc đó không thể sử dụng được nữa.[p_]
[f/s]Hôm nay, có lẽ em nên ra ngoài và mua thêm…[p_]
[jump target="*choice" ]
*work10
[f/s]Em phải giúp [name], có khá nhiều công việc bận rộn để làm.[p_]
[jump target="*choice" ]
*work11
[f/cl]Hôm nay không có bệnh nhân, ta còn dư khá nhiều thời gian…[p_]
[jump target="*choice" ]
*work12
[f/c]Vâng, làm bác sĩ có vẻ rất khó khăn.[p_]
[_](Tôi biểu hiện khuôn mặt u sầu khi mở quyên sách y học ra[lr_]
Nếu không nâng cao các kiến thức liên quan đến y học thì không cần đọc nó)[p_]
[jump target="*choice" ]
*work13
[f/c]Mặc dù bệnh nhân không nhiều,nhưng [name] đã tự mình hoàn thành việc điều trị cho họ?[p_]
[f/sp]Em sẽ giúp ít nhiều hơn cho anh sau này[p_]
[jump target="*choice" ]
*work14
[f/]Loại thuốc này , tốt nhất nên đặt ở trên kệ ?[p_]
[jump target="*choice" ]
*work15
[f/s]Mặc dù em còn khá vụng về[r]
Nhưng sao này em sẽ làm cách tay đặc lực của anh.[p_]
[jump target="*choice" ]

