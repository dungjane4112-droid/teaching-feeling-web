;;初回断り後初夜
*first
[cm][button target="*first_" graphic="ch/re_first.png" x="0" y="180" ]
[button target="*remind" graphic="ch/remind.png" x="0" y="300" ][s]
*remind
[cm]（Chúng ta nên dừng ở đây thôi[p_][eval exp="f.system_act=1" ][return_menu]

*first_
[cm][stop_bgm][set_stand][bg_room][f/nt]…[p_][show_stand]
[syl][f/re]…[name]？[p_]
[_]（Tôi hôn Sylvie một cách nhẹ nhàng…。[p_]
[syl]…Un[p_][jump storage="intro/event.ks" target="*kiss" ]

;;ベッド前設定

*bed_before
[cm][black][hide_message_w]
[bg  time="300"  method="crossfade"  storage="how_to/bed.jpg" ][l]
[bg_room][stop_bgm]
[show_message_w][_]
[button target="*beg_ori" graphic="ch/beg_ch1.png" x="0" y="160" ]
[if exp="f.lust>=30 && f.hp>=80 && f.m_mouth>=3"]
[button storage="mod/H/skinship.ks" target="*begin" graphic="ch/beg_ch2.png" x="0" y="280" ]
[button storage="mod/H/H_pc.ks" target="*begin" graphic="ch/H_pc.png" x="0" y="400" ]
[button target="*bed" graphic="ch/beg_ch3.png" x="0" y="520" ]
[elsif exp="f.lust>=30 && f.hp>=80"]
[button storage="mod/H/skinship.ks" target="*begin" graphic="ch/beg_ch2.png" x="0" y="280" ]
[button target="*bed" graphic="ch/beg_ch3.png" x="0" y="400" ]
[else]
[button target="*bed" graphic="ch/beg_ch3.png" x="0" y="280" ][endif][s ]

*beg_ori
[cm][eval exp="f.act='non'"]
[black][stop_bgm]…[p][day_end]

*bed
[cm][_]
[if exp="f.syl_game1=='hug'"]
[eval exp="f.syl_game1='non'"][eval exp="f.love=f.love+5"][eval exp="f.lust=f.lust+3"][eval exp="f.hp=f.hp+5"][hp_return]
[f/ss_nt]♥♥♥[p_]
[endif]
[if exp="f.sex=='yet'" ][jump target="*first" ][endif]

*sex_select_
[cm][save_dress]
[black]
[set_dress][hide_role][nolog][hide_message_w]
[eval exp="f.last_act='before_bed'" ]
[bgm_MT][mod_win st="o/win/before_bed.png" ]
[chara_show name="window" time="0" wait="true" left="0.1" ][show_dress]
[eval exp="f.drug_s=0" ][eval exp="f.drug_y=0" ]

*reload_dress
[if exp="f.hair_style>=1" ][eval exp="f.Hx_ribbon=1" ][else][eval exp="f.Hx_ribbon=0" ][endif]
;[if exp="f.dress>=1" ][eval exp="f.Hx_dress=1" ][else][eval exp="f.Hx_dress=0" ][endif]
[if exp="f.dress>=11 && f.dress<=40 || f.dress>=50 && f.dress<=60 || f.dress>=70 && f.dress<=129 || f.dress>=140 && f.dress<=999 || f.dress>=1000 && f.dress<=2000 || f.dress>=9000" ][eval exp="f.Hx_dress=1" ]
[else][eval exp="f.Hx_dress=0" ][endif]

[if exp="f.front_hair>=1" ][eval exp="f.Hx_pin=1" ][else][eval exp="f.Hx_pin=0" ][endif]
[if exp="f.glasses>=1" ][eval exp="f.Hx_glasses=1" ][else][eval exp="f.Hx_glasses=0" ][endif]
[if exp="f.socks>=1" ][eval exp="f.Hx_socks=1" ][else][eval exp="f.Hx_socks=0" ][endif]
[if exp="f.love<=500" ][eval exp="f.h_style='def'" ][endif]

*sex_select
[cm]
[if exp="f.h_style=='def'" ][button target="*non" graphic="Hx/set_s_def.png" x="880" y="91" ][else]
[button target="*non" graphic="Hx/set_s_def-.png" x="880" y="91" exp="f.h_style='def'" ][endif]
[if exp="f.h_style=='sit'" ][button target="*non" graphic="Hx/set_s_sit.png" x="1086" y="91" ]
[elsif exp="f.love>=500" ][button target="*non" graphic="Hx/set_s_sit-.png" x="1086" y="91" exp="f.h_style='sit'" ][endif]

[if exp="f.drug_s==1" ]
[button target="*selec_drug_x" graphic="Hx/set_drug_x.png" x="880" y="187" height="43" hint="シルヴィの絶頂上限がなくなります" ]
[elsif exp="f.drugx>=1 && f.lust>=15" ]
[button target="*selec_drug_x" graphic="Hx/set_drug_x-.png" x="880" y="187" height="43" hint="シルヴィの絶頂上限がなくなります" ][endif]
[if exp="f.drug_y==1" ]
[button target="*selec_drug_z" graphic="Hx/set_drug_z.png" x="1086" y="187" height="43" hint="射精上限がなくなります" ]
[elsif exp="f.drugz>=1 && f.lust>=15" ]
[button target="*selec_drug_z" graphic="Hx/set_drug_z-.png" x="1086" y="187" height="43" hint="射精上限がなくなります" ][endif]

[if exp="f.Hx_dress==1" ][button target="*non" graphic="Hx/set_dress-.png" x="880" y="289" height="40" exp="f.Hx_dress=0" ]
;[elsif exp="f.dress<=4 || f.dress>=7 && f.dress<=1000 || f.dress>=1020" ]
[else][button target="*non" graphic="Hx/set_dress.png" x="880" y="289" height="40" exp="f.Hx_dress=1" ][endif]

[if exp="f.Hx_socks==1" ][button target="*non" graphic="Hx/set_socks-.png" x="990" y="289" height="40" exp="f.Hx_socks=0" ]
[elsif exp="f.socks>=1" ][button target="*non" graphic="Hx/set_socks.png" x="990" y="289" height="40" exp="f.Hx_socks=1" ][endif]
[if exp="f.Hx_glasses==1" ][button target="*non" graphic="Hx/set_glass-.png" x="1100" y="289" height="40" exp="f.Hx_glasses=0" ]
[elsif exp="f.glasses>=1" ][button target="*non" graphic="Hx/set_glass.png" x="1100" y="289" height="40" exp="f.Hx_glasses=1" ][endif]
[if exp="f.Hx_pin==1" ][button target="*non" graphic="Hx/set_front_hair-.png" x="880" y="357" height="40" exp="f.Hx_pin=0" ]
[elsif exp="f.front_hair>=1" ][button target="*non" graphic="Hx/set_front_hair.png" x="880" y="357" height="40" exp="f.Hx_pin=1" ][endif]
[if exp="f.Hx_ribbon==1" ][button target="*non" graphic="Hx/set_back_hair-.png" x="988" y="357" height="40" exp="f.Hx_ribbon=0" ]
[elsif exp="f.hair_style>=1" ][button target="*non" graphic="Hx/set_back_hair.png" x="988" y="357" height="40" exp="f.Hx_ribbon=1" ][endif]
[button target="*calc" graphic="Hx/to_bed_.png" x="643" y="502" ]
[if exp="f.love>=800 && f.lust>=200 && f.hp>=100"]
[button target="*change_dress" graphic="Hx/change_dress_x.png" x="643" y="680" ][endif]
[s]

*change_dress
[cm]
[chara_hide name="window" time="0" wait="false"]
[chara_mod name="ef2" time="0" storage="s/body/dress_hide_bed_full.png" ]
[chara_show name="ef2" time="0" wait="false" left="0.1" zindex="25"]
[show_message_w]
[syl]
[iscript]
f.r=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.r==1"]
[f/c_nt][a_01]Uh~! Anh muốn em thay đồ ngay tại đây ư?[lr]
[elsif exp="f.r==2"]
[f/cp_nt][a_02] Uh?~! Em thay đồ ở đây..., ngay bây giờ ý ạ?[lr]
[else][f/scp_nt][a_08]Umh~! Ở đây luôn ạ? Ngay trước mặt anh ạ?[lr][endif]
[iscript]
f.r=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.r==1"]
[f/sclp_nt]K-Không...[l][f/sclcp_nt][sm_09]Em không có phàn nàn gì về sở thích của anh đâu.[p]
[elsif exp="f.r==2"]
[f/sclp_nt]K-Không đâu ạ...[l][f/sclcp_nt][sm_05]Em không phàn nàn gì về cái sở thích kì cục của anh đâu.[p]
[elsif exp="f.r==3"]
[f/sclp_nt]K-Không ạ...[l][f/sclcp_nt][um_02]Umm~!... chỉ là nó thật xấu hổ khi thay đồ trước mặt anh.[p]
[else]
[f/sclp_nt]K-Không...[l][f/sclcp_nt][sm_18]Em không có ý kiến gì đâu, [name][p][endif]
[f/scp_nt][sm_19]Em sẽ luôn làm theo yêu cầu của anh mà, dù có chút xấu hổ.[p]
[random_2]
[if exp="f.r==2"]
[um_09]...*Mn~nn*...[p][endif]
[hide_message_w]
[mod_win st="o/win/dress-win_.png" ]
[chara_show name="window" time="0" wait="false" left="613" top="22" ]
[random_7]
[if exp="f.r==1"][eval exp="f.talk=0"]
[elsif exp="f.r==2"][eval exp="f.talk=1"]
[elsif exp="f.r==3"][eval exp="f.talk=2"]
[elsif exp="f.r==4"][eval exp="f.talk=3"]
[elsif exp="f.r==5"][eval exp="f.talk=4"]
[elsif exp="f.r==6"][eval exp="f.talk=5"]
[else][eval exp="f.talk=6"][endif]
[jump storage="H/dress.ks" target="*dress_up"]

*non
[jump target="*sex_select" ]
;;----------------old--------------------------------
*sex_select_old
[cm]
[if exp="f.h_style=='def'" ]
[button target="*selec_style_def" graphic="Hx/set_s_def.png" x="470" y="65" ][else]
[button target="*selec_style_def" graphic="Hx/set_s_def-.png" x="470" y="65" ][endif]
[if exp="f.h_style=='sit'" ][button target="*selec_style_sit" graphic="Hx/set_s_sit.png" x="670" y="65" ]
[elsif exp="f.love>=500" ][button target="*selec_style_sit" graphic="Hx/set_s_sit-.png" x="670" y="65" ][endif]

[if exp="f.drug_s==1" ]
[button target="*selec_drug_x" graphic="Hx/set_drug_x.png" x="440" y="180" hint="シルヴィの絶頂上限がなくなります" ]
[elsif exp="f.drugx>=1 && f.lust>=15" ]
[button target="*selec_drug_x" graphic="Hx/set_drug_x-.png" x="440" y="180" hint="シルヴィの絶頂上限がなくなります" ][endif]
[if exp="f.drug_y==1" ]
[button target="*selec_drug_z" graphic="Hx/set_drug_z.png" x="676" y="180" hint="射精上限がなくなります" ]
[elsif exp="f.drugz>=1 && f.lust>=15" ]
[button target="*selec_drug_z" graphic="Hx/set_drug_z-.png" x="676" y="180" hint="射精上限がなくなります" ][endif]

[if exp="f.Hx_dress==1" ][button target="*selec_dress" graphic="Hx/set_dress.png" x="450" y="300" ]
;[elsif exp="f.dress>=1" ]
[elsif exp="f.dress>=11 && f.dress<=40 || f.dress>=50 && f.dress<=60 || f.dress>=70 && f.dress<=129 || f.dress>=140 && f.dress<=999 || f.dress>=1030 && f.dress<=2000 || f.dress>=9000" ]
[button target="*selec_dress" graphic="Hx/set_dress-.png" x="450" y="300" ][endif]

[if exp="f.Hx_socks==1" ][button target="*selec_socks" graphic="Hx/set_socks.png" x="592" y="300" ]
[elsif exp="f.socks>=1" ][button target="*selec_socks" graphic="Hx/set_socks-.png" x="592" y="300" ][endif]
[if exp="f.Hx_glasses==1" ][button target="*selec_glasses" graphic="Hx/set_glass.png" x="734" y="300" ]
[elsif exp="f.glasses>=1" ][button target="*selec_glasses" graphic="Hx/set_glass-.png" x="734" y="300" ][endif]

[if exp="f.Hx_pin==1" ][button target="*selec_pin" graphic="Hx/set_front_hair.png" x="530" y="418" ]
[elsif exp="f.front_hair>=1" ][button target="*selec_pin" graphic="Hx/set_front_hair-.png" x="530" y="418" ][endif]
[if exp="f.Hx_ribbon==1" ][button target="*selec_ribbon" graphic="Hx/set_back_hair.png" x="670" y="418" ]
[elsif exp="f.hair_style>=1" ][button target="*selec_ribbon" graphic="Hx/set_back_hair-.png" x="670" y="418" ][endif]
[button target="*calc" graphic="Hx/to_bed.png" x="433" y="500" ][s]
;;-------------------------------------------------------------
*calc
[cm][chara_hide name="window" time="0" wait="true" ]
[show_message_w]
[if exp="f.drug_s==1" ][eval exp="f.drugx=f.drugx-1" ][eval exp="f.hp=f.hp-10"][hp_return][endif]
[if exp="f.drug_y==1" ][eval exp="f.drugz=f.drugz-1" ][eval exp="f.hp=f.hp-3"][hp_return][endif]
[if exp="f.drug_use=='non' && f.drug_s==1" ][eval exp="f.drug_use=1" ][jump target="*first_drug" ][endif]
[jump target="*text_before_bed" ]


*selec_style_def
[eval exp="f.h_style='def'" ][jump target="*sex_select" ]
*selec_style_sit
[eval exp="f.h_style='sit'" ][jump target="*sex_select" ]
*selec_drug_x
[if exp="f.drug_s==0" ][eval exp="f.drug_s=1" ][else][eval exp="f.drug_s=0" ][endif]
[if exp="f.drug_s==1 && f.lust<=30" ][eval exp="f.drug_y=0" ][endif]
[jump target="*sex_select" ]
*selec_drug_z
[if exp="f.drug_y==0" ][eval exp="f.drug_y=1" ][else][eval exp="f.drug_y=0" ][endif]
[if exp="f.drug_y==1 && f.lust<=30" ][eval exp="f.drug_s=0" ][endif]
[jump target="*sex_select" ]
*selec_dress
[if exp="f.Hx_dress==0" ][eval exp="f.Hx_dress=1" ][else][eval exp="f.Hx_dress=0" ][endif]
[jump target="*sex_select" ]
*selec_socks
[if exp="f.Hx_socks==0" ][eval exp="f.Hx_socks=1" ][else][eval exp="f.Hx_socks=0" ][endif]
[jump target="*sex_select" ]
*selec_ribbon
[if exp="f.Hx_ribbon==0" ][eval exp="f.Hx_ribbon=1" ][else][eval exp="f.Hx_ribbon=0" ][endif]
[jump target="*sex_select" ]
*selec_pin
[if exp="f.Hx_pin==0" ][eval exp="f.Hx_pin=1" ][else][eval exp="f.Hx_pin=0" ][endif]
[jump target="*sex_select" ]
*selec_glasses
[if exp="f.Hx_glasses==0" ][eval exp="f.Hx_glasses=1" ][else][eval exp="f.Hx_glasses=0" ][endif]
[jump target="*sex_select" ]

*ks1
[if exp="f.codex==1372 && f.codey==4351"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==2636 && f.codey==4172"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==3725 && f.codey==1023"]
[eval exp="f.code_ss='ful'"][endif][return]

;;ベッド前セリフ
*text_before_bed
[cm][set_stand][bg_bed][f/p_nt][show_stand][syl]
[if exp="f.sex_name[0]==2 && f.lust>=1000 || f.v_name[0]==2 && f.mood=='lust' "]
[f/p][name_h] Sẽ chấp nhận em chứ？[p_]
[f/cp][v_name] ...của em…[um_13] Em không thể đợi được nữa。[r]Làm ơn…[p_]
[elsif exp="f.mood=='lust' || f.lust>=500" ]
[f/p]Anh sẽ chấp nhận em chứ？[p_]
[f/cp][v_name] ...của em…[um_14] Em không thể đợi được nữa。[r]Anh hãy nhanh lên…[p_]
[elsif exp="f.lust>=100" ]
[f/p]……Chúng ta sẽ làm điều đó ư？[p_]
[f/ssp][um_01]Vâng, Em hiểu rồi…♥[p_]
[else]
[f/p]…Chúng ta sẽ làm điều đó ư。[p_]
[f/clp][um_05]Vâng, Em hiểu rồi.[p_][endif]

[black]
[_]（[if exp="f.Hx_dress==0" ]Tôi cởi quần áo Sylvie...[r][endif]Tôi nhẹ nhàng ôm lấy Sylvie...[r]
[if exp="f.h_style=='sit'" ]và đặt cô ấy ngồi lên đùi mình[p_][jump storage="H/Hx2.ks" target="*H_ex" ]
[else]và đặt cô ấy nằm xuống giường…。[p_][jump storage="H/Hx.ks" target="*H_ex" ][endif]

;;薬初回
*first_drug
[cm][set_stand][bg_bed][f/nt][show_stand]
[syl][f/re]Cái... gì đây ạ?[p_]
[f/p]…Viên thuốc này sẽ làm em cảm thấy "sướng" ư?[p_]
[f/re]…Vâng ạ. Em sẽ uống nó ngay。[p_]
[f/sp]Vì [name]đã đưa nó cho em nên nó sẽ không phải là điều xấu nhỉ。[p_]
[black]
[_]（[if exp="f.Hx_dress==0" ]Tôi cởi quần áo Sylvie ...[endif]Tôi nhẹ nhàng ôm lấy Sylvie...
[if exp="f.h_style=='sit'" ]và đặt cô ấy ngồi lên đùi mình[p_][jump storage="H/Hx2.ks" target="*H_ex" ]
[else]và đặt cô ấy nằm xuống giường…。[p_][jump storage="H/Hx.ks" target="*H_ex" ][endif]

;;オーラル前セリフ
*mouth
[cm][set_stand][bg_room][bgm_MT][f/p_nt][show_stand]

[syl][eval exp="f.blow=f.blow+1" ][eval exp="f.Hx_hair='off'" ]

[if exp="f.m_mouth==0" ][eval exp="f.m_mouth=1" ]
	[f/p]Với... miệng của em ư?[p_]
	[f/re][um_01]...Vâng ạ。[lr_]
	[f/re]Em không chắc em có thể làm tốt không, nhưng em sẽ cố thử。[p_]
	[jump storage="H/mouth.ks" target="*a" ]
	
[elsif exp="f.mood=='calm' && f.h_m>=100 && f.m_mouth>=2 && f.lust>=600" ]
	[f/sp]Với... miệng của em ư?[p_]
	[f/re][um_01]Em hiểu rồi。 Em sẽ phục vụ anh.♥[p_]
	[jump storage="H/mouth.ks" target="*b" ]
[elsif exp="f.mood=='calm'" ]
	[f/p]Bằng miêng của em ư？[lr_]
	[f/re][um_05]Vâng!…Em sẽ cố gắng。[p_]
	[jump storage="H/mouth.ks" target="*a" ]
	
[elsif exp="f.lust>=800 && f.h_m>=100 && f.m_mouth>=2 || f.mood=='lust' && f.h_m>=100 && f.m_mouth>=2" ]
	[f/sp][um_10]Vâng…♥[lr_]
	[f/re][p_name] của [name_h]…Em sẽ chăm sóc nó bằng miệng của mình…♥[p_]
	[jump storage="H/mouth.ks" target="*c" ]
[elsif exp="f.lust>=600 && f.h_m>=100 && f.m_mouth>=2" ]
	[f/sp][um_10]Vâng…♥[lr_]
	[f/re]Em sẽ chăm sóc nó... bằng miệng của mình...♥[p_]
	[jump storage="H/mouth.ks" target="*c" ]
[elsif exp="f.lust>=200 && f.h_m>=50 && f.m_mouth>=1 || f.mood=='lust' && f.h_m>=50 && f.m_mouth>=1" ]
	[f/sp]Anh muốn em làm bằng miệng ư？[p_]
	[f/re]Em hiểu rồi。 [um_09]Em sẽ phục vụ anh♥[p_]
	[jump storage="H/mouth.ks" target="*b" ]
[else]
	[f/p]Anh muốn em làm bằng miệng ư？[lr_]
	[f/re][um_06]Vâng… Em sẽ cố gắng hết sức。[p_]
	[jump storage="H/mouth.ks" target="*a" ]
[endif]

;;オーラル後
*mouth_after
[cm][hide_role][show_role]
[if exp="f.lust<=100" ][jump target="*end" ][endif]
[button target="*conti" graphic="ch/sex.png" x="0" y="200" ]
[button target="*end" graphic="ch/rest.png" x="0" y="350" ][s]

*end
[cm][black]
[if exp="f.sexless_c>=1" ][jump target="*please" ][endif]
[_]（Hôm nay có lẽ tôi đã thoả mãn, ta nên nghỉ ngơi…。[p_]
[stop_bgm]…[p_]
[eval exp="f.sexless=f.sexless+2" ]
[eval exp="f.act='nonp'" ]
[day_end]

*please
[cm][set_stand][bg_bed][f/cp_nt]
[chara_mod name="neck" time="1" storage="00.png" ][chara_mod name="dress" time="1" storage="00.png" ]
[chara_mod name="sleeve" time="1" storage="00.png" ][chara_mod name="pin" time="1" storage="00.png" ]
[chara_mod name="hair_f" time="1" storage="s/body/stn_fh.png" ]
[if exp="f.hat==1 || f.hat==2" ][else][chara_mod name="hat" time="1" storage="00.png" ][endif]
[chara_mod name="ribbon_b" time="1" storage="00.png" ][chara_mod name="ribbon" time="1" storage="00.png" ]
[chara_mod name="head" time="1" storage="s/body/stn_h1.png" ]
[chara_mod name="hair_b" time="1" storage="s/hair/F/nr.png" wait="true" ]
[chara_mod name="under_b" time="1" storage="00.png" ][chara_mod name="under_p" time="1" storage="00.png" ]
[show_stand]
[syl][f/re]…Cái này là dành cho ngày hôm nay ư？[p_]
[if exp="f.v_name[0]==2 && f.lust>=800 || f.v_name[0]==2 && f.mood=='lust'" ]
[f/re][name_h]…[v_name] của em...Làm ơn hãy chấp nhận nó…。[um_01][lr]
[f/re]Em muốn [name_h] hãy [sex_name] cùng với em…。[p_]
[elsif exp="f.lust>=800 || f.mood=='lust'" ]
[f/re][name_h]…Xin hãy chấp nhận em…。[lr]
[f/re]Em cũng muốn [name_h] hãy [sex_name] cùng với em…。[p_]
[elsif exp="f.lust>=100" ]
[f/re][name_h]…Sono~…。E-Em muốn…。[p_]
[else]
[f/re]Sono~…。[p_]
[endif]

[button target="*ok" graphic="ch/sex.png" x="0" y="200" ]
[button target="*endisend" graphic="ch/rest.png" x="0" y="350" ][s]

*conti
[cm][black]
[_]（Chỉ ra một lần thôi thì vẫn chưa thỏa mãn lắm. Tôi đè Sylvie xuống giường[p_]
[syl][kya_01]Ah…~♥[p_]
;[Hx_dress/all_off]
;[jump storage="H/Hx.ks" target="*H_ex" ]
[save_dress][eval exp="f.h_act='mouth'" ]
[eval exp="f.pin=0" ][eval exp="f.ribbon=0" ][eval exp="f.socks=0" ][eval exp="f.dress=0" ][eval exp="f.glasses=0" ]
[jump target="*sex_2nd" ]

*ok
[cm][black]
[_]（Tôi không thể kiểm soát bản thân nữa và đẩy Sylvie xuống giường[p_]
[syl][r_03]…♥[p_]
;[Hx_dress/all_off]
;[jump storage="H/Hx.ks" target="*H_ex" ]
[save_dress][eval exp="f.h_act='mouth'" ]
[eval exp="f.pin=0" ][eval exp="f.ribbon=0" ][eval exp="f.socks=0" ][eval exp="f.dress=0" ][eval exp="f.glasses=0" ]
[jump target="*sex_2nd" ]

*endisend
[cm][if exp="f.lust>=800 || f.mood=='lust'" ]
[f/clp][r_04]Umm…。[lr_]
[f/re]E~Em…Hiểu rồi…。[p_]
[elsif exp="f.lust>=100" ]
[f/clp][r_01]Ah~、Em xin lỗi…。[p_]
[else]
[f/clp_nt]…。[p_]
[endif]

[black]（…[p_][stop_bgm]
[eval exp="f.sexless=f.sexless+2" ][eval exp="f.out=0" ][eval exp="f.act='nonp'" ]
[day_end]

;;自分でさせるセリフ
*self
[cm][set_stand][bg_room][bgm_MT][f/p_nt][show_stand]
[eval exp="f.Hx_hair='off'" ]
[if exp="f.self>=30 && f.lust>=1000 || f.mood=='lust'" ]
	[f/re][a_02]Tự sướng… ư？[p_]
	[f/re][um_05]Vâng、Em hiểu rồi。[p_]
	[f/sq][v_name] của em…Anh hãy xem nhé…♥[r_02][p_]
[elsif exp="f.self>=30" ]
	[f/re][a_02]Anh muốn em…Tự sướng ？[p_]
	[f/re][um_05]Vâng、Em hiểu rồi。[p_]
	[f/q]…Vậy thì、Anh hãy theo dõi nhé。[p_]
[elsif exp="f.self_sec==1" ]
	[f/re]Tự sướng… ấy ạ？[p_]
	[f/re][um_05]…Vâng、Em hiểu rồi。[lr]
	[f/re]Vì [name]muốn xem nên…。[p_]
[elsif exp="f.dress==5 || f.dress==6" ]
	[f/re][eh_01]Eh、「Tự làm」…ấy ạ？[lr]
	[f/re][um_01]「Lúc đó」 Đã bị anh…thấy rồi？[p_]
	[f/clp_nt]…。[p_]
	[f/p][name] muốn xem lại、em hiểu rồi ạ…。[p_]
	[f/re]Áo sơ mi này、Cho em mượn chút nhé。[lr_]
	[f/clcp]Có điều...、Sono~…「Việc đó」 em sẽ làm… đến khi không thể làm được nữa。[p_]
[else]
	[f/re][eh_01]Eh、「tự làm」…ấy ạ？[lr]
	[f/re][um_01]「Lúc đó」 đã bị anh…nhìn thấy？[p_]
	[f/clp_nt]…。[p_]
	[f/p][name] muốn xem lại、em hiểu rồi…。[p_]
	[f/re]Sono~… Cái áo sơ mi của [name]、 Em sử dụng nó được chứ？[lr_]
	[f/clcp]Có điều、Sono~…「Việc này」 em sợ sẽ… không kiểm soát được bản thân。[p_]
[endif]
	[jump storage="H/self.ks" target="*H_self" ]

;;自分でさせる後

*self_after
[cm][button target="*conti_s" graphic="ch/sex.png" x="0" y="200" ]
[button target="*end_s" graphic="ch/rest.png" x="0" y="350" ][s]

*end_s
[cm][black]
[if exp="f.sexless_c==3" ][jump target="*please" ][endif]
[_]（Hôm nay có thế là đủ, Ta nên nghỉ ngơi…。[p_]
[stop_bgm]…[p_]
[eval exp="f.sexless=f.sexless-1" ]
[eval exp="f.act='nonp'" ]
[day_end]

*conti_s
[cm][black]
[_]（Tôi không thể chịu đựng được nữa, Sylvie bắt đầu có những hành động kì lạ[r]
Tôi đẩy em ấy lên giường[p_]
;[Hx_dress/all_off]
;[jump storage="H/Hx.ks" target="*H_ex" ]
[save_dress][eval exp="f.h_act='self'" ]
[eval exp="f.pin=0" ][eval exp="f.ribbon=0" ][eval exp="f.socks=0" ][eval exp="f.dress=5" ][eval exp="f.glasses=0" ]
[jump target="*sex_2nd" ]

;;
[eval exp="f.lust=f.lust+2" ][eval exp="f.love=f.love+3" ]
[eval exp="f.h_m=f.h_m+1" ]
[eval exp="f.act='sex'" ]
[stop_bgm]…[p_][day_end]

*sex_2nd
[cm][eval exp="f.last_act='before_bed'" ]
[set_dress][hide_role][nolog][hide_message_w]
[chara_hide name="window" time="0" wait="false"]
[bgm_MT][mod_win st="o/win/before_bed.png" ]
[chara_show name="window" time="0" wait="true" left="0.1" ][show_dress]
[eval exp="f.drug_s=0" ][eval exp="f.drug_y=0" ]
[jump target="*reload_dress" ]

*sex_2nd_
[cm][eval exp="f.last_act='before_bed'" ]
[hide_message_w]
[chara_hide name="window" time="0" wait="false"]
[mod_win st="o/win/before_bed.png" ]
[chara_show name="window" time="0" wait="true" left="0.1" ]
[jump target="*reload_dress" ]
