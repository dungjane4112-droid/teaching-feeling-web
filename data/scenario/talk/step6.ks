;;
*day_start_return
[eval exp="f.cos_work=10"][cos_work_union]
[eval exp="f.cafe_wait=0"]
[cm][random_10]
[if exp="f.neph_wst=='ok'"][eval exp="f.neph_wst='off'"][endif]
[if exp="f.neph_wst=='on' && f.r<=6"][eval exp="f.neph_wst='ok'"][endif]
[eval exp="f.tax='on'"]
[if exp="f.thang<=11"][eval exp="f.tax_talk=0"][endif]
[if exp="f.tax_cos>=0"][else][eval exp="f.tax_cos=0"][endif]
[if exp="f.thang>=12 && f.reven>=500000000"]
[eval exp="f.reven_y=f.reven"]
[eval exp="f.reven=0"]
[eval exp="f.tax_cos_y=f.reven_y/10"]
[eval exp="f.tax_cos_y=f.tax_cos_y+f.reven_y/20"]
[eval exp="f.tax_cos=f.tax_cos+f.tax_cos_y"][endif]
[if exp="f.out==1"][eval exp="f.syl_fun=100"][endif]
[if exp="f.out==0 && f.work_c==0"][eval exp="f.syl_fun=f.syl_fun-9"]
[elsif exp="f.out==0"][eval exp="f.syl_fun=f.syl_fun-5"][endif]
[if exp="f.syl_fun>=0"][else][eval exp="f.syl_fun=0"][endif]
[if exp="f.syl_fun>=100"][eval exp="f.syl_fun=100"][endif]
[eval exp="f.game1d=0"][eval exp="f.game2d=0"]
[day_up]
[if exp="f.sch_w=='yet'" ][eval exp="f.r=150000"]
[eval exp="f.zince=f.zince+f.r"][endif]
[dress_per_begin][hair_per_begin][head_per_begin][leg_per_begin][glass_per_begin][under_per_begin][other_per_begin][cloth_per_check][day_reset]
[eval exp="f.cos_work=0"]
[eval exp="f.pin=0" ]
[eval exp="f.glasses=0" ]
[eval exp="f.neck=0" ]
[eval exp="f.hair_band=0" ]
[eval exp="f.hair_style=0" ]
[eval exp="f.act=0" ]
[random_5]
[if exp="f.r==1"][eval exp="f.front_hair=1"]
[elsif exp="f.r==2"][eval exp="f.front_hair=3"]
[elsif exp="f.r==3"][eval exp="f.front_hair=4"]
[elsif exp="f.r==4"][eval exp="f.front_hair=3"]
[elsif exp="f.r==5"][eval exp="f.front_hair=6"]
[endif]
[return]

*a
[iscript]
delete f.hiroba_t; delete f.cafe; delete f.shop; delete f.first_wear; delete f.nade; delete f.intro_flag; delete f.trust; delete f.rape; delete f.talk; delete f.bien;
[endscript]

[eval exp="f.step=6" ][eval exp="f.act='non'" ]
[if exp="f.m_first==1" ][eval exp="f.sex=1" ][eval exp="f.heavn=1" ][eval exp="f.cum=1" ][endif]


*day_start
[chara_00][chara_hide_all ][vigina]
[eval exp="f.cos_work=10"][cos_work_union]
[eval exp="f.cafe_wait=0"]
[cm]

[random_20]
[if exp="f.neph_st==4 && f.r>=5 && f.r<=18"][jump storage="mod/neph_sy_dream.ks" target="*begin"]
[elsif exp="f.neph_st>=5 && f.r==8 && f.neph_wst=='ok'"][jump storage="mod/neph_sy_dream.ks" target="*begin"]
[elsif exp="f.neph_st>=5 && f.r==14 && f.neph_wst=='ok'"][jump storage="mod/neph_sy_dream.ks" target="*begin"]
[elsif exp="f.neph_st>=5 && f.r==9 && f.neph_wst=='on'"][jump storage="mod/neph_sy_dream.ks" target="*begin"]
[endif]
[random_20]

[if exp="f.aur_st>=1 && f.r<=4"]
[eval exp="f.r='non'"]
[elsif exp="f.aur_st>=1 && f.r>=6 && f.r<=10"]
[eval exp="f.r='non'"]
[elsif exp="f.aur_st>=1 && f.r>=12 && f.r<=16"]
[eval exp="f.r='non'"]
[elsif exp="f.aur_st>=1 && f.r>=18"]
[eval exp="f.r='non'"]
[endif]


[if exp="f.aur_dream=='yet' && f.neph_st>=5"]
[else][eval exp="f.r='non'"][endif]
[if exp="f.r<=5 && f.r>=18"][eval exp="f.r='non'"][endif]

[if exp="f.r>=1"]
[hide_message_w][eval exp="f.win_f='c'"][set_win_frame][show_message_w]
[jump storage="mod/H/au_sy_H_dream.ks" target="*begin"][endif]

[random_20]

[if exp="f.ne_aur_hi>=1 && f.au_ne_dr>=1 && f.r==2"]
[jump storage="mod/neph_x_aur_dream1.ks" target="*begin"]
[elsif exp="f.ne_aur_hi>=1 && f.au_ne_dr>=1 && f.r==3"]
[jump storage="mod/neph_x_aur_dream1.ks" target="*begin"]
[elsif exp="f.ne_aur_hi>=1 && f.au_ne_dr>=1 && f.r==8"]
[jump storage="mod/neph_x_aur_dream1.ks" target="*begin"]
[elsif exp="f.ne_aur_hi>=1 && f.au_ne_dr<=0 && f.r>=10"]
[jump storage="mod/neph_x_aur_dream1.ks" target="*begin"]
[endif]
[random_10]
[if exp="f.neph_wst=='ok'"][eval exp="f.neph_wst='off'"][endif]
[if exp="f.neph_wst=='on' && f.r<=6"][eval exp="f.neph_wst='ok'"][endif]
[eval exp="f.tax='on'"]
[if exp="f.thang<=11"][eval exp="f.tax_talk=0"][endif]
[if exp="f.tax_cos>=0"][else][eval exp="f.tax_cos=0"][endif]
[if exp="f.thang>=12 && f.reven>=500000000"]
[eval exp="f.reven_y=f.reven"]
[eval exp="f.reven=0"]
[eval exp="f.tax_cos_y=f.reven_y/10"]
[eval exp="f.tax_cos_y=f.tax_cos_y+f.reven_y/20"]
[eval exp="f.tax_cos=f.tax_cos+f.tax_cos_y"][endif]
[_]
[if exp="f.out==1"][eval exp="f.syl_fun=100"][endif]
[if exp="f.out==0 && f.work_c==0"][eval exp="f.syl_fun=f.syl_fun-9"]
[elsif exp="f.out==0"][eval exp="f.syl_fun=f.syl_fun-5"][endif]
[if exp="f.syl_fun>=0"][else][eval exp="f.syl_fun=0"][endif]
[if exp="f.syl_fun>=100"][eval exp="f.syl_fun=100"][endif]
[eval exp="f.game1d=0"][eval exp="f.game2d=0"]

[day_up]

#Lịch
[if exp="f.thu==1"]Thứ hai/
[elsif exp="f.thu==2"]Thứ ba/
[elsif exp="f.thu==3"]Thứ tư/
[elsif exp="f.thu==4"]Thứ năm/
[elsif exp="f.thu==5"]Thứ sáu/
[elsif exp="f.thu==6"]Thứ bẩy/
[elsif exp="f.thu==7"]chủ nhật/
[endif]
[emb exp="f.ngay"]/[emb exp="f.thang"]/[emb exp="f.nam"].[p]

[if exp="f.sch_w=='yet'" ][eval exp="f.r=150000"]
[eval exp="f.zince=f.zince+f.r"][endif]
[dress_per_begin][hair_per_begin][head_per_begin][leg_per_begin][glass_per_begin][under_per_begin][other_per_begin][cloth_per_check][day_reset][cm]
[eval exp="f.cos_work=0"]
[if exp="f.code_ss=='ful'"][else][c_ch][endif]
[limit_status][clearstack]
[random_10]
;[emb exp="f.r"][p]
[if exp="f.sin_t>=10"][else]
[eval exp="f.r='non'"]
[endif]
[if exp="f.sexless<=0" ]
[eval exp="f.r='non'"]
[endif]

[if exp="f.dress>=21 && f.dress<=29 && f.r>=7 && f.act=='non' && f.m_morning>=1" ]
[jump storage="mod/H/H_bal.ks" target="*begin" ]
[elsif exp="f.dress>=41 && f.dress<=49 && f.r>=7 && f.act=='non' && f.m_morning>=1" ]
[jump storage="mod/H/H_bal.ks" target="*begin" ]
[endif]
[if exp="f.Dne_b[0]=='got' && f.sexless>=2 && f.act=='non'"]
[random_10][else][eval exp="f.r=0"]
[elsif exp="f.lust<=14"][eval exp="f.r=0"]
[endif]
[if exp="f.under_b==0 && f.under_p==0 && f.r>=5" ][jump storage="H/morning.ks" target="*morning" ]
[elsif exp="f.dress>=1000 && f.dress<=1029 && f.r>=7" ][jump storage="H/morning.ks" target="*morning" ]
[elsif exp="f.dress>=21 && f.dress<=29 && f.r>=8" ]
[jump storage="H/morning.ks" target="*morning" ]
[elsif exp="f.dress>=41 && f.dress<=49 && f.r>=8" ]
[jump storage="H/morning.ks" target="*morning" ]
[elsif exp="f.r>=10" ]
[jump storage="H/morning.ks" target="*morning" ]
[endif][dress_random]

[random_10][if exp="f.r>=3 && f.r<=7"]
[eval exp="f.pin=0" ]
[eval exp="f.glasses=0" ]
[eval exp="f.neck=0" ]
[eval exp="f.hair_band=0" ]
[eval exp="f.hair_style=0" ]
[endif]
[if exp="f.r>=3 && f.r<=7 && f.front_hair==2"]
[eval exp="f.front_hair=3" ]
[elsif exp="f.r>=3 && f.r<=7 && f.front_hair==1"]
[eval exp="f.front_hair=4" ][endif]



[if exp="f.hat<=2"][else]
[eval exp="f.hat=0"][endif]
;;;--------------------------mod----------------------------

[random_10]
;[emb exp="f.r"][p]


[if exp="f.pngt>=5"][else]
[eval exp="f.r='non'"]
[eval exp="f.dream='non'"][endif]

[if exp="f.aurelia_tl=='yet' && f.r<=9 && f.r>=2"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.love<=500"]
[eval exp="f.r=10"][endif]

[if exp="f.act=='morning_missional' && f.r<=6 && f.r>=4"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.act=='drunk1' && f.r<=7 && f.r>=2"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.act=='drunk2' && f.r<=9 && f.r>=1"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.act=='non' && f.r==5"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.act=='nonp' && f.r<=8"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.act=='wood' && f.r<=2 && f.r>=5"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.act=='wine' && f.r<=7"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.act=='nurse' && f.r<=6"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.act=='sexxx' && f.r<=8"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.act=='sex' && f.r<=6"]
[jump storage="mod/morning_wekup.ks" target="*begin"][endif]

[if exp="f.sexless>=1 || f.sexless_c>=1"]
[random_10][else][eval exp="f.r=0"][endif]
[if exp="f.bath_lust=='yet' && f.m_morning>=1"][else]
[eval exp="f.r=0"][endif]
[if exp="f.gift>=10 && f.m_morning>=1"][else]
[eval exp="f.r=0"][endif]

[if exp="f.act=='non' && f.r>=6 && f.love>=2000"]
[jump storage="mod/bath_morning.ks" target="*begin"]
[elsif exp="f.act=='non' && f.r>=7 && f.love>=1700"]
[jump storage="mod/bath_morning.ks" target="*begin"]
[elsif exp="f.act=='non' && f.r>=8 && f.love>=1500"]
[jump storage="mod/bath_morning.ks" target="*begin"]
[elsif exp="f.act=='non' && f.r>=9 && f.love>=1000"]
[jump storage="mod/bath_morning.ks" target="*begin"]
[endif]

[eval exp="f.dream='non'"]



;;日始めのムード変更----------------------------------------------------------------------------------------------
[eval exp="f.mood='def'" ]
[if exp="f.sexless_c==3" ][eval exp="f.r=1" ]
[elsif exp="f.sexless_c==2 || f.lust>=2000" ][random_3]
[elsif exp="f.sexless_c==1 || f.lust>=1000" ][random_6][endif]

[if exp="f.r==1" ][eval exp="f.mood='lust'" ][endif]
[if exp="f.sexless_c>=2 || f.lust>=2000" ][jump target="*show_syl" ][endif]

[if exp="f.sexless_c==1 || f.lust>=1500" ][random_10]
[elsif exp="f.lust>=1000" ][random_8]
[else][random_6][endif]
[if exp="f.r==1" ][eval exp="f.mood='calm'" ][endif]

*show_bace
[cm][limit_status][clearstack]

;;キャラ表示----------------------------------------------------------------------------------------------
*show_syl
[cm][chara_00]

[set_sit][f/s_nt][set_time][show_sit]
[if exp="f.last_act=='dress_up'" ]
[jump storage="talk/dress_talk.ks" target="*check" ][endif]
;;朝トーク----------------------------------------------------------------------------------------------
[if exp="f.act>=0 && f.act<=8" ][else][syl][endif]
[if exp="f.act=='non'" ][eval exp="f.act=0" ][bgm_SG]
	[f/ss]…Chào buổi sáng、[name][p_]
[elsif exp="f.act=='nonp'" ][eval exp="f.act=0" ][bgm_SG]
	[f/p]…Chào buổi sáng、[name][p_]
[elsif exp="f.act=='wine'" ][eval exp="f.act=0" ][bgm_SG]
	[f/p]…Chào buổi sáng、[name][p_]
	[f/clc]Hôm qua… Em xin lỗi。[lr_][r_29]
	[f/cp]Mấy ly rượu đó… làm em ngủ thiếp đi lúc nào không hay…。[p_]
[elsif exp="f.act=='sex'" ]
[eval exp="f.act=0" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][bgm_SG]
	[f/clp]…Chào buổi sáng、[name][p_]
	[f/p]Tối qua… Um… [um_02][lr_]Thật tuyệt, và…[p_]Em ngất đi lúc nào không hay.[p_]
	[f/clp][um_07]
Khi em tỉnh dậy thì trời đã sáng… [lr_]Em xin lỗi[p_]
[elsif exp="f.act=='sexxx'" ]
[eval exp="f.act=0" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][bgm_SG]
	[f/clp]…Chào buổi sáng、[name][p_]
	[f/cp]Hôm qua, um… em xin lỗi vì em thật ngốc nghếch.[p_]
	[f/clcp]Em không thể kiểm soát cơ thể mình được nữa…[p_]
	[f/clp]Nhưng mà, hôm qua anh quả thật rất tuyệt [name]…♥♥[sm_20][p_]
	[f/p]Em cũng không nhớ rõ lắm, nhưng mà…[lr_][a_04]
	Chúng mình… làm điều đó nhiều lắm, đúng không?[p_][um_07]
	[f/re]…Chân của em bây giờ vẫn còn mỏi.[p_]
	[f/clcp]Có sao không nếu em nghỉ ngày hôm nay?[p_]
[elsif exp="f.act=='morning'" ][eval exp="f.daily_act='apron_sex'" ]
[eval exp="f.act=3" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][bgm_SG]
	[f/p]…Mồ~、[um_09]…Bình tĩnh nào. [lr_][um_02]
	[f/re]Lại nào,てChào buổi sáng。[p_]
	[f/clp]Cũng đã gần trưa rồi. [lr_]
	[f/re]Bởi vì [name] làm điều ấy khá lâu sáng nay…[p_]
	[f/p]…Nhưng em không ghét điều ấy đâu.[p_]
[elsif exp="f.act=='wood'" ]
[eval exp="f.act=0" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][bgm_SG]
	[f/clp]…Chào buổi sáng、[name][p_]
	[f/p]Cảm ơn anh đã đưa em về hôm qua.[p_]
	[f/re]Nhưng có vẻ như em đã mệt và ngủ trên đường về…[p_]
	[f/clp]Em xin lỗi…[p_]
[elsif exp="f.act=='nurse'" ]
[eval exp="f.act=0" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][bgm_SG]
	[f/clp]…Chào buổi sáng、[name][p_]
	[f/p]Hôm qua chúng ta đã làm bẩn một tấm thảm ở phòng khám…。[lr_]
	[f/clp]Em chắc chắn sẽ dọn sạch nó sớm…[p_]
[elsif exp="f.act=='sexmax'" ]
[eval exp="f.act=3" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][eval exp="f.out='syl'" ][bgm_SG]
	[f/clp]…Chào buổi sáng、[name][p_]
	[f/p]Dù sao thì, tụi mình đã làm điều ấy đền sáng…[p_]
	[f/clp]Cũng đã gần trưa rồi…có lẽ chúng ta nên ăn gì đó.[p_]
	…。[p_]
	[f/cp]Mn… Em xin lỗi, có lẽ như em không thể đứng được. [lr_][r2_13]
	[f/re]Cơ thể em vẫn còn run rẩy…[p_]
[elsif exp="f.act=='morning_missional'" ]
[eval exp="f.act=0" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][bgm_SG]
[f/p]…Chào buổi sáng、[name][p_]
	[f/clc]Hôm qua… Em xin lỗi。[lr_][r_29]
	[f/cp]Mấy ly rượu đó… làm em ngủ thiếp đi lúc nào không hay…。[p_]
	[f/sq]Rồi sau đó em không còn nhớ rõ chuyện gì xảy ra nữa…。[p_]
[elsif exp="f.act=='drunk1'" ]
[eval exp="f.act=1" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][bgm_SG]
[f/p]…Chào buổi sáng、[name][p_]
	[f/clc]Hôm qua… Em xin lỗi。[lr_][r_29]
	[f/cp]Mấy ly rượu đó… làm em ngủ thiếp đi lúc nào không hay…。[p_]
	[f/sq]Rồi sau đó em không còn nhớ rõ chuyện gì xảy ra nữa…。[p_]
	[f/sq][na_1] Chỉ là sáng nay khi thức dậy em thấy cơ thể rất thoải mái ♥♥[p_]
	[f/ssp]Lần sau chúng ta lại uống nữa nhé ♥♥ [p_][sm_05]~*smile*[p_]
[elsif exp="f.act=='drunk2'" ]
[eval exp="f.act=2" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][bgm_SG]
[f/p][um_01]Um, dù có hơi muộn nhưng… Chào buổi sáng、[name][p_]
	[f/sclp][um_10]Hôm qua… Em xin lỗi。[lr_][r_29]
	[f/cp]Mấy ly rượu đó… làm em ngủ thiếp đi lúc nào không hay…。[p_]
	[f/sq]Rồi sau đó em không còn nhớ rõ chuyện gì xảy ra nữa…。[p_]
	[f/sq][na_1] Chỉ là sáng nay khi thức dậy em thấy cơ thể hơi mệt nhưng rất thoải mái ạ!♥♥[p_]
	[f/re][um_11]Tự nhiên mọi lo lắng vu vơ thường ngày bỗng tan biến ~.~♥♥[lr_] 
	[f/ssp]Lần sau chúng ta lại uống nữa nhé ♥♥ [p_][sm_05]~*smile*[p_]
[elsif exp="f.act_mod=='townsex'" ]
[eval exp="f.act_mod='non'"][bgm_SG]
	[f/p_nt][um_01]Um~! [name][lr]
	[f/clp]Hôm nay anh đã vất vả rồi ạ![lr_]
	[f/sclcp]E-Em cảm ơn anh rất nhiều vì đã đưa em đi d-dạo ạ![p_][f/scp_nt][sm_19]
[elsif exp="f.act=='aureliah'" ]
[eval exp="f.act=1" ][bgm_SG]
    [f/s]Umm! [name][lr_]
	[f/re]Anh có lẽ đã mệt rồi nên hôm nay hay nghỉ ngơi thôi nhé.[p_]
	[f/c]Tuy nhiên…[l_][f/s]Lần sau hãy cho em đi theo nếu anh ra ngoài nhé[p_]
[elsif exp="f.act=='dream'" ]
[eval exp="f.act=1" ][bgm_SG]
    [f/sp_nt]~♪♪♪[p]
[elsif exp="f.act=='doggy'" ][bgm_SG]
	 [f/sp_nt]~♪♪♪[p]
[elsif exp="f.act=='nephwekup'" ][bgm_SG]
	 [f/p]…、[um_09][lr_]
	[f/re]Chào buổi sáng, [name]。[p_]
	[f/clp]Cũng đã gần trưa rồi. [p_]
	[f/sp][na_1]Nephy-san sáng nay có ghé qua chơi đó…[lr_]
	[f/clp][um_02]Mà...gọi mãi nhưng [name] không chịu dậy.[p_]
	[f/sp_nt]
	[eval exp="f.act=0"]
[endif]
[if exp="f.act>=0"][else]
[eval exp="f.act=0"][endif]

[if exp="f.thu>=6 && f.thu<=7 && f.act<=1 "]
[cm][syl][f/s]Mà...Hôm nay là ngày nghỉ nhỉ?[lr_]
[f/ssp]
Em sẽ có thật nhiều thời gian ở bên [name].[p_][f/sp_nt][sm_05]
[jump target="*before_menu"]
[endif]
[if exp="f.last_act=='sch_fun'"]
[eval exp="f.last_act=='non'"]
[syl][f/s_nt][um_10]Umm~[p_]
[_](...?[p]
[syl][f/s]Ở trường hôm nay vẫn ổn ạ![lr_]
[f/scl]Em rất vui khi được đến lớp mỗi ngày[p_][f/s_nt][sm_09]
[endif]



;;メニュー表示----------------------------------------------------------------------------------------------
*before_menu
[if exp="f.s_studi=='yet' && f.act==1 && f.thu<=5"]
[cm][eval exp="f.act=0"]
[_](Đã đến lúc Sylvie cần đến trường...[p]
[eval exp="f.act=0"]
[jump storage="mod/school/schl_af.ks" target="*after"][endif]

[if exp="f.s_studi=='yet' && f.act==2 && f.thu<=5"]
[cm][eval exp="f.act=0"]
[_](Giờ đã đến lúc Sylvie cần đến trường...[p]
[eval exp="f.act=0"]
[jump storage="mod/school/schl_af.ks" target="*after"][endif]

[-][if exp="f.act>=7" ][jump target="*night" ][endif]
[mood_calc][set_time]
[clickable_touch][clickable_touch_scar][clickable_touch_hair]
[show_button]

;;夜分岐---------
*night
[-][stop_bgm][eval exp="f.act='non'" ]
[if exp="f.hp<=90"]
[jump  target="*day_end" ]
[endif]
[if exp="f.mood=='lust'" ][eval exp="f.sexless=f.sexless+2" ]
[elsif exp="f.mood=='calm'" ][jump target="*day_end" ]
[else][eval exp="f.sexless=f.sexless+1" ][endif]

[if exp="f.v_wait==1 || f.v_wait==2" ][to_sexless2]
[elsif exp="f.v_wait==3 || f.v_wait==4" ][jump target="*cant_wait" ][endif]

[if exp="f.lust<=30" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ][jump target="*day_end" ]
[elsif exp="f.lust<=500" ][jump target="*x" ][elsif exp="f.lust<=1000" ][jump target="*xx" ]
[else][jump target="*xxx" ][endif]


*x
[if exp="f.sexless>=4 && f.sexless_c==0 && f.sin_t>=50" ][to_day_end_h]
[elsif exp="f.sexless>=4 && f.sexless_c==1 && f.sin_t>=50" ][to_sexless1]
[elsif exp="f.sexless>=4 && f.sexless_c==2 && f.pngt>=60" ][to_sexless2]
[elsif exp="f.sexless>=4 && f.sexless_c==3 && f.sin_t>=70" ][jump target="*cant_wait" ]
[elsif exp="f.sexless>=3 && f.sexless_c==3 && f.pngt>=90" ][jump target="*day_end_h" ]
[else][jump target="*day_end" ][endif]

*xx
[if exp="f.sexless>=3 && f.sexless_c==0 && f.sin_t>=30" ][to_day_end_h]
[elsif exp="f.sexless>=3 && f.sexless_c==1 && f.sin_t>=30" ][to_sexless1]
[elsif exp="f.sexless>=3 && f.sexless_c==2 && f.pngt>=40" ][to_sexless2]
[elsif exp="f.sexless>=3 && f.sexless_c==3 && f.sin_t>=50" ][jump target="*cant_wait" ]
[elsif exp="f.sexless>=2 && f.sexless_c==3 && f.gift>=60" ][jump target="*day_end_h" ]
[else][jump target="*day_end" ][endif]

*xxx
[if exp="f.sexless>=2 && f.sexless_c==0 && f.pngt>=10" ][to_day_end_h]
[elsif exp="f.sexless>=2 && f.sexless_c==1 && f.pngt>=20" ][to_sexless1]
[elsif exp="f.sexless>=2 && f.sexless_c==2 && f.pngt>=20" ][to_sexless2]
[elsif exp="f.sexless>=2 && f.sexless_c==3 && f.pngt>=30" ][jump target="*cant_wait" ]
[elsif exp="f.sexless>=1 && f.sexless_c==3 && f.pngt>=40" ][jump target="*day_end_h" ]
[else][jump target="*day_end" ][endif]

;;夜トーク----------------------------------------------------------------------------------------------
*day_end
[if exp="f.sex_bath=='non' && f.sex_kitchen=='non' && f.sex_door=='non'"][else]
[eval exp="f.sexless=0"][eval exp="f.sexless_c=0"][endif]
[_]…[p_]（Cũng đã tối rồi… có lẽ mình nên chuẩn bị đi ngủ[p_]
[syl]
[random_10]
[if exp="f.syl_fun<=10 && f.r>=7"]
[eval exp="f.hp=f.hp-8"][hp_return][endif]
[if exp="f.syl_fun<=50 && f.r>=7"]
[f/][um_09][name] à…[p_]
[f/scl] Đã lâu rồi chúng ta không ra ngoài đi dạo rồi nhỉ。[p_]
[f/sp]Hay là ngày mai chúng ta cùng đi đâu đó nhé。[p_]
[_][black]…[p_][bad_check][jump target="*day_start" ]
[elsif exp="f.syl_fun<=30 && f.r>=7"]
[f/][um_09][name] à…[p_]
[f/cl] Đã lâu rồi chúng ta không ra ngoài đi dạo。[p_]
[f/][um_09]Em cảm thấy… hơn chán nản ạ[p_]
[_][black]…[p_][bad_check][jump target="*day_start" ][endif]

[if exp="f.wine_act=='done'" ]
[f/cl]Fua~nn…。[lr_]
[f/p]Un、Chắc do uống rượu nên em khá là buồn ngủ。[p_]
[elsif exp="f.daily_out=='cafe'" ]
[f/s]Hôm nay món tráng miệng từ tiệm cà phê ngon thật đấy。[lr_]
[f/ss]Nếu có thể, em muốn cùng anh đến đó nữa。[p_]
[elsif exp="f.daily_out=='dinner'" ]
[f/s]Bữa ăn ở nhà hàng đó rất ngon。[lr_]
[f/ss]Em thấy no bụng nên tối nay sẽ ngủ ngon đây。[p_]
[elsif exp="f.daily_out=='shop_d'" ]
[f/s]Cảm ơn anh vì bộ đồ đã mua cho em hôm nay。[lr_]
[f/ss]Ước gì ngày mai em có thể mặc nó luôn và đi chơi với [name]…。[p_]
[elsif exp="f.daily_out=='shop_a'" ]
[f/s]Cảm ơn anh vì món quà đã mua hôm nay。[lr_]
[f/ss]Em muốn có thể cùng đi chơi với [name] vào ngày mai。[p_]
;[elsif exp="f.daily_out=='alone'" ]
;今日はお買い物ご苦労様でした。[lr_]
;お留守番もちゃんとできますけど…
;[elsif exp="f.daily_out=='picnic'" ]
[elsif exp="f.work_c==1" ]
[f/s]Công việc hôm nay rất tuyệt。[lr_]
[elsif exp="f.tea_time==2" ]
[f/s]Chúng ta đã uống trà vào buổi chiều…quãng thời gian đó thật tuyệt。[lr_]
[f/ss][miyage] mà [name] đã mua hôm nay cũng thật ngon。[p_]
[elsif exp="f.tea_time==1" ]
[f/s]Chúng ta đã uống trà vào buổi chiều…quãng thời gian đó thật tuyệt。[p_]
[elsif exp="f.daily_nade>=4" ]
[f/s]Em đã được [name] "cưng chiều" nhiều hơn ngày hôm nay。[lr_]
[f/sp]Em thực sự rất hạnh phúc…。[p_]
[elsif exp="f.daily_wood>=2" ]
[f/ss]Hôm nay thật vui vì được đi chơi cùng [name]。[lr_]
[f/s]Em cảm thấy thật yên bình dưới mầu xanh của lá cây。[p_]
[elsif exp="f.daily_market>=4" ]
[f/ss]Hôn nay, được đi cùng [name] thật sự rất vui。[lr_]
[f/s]Mỗi một gian hàng đều thật mới mẻ。[p_]
[elsif exp="f.daily_hiroba>=4" ]
[f/ss]Hôm nay, được dạo phố cùng [name] thật sự rất tuyệt。[lr_]
[f/s]Quãng thời gian thư giãn bên đài phun nước thật tuyệt。[p_]
[elsif exp="f.daily_act=='apron_sex'" ]
[f/clp]Hôm nay chúng ta đ-đã…[lr_]
[f/p]Em cảm thấy thời gian hôm nay trôi qua hơi nhanh。[p_]
[elsif exp="f.daily_talk>=4" ]
[f/s]Hôm nay em đã không làm gì cả、[lr_]
Nhưng thật vui khi được trò chuyện thật nhiều với [name] ♥♥。[p_]
[else][endif]

[f/s]…Hôm nay chúng ta hãy đi ngủ sớm,[p_][f/ssp]Tối nay, cùng nhau…♥♥[l_][sm_09]。[lr_]
[f/ss]Chúc anh ngủ ngon…。[p_]
[_][black]…[p_][bad_check][jump target="*day_start" ]

*day_end_h
…[p_]（Cũng đã tối rồi… có lẽ mình nên chuẩn bị đi ngủ…[p_]
[syl][f/p_nt]…[um_05][p_]
[f/cl]Ah, không có gì đâu。[lr_]
[f/s]Chúng ta nên đi ngủ sớm。[p_]
[_][black]…[p_][bad_check][jump target="*day_start" ]

*cant_wait
[f/cp_nt]…[p_]（Cũng đã tối rồi… có lẽ mình nên chuẩn bị đi ngủ…[p_]
[syl][f/clcp]…[p_]
[_][jump storage="H/sexless3.ks" target="*sexless3" ]


;;トーク-------------------------------------------------------------------------------------------------
*talk1
[f/s][name]？[lr_]
[f/ssp]…[suki_2]…Em yêu anh♥♥♥。[p_][after_talk]
*talk2
[f/clc]Chúng ta sẽ mãi mãi bên nhau, đúng không…?[um_05][p_][after_talk]
*talk3
[f/scl][um_10]Đi chơi rất vui, nhưng ở nhà cùng nhau cũng rất tuyệt。[p_]
[eval exp="f.lust=f.lust-1" ][after_talk]
*talk4
[random_10][if exp="f.r>=3 && f.s_studi=='yet' && f.sch>=2"][jump target="*talk4_1"][endif]
[f/s][ii_1]E-Em vui lắm。[lr_]
[f/scl]Chỉ cần ở bên [name], thì cho dù nhớ lại những điều trong quá khứ vẫn không làm em tổn thương tí nào。[p_][after_talk]

*talk4_1
[f/s][ii_1]E-Em vui lắm。[lr_]
[f/scl]Được ở bên [name] và được tới trường hàng ngày。[p_]
[f/ssp]Cuộc sống hiện tại thật kỳ diệu với em...[p_]
[after_talk]

*talk5
[f/sp]…[name][sm_19]。[p_][after_talk]
*talk6
[f/sp_nt]…。[eh_01][p_]
[f/ssp_nt][sm_19]…。[p_]
[_]（Dù cho tôi không làm gì cả, em ấy vẫn nở nụ cười với tôi. Em ấy thật dễ thương[p_][after_talk]
*talk7
[f/clp_nt]…[p_]
[_]（Em ấy xích lại gần hơn tôi mà không nói bất cứ điều gì。[p_][after_talk]
*talk8
[random_10][if exp="f.r>=3 && f.s_studi=='yet' && f.sch>=2"][jump target="*talk8_1"][endif]
[f/s]Mỗi khi em ở bên [name] em có thể quên hết quá khứ của mình。[p_][after_talk]

*talk8_1
[f/s]Hàng ngày được ở bên [name] và đến lớp học cùng mọi người...[lr_]
[f/scl]Cuộc sống như vậy là một điều kỳ diệu với em...。[p_][after_talk]

*talk9
[f/clc][name] Nếu [name] không ở bên em, em thấy lo lắm。[lr_]
[f/c]Em có thể ở bên anh mãi được không?[p_][after_talk]

*talk10
[f/clc]Em không thích ngủ một mình nữa…[um_09][lr_]
[f/c]Hãy ngủ cùng với em。[p_][after_talk]
*talk11
[f/s]Nếu em ở bên [name], tất cả mọi thứ đều trở nên thật vui vẻ。[sm_05][p_][after_talk]

*talk12
[f/scl]Tất cả những gì [name] cho em đều sẽ là kho báu của em。[lr_]
[f/sp]Mọi việc, những cảm xúc, và cả những kỉ niệm… Em yêu anh[p_]
[eval exp="f.lust=f.lust-1" ][after_talk]

*talk13
[f/sp]Em muốn [name] yêu em nhiều hơn nữa[um_10]。[lr_]
[f/re]Em sẽ cố gắng hết mình。[p_][after_talk]

*talk14
[f/c]Những vết sẹo của em không xấu chứ?[lr_]
[f/re][um_02]Nếu [name] không thích chúng, em sẽ dấu chúng hết mức có thể…[p_]
[eval exp="f.lust=f.lust-1" ][after_talk]

*talk15
[f/sclp][um_09]Xin anh đừng đi đâu cả…。[p_][after_talk]
*talk16
[f/s]Có việc gì anh muốn em làm không？[lr_]
[f/re]Em muốn được làm gì đó cho anh, [name]。[p_][after_talk]
*talk17
[f/s][a_02]Anh có khát không?[lr_]
[f/re]Để em lấy một ít nước cho anh nhé?[p_][after_talk]
*talk18
[f/s][a_02]Anh có đói không?[lr_]
[f/re]Em có thể làm một vài món đơn giản cho anh。[p_][after_talk]
*talk19
[f/]Em sẽ cố gắng hơn trong việc dọn rửa, giặt ủi, nấu ăn…。[lr_]
[f/cl]Em có thể làm gì khác không?…。[p_][after_talk]
*talk20
[f/s]Nếu có thể, em có thể giúp anh trong công việc được không, [name]？[p_][after_talk]
*talk21
[f/c][a_02]Có phải là cô bán hàng ở tiệm quần áo có hơi đáng sợ？[lr_]
[f/re]Em phải nói thể nào nhỉ… cứ như là thật khó để hiểu cô ấy là người thế nào…。[p_][after_talk]

*talk22
[random_10][if exp="f.r>=3 && f.s_studi=='yet' && f.sch>=2"][jump target="*talk22_1"][endif]
[f/c][a_02]Anh có thích những phụ nữ gợi cảm không, [name]？[lr_]
[f/clc]Cứ mỗi khi em gặp cô bán hàng ở tiệm quần áo, em bỗng thấy có một chút tự ti…。[p_][after_talk]

*talk22_1
[f/c][a_02]Anh có thích những phụ nữ gợi cảm không, [name]？[lr_]
[f/clc]Cứ mỗi khi em gặp cô bán hàng ở tiệm quần áo, em bỗng thấy có một chút tự ti…。[p_]
Thêm cả Lily-sensei ở trường nữa…。[p_][after_talk]

*talk23
[f/]Nếu em gặp lại chủ nhân trước của em, em muốn cảm ơn ông ấy。[p_]
[f/cl]Ông ấy không tốt lắm, nhưng ông không làm điều gì độc ác với em、[lr_]
[f/s]và em cũng muốn cảm ơn ông ấy đã đem em tới đây。[p_][after_talk]
*talk24
[f/cl_nt]…。[p_]
[_]（…。[p_]
[syl][f/cp]…[um_05]Ah, em xin lỗi。[lr_]
[f/re]Có vẻ như em đã ngủ quên[p_]
[eval exp="f.lust=f.lust-1" ][after_talk]
*talk25
[random_10][if exp="f.r>=3 && f.s_studi=='yet' && f.sch>=2"][jump target="*talk25_1"][endif]
[f/c]Đi ra ngoài với [name] rất vui, nhưng em vẫn còn hơi sợ mọi người xung quanh…。[p_][after_talk]

*talk25_1
[f/p]Đi ra ngoài với [name] rất vui,[r]
 nhưng em vẫn còn hơi sợ mọi người xung quanh…。[p_]
[f/ssp]Nhưng ở trường lại khác. Mọi người rất thân thiện với em…。
[p_][after_talk]

*talk26
[f/s]Em thật sự rất may mắn khi được gặp anh, [name]。[lr_]
[f/sclp]cứ như tất cả những nỗi buồn của em cho đến bây giờ đã tan biến…。[p_][after_talk]

*talk27
[random_10][if exp="f.r>=3 && f.s_studi=='yet' && f.sch>=2"][jump target="*talk27_1"][endif]
[f/]Em có thể xem qua cuốn sách trên kệ được không？[lr_]
[f/re]Em có thể đọc và viết。[p_]
[f/re]Em có thể giúp [name] nếu em chăm chỉ hơn。[p_][after_talk]

*talk27_1
[f/s]Em có thể xem qua cuốn sách trên kệ được không？[lr_]
[f/re]Em nghĩ em có thể một chút。[p_]
[f/ss]Em có thể giúp [name] nếu em chăm chỉ học tập hơn。[p_][after_talk]

*talk28
[random_10][if exp="f.r>=5"][jump target="*talk28_1"][endif]
[f/]Anh không mua đồ gì cho anh sao, [name]？[p_]
[f/c]Anh lúc nào cũng mua đồ cho em cả…。[p_][after_talk]

*talk28_1
[f/s]Em thật sự rất vui khi được anh mua đồ cho、[lr_]
và cho em ăn những món ăn ngon。[p_]
[f/]Việc đó không làm vướng tay anh chứ?[lr_]
[f/ssp]Miễn là [name] ở cạnh em, em đã hạnh phúc lắm rồi。[p_][after_talk]

*talk29
[f/]Những bệnh tật và vết thương của những bệnh nhân dường như không quá nghiêm trọng、[lr_]
đây quả thật là một thị trấn yên bình。[p_]
[f/cl]Nơi em lớn lên thật sự không thanh bình lắm。[p_][after_talk]

*talk30
[random_10][if exp="f.r>=3 && f.s_studi=='yet' && f.sch>=2"][jump target="*talk30_1"][endif]
[f/]Ở các biệt thự em đã sống trước đây còn rất nhiều nô lệ khác。[p_]
[f/c]Nô lệ làm công việc nhà và lao động。[lr_]
[f/re]Nô lệ để giữ công ty cho "ông ta" vào ban đêm。[lr_]
[f/clc]Lúc em ở đó em chỉ đắm chìm trong nỗi đau。[p_][after_talk]

*talk30_1
[f/s]Ở trường mọi người đều rất thân thiện。[lr_]
[f/scl]Bạn bè, sempai, sensei..。[p_]
[f/ssp]T-Tất nhiên tốt nhất vẫn là [name_w]-sensei[wait time="300"][sm_07]。[p_]
[after_talk]


*talk31
[f/]Chủ nhân trước của em。[lr_]
[f/cl]Người ta bảo ông ấy qua đời trong 1 tai nạn, nhưng đó không phải là sự thật。[p_]
[f/re]Ông ấy giết bởi một tổ chức nào đó…。[p_]
[after_talk]
*talk32
[f/]Chủ nhân trước của em、[lr_]
Ông ta rất thích hành hạ những nô lệ khác。[p_]
[f/clc]….Nếu lúc đó em bị đánh đập dã man như họ、[lr_]
Em có lẽ đã chết như những người khác。[p_][after_talk]
*talk33
[f/cl]Đã từ rất lâu rồi, em đã nhận ra rằng xung quan em không có gì để gọi là gia đình。[lr_]
[f/c]….[a_02]Vậy… [name] Em có thể xem đây là  một gia đình không？[p_][after_talk]
*talk34
[f/c]Cơ thể em khá nhỏ nhắn, nhưng… anh có ghét điều đó không？[lr_]
[f/re]Em nghĩ là sẽ cố phát triên thêm tí nữa…。[p_][after_talk]
*talk35
[f/s]Mỗi khi em nghĩ về [name] em cảm thấy hạnh phúc.。[lr_]
[f/clcp]Em cảm thấy rất hạnh phúc。[p_][after_talk]
*talk36
[f/cp][name]…。[lr_]
[f/re][um_01][name]… [lr_]Anh sẽ….ôm em chứ？[p_][after_talk]
*talk37
[f/clp_nt]ん…[p_]
[_]（Em ấy đột nhiên hôn tôi[p_]
[mouth_up_little][after_talk]
*talk38
[f/cp]Cơ thể của em cứ như nóng lên mỗi khi ta bên nhau…。[p_]
[after_talk]
*talk39
[f/sp][um_10]Em là của [name]。[lr_]
[f/re]Cả cơ thể và tâm hồn của em đều là của [name]…。[p_][after_talk]
*talk40
[random_10][if exp="f.r>=3 && f.s_studi=='yet' && f.sch>=2"][jump target="*talk40_1"][endif]
[f/cl]Nếu em được sinh ra trong một gia đình bình thường, có lẽ em sẽ không có một quá khứ đau buồn như thế。[lr_]
[f/re]Nhưng, nếu đó là sự thật thì em cũng chả bao giờ gặp anh, [name]。[p_]
[f/s]Mỗi khi nghĩ như thế, em thấy thật tốt khi mình là một đứa trẻ mồ côi。[p_][after_talk]

*talk40_1
[f/scl]Nếu em được sinh ra trong một gia đình bình thường,[r] 
được chăm sóc bởi người thân, được đi học。...[p_]
[f/re]Nhưng lại không có [name] ở bên。[p_]
[f/s]Mỗi khi nghĩ như thế, em thấy cuộc sống hiện tại này thật tốt。[p_][after_talk]

*talk41
[f/ssp]Mỗi khi em ở bên [name], em cảm thấy rất hạnh phúc dù cho chúng ta đang ở đâu hay làm gì。[p_]
[after_talk]
*talk42
[f/clp]Khi em ở bên [name], quá khứ của em như dần tan biến。[p_][after_talk]
*talk43
[f/clp]Em thấy thật tốt khi trở thành nô lệ của anh. Xin hãy để em mãi mãi bên cạnh anh。[p_][after_talk]
*talk44
[f/clp][name]。[lr_]
[f/re]Nếu anh muốn em làm gì, xin đừng ngần ngại mà hãy nói ra。[lr_]
[f/sp]Em sẽ luôn phục vụ anh。[p_][after_talk]
*talk45
[f/]Cô bán hàng đó bán rất nhiều loại quần áo kì quặc, có cả những thứ không phải quần áo。[p_]
[f/sp]Em vẫn sẽ mặc tất cả những gì anh muốn, [name]。[p_][after_talk]
*talk46
[f/cl]Anh đã dạy em rất nhiều điều, [name]。[p_]
[f/s]Sự tốt bụng, ấm áp, ngọt ngào, và cả niềm vui。[lr_]
[f/clp]…Và… những cảm giác thật tuyệt vời。[p_][after_talk]
*talk47
[f/cp][um_01]Gần đây, mỗi khi [name] chạm vào em、[lr_]
Chỗ đó của em cứ như đang thắt chặt lại。[p_][after_talk]
*talk48
[f/cp_nt]
[_]（Sylvie ngại ngùng và ôm chặt 2 đùi của em ấy[p_]
[syl][um_05]…。[p_]
（Đôi má em ấy đỏ ửng lên mỗi khi chúng tôi nhìn nhau。[p_][after_talk]
*talk49
[f/cp][um_05][name]…　[p_]
[_]（Em ấy gọi tôi với 1 giọng e thẹn và tiến lại gần[p_][after_talk]
*talk50
[if exp="f.syl_j>=1"]
[f/clp][um_01]Umm~ [name] à…![lr_]
[f/p]hình như anh thích phụ nữ có cơ thể nóng bỏng giống như…[lr_]
[f/clp]…như là cô chủ cửa hàng thời trang nhỉ?[p_][after_talk][endif]
[f/cp][um_14][name]、[name], um…。[lr_]
[f/clcp][eh_01]…Ah…K-Không có gì đâu。[p_]
[_]（Quả thực em ấy hơi ngại ngùng。[lr_]
Có lẽ tôi đang tưởng tượng, nhưng có vẻ hơi thở em ấy như mạnh hơn。[p_]
[after_talk]
*talk51
[f/clp_nt][um_13]Un…[p_]
[_]（Sylvie bỗng nhiên hôn tôi。[lr_]
Hơi thở nóng bỏng và lưỡi của em ấy chạm vào miệng tôi。[p_]
[syl][f/re][r_01]Mn… Ah♥♥♥[p_]
[mouth_up_little][after_talk]
*talk52
[f/clp_nt][r_02]Un…[p_]
[_]（Không nói một lời nào, Sylvie ôm tôi từ phía sau。[lr_]
Tôi có thể cảm thấy thân nhiệt của em ấy và nhịp tim đang tăng dần phía sau lưng。[p_][after_talk]
*talk53
[f/cp][um_10]Em có thể… xích lại gần anh được không？[p_]
[_]（Cô ấy đi chuyển trước khi tôi kịp trả lời。[p_]
[syl][f/clp_nt][sm_09]Fufu…n…。[p_]
[_]（Cô ấy giữ chặt lấy tôi、[lr_]
rồi nhẹ nhàng lay động, như thể cô ấy cố xoa bụng cô ấy。[p_]
[after_talk]
*talk54
[f/p_nt]
[_]（…[p_]
（Tôi chạm nhẹ vào má của Sylvie khi cô nghiêng đầu vào vai tôi。[p_]
[syl][f/p][um_01]…Um … Um♥[p_]
[_]（Sylvie ngậm ngón tay của tôi[p_]　
[syl][f/clp_nt][r_01]Un、chuu~…。[lr_]
[f/re][um_14]Hah~…~…。[p_]　
[_]（Cô ấy bắt đầu liếm ngón tay tôi say đắm。[p_]
[mouth_up_little][after_talk]
*talk55
[f/cp]Em nghĩ… Em không thể làm gì nếu không có [name]…。[lr_]
[f/re]Làm gì cơ…? Mọi thứ…。[p_]
[after_talk]
*talk56
[f/cp]Có vẻ như em đã làm như anh mong muốn [name]。[lr_]
[f/re]cả tâm hồn của em, và cơ thể này…[p_][after_talk]
*talk57
[if exp="f.syl_j>=1"]
[f/clp][um_01]Umm~ [name] à…![lr_]
[f/p]gần đây khi anh từ bên ngoài về em luôn cảm thấy có mùi nước hoa khá quen thuộc…[lr_]
[f/clp]Chỉ là em thấy tò mò chút thôi ạ.[p_][after_talk][endif]
[f/cp]Gần đây, em vẫn không quên được cảm giác được ôm bởi [name]…。[lr_]
[f/re]Bụng em… bỗng dưng khó chịu lắm…。[p_]
[after_talk]
*talk58
[f/p][um_01][name]？[lr_]
[f/re]Em luôn sẵn sàng mọi lúc, [name]…。[p_]
[f/p]Nếu anh cảm thấy điều đó không nên giữ vào trong tâm trí、[lr_]
thì đừng giữ lại, nha？[p_][after_talk]
*talk59
[f/clcp]Um… Thật ra là, đã có một thời gian em đã dấu [name], …sono~…。[lr_]
[f/cp]Em đã tự mình thủ dâm。[p_]
[f/clcp]Nhưng, đó không phải là tất cả、[lr_]
[f/re]em không thể giữ mình được…。[lr_]
[f/cp]Em không thể chịu được nữa trừ khi anh làm việc đó với em, [name]…。[um_09][p_]
[after_talk]
*talk60
[f/cp][name]…。[p_]
[_]（Sylvie ôm tôi từ phía trước。[p_]
[f/re][name]…。[name]…。[p_]
（Cô ấy vẫn cứ gọi tên tôi[lr_]
Nhưng cô ấy nhìn lên tôi với đôi mắt ướt đẫm, như muốn nói với tôi một điều gì đó。[p_]
[eval exp="f.h_b=f.h_b+1" ][after_talk]
*talk61
[f/][um_09]Thật ra thì em bị mọi người chú ý bởi những vết sẹo…[p_]
[f/cl]Nhưng cho đến khi nào anh ghét chúng, [name], Em thấy không sao hết。[p_]
[f/sp]Với em, anh là tất cả, [name]。[p_][after_talk]
*talk62
[f/cp]Thậm chí đôi lúc em nghĩ em hơi dâm…。[p_]
[f/re]….Anh có ghét người con gái như thế không, [name]？[lr_]
Theo em nghĩ, điều đó không hay cho lắm…？[p_]
[after_talk]
*talk63
[f/cp]Em thấy mình mạnh mẽ hơn mỗi khi nghĩ về anh, [name]…。[p_]
[f/clcp]Nhưng, mỗi khi anh ở gần thì em lại bị lạc trong suy nghĩ, khi anh đi xa, em lại lo lắng…。[p_][after_talk]
*talk64
[if exp="f.syl_j>=1"]
[f/clp][um_01]Umm~ [name] à…![lr_]
[f/p]Gần đây anh có hay gặp cô chủ cửa hàng quần áo nhỉ?[p_]
[f/clp]chỉ là…em tò mò chút thôi ạ![p_][after_talk][endif]
[f/p]Thay vì tự đi chuyển cơ thể, em nghĩ sẽ tự nhiên hơn nếu anh làm tất cả những gì anh muốn với em, [name].♥。[p_]
[f/clp][um_10]Cơ thể của em đã thuộc về anh mất rồi, [name]…。[p_][after_talk]
*talk65
[f/p]Khi anh làm "điều đó" với em, [name], em thấy như mình đã là của [name] rồi。[p_]
[f/clp]Em không biết điều đó có lạ không nhưng em thấy vui khi nghĩ như vậy…。[p_][after_talk]
*talk66
[f/cp]Nếu có điều gì đó xảy ra khiến em phải sống ở một nơi khác, hay sống một mình、[lr_]
Em vẫn không thể sống nếu thiếu anh, [name].[p_]
[f/re]Hãy ở bên em. Mãi mãi….mãi mãi…[p_][after_talk]
*talk67
[f/sp]Chỉ cần ở bên cạnh anh, [name], em cảm thấy hạnh phúc. Khi anh chạm em, em cảm thấy thật ấm áp。[p_][after_talk]
*talk68
[if exp="f.syl_j>=1"]
[f/clp][um_01]Umm~ [name] à…![lr_]
[f/p]anh có lẽ sẽ thích phụ nữ có cơ thể nóng bỏng như là…[lr_]
[f/clp]như là cô chủ cửa hàng thời trang nhỉ?[p_][after_talk][endif]
[f/]Anh thích con gái như thế nào, [name]？[p_]
Cách nói chuyện, thái độ, hay việc làm… ???[lr_]
[f/c][a_01]Em nên thay dổi như thế nào để anh yêu em hơn?[p_][after_talk]

;;------------------------------------------------------------------------------
*talk69
[f/cp_nt][name] à![l][f/scp] Cũng lâu rồi chúng ta chưa làm chuyện đó…[p_]
[f/sclcp]Anh không cần phải kiềm chế nữa đâu[lr_]
Em luôn sẵn sàng làm theo mọi yêu cầu của anh mà.♥♥♥~![p_]
[after_talk]

*talk70
[f/q_nt][name] à![l][f/q] Cũng đã lâu rồi chúng ta chưa làm chuyện đó…[p_]
[f/sq]Anh không cần phải kiềm chế nữa đâu[lr]
[f/ssp]Em luôn sẵn sàng làm theo mọi yêu cầu của anh mà.♥♥♥~![p_]
[sm_05]…[p]
[if exp="f.vgf>=1"][else]
[after_talk]
[endif]
[f/sq]Mình làm nhé! [name].[lr_]
[eval exp="f.sexless=f.sexless-1"]
[button storage="mod/H/sexless1.ks" target="*sexless1"  graphic="s_ch/de_co_ay_xuong.png"  x="650"  y="200" ]
[button target="*after_talk_"  graphic="s_ch/dress_remiddle.png"  x="650"  y="320" ][s ]
*talk71
[if exp="f.vgf>=1"][else]
[jump target="*talk68"]
[endif]
[eval exp="f.sexless=f.sexless-1"]
[if exp="f.drugx>=1"]
[eval exp="f.drugx=f.drugx-1"]
[jump storage="mod/H/talk_h.ks" target="*talk_h_medi"]
[else][jump target="*talk73"][endif]
*talk72
[if exp="f.dhf>=1"][else]
[jump target="*talk68"]
[endif]
[eval exp="f.sexless=f.sexless-1"]
[if exp="f.drugx>=1"]
[eval exp="f.drugx=f.drugx-1"]
[jump storage="mod/H/talk_h.ks" target="*talk_h_medi_"]
[else][jump target="*talk74"][endif]

*talk73
[if exp="f.gift>=1"][else]
[jump target="*talk66"]
[endif]
[eval exp="f.sexless=f.sexless-1"]
[jump storage="mod/H/talk_h.ks" target="*talk_h_bj"]
*talk74
[if exp="f.vgf>=1"][else]
[jump target="*talk67"]
[endif]
[eval exp="f.sexless=f.sexless-1"]
[jump storage="mod/H/talk_h.ks" target="*talk_h_bj_"]
*talk75
[if exp="f.pngt>=1"][else]
[jump target="*talk65"]
[endif]
[jump target="*talk72"]
*talk76
[if exp="f.vgf>=1"][else]
[jump target="*talk64"]
[endif]
[jump target="*talk71"]
*talk77
[if exp="f.gift>=1"][else]
[jump target="*talk63"]
[endif]
[jump target="*talk72"]


*after_talk_
[cm]
[f/p]Em hiểu rồi ạ.[p_]
[after_talk]








