*clothe
[eval exp="f.Dc_b=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_c=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Dc_d=[]"]
[eval exp="f.Dc_e=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_f=['got',1,1,1]"]
[eval exp="f.Dc_g=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_h=['got',1,1,1,1]"]
[eval exp="f.Dc_i=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_j=['got',1,1,1,1,1]"]
[eval exp="f.Dc_k=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_l=['got',1,1,1,1,1]"]
[eval exp="f.Dc_m=['got',1,1,1,1,1]"]
[eval exp="f.Dc_n=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Dc_o=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_p=['got',1,1,1,1,1,1]"]
[eval exp="f.Dc_q=[]"]
[eval exp="f.Dc_xa=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Dc_xb=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Dc_xc=['got',1,1,1,1,1,1]"]
[eval exp="f.Dr_a=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dr_b=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dr_c=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dr_d=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dr_e=['got',1,1]"]
[eval exp="f.Dp_a=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dp_b=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dp_c=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dp_d=['got',1,1,1]"]
[eval exp="f.Dh_a=['got',1,1]"]
[eval exp="f.Dh_b=['got',1,1]"]
[eval exp="f.Dh_d=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dh_e=['got',1,1,1,1,1]"]
[eval exp="f.Dh_f=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Ds_a=['got',1,1,1,1,1,1,1,1]"]
[eval exp="f.Ds_b=['got',1,1,1,1,1,1,1,1]"]
[eval exp="f.Ds_c=['got',1,1,1,1,1,1,1,1]"]
[eval exp="f.Ds_d=['got',1,1,1,1,1,1,1,1]"]
[eval exp="f.Ds_e=['got',1,1,1,1,1,1,1,1]"]
[eval exp="f.Ds_f=['got',1,1,1,1,1,1,1,1]"]
[eval exp="f.Dg_a=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dg_b=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Dg_c=['got',1,1,1,1,1,1,1,1,1]"]
[eval exp="f.Du_a=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Du_b=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Du_c=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Du_xa=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Du_xb=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Du_xc=['got',1,1,1,1,1,1,1]"]
[eval exp="f.Dne_a=['got',1,1,1,1,1,1,1,1]"]
[eval exp="f.Dne_b=['got',1,1,1,1]"]
[eval exp="f.Dne_c=['got',1,1,1,1,1,1,1,1]"]
[eval exp="f.Dac_a=['got',1,1,1]"]
[eval exp="f.Dac_b=['got',1,1,1]"]
[eval exp="f.Dac_c=['got',1,1,1]"]
[eval exp="f.Dac_d=['got',1,1,1]"]
#System
Bạn đã full đồ[p]
#
[end_talk]

*morning
[cm]
[if exp="f.dress==0 && f.under_p==0 && f.under_b==0 && f.lust>=1 && f.neck>=11 && f.neck<=14" ]
[jump storage="H/morning.ks" target="*morning" ]
[elsif exp="f.dress==0 && f.under_p==0 && f.under_b==0 && f.lust>=1 && f.neck==0" ]
[jump storage="H/morning.ks" target="*morning" ]
[elsif exp="f.dress>=1000 && f.dress<=1019 && f.under_p==0 && f.under_b==0 && f.lust>=1" ]
[jump storage="H/morning.ks" target="*morning" ]
[else]
#Sylvie
[f/clp][um_01]Umm!~ [name][lr_]
[f/sp] Phải mặc trang phục phù hợp mới thực hiện được việc đó ạ![p_]
[f/p]Cần mặc "chỉ một" cái tạp dề hoặc cái váy ngủ mỏng là được ạ[lr_]
[f/sp]Ngoài ra thì dùng cheat như vậy cũng không hay đâu ạ [sm_19]...[p_]
[endif]
[end_talk]

*set_save
[if exp="f.set_save>=1"]
#System
Bạn chỉ có thể dùng 1 lần lệnh này thôi.[p]
#
[end_talk]
[endif]
[if exp="f.m_first>=1"]
[jump storage="mod/set_save.ks" target="*set"][else]
#System
Bạn cần phải qua được sự kiện "First-time" thì mới chỉnh được save. Dùng lệnh "up" hoặc "102" để qua sự kiện đó.[p]
#
[endif]
[end_talk]




*update
[cm]
[if exp="f.thang>=1 && f.thang<=12"][else][eval exp="f.thang=10"][endif]
[if exp="f.au_ne_dr>=1"][else][eval exp="f.au_ne_dr=0"][endif]

[random_10]
[if exp="f.zince>=0"][else]
[call storage="intro/awekup.ks" target="*begin"]
[eval exp="f.zince=f.zince*f.r"]
[endif]

[call storage="intro/awekup.ks" target="*sa_tag"]
[call storage="intro/awekup.ks" target="*sa"]
[call storage="intro/awekup.ks" target="*mcr"]
[call storage="system/plugin.ks"]
[call storage="system/plugin_third.ks"]
[eval exp="f.fix_mouth=1"][eval exp="f.sexless_anim=0"]
[if exp="f.aurelia_talk>=0"][else][eval exp="f.aurelia_talk=0"][endif]
[eval exp="f.syl_talk_1='non'"]
[eval exp="f.syl_talk_2='non'"]
[eval exp="f.syl_talk_3='non'"]
[eval exp="f.syl_talk_4='non'"]
[eval exp="f.syl_talk_5='non'"]
[eval exp="f.syl_nade_1='non'"]
[eval exp="f.syl_nade_2='non'"]
[eval exp="f.syl_nade_3='non'"]
[eval exp="f.syl_nade_4='non'"]
[eval exp="f.syl_nade_5='non'"]
[if exp="f.code_ss=='ful'"][else][eval exp="f.code_ss='non'"][eval exp="f.codex=0"][endif]
#Hệ thống
Bạn có thể chỉ update phần thư viện đã thêm để tránh lag với Android.

[glink text="Chỉ&nbspupdate&nbspthư&nbspviện&nbspđã&nbspthêm" x=660 y=150 target="*update_haf"]
[glink text="Update&nbsplại&nbsptoàn&nbspbộ&nbspthư&nbspviện" x=660 y=300 target="*update_full"][s]

*update_haf
[cm][call storage="pre/new_macro.ks" ]
[jump target="*update_next"]

*update_full
[cm]
[call storage="pre/cloth_val.ks" target="*cloth_per" ]
[call storage="pre/chara_define.ks"]
[call storage="pre/macro.ks" ]
[call storage="pre/macro_mod.ks" ]
[call storage="pre/voice_mod.ks" ]
[call storage="pre/face.ks" ][call storage="pre/face_mod_on.ks"]
[call storage="pre/set_show.ks" ]
[call storage="pre/set_show_mod.ks" ]
[call storage="pre/man_macro.ks" ]
[call storage="pre/cloth_per.ks" ]
[jump target="*update_next"]

*update_next
[cm]
[font face="tahoma" size="32"]
[deffont face="tahoma" size="32"]
[if exp="f.uncen=='true'"][else][eval exp="f.uncen='true'"][endif]
[title name="TeachingFeeling_ver_2026 - Vietnamese - mod" ]
[vigina]
#System
Bạn chỉ cần update 1 lần trên 1 save của bạn[r]
Update Ver 0309-26 (03/09/2026) - đã xong[p]
;[emb exp="f.sin_t"],[emb exp="f.pngt"],[emb exp="f.gift"],[emb exp="f.dhf"],[emb exp="f.vgf"],[p]

[end_talk]
#
[if exp="f.step==1"][jump storage="intro/step1.ks" target="*show_bace" ]
[elsif exp="f.step==2"][jump storage="intro/step2.ks" target="*show_bace" ]
[elsif exp="f.step==3"][jump storage="intro/step3.ks" target="*show_bace" ]
[elsif exp="f.step==4"][jump storage="intro/step4.ks" target="*show_bace" ]
[elsif exp="f.step==5"][jump storage="intro/step5.ks" target="*show_bace" ]
[elsif exp="f.step==6"][jump storage="talk/step6.ks" target="*show_bace" ][endif]




*aur1_test
[eval exp="f.aurelia_wait=0"]
[eval exp="f.act_al=0"]
[eval exp="f.sachi_wait=0"]
[eval exp="f.akemi_wait=0"]
[eval exp="f.rui_wait=0"]
;[eval exp="f.aur_h_els='yet'"]
[bgm_ST][black][bg_town][set_weather][act_win_stand]
[jump storage="mod/hiroba_alone.ks" target="*hiroba_aur_rain"][end_talk]

*aur2_test
[cm][eval exp="f.act=1"][black][chara_00](...[p][bg_town][set_weather][act_win_stand]
[mod_win st="00.png" ][chara_mod name="other" time="0" storage="00.png" ]
[_]
[random_4]
[if exp="f.r==1"][eval exp="f.lady=6"]
[elsif exp="f.r==2"][eval exp="f.lady=7"]
[elsif exp="f.r==3"][eval exp="f.lady=8"]
[else][eval exp="f.lady=12"][endif]
[aur_sl][wait time="100"]
[if exp="f.lady==6"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_a_x_hug_00.png"]
[elsif exp="f.lady==7"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_b_x_hug_00.png"]
[elsif exp="f.lady==8"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_c_x_hug_00.png"]
[elsif exp="f.lady==12"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_xa_hug_00.png"][endif]
[chara_show name="h" time="100" wait="true" zindex="1" ]
[chara_show name="sub" time="100" wait="true" zindex="100" ]
;;===talkx50
[eval exp="f.aurelia_talk=100"]
;=========cafe>1
[eval exp="f.aur_cafe='yet'"]
;==============tear>1
;[eval exp="f.aur_tea_f='yet'"]
;[eval exp="f.aur_tea_f2='yet'"]
;[chara_mod name="h" time="0" storage="00.png"]
;[stopbgm][bgm_II]
[jump storage="mod/Aurelia_walk.ks" target="*begin"]
[end_talk]

*aur2_test_test
[cm][eval exp="f.act=1"][black][chara_00](...[p][bg_town][set_weather][act_win_stand]
[mod_win st="00.png" ][chara_mod name="other" time="0" storage="00.png" ]
[_]
[random_4]
[if exp="f.r==1"][eval exp="f.lady=6"]
[elsif exp="f.r==2"][eval exp="f.lady=7"]
[elsif exp="f.r==3"][eval exp="f.lady=8"]
[else][eval exp="f.lady=12"][endif]
[aur_sl][wait time="100"]
[eval exp="f.lady=6"]
[if exp="f.lady==6"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_a_x_hug_00.png"]
[elsif exp="f.lady==7"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_b_x_hug_00.png"]
[elsif exp="f.lady==8"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_c_x_hug_00.png"]
[elsif exp="f.lady==12"]
[chara_mod name="h" time="0" storage="o/sub/aurelia_huge/Aurelia_xa_hug_00.png"][endif]
[chara_show name="h" time="100" wait="true" zindex="1" ]
[chara_show name="sub" time="100" wait="true" zindex="100" ]
;;===talkx50
[eval exp="f.aurelia_talk=100"]
;=========cafe>1
[eval exp="f.aur_cafe='yet'"]
;==============tear>1
[eval exp="f.aur_tea_f='yet'"]
[eval exp="f.aur_tea_f2='non'"]
;[chara_mod name="h" time="0" storage="00.png"]
;[stopbgm][bgm_II]
[jump storage="mod/Aurelia_walk.ks" target="*aur_hand_next"]
[jump storage="mod/Aurelia_walk.ks" target="*tear_next"]
[end_talk]

*zince
[eval exp="f.talk=10000000"]
[eval exp="f.zince=f.zince+f.talk"]
[end_talk]

*love
[eval exp="f.love=f.love+200"]
[end_talk]

*aur_love
[if exp="f.aur_love>=0"]
[eval exp="f.aur_love=f.aur_love+50"]
[else][eval exp="f.aur_love=50"][endif]
[end_talk]

*ne_love
[if exp="f.ne_love>=0"]
[eval exp="f.ne_love=f.ne_love+50"]
[else][eval exp="f.ne_love=50"][endif]
[end_talk]

*sy_ne_love
[if exp="f.ne_x_s>=0"]
[eval exp="f.ne_x_s=f.ne_x_s+50"]
[else][eval exp="f.ne_x_s=50"][endif]
[end_talk]

*lust
[eval exp="f.lust=f.lust+100"]
[end_talk]

*wine_left
[eval exp="f.wine_left=50"][end_talk]

*up
[eval exp="f.step=6"]
[eval exp="f.intro_flag='human'" ]
[eval exp="f.trust=f.trust+1" ]
[eval exp="f.trust=f.trust+1" ]
[eval exp="f.trust=f.trust+1" ]
[eval exp="f.trust=f.trust+1" ]
[eval exp="f.cafe=1" ]
[eval exp="f.trust=f.trust+1" ]
[eval exp="f.love=500" ]
[eval exp="f.trust=f.trust+1" ]
[eval exp="f.f_pancake=1" ]
[eval exp="f.Dc_b=['got',1]" ][eval exp="f.Dr_a=['got',1]" ][eval exp="f.Dp_a=['got',1]" ][eval exp="f.Ds_a=['got',1]" ][eval exp="f.dress=11" ][eval exp="f.socks=1" ]
[eval exp="f.front_hair=1" ][eval exp="f.pin=1" ]
[eval exp="f.hair_style=1" ][eval exp="f.hair_band=11" ]
[eval exp="f.under_p=1" ][eval exp="f.under_b=1" ]
[eval exp="f.trust=f.trust+1" ][eval exp="f.love=f.love+3" ]
[eval exp="f.first_wear=1" ]
[eval exp="f.trust=f.trust+1" ][eval exp="f.love=f.love+5" ]
[eval exp="f.day=f.day+25" ][eval exp="f.intro_flag='trust'" ]
[black][stop_bgm]
[jump storage="intro/event.ks" target="*to_step6"][end_talk]



*tax
[cm][hide_black]
#@TF-Bank
Tài khoản của quý khách còn: [emb exp="f.zince"]-đồng.[r]
[if exp="f.tax_cos<=0"][else]
Hiện đang nợ hóa đơn thuế doanh nghiệp: [emb exp="f.tax_cos"]-đồng.[r][endif]
[if exp="f.money_owe<=0"][else]
Hiện đang nợ hóa đơn sinh hoạt phí: [emb exp="f.money_owe"]-đồng.[r][endif]
[if exp="f.zince>=f.tax_cos && f.zince>=f.money_owe"][else]
Khoản nợ có thể cộng vào hóa đơn kỳ sau.[p][endif]
[if exp="f.tax_cos<=0"][else]
[font color="lightblue"][link target="*tax_sell" ]【Thanh toán hóa đơn thuế doanh nghiệp】[r][endif]
[if exp="f.money_owe<=0"][else]
[link target="*bill_sell" ]【Thanh toán sinh hoạt phí】[r][r][endif]
[link target="*out_bank" ]【Thoát ra】[resetfont][s]

*tax_sell
[cm]
[if exp="f.tax_cos==0"]
#Cục thuế TF_town
([wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"][cm]
Bạn đã thanh toán hết nợ hóa đơn thuế năm nay rồi.[p]
[jump target="*tax"][endif]
[if exp="f.zince>=f.tax_cos"]
[eval exp="f.zince=f.zince-f.tax_cos"]
#Cục thuế TF_town
([wait time="300"].[wait time="300"].[wait time="300"].[wait time="300"][cm]
Bạn đã thanh toán hóa đơn nợ thuế: [emb exp="f.tax_cos"]-đồng.[lr]
Cảm ơn bạn đã sử dụng dịch vụ[p]
[eval exp="f.tax_cos=0"][jump target="*tax"]
[else]
[_](Tôi chỉ còn: [emb exp="f.zince"]-đồng.[lr]
Không đủ để thanh toán hóa đơn thuế.[p][jump target="*tax"][endif]

*bill_sell
[cm]
#TF-Bank
[if exp="f.money_owe<=f.zince"]
[eval exp="f.zince=f.zince-f.money_owe"]
[eval exp="f.money_owe=0"]
Bạn đã thanh toán thành công.[r]
Số tiền còn lại trong tài khoản: [emb exp="f.zince"]-đồng[p]
[jump target="*tax"]
[else]Bạn chỉ còn: [emb exp="f.zince"]-đồng.[lr]
Không đủ để thanh toán hóa đơn này.[p][jump target="*tax"][endif]


*out_bank
[cm][_][end_talk]

*jdk
[cm]
[if exp="f.step>=6"]
[jump storage="talk/words.ks" target="*event5_cont"][else]
#Hệ thống
Bạn cần chơi tới cảnh First-time của Sylvie mới nhập key được.[r] 
Game sẽ tự động hướng dẫn bạn nhập key khi tới cảnh đó[p][endif][end_talk]

*mail
[cm][set_black]
#Hộp thư của bạn
Bạn muốn đọc mail được gửi tới từ...
[glink text="TF-bank@tfmail.vn" x=100 y=200 target="*tax"]
[if exp="f.sch_st>=1"]
[glink text="TF_Highschool@TFmail.vn" x=100 y=300 target="*school"][endif]
[glink text="quay&nbspra" x=100 y=100 target="*out_"]
[s]


*mail_
[cm]
#Hộp thư của bạn
[font color="lightblue"]
[link target="*tax" ]【TF-bank@tfmail.vn】...........
[if exp="f.sch_st>=1"]
[link target="*school" ]【TF_Highschool@TFmail.vn】[endif][r][r]
[link target="*out" ]【quay ra】
[resetfont][s]

*out_
[cm][hide_black][end_talk]
*out
[cm][end_talk]



*school
[cm][hide_black]
#@TF-High_school
_TF-High school xin chào các bạn. Chúng tôi có thể giúp gì cho bạn?
[glink text="Công&nbspviệc&nbsptại&nbspphòng&nbspy&nbsptế" x=650 y=150 target="*school_work"]
[if exp="f.s_studi=='yet'"][else]
[glink text="Hồ&nbspsơ&nbspnhập&nbsphọc" x=650 y=230 target="*studi"][endif]
[glink text="quay&nbspra" x=1000 y=520 target="*out"]
[s]


*school_work
[cm]
[if exp="f.s_studi=='yet'"][else]
[_](Đi làm và để Sylvie ở nhà một mình, cô ấy sẽ rất buồn.[r]
Tôi nghĩ mình nên đăng ký nhập học cho cô ấy trước.[p][end_talk][endif] 

[if exp="f.sch_w=='yet'"]
[font color="lightblue"]
[link target="*sch_w_no" ]【xin nghỉ công việc ở phòng y tế】[r][r]
[link target="*out" ]【quay ra】[resetfont][s]
[else][font color="lightblue"]
[link target="*sch_w_yet" ]【nhận công việc tại phòng y tế】[r][r]
[link target="*out" ]【quay ra】[resetfont][s][endif]

*sch_w_no
[cm][eval exp="f.sch_w='not'"]
[_](Tôi gửi 1 tin nhắn xin thôi việc tại phòng y tế trường.[p][end_talk]

*sch_w_yet
[cm][eval exp="f.sch_w='yet'"]
#@TF-High_school
Xin cho tôi biết danh tính của ngài, sensei!
[edit left=475 color="magenta" size="30" top=770 width="400" height="50" name="f.name_w" ]
[button target="*name_ok" graphic="menu/decide.png" x="355" y="770" ]
[cancelskip][s]

*name_ok
[commit]
[cm]
#@TF-High_school
Chân thành cảm ơn ngài đã nhận lời. [name_w]-sensei.[r]
Lịch làm việc của phòng y tế: từ thứ hai đến thứ sáu hàng tuần.[p]
Chúc [name_w]-sensei một ngày tốt lành![p][end_talk]

*studi
[cm][_](Tôi gửi thông tin định danh của Sylvie theo hồ sơ được cấp[r] khi nhận cô ấy.[p]
Và nộp đơn xin nhập học vào năm nhất Cao trung cho Sylvie.[p] 
[eval exp="f.s_studi='yet'"]
#@TF-High_school
_Chào ngài! Chúng tôi đã nhận được đơn xin nhập học và Hồ sơ của học sinh.[r]
Chúng tôi cũng đã xét duyệt xong và xắp xếp cho học sinh Sylvie vào lớp 1-2.[p]
Chi phí Nhập học và mua những vật dụng cần thiết là 2500000 đồng.[r]
Học phí tại trường công lập được miễn toàn phần.[p]
Lịch học sáng từ thứ hai đến thứ sáu hàng tuần.[r]
Cảm ơn bạn đã tin tưởng TF-High School. Chúc gia đình một ngày tốt lành![p]
[eval exp="f.zince=f.zince-2500000"]
#Bank
TK đã bị trừ 2tr500k bởi 'TF-high school'.[r]
Số dư còn lại: [money][p]

[syl][a_02][f/nt]Đi học![p_]
[f/ss]Đ-Được ạ! Em rất muốn đến trường ạ! Cảm ơn [name]!.[p_][f/s_nt][sm_09] 
[_](...[p]
[f/s]Em đang rất mong chờ ngày tới trường ạ![p_][sm_09]
[eval exp="f.Dc_h[1]=1"]
[eval exp="f.Dc_h[2]=1"]
[eval exp="f.Dc_h[3]=1"]
[eval exp="f.Dc_h[4]=1"]
[eval exp="f.Ds_b[1]=1"]
[eval exp="f.Ds_b[2]=1"]
[eval exp="f.Dh_b[1]=1"]
[end_talk]