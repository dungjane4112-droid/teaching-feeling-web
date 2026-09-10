;;========script_by_ichibikun============

*begin
[cm][eval exp="f.talk=0"]
[stopbgm][random_3]
[if exp="f.r==1"][bgm_ST]
[elsif exp="f.r==2"][bgm_II]
[else][bgm_JH][endif]
[mod_win st="00.png" ]
[chara_hide name="window" time="0"]
[chara_show name="window" time="1" left="855" top="20" wait="true" zindex="300" ]
[chara_hide name="other" time="0"]
[chara_mod name="other" time="0" storage="00.png" ]
[chara_show name="other" time="true" wait="false" height="38" width="460" left="865" top="32" zindex=305 ]
[chara_mod name="sub" time="0" storage="00.png"]
[chara_mod name="cg1" time="0" storage="00.png"]
[chara_mod name="h" time="0" storage="00.png"]
[chara_hide name="sub" time="0"]
[chara_show name="sub" time="0" top="-5" left="100" wait="true" zindex="1" ]
[chara_show name="cg1" time="0" top="-5" left="100" wait="true" zindex="5" ]
[eval exp="f.aur_hat='up'"]
[call target="*aur_s15"]
[_]
[random_5]
[if exp="f.r==1"]
(Aurelia bước tới gần tôi...[p]
[elsif exp="f.r==2"]
(Aurelia bước tới bên cạnh tôi...[p]
[elsif exp="f.r==3"]
(Aurelia bước tới bên cạnh tôi với ánh mắt tò mò...[p]
[elsif exp="f.r==4"]
(Aurelia bước tới bên cạnh tôi trong khi chăm chú nhìn tôi với vẻ tò mò...[p]
[else]
(Cô ấy tới gần và chăm chú nhìn tôi với vẻ tò mò...[p][endif]

[aurel]
[random_6][call target="*aur_sm15"]
[if exp="f.r==1"]
[aur_do_1]Vậy....Anh muốn dẫn tôi đi đâu đây![l]
[call target="*aur_s15"]
[aur_aha_1]~♥[p]
[elsif exp="f.r==2"]
[aur_de_1]Muốn dẫn tôi đi đâu đây?[l]
[call target="*aur_s15"]
[aur_aha_1]~♥[p]
[elsif exp="f.r==3"]
[aur_ara_2]Là hẹn hò đúng không![lr]
[aur_dokidoki_1]Thật hồi hộp. Không biết anh sẽ dẫn tôi đi đâu đây.[l]
[call target="*aur_s15"]
[aur_aha_1]~♥[p]
[elsif exp="f.r==4"]
[aur_sone_3]Là hẹn hò sao![lr]
[aur_ne_1]Anh có thể dẫn tôi đi tới đâu đây.[l]
[call target="*aur_s15"][aur_aha_1]~♥[p]
[elsif exp="f.r==5"]
[aur_ara_2]Ara~![lr]
[aur_dokidoki_1]Thật hồi hộp. Không biết anh sẽ dẫn tôi đi đâu nhỉ.[l]
[call target="*aur_s15"]~♥[p]
[elsif exp="f.r==6"]
[aur_ara_2]Ara~![lr]
[aur_dokidoki_1]Nghĩ tới cũng Thật hồi hộp đó.[lr]
Anh sẽ dẫn tôi đi đâu nhỉ?[l]
[call target="*aur_s15"][aur_aha_1]~♥[p]
[endif]
[_](Tôi có chút lúng túng khi giải thích với cô ấy [r]
chỉ là "đi dạo" thôi.[p]
[eval exp="f.t1=0"]
[eval exp="f.t2=0"]
[eval exp="f.t3=0"]
[eval exp="f.t4=0"]
[eval exp="f.t5=0"]
[eval exp="f.t6=0"]
[eval exp="f.t7=0"]
[eval exp="f.t8=0"]
[eval exp="f.t9=0"]
[eval exp="f.t10=0"]
[eval exp="f.t11=0"]
[eval exp="f.t12=0"]



[jump target="*aur_date1_choice"]

*aur_date1_choice
[cm]
[timer]

[bg_town][set_weather]
[if exp="f.act>=5"][free_layermode time="100" wait="false" ][endif]
[if exp="f.act>=5"][jump target="*night"][endif]
[mod_win st="o/win/out_win.png" ][set_time]
[button  target="*date_re"  graphic="s_menu/stay_hiroba.png"  x="845"  y="160" ]
;[button  storage="mod/nephy_date1_wood.ks" target="*neph_date1_wood"  graphic="s_menu/wood.png"  x="845"  y="240" ]
;[button  storage="mod/market_alone.ks"  target="*market"  graphic="s_menu/market.png"  x="845"  y="320" ]
[button target="*out_date"  graphic="s_menu/finish.png"  x="845"  y="400" ]
[s]

*date_re
[cm][mod_win st="00.png" ][chara_mod name="other" time="0" storage="00.png" ]
[eval exp="f.aurelia_talk=f.aurelia_talk+1"]
[jump target="*date_r"]

*date_r
[random_12]
[if exp="f.r==1 && f.t1==0"][jump target="*talk1"]
[elsif exp="f.r==2 && f.t2==0"][jump target="*talk2"]
[elsif exp="f.r==3 && f.t3==0"][jump target="*talk3"]
[elsif exp="f.r==4 && f.t4==0"][jump target="*talk4"]
[elsif exp="f.r==5 && f.t5==0"][jump target="*talk5"]
[elsif exp="f.r==6 && f.t6==0"][jump target="*talk6"]
[elsif exp="f.r==7 && f.t7==0"][jump target="*talk7"]
[elsif exp="f.r==8 && f.t8==0"][jump target="*talk8"]
[elsif exp="f.r==9 && f.t9==0"][jump target="*talk9"]
[elsif exp="f.r==10 && f.t10==0"][jump target="*talk10"]
[elsif exp="f.r==11 && f.t11==0"][jump target="*talk11"]
[elsif exp="f.r==12 && f.t12==0"][jump target="*talk12"]
[elsif exp="f.r==13"][jump target="*talk13"]
[else][jump target="*date_r"]
[endif]

*talk1
[eval exp="f.t1=1"]
[cm][call target="*aur_s_cl15"]
[aurel]...[p]
[random_2][if exp="f.r==1"]
[_](Cô ấy đang lắng nghe một giai điệu vĩ cầm phát ra từ radio ở đâu đó...[p]
[else][_](Cô ấy hình như bị thu hút bởi âm thanh radio phát ra từ đâu đó quanh đây...[p][endif]
[aurel][call target="*aur_sm15"]
[aur_ara_2]Ara~! Một giai điệu quen thuộc.[lr]
Trước đây tôi thường chơi nó trên piano.[p]
[call target="*aur_s15"]
[_](...?[p]
[call target="*aur_sm15"]
[aurel][aur_sa_1]Bây giờ sao?[p]
[aur_zanene_1]Không chắc nữa...[lr]
Tôi vẫn có thể chơi nhưng không chắc nó sẽ hay đâu...[wait time="200"][call target="*aur_s15"][aur_aha_1][p]
[jump target="*aur_date1_choice"]

*talk2
[eval exp="f.t2=1"]
[cm][call target="*aur_s15"]
[aurel]♪~♫...[p]
[_](Cô ấy khẽ ngâm nga theo một giai điệu phát ra từ radio...[p]
[call target="*aur_s15"]
[jump target="*aur_date1_choice"]

*talk3
[eval exp="f.t3=1"]
[cm][call target="*aur_s15"]
[aurel]...[p]
[_](Từng cơn gió thoảng qua,[lr] 
Aurelia như đang đắm chìm theo mạch suy nghĩ nào đó...[p]
[call target="*aur_def15"]
[aurel][aur_sa_1]Ah! Hình như tôi vừa quên mất thứ gì đó rồi...[p]
[call target="*aur_s15"]Cơn gió này thật vô ý.[wait time="200"][aur_aha_1][p]
[jump target="*aur_date1_choice"]

*talk4
[eval exp="f.t4=1"]
[cm][call target="*aur_s15"]
[aurel]...[p]
[_](Cô ấy lặng im quan sát đám mây phía trước với vẻ suy tư,[lr] 
Một mùi hương thoang thoảng từ tóc cô ấy khiến tôi xao nhãng...[p]
[call target="*aur_sm15"]
[aurel][aur_ne_1]Này! Hình như có gì đó vừa thoáng qua trong đầu tôi...[lr]
[call target="*aur_s15"]
[aur_zanene_1]Đáng tiếc, tôi lại không bắt kịp nó nữa rồi.[wait time="200"][aur_aha_1][p]
[_](Tôi đoán không phải lỗi tại tôi...[p]
[jump target="*aur_date1_choice"]

*talk5
[eval exp="f.t5=1"]
[cm][call target="*aur_def15"]
[aurel]...[p]
[_](Aurelia đột nhiên lấy ra một cuốn sổ nhỏ như muốn ghi chép gì đó,[lr] 
Dù không thấy rõ nhưng nét chữ của cô ấy rất ngay ngắn và mềm mại...[p]
[call target="*aur_sm15"]
[aurel][aur_sone_1]Được rồi! Chỉ là một thói quen thôi...[lr]
[call target="*aur_s15"]
[aur_ara_3]Đáng tiếc, tôi chưa nghĩ ra được gì để ghi chú cả.[wait time="200"][aur_aha_1][p]
[_](...[p]
[jump target="*aur_date1_choice"]

*talk6
[eval exp="f.t6=1"]
[cm][call target="*aur_s15"]
[aurel]...[p]
[_]
[random_2][if exp="f.r==1"]
(Cô ấy có vẻ khá yên tĩnh,[lr] 
Hoặc chỉ là không có chuyện gì muốn nói với tôi...[p]
[elsif exp="f.r==2"]
(Cô ấy hình như không có gì muốn nói với tôi,[lr] 
Có thể do cô ấy không thích nói chuyện phiếm...[p]
[endif]
(...?[p]
[call target="*aur_sm15"]
[aurel][aur_ara_2]À! Không phải như vậy đâu...[p]
.[wait time="400"].[wait time="400"].[wait time="400"][aur_sone_1]Đúng là tôi thích không khí yên tĩnh[lr]
Nhưng lại muốn có "ai đó" luôn ở bên mình...[r][wait time="400"][aur_aha_1][call target="*aur_s15"]Có chút phiền phức nhỉ! fufu~♥[p]
[_](...[p]
[jump target="*aur_date1_choice"]

*talk7
[eval exp="f.t7=1"]
[cm][aurel][call target="*aur_s15"]Tôi thường quan sát thị trấn qua cửa sổ khi uống trà...[lr]
[call target="*aur_sm15"]
Tất nhiên khi trực tiếp ra ngoài nhìn ngắm như thế này cũng rất tuyệt.[p]
[call target="*aur_sm15"][aur_de_1]Đặc biệt nếu có "ai đó" ở bên cạnh tôi như lúc này...[wait time="400"][aur_aha_1][call target="*aur_s15"]fufu~♥[p]
[_](...[p]
[jump target="*aur_date1_choice"]



*talk8
[eval exp="f.t8=1"]
[cm][call target="*aur_s15"]
[aurel]...[p]
[_](Cảnh vật xung quanh từ từ lướt qua chúng tôi...[r]
Aurelia nhìn về phía trước với ánh mắt vô định.[p]
(Tôi giữ im lặng và ngắm nhìn cô ấy...[p]
[call target="*aur_tr15"]
[aurel][aur_nanikashira_1]C-có chuyện gì vậy?...[p]
[call target="*aur_defr15"]
[_](Cô ấy có chút bất ngờ khi tôi cứ nhìn chăm chú cô ấy như vậy.[p]
[font color="lightblue"][link target="*t8_c1" ]【Không có gì!】[r][r][link target="*t8_c2" ]【Vì cô rất đẹp!】[resetfont][s]

*t8_c1
[cm][aurel]
[call target="*aur_smr15"]À!...có lẽ tôi hơi mất tập trung.[lr]
[call target="*aur_smr15"][aur_dokidoki_1]Ánh mắt của Anh khiến tôi có chút hồi hộp đó Fufu~♥[p]
[call target="*aur_s15"]
[jump target="*aur_date1_choice"]

*t8_c2
[cm][aurel][call target="*aur_smr15"][aur_sa_1]Ồ! là vậy sao...[wait time="800"][aur_sm_1][call target="*aur_sr15"]fufu~♥[p]
.[wait time="300"].[wait time="300"].[wait time="400"][cm]
[call target="*aur_smr15"]Tôi thấy rất vui nhưng...[r][wait time="300"][aur_hatsukashiwane_1]Anh nói với thái độ nghiêm túc như vậy Khiến tôi thấy hơi xấu hổ đó.[wait time="1000"][call target="*aur_sr15"][aur_aha_1] Fufu~♥[p]

[_] (Cô ấy tiến lại gần tôi hơn làm tôi có chút lúng túng...[p]
[jump target="*aur_date1_choice"]

*talk9
[eval exp="f.t9=1"]
[cm][_](Chúng tôi tiếp tục dạo bước trên con phố yên tĩnh...[lr]
[call target="*aur_def15"]
Aurelia thỉnh thoảng lại ngẩn người suy nghĩ thứ gì đó.[p]
[aurel][call target="*aur_defr15"][aur_u_0]Umm?[p]
[_](Có sự bối rối thoáng qua trên mặt cô ấy khi tôi vô tình liếc sang.[p]
(Tôi cho là cô ấy không thấy phiền gì điều này.[p]
[jump target="*aur_date1_choice"]

*talk10
[eval exp="f.t10=1"]
[cm][call target="*aur_s15"]
[aurel]...[p]
[_](Cảnh vật xung quanh chậm rãi lướt qua...[r]
Aurelia nhìn về phía trước nhưng hình như không chú ý đến bất cứ thứ gì.[p]
(Tôi cũng giữ im lặng khi ngắm nhìn cô ấy...[p]
[call target="*aur_tr15"]
[aurel][aur_nanikashira_1]C-Có chuyện gì vậy?...[p]
[call target="*aur_defr15"]
[_](...?[p]
[aurel]
[call target="*aur_smr15"]À!...Không có gì đâu, chỉ là tôi hơi mất tập trung.[lr]
[call target="*aur_smr15"][aur_dokidoki_1]Ánh mắt của Anh khiến tôi có chút hồi hộp đó Fufu~♥[p]
[call target="*aur_s15"]
[jump target="*aur_date1_choice"]

*talk11
[eval exp="f.t11=1"]
[cm][call target="*aur_s15"]
[_](Chúng tôi tiếp tục bước đi trên con phố với không khí yên tĩnh.[p]
[call target="*aur_def15"]
[aurel]...![p]
[call target="*aur_sr15"]
~♪[p]
[_](Aurelia đang ghi chép gì đó lên quyển sổ nhỏ của cô ấy.[p]
Có lẽ cô ấy rất yêu thích công việc này...[p]
[jump target="*aur_date1_choice"]

*talk12
[eval exp="f.t12=1"]
[cm][call target="*aur_def15"]
[aurel]...![p]
[_](Phía trước có một ngôi nhà bỏ hoang khá lớn.[lr]
Lúc tôi mới tới thị trấn này nó đã như vậy rồi.[p]
(Điều kỳ lạ là không biết có ai dọn dẹp không[r] 
nhưng nó vẫn giữ nguyên dáng vẻ như vậy[p]
[aurel][call target="*aur_sm15"][aur_ne_1]
Có khá nhiều câu chuyện bí ẩn liên quan đến ngôi nhà hoang đằng kia đó.[p]
[call target="*aur_s15"]
[jump target="*aur_date1_choice"]

*talk13
[eval exp="f.t12=1"]
[cm][call target="*aur_sm15"]
[_](Chúng tôi giữ im lặng và tiếp tục bước đi trên phố...[p]
[jump target="*aur_date1_choice"]

;-----------------------------------------------------------------
*out_date
[cm][call target="*delete_f"]
[eval exp="f.aurelia_wait='date'"]
[_](Tôi cùng cô ấy đi về đến cửa hàng thời trang rồi chia tay.[p]
[aurel]
[call target="*aur_sm15"][aur_aha_1]Đến đây được rồi. Cảm ơn anh vì ngày hôm nay nhé.[p]
[call target="*aur_sr15"]Hẹn gặp lại anh lần sau.[lr] 
[aur_sa_1]Đi thong thả nhé.[p][chara_mod name="sub" time="700" storage="o/food/00.png"]
[_]
[stopbgm][bgm_ST]
[jump storage="mod/hiroba_alone.ks" target="*choice"][s]

*night
[cm][call target="*delete_f"]
[_](Trời cũng đã dần tối. Có lẽ nên dừng lại...[p]
[mod_win st="o/win/out_win.png" ][set_time]
[button target="*cafe"  graphic="s_menu/au_cafe.png"  x="845"  y="200" ]
[button target="*go_home"  graphic="s_menu/go_home.png"  x="845"  y="280" ][s]

*go_home
[cm][eval exp="f.aurelia_wait='date'"]
[_](Tôi cùng cô ấy đi về đến cửa hàng thời trang rồi chia tay.[p]
[aurel]
[call target="*aur_sm15"][aur_aha_1]Đến đây được rồi. Cảm ơn anh vì ngày hôm nay nhé.[p]
[call target="*aur_sr15"]Hẹn gặp lại anh lần sau.[lr] 
[aur_sa_1]Đi thong thả nhé.[p][chara_mod name="sub" time="700" storage="o/food/00.png"]
[_]
[stopbgm][bgm_ST]
[jump storage="mod/hiroba_alone.ks" target="*go_home"][s]

*cafe
[cm][black][chara_mod name="sub" time="0" storage="00.png"]
[chara_show name="sub" time="1" left="0" top="0" wait="true" zindex="10" ]
[_](...?[p]
[bg_town][set_weather]
[jump storage="mod/Aurelia_walk.ks" target="*cafe"]



;===============================================================

*aur_s15
[chara_mod name="cg1" time="0" storage="00.png" ]
[if exp="f.lady==6 && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_so.png" ]
[elsif exp="f.lady==6  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_sx.png" ]

[elsif exp="f.lady==7  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_so.png" ]
[elsif exp="f.lady==7  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_sx.png" ]

[elsif exp="f.lady==8  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_so.png" ]
[elsif exp="f.lady==8  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_sx.png" ]

[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/xa_s.png" ]
[endif][return]


*aur_sr15
[chara_mod name="cg1" time="0" storage="00.png" ]
[if exp="f.lady==6 && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_sro.png" ]
[elsif exp="f.lady==6  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_srx.png" ]

[elsif exp="f.lady==7  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_sro.png" ]
[elsif exp="f.lady==7  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_srx.png" ]

[elsif exp="f.lady==8  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_sro.png" ]
[elsif exp="f.lady==8  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_srx.png" ]

[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/xa_sr.png" ]
[endif][return]


*aur_sm15
[chara_mod name="cg1" time="0" storage="00.png" ]
[if exp="f.lady==6 && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_smo.png" ]
[elsif exp="f.lady==6  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_smx.png" ]

[elsif exp="f.lady==7  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_smo.png" ]
[elsif exp="f.lady==7  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_smx.png" ]

[elsif exp="f.lady==8  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_smo.png" ]
[elsif exp="f.lady==8  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_smx.png" ]

[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/xa_sm.png" ]
[endif][return]

*aur_smr15
[chara_mod name="cg1" time="0" storage="00.png" ]
[if exp="f.lady==6 && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_smro.png" ]
[elsif exp="f.lady==6  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_smrx.png" ]

[elsif exp="f.lady==7  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_smro.png" ]
[elsif exp="f.lady==7  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_smrx.png" ]

[elsif exp="f.lady==8  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_smro.png" ]
[elsif exp="f.lady==8  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_smrx.png" ]

[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/xa_smr.png" ]
[endif][return]

*aur_s_cl15
[chara_mod name="cg1" time="0" storage="00.png" ]
[if exp="f.lady==6 && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_so_cl.png" ]
[elsif exp="f.lady==6  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/a_sx_cl.png" ]

[elsif exp="f.lady==7  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_so_cl.png" ]
[elsif exp="f.lady==7  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/b_sx_cl.png" ]

[elsif exp="f.lady==8  && f.aur_hat=='down'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_so_cl.png" ]
[elsif exp="f.lady==8  && f.aur_hat=='up'"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/c_sx_cl.png" ]

[elsif exp="f.lady==12"]
[chara_mod name="sub" time="0" storage="o/sub/mod/150/xa_s_cl.png" ]
[endif][return]

*aur_def15
[call target="*aur_s15"]
[chara_mod name="cg1" time="0" storage="o/sub/mod/150/m_def.png" ]
[return]

*aur_defr15
[call target="*aur_sr15"]
[chara_mod name="cg1" time="0" storage="o/sub/mod/150/m_def.png" ]
[return]

*aur_t15
[call target="*aur_s15"]
[chara_mod name="cg1" time="0" storage="o/sub/mod/150/m_t.png" ]
[return]

*aur_tr15
[call target="*aur_sr15"]
[chara_mod name="cg1" time="0" storage="o/sub/mod/150/m_tr.png" ]
[return]

*aur_cl_def15
[call target="*aur_s_cl15"]
[chara_mod name="cg1" time="0" storage="o/sub/mod/150/m_def.png" ]
[return]

*aur_cl_t15
[call target="*aur_s_cl15"]
[chara_mod name="cg1" time="0" storage="o/sub/mod/150/m_t.png" ]
[return]

*delete_f
[iscript]
delete f.t1; delete f.t2; delete f.t3; delete f.t4; delete f.t5; delete f.t6; delete f.t7; delete f.t8; delete f.t9; delete f.t10; delete f.t11; delete f.t12;
[endscript]
[return]

[s]





















