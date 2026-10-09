;;
*H_ex
[cm][bgm_MT][eval exp="f.h_act='off'" ]
[eval exp="f.h_style='def'" ]
[call storage="H/Hx_set.ks" target="*pre_Hx" ]

*show
[cm][mod_win st="o/win/Hx_act.png" ]
[set_Hx1][show_Hx1]

;;選択画面
*h_def
[cm][if exp="f.h_style=='sit'" ][jump storage="H/Hx2.ks" target="*h_def" ][endif]
[if exp="f.s_feel<=0" ][eval exp="f.s_feel=0" ][endif]
[set_s_feel][set_y_feel]

[if exp="f.wet>=600" ]
[chara_mod name="breath" time="0" storage="Hx1/ef/breath3.png" ][chara_mod name="tear" time="0" storage="Hx1/tear/3.png" ]
[elsif exp="f.wet>=400" ]
[chara_mod name="breath" time="0" storage="Hx1/ef/breath2.png" ][chara_mod name="tear" time="0" storage="Hx1/tear/2.png" ]
[elsif exp="f.wet>=120" ]
[chara_mod name="breath" time="0" storage="Hx1/ef/breath1.png" ][chara_mod name="tear" time="0" storage="Hx1/tear/1.png" ]
[else][chara_mod name="breath" time="0" storage="00.png" ][chara_mod name="tear" time="0" storage="00.png" ][endif]

[if exp="f.h_act=='non'" ][chara_mod name="tear" time="0" storage="00.png" ][endif]
[chara_mod name="other" time="0" storage="00.png" ][hx/shake]

[if exp="f.wet>=500" ][h_ef st="Hx1/ef/heart5.png" ][elsif exp="f.wet>=380" ][h_ef st="Hx1/ef/heart4.png" ]
[elsif exp="f.wet>=240" ][h_ef st="Hx1/ef/heart3.png" ][elsif exp="f.wet>=180" ][h_ef st="Hx1/ef/heart2.png" ]
[elsif exp="f.wet>=50" ][h_ef st="Hx1/ef/heart1.png" ][else][h_ef st="00.png" ][endif]

[if exp="f.wet>=500" ]
[call storage="H/uncen1.ks" target="*hbody3"][chara_mod name="head" wait="false" time="0" storage="Hx1/body/head3.png" ]
[bg time="0" method="crossfade" storage="H/Hx1_3.jpg" ]
[elsif exp="f.wet>=250" ]
[call storage="H/uncen1.ks" target="*hbody2"][chara_mod name="head" wait="false" time="0" storage="Hx1/body/head2.png" ]
[bg time="0" method="crossfade" storage="H/Hx1_2.jpg" ]
[elsif exp="f.wet>=120" ]
[call storage="H/uncen1.ks" target="*hbody1"][chara_mod name="head" wait="false" time="0" storage="Hx1/body/head1.png" ]
[bg time="0" method="crossfade" storage="H/Hx1_1.jpg" ][endif]

[if exp="f.s_feel>=250 && f.y_feel>=210" ][jump target="*ex_both" ]
[elsif exp="f.s_feel>=250" ][jump target="*ex_s" ]
[elsif exp="f.y_feel>=210" ][jump target="*ex_y" ][endif]

[if exp="f.s_ex>=2 && f.lust<=10 && f.drug_s==0" ][jump storage="H/Hx_text.ks" target="*tx_end_s" ]
[elsif exp="f.y_ex>=1 && f.lust<=10 && f.drug_y==0" ][jump storage="H/Hx_text.ks" target="*tx_end_y" ]
[elsif exp="f.s_ex>=3 && f.lust<=70 && f.drug_s==0" ][jump storage="H/Hx_text.ks" target="*tx_end_s" ]
[elsif exp="f.y_ex>=2 && f.lust<=70 && f.drug_y==0" ][jump storage="H/Hx_text.ks" target="*tx_end_y" ]
[elsif exp="f.s_ex>=4 && f.drug_s==0" ][jump storage="H/Hx_text.ks" target="*tx_end_s" ]
[elsif exp="f.y_ex>=3 && f.drug_y==0" ][jump storage="H/Hx_text.ks" target="*tx_end_y" ][endif]

;;キス-選択
[clickable width="28" height="14" x="390" y="253" target="*kiss" border="" ]
[clickable width="27" height="13" x="402" y="241" target="*kiss" border="" ]
[clickable width="18" height="13" x="415" y="231" target="*kiss" border="" ]
[clickable width="11" height="12" x="423" y="225" target="*kiss" border="" ]
;;胸-選択
[clickable width="71" height="74" x="402" y="342" target="*bust_l" border="" ]
[clickable width="77" height="78" x="499" y="262" target="*bust_r" border="" ]
;;指入れ-選択
[if exp="f.h_right=='f' || f.h_sex==1" ][elsif exp="f.h_v_select=='finger'" ]
[clickable width="47" height="48" x="697" y="582" target="*f_in" border="" ][endif]
;;指動かし-選択
[if exp="f.h_right=='f' && f.h_v_speed=='fast'" ]
[clickable width="108" height="124" x="698" y="585" target="*f_fast" border="" ]
[elsif exp="f.h_right=='f' && f.h_v_speed=='normal'" ]
[clickable width="108" height="124" x="697" y="582" target="*f_slow" border="" ][endif]

;;挿入-選択
[if exp="f.h_right=='f' || f.h_sex==1" ][elsif exp="f.h_v_select=='sex'" ]
[clickable width="47" height="48" x="697" y="582" target="*v_in" border="" ][endif]
;;腰動かし-選択
[if exp="f.h_sex==1 && f.h_v_speed=='fast'" ]
[clickable width="68" height="75" x="702" y="589" target="*v_fast" border="" ]
[elsif exp="f.h_sex==1 && f.h_v_speed=='normal'" ]
[clickable width="68" height="75" x="702" y="589" target="*v_slow" border="" ][endif]
;;クリ-選択
[clickable width="22" height="20" x="686" y="567" target="*clit" border="" ]
;;手-選択
[if exp="f.h_right!='hands'" ]
[clickable width="78" height="69" x="690" y="68" target="*hands_hands_r" border="" ]
[clickable width="65" height="60" x="710" y="126" target="*hands_hands_r" border="" ][endif]
[if exp="f.h_left!='hands'" ]
[clickable width="86" height="67" x="180" y="343" target="*hands_hands_l" border="" ]
[clickable width="70" height="77" x="190" y="397" target="*hands_hands_l" border="" ][endif]

;;脚-選択
[if exp="f.h_right!='legs'" ]
[clickable width="119" height="184" x="788" y="171" target="*hands_legs_r" border="" ]
[clickable width="36" height="84" x="766" y="209" target="*hands_legs_r" border="" ]
[clickable width="147" height="125" x="740" y="276" target="*hands_legs_r" border="" ][endif]
[if exp="f.h_left!='legs'" ]
[clickable width="192" height="149" x="278" y="577" target="*hands_legs_l" border="" ]
[clickable width="71" height="167" x="446" y="573" target="*hands_legs_l" border="" ][endif]

[call storage="H/Hx_set.ks" target="*H_command" ]
[cancelskip][s]

;;キス
*kiss
[_][cm][eval exp="f.h_count=f.h_count+1" ]
[if exp="f.h_act=='m'" ][eval exp="f.h_act='mm'" ]
[elsif exp="f.h_act=='mm'" ][eval exp="f.h_m=f.h_m+1" ]
[else][eval exp="f.h_act='m'" ][endif]

[eval exp="f.h_m=f.h_m+1" ][eval exp="f.love=f.love+1" ]

[if exp="f.h_m<10" ][eval exp="f.s_feel=f.s_feel+2" ][eval exp="f.wet=f.wet+2" ]
[elsif exp="f.h_m<=50" ][eval exp="f.s_feel=f.s_feel+3" ][eval exp="f.wet=f.wet+3" ]
[elsif exp="f.h_m<=250" ][eval exp="f.s_feel=f.s_feel+5" ][eval exp="f.wet=f.wet+5" ]
[else][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ][endif]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]
[if exp="f.h_right=='f'" ][f_slow][eval exp="f.s_feel+7" ][endif]
[if exp="f.h_sex==1" ][eval exp="f.h_v=f.h_v+1" ][v_slow]
[eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.y_feel=f.y_feel+10" ][endif]

[if exp="f.h_act=='mm' && f.h_right=='b' && f.h_left=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vbbm_" ]
[elsif exp="f.h_act=='mm' && f.h_left=='c' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vcm_" ]
[elsif exp="f.h_act=='mm' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vm_" ]
[elsif exp="f.h_act=='mm' && f.h_right=='f' && f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bfm_" ]
[elsif exp="f.h_act=='mm' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_fm_" ]
[elsif exp="f.h_act=='mm' && f.h_right=='b' && f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bbm_" ]
[elsif exp="f.h_act=='mm' && f.h_right=='b' && f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bcm_" ]
[elsif exp="f.h_act=='mm'" ]
	[jump storage="H/Hx_text.ks" target="*tx_m_" ]

[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_left=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vbbm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_left=='c' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vbbm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vbbm" ]
[elsif exp="f.h_act=='m' && f.h_left=='c' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vcm" ]
[elsif exp="f.h_act=='m' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_vm" ]
[elsif exp="f.h_act=='m' && f.h_right=='f' && f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bfm" ]
[elsif exp="f.h_act=='m' && f.h_right=='f' && f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_fm" ]
[elsif exp="f.h_act=='m' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_fm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bbm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b' && f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bcm" ]
[elsif exp="f.h_act=='m' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_bbm" ]
[elsif exp="f.h_act=='m'" ]
	[jump storage="H/Hx_text.ks" target="*tx_m" ]
[endif]

;;胸
*bust_l
[_][cm][eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='b'" ][eval exp="f.h_b=f.h_b+1" ]

[if exp="f.h_b<=20" ][eval exp="f.s_feel=f.s_feel+5" ][eval exp="f.wet=f.wet+5" ]
[elsif exp="f.h_b<=70" ][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ]
[elsif exp="f.h_b<=250" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" ]
[else][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ][endif]
[if exp="f.h_right=='f'" ][f_slow][eval exp="f.s_feel+7" ][endif]
[if exp="f.h_sex==1" ][eval exp="f.h_v=f.h_v+1" ][v_slow]
[eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.y_feel=f.y_feel+10" ][endif]

[if exp="f.h_left=='b' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb_" ]
[elsif exp="f.h_left=='c' && f.h_right=='b' && f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb" ]
[elsif exp="f.h_left=='c' && f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vb" ]
[elsif exp="f.h_right=='b' && f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb" ]
[elsif exp="f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vb" ]
[elsif exp="f.h_left=='b' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_bf_" ]
[elsif exp="f.h_left=='c' && f.h_right=='f'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bf" ]
[elsif exp="f.h_right=='f'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bf" ]
[elsif exp="f.h_left=='b' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb_" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[elsif exp="f.h_left=='c'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_b" ]
[elsif exp="f.h_right=='b'" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[elsif exp="f.h_left=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_b_" ]
[else][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_b" ]
[endif]

*bust_r
[_][cm][eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='b'" ][eval exp="f.h_b=f.h_b+1" ]

[if exp="f.h_right=='f'" ][stopse][endif]
[if exp="f.h_b<=20" ][eval exp="f.s_feel=f.s_feel+5" ][eval exp="f.wet=f.wet+5" ]
[elsif exp="f.h_b<=70" ][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ]
[elsif exp="f.h_b<=250" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" ]
[else][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]
[if exp="f.h_sex==1" ][eval exp="f.h_v=f.h_v+1" ][v_slow]
[eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.y_feel=f.y_feel+10" ][endif]

[if exp="f.h_left=='b' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb_" ]
[elsif exp="f.h_left=='c' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbc_" ]
[elsif exp="f.h_left=='c' && f.h_sex==1" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbc" ]
[elsif exp="f.h_right=='b' && f.h_sex==1" ][left_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vbb" ]
[elsif exp="f.h_sex==1" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_vb" ]
[elsif exp="f.h_left=='b' && f.h_right=='f'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[elsif exp="f.h_left=='c' && f.h_right=='f'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[elsif exp="f.h_right=='f'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_b" ]
[elsif exp="f.h_left=='b' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb_" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_bc_" ]
[elsif exp="f.h_left=='c'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bc" ]
[elsif exp="f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_b_b_" ]
[elsif exp="f.h_left=='b'" ][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_bb" ]
[else][right_b]
	[jump storage="H/Hx_text.ks" target="*tx_b_b" ]
[endif]

;;クリ
*clit
[_][cm][eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='c'" ]
[eval exp="f.h_c=f.h_c+1" ][left_c]

[if exp="f.h_c<15" ][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ]
[elsif exp="f.h_c<=60" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" 
[elsif exp="f.h_c<=250" ][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ]
[else][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ][endif]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_right=='f'" ][f_slow][eval exp="f.s_feel+7" ][endif]
[if exp="f.h_sex==1" ][eval exp="f.h_v=f.h_v+1" ][v_slow]
[eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.y_feel=f.y_feel+10" ][endif]


[if exp="f.h_left=='c' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vbc_" ]
[elsif exp="f.h_left=='b' && f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vbc" ]
[elsif exp="f.h_left=='c' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vc_" ]
[elsif exp="f.h_right=='b' && f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vbc" ]
[elsif exp="f.h_sex==1" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_vc" ]
[elsif exp="f.h_left=='c' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_cf_" ]
[elsif exp="f.h_left=='b' && f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_cf" ]
[elsif exp="f.h_right=='f'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_cf" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_bc_" ]
[elsif exp="f.h_left=='b' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_bc" ]
[elsif exp="f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_bc" ]
[elsif exp="f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_c_c_" ]
[else][jump storage="H/Hx_text.ks" target="*tx_c_c" ][endif]

;;指入れ
*f_in
[_][cm][eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_v=f.h_v+1" ]
[if exp="f.h_left=='non'" ][left_l][endif]
[eval exp="f.h_right='f'" ][eval exp="f.h_act='f'" ]

[se_nloop st="s-wet2.ogg" ][right_f]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+10" ][eval exp="f.wet=f.wet+10" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ]
[else][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ][endif]

[if exp="f.wet<=20" ][jump storage="H/Hx_text.ks" target="*tx_fi_a" ]
[elsif exp="f.wet<=70" ][jump storage="H/Hx_text.ks" target="*tx_fi_b" ]
[elsif exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_fi_c" ]
[elsif exp="f.wet<=800" ][jump storage="H/Hx_text.ks" target="*tx_fi_d" ]
[else][jump storage="H/Hx_text.ks" target="*tx_fi_e" ][endif]

*f_off
[_][cm][se_nloop st="s-wet2.ogg" ][right_non]
[eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='off'" ]

[if exp="f.wet<70" ][jump storage="H/Hx_text.ks" target="*tx_fo_a" ]
[elsif exp="f.wet<=150" ][jump storage="H/Hx_text.ks" target="*tx_fo_b" ]
[elsif exp="f.wet<=300" ][jump storage="H/Hx_text.ks" target="*tx_fo_c" ]
[else][jump storage="H/Hx_text.ks" target="*tx_fo_d" ][endif]

*f_slow
[_][cm][eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='f'" ][eval exp="f.h_v=f.h_v+1" ]
[f_slow]
[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+12" ][eval exp="f.wet=f.wet+12" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+17" ][eval exp="f.wet=f.wet+17" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+22" ][eval exp="f.wet=f.wet+22" ]
[else][eval exp="f.s_feel=f.s_feel+27" ][eval exp="f.wet=f.wet+27" ][endif]

[if exp="f.h_left=='b'" ][jump storage="H/Hx_text.ks" target="*tx_f_bf" ]
[elsif exp="f.h_left=='c'" ][jump storage="H/Hx_text.ks" target="*tx_f_cf" ]
[else][jump storage="H/Hx_text.ks" target="*tx_f_f" ][endif]

*f_fast
[_][cm][eval exp="f.h_count=f.h_count+1" ][eval exp="f.h_act='f'" ][eval exp="f.h_v=f.h_v+1" ][f_fast]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+15" ][eval exp="f.wet=f.wet+15" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ]
[else][eval exp="f.s_feel=f.s_feel+30" ][eval exp="f.wet=f.wet+30" ][endif]

[if exp="f.h_left=='b'" ][jump storage="H/Hx_text.ks" target="*tx_ff_bf" ]
[elsif exp="f.h_left=='c'" ][jump storage="H/Hx_text.ks" target="*tx_ff_cf" ]
[else][jump storage="H/Hx_text.ks" target="*tx_ff_f" ][endif]

;;挿入
*v_in
[cm][eval exp="f.h_count=f.h_count+1" ][eval exp="f.love=f.love+1" ]
[eval exp="f.h_act='vi'" ][eval exp="f.h_sex=1" ][eval exp="f.h_v=f.h_v+1" ]
[_]
[if exp="f.h_left=='hands'" ][else][left_l][endif]
[if exp="f.h_right=='hands'" ][else][right_l][endif]
[v_show][v_in]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+12" ][eval exp="f.y_feel=f.y_feel+12" ][eval exp="f.wet=f.wet+12" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+17" ][eval exp="f.y_feel=f.y_feel+17" ][eval exp="f.wet=f.wet+17" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+22" ][eval exp="f.y_feel=f.y_feel+22" ][eval exp="f.wet=f.wet+22" ]
[else][eval exp="f.s_feel=f.s_feel+27" ][eval exp="f.y_feel=f.y_feel+27" ][eval exp="f.wet=f.wet+27" ][endif]

[if exp="f.wet<=20" ][jump storage="H/Hx_text.ks" target="*tx_vi_a" ]
[elsif exp="f.wet<=70" ][jump storage="H/Hx_text.ks" target="*tx_vi_b" ]
[elsif exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_vi_c" ]
[elsif exp="f.wet<=800" ][jump storage="H/Hx_text.ks" target="*tx_vi_d" ]
[else][jump storage="H/Hx_text.ks" target="*tx_vi_e" ][endif]

*v_off
[_][cm][eval exp="f.h_count=f.h_count+1" ][left_non][right_non]
[se_nloop st="s-wet1.ogg" ][v_show]
[eval exp="f.h_sex=0" ][eval exp="f.h_act='off'" ]

[if exp="f.wet<50" ][jump storage="H/Hx_text.ks" target="*tx_vo_a" ]
[elsif exp="f.wet<=150" ][jump storage="H/Hx_text.ks" target="*tx_vo_b" ]
[elsif exp="f.wet<=300" ][jump storage="H/Hx_text.ks" target="*tx_vo_c" ]
[else][jump storage="H/Hx_text.ks" target="*tx_vo_d" ][endif]

*v_slow
[_][cm][eval exp="f.h_count=f.h_count+1" ][v_slow]
[eval exp="f.h_act='v'" ][eval exp="f.h_v=f.h_v+1" ]
[eval exp="f.y_feel=f.y_feel+20" ]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]
[if exp="f.h_right=='f'" ][eval exp="f.s_feel+7" ][endif]

[if exp="f.h_v<=25" ][eval exp="f.s_feel=f.s_feel+20" ][eval exp="f.wet=f.wet+20" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+30" ][eval exp="f.wet=f.wet+30" ]
[else][eval exp="f.s_feel=f.s_feel+35" ][eval exp="f.wet=f.wet+35" ][endif]

[if exp="f.h_left=='b' && f.h_right=='b'" ][jump storage="H/Hx_text.ks" target="*tx_v_vbb" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ][jump storage="H/Hx_text.ks" target="*tx_v_vbc" ]
[elsif exp="f.h_right=='b'" ][jump storage="H/Hx_text.ks" target="*tx_v_vbb" ]
[elsif exp="f.h_left=='c'" ][jump storage="H/Hx_text.ks" target="*tx_v_vc" ]
[else][jump storage="H/Hx_text.ks" target="*tx_v_v" ][endif]

*v_fast
[_][cm][eval exp="f.h_count=f.h_count+1" ][v_fast]
[eval exp="f.h_act='v'" ][eval exp="f.h_v=f.h_v+1" ][eval exp="f.y_feel=f.y_feel+25" ]

[if exp="f.h_v<25" ][eval exp="f.s_feel=f.s_feel+25" ][eval exp="f.wet=f.wet+25" ]
[elsif exp="f.h_v<=80" ][eval exp="f.s_feel=f.s_feel+30" ][eval exp="f.wet=f.wet+30" ]
[elsif exp="f.h_v<=250" ][eval exp="f.s_feel=f.s_feel+35" ][eval exp="f.wet=f.wet+35" ]
[else][eval exp="f.s_feel=f.s_feel+40" ][eval exp="f.wet=f.wet+40" ]
[endif]

[if exp="f.h_right=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='b'" ][eval exp="f.h_b=f.h_b+1" ][eval exp="f.s_feel=f.s_feel+2" ][endif]
[if exp="f.h_left=='c'" ][eval exp="f.h_c=f.h_c+2" ][eval exp="f.s_feel=f.s_feel+5" ][endif]
[if exp="f.h_right=='f'" ][eval exp="f.s_feel+7" ][endif]

[if exp="f.h_left=='b' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_vv_vbb" ]
[elsif exp="f.h_left=='c' && f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_vv_vbc" ]
[elsif exp="f.h_right=='b'" ]
	[jump storage="H/Hx_text.ks" target="*tx_vv_vbb" ]
[elsif exp="f.h_left=='c'" ]
	[jump storage="H/Hx_text.ks" target="*tx_vv_vc" ]
[else]
	[jump storage="H/Hx_text.ks" target="*tx_vv_v" ]
[endif]

*hands_off
[cm][if exp="f.h_right=='f'" ][stopse][endif]
[eval exp="f.h_act='off'" ][left_non][right_non][jump target="*h_def" ]

*hands_hands_r
[cm][if exp="f.h_right=='f'" ][stopse][endif]
[eval exp="f.h_act='hands'" ][right_h]
[jump target="*h_def" ]

*hands_hands_l
[cm][eval exp="f.h_act='hands'" ][left_h]
[jump target="*h_def" ]


*hands_legs_r
[cm][if exp="f.h_right=='f'" ][stopse][endif]
[eval exp="f.h_act='legs'" ][right_l][jump target="*h_def" ]

*hands_legs_l
[cm][eval exp="f.h_act='legs'" ][left_l][jump target="*h_def" ]

*ex_both
[eval exp="f.lust=f.lust+1" ][eval exp="f.heavn=f.heavn+1" ]
[eval exp="f.y_ex=f.y_ex+1" ][eval exp="f.s_ex=f.s_ex+1" ]
[eval exp="f.y_feel=0" ][eval exp="f.s_feel=f.s_feel-250" ]
[eval exp="f.wet=f.wet+30" ]
[_][if exp="f.h_cum_pos=='select'" ]
（Tôi đã gần đến giới hạn của mình…
[button target="*in_cum" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*out_cum" graphic="ch/out-cum.png" x="0" y="350" ][cancelskip][s]
[elsif exp="f.h_cum_pos=='in'" ][jump target="*in_cum" ]
[elsif exp="f.h_cum_pos=='out'" ][jump target="*out_cum" ][endif]

*in_cum
[if exp="f.dream>=1"]
[eval exp="f.dream=f.dream+1"][else][eval exp="f.dream=1"][endif]
[cm][eval exp="f.cum=f.cum+1" ][cum_in]
[_][quake_3]（Tôi cố đẩy mạnh hết sức và bắn tinh trùng vào trong cô ấy càng sâu càng tốt。[p]
[squi][syl][random_4]
[if exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_both_1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_both_2" ]
[elsif exp="f.wet<=1000 && f.r<=2" ][call storage="H/Hx_text.ks" target="*tx_ex_both_3a" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_both_3b" ]
[elsif exp="f.r==1" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4a" ]
[elsif exp="f.r==2" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4b" ]
[elsif exp="f.r==3" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4c" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_both_4d" ][endif]
[_][quake_6]（Cùng lúc đó khi tôi ra bên trong, cô ấy run bần bật[r]
Âm hộ của cô ấy co giật vắt trọn tinh trùng của tôi[p]
[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]
[jump target="*h_def" ]

*out_cum
[cm][eval exp="f.kake=f.kake+1" ][cum_out]
[_]（Khi tôi đến giới hạn của mình tôi rút ra và bắn tinh trùng lên người em ấy。[p]
[if exp="f.h_in>=8" ][call storage="H/uncen1.ks" target="*zb5_"]
[elsif exp="f.h_in>=6" ][call storage="H/uncen1.ks" target="*zb4_"]
[elsif exp="f.h_in>=4" ][call storage="H/uncen1.ks" target="*zb3_"]
[elsif exp="f.h_in>=3" ][call storage="H/uncen1.ks" target="*zb2_"]
[elsif exp="f.h_in==2" ][call storage="H/uncen1.ks" target="*zb1_"]
[else][chara_mod name="z-b" time="0" storage="00.png" ][endif]

[squi][syl][random_4]
[if exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_both_1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_both_2" ]
[elsif exp="f.wet<=1000 && f.r<=2" ][call storage="H/Hx_text.ks" target="*tx_ex_both_3a" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_both_3b" ]
[elsif exp="f.r==1" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4a" ]
[elsif exp="f.r==2" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4b" ]
[elsif exp="f.r==3" ][call storage="H/Hx_text.ks" target="*tx_ex_both_4c" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_both_4d" ][endif]
[_][quake_12]（Sylvie và tôi cùng ra cùng lúc, và tinh dịch của chúng tôi hòa quệt vào nhau。[p]
[iscript]
f.tr=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==2"]
[eval exp="f.hp=f.hp-1"][hp_return][endif]
[left_non][right_non][cum_add][v_show]

[eval exp="f.h_sex=0" ][eval exp="f.h_act='off'" ]
[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]
[jump target="*h_def" ]

*ex_s
[eval exp="f.lust=f.lust+1" ][eval exp="f.heavn=f.heavn+1" ]
[eval exp="f.s_ex=f.s_ex+1" ][eval exp="f.s_feel=f.s_feel-250" ]
[eval exp="f.wet=f.wet+30" ]

[_][quake_6]（Cơ thể của Sylvie co giật ngay khi em ấy ra。[p]
[iscript]
f.tr=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==2"]
[eval exp="f.hp=f.hp-1"][hp_return][endif]
[squi][syl][random_4]
[if exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_s1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_s2" ]
[elsif exp="f.wet<=1000 && f.r<=2" ][call storage="H/Hx_text.ks" target="*tx_ex_s3a" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_s3b" ]
[elsif exp="f.r==1" ][call storage="H/Hx_text.ks" target="*tx_ex_s4a" ]
[elsif exp="f.r==2" ][call storage="H/Hx_text.ks" target="*tx_ex_s4b" ]
[elsif exp="f.r==3" ][call storage="H/Hx_text.ks" target="*tx_ex_s4c" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_s4d" ][endif]

[if exp="f.y_feel>=200" ][jump target="*ex_sy" ][endif]
[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]

[jump target="*h_def" ]

*ex_sy
[eval exp="f.y_feel=0" ][eval exp="f.y_ex=f.y_ex+1" ][set_y_feel]
[_][quake_9]（Sylvie lên đỉnh đã làm âm hộ em ấy co giật khi vẫn thằng nhỏ tôi vẫn còn bên trong, và cứ tiếp tục đẩy tôi về cạnh giường。[p]
[iscript]
f.tr=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==2"]
[eval exp="f.hp=f.hp-1"][hp_return][endif]
[if exp="f.h_cum_pos=='select'" ]
[button target="*sy_in_cum" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*sy_out_cum" graphic="ch/out-cum.png" x="0" y="350" ][cancelskip][s]
[elsif exp="f.h_cum_pos=='in'" ][jump target="*sy_in_cum ]
[elsif exp="f.h_cum_pos=='out'" ][jump target="*sy_out_cum" ]
[endif]

*sy_in_cum
[if exp="f.dream>=1"]
[eval exp="f.dream=f.dream+1"][else][eval exp="f.dream=1"][endif]
[cm][eval exp="f.cum=f.cum+1" ][cum_in]
[_][quake_3]（Tôi đẩy hết toàn tốc lực và ra thẳng sâu bên trong âm hộ của em ấy。[p]
[syl][if exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_in1" ]
[elsif exp="f.wet<=600" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_in2" ]
[elsif exp="f.wet<=1000" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_in3" ]
[else][jump storage="H/Hx_text.ks" target="*tx_ex_sy_in4" ][endif]

*sy_out_cum
[cm][eval exp="f.kake=f.kake+1" ][cum_out]
[_]（Khi tôi đến giới hạn của mình tôi rút ra và bắn tinh dịch lên người em ấy。[p]
[if exp="f.h_in>=8" ][call storage="H/uncen1.ks" target="*zb5_"]
[elsif exp="f.h_in>=6" ][call storage="H/uncen1.ks" target="*zb4_"]
[elsif exp="f.h_in>=4" ][call storage="H/uncen1.ks" target="*zb3_"]
[elsif exp="f.h_in>=3" ][call storage="H/uncen1.ks" target="*zb2_"]
[elsif exp="f.h_in==2" ][call storage="H/uncen1.ks" target="*zb1_"]
[else][chara_mod name="z-b" time="0" storage="00.png" ][endif]

[left_non][right_non][cum_add][v_show]
[eval exp="f.h_sex=0" ][eval exp="f.h_act='off'" ]
[_]（Tinh trùng mà tôi xả lên người Sylvie đang sáng lấp lánh lung linh.…。[p]
[syl][if exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_out1" ]
[elsif exp="f.wet<=600" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_out2" ]
[elsif exp="f.wet<=1000" ][jump storage="H/Hx_text.ks" target="*tx_ex_sy_out3" ]
[else][jump storage="H/Hx_text.ks" target="*tx_ex_sy_out4" ][endif]

*ex_y
[eval exp="f.y_ex=f.y_ex+1" ][eval exp="f.y_feel=0" ][eval exp="f.wet=f.wet+30" ]
[_][if exp="f.h_cum_pos=='select'" ]
（Tôi đã đến giới hạn…
[button target="*y_in_cum" graphic="ch/in-cum.png" x="0" y="200" ]
[button target="*y_out_cum" graphic="ch/out-cum.png" x="0" y="350" ][cancelskip][s]
[elsif exp="f.h_cum_pos=='in'" ][jump target="*y_in_cum" ]
[elsif exp="f.h_cum_pos=='out'" ][jump target="*y_out_cum" ]
[endif]

*y_in_cum
[if exp="f.dream>=1"]
[eval exp="f.dream=f.dream+1"][else][eval exp="f.dream=1"][endif]
[cm][eval exp="f.cum=f.cum+1" ][cum_in]
[_][quake_3]（Tôi đẩy hết toàn tốc lực và ra thẳng sâu bên trong âm hộ của em ấy。[p]
[if exp="f.wet<=150" ][call storage="H/Hx_text.ks" target="*tx_ex_y_in0" ]
[elsif exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_y_in1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_y_in2" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_y_in3" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_y_in4" ][endif]

[if exp="f.s_feel>=250" ][jump target="*ex_ys" ][endif]
[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]
[jump target="*h_def" ]

*ex_ys
[set_s_feel]
[eval exp="f.lust=f.lust+1" ][eval exp="f.heavn=f.heavn+1" ]
[eval exp="f.s_ex=f.s_ex+1" ][eval exp="f.s_feel=f.s_feel-250" ]
[eval exp="f.wet=f.wet+30" ]
[quake_6]（chính giữa đùi của Sylvie co giật liên tục và tôi ra bên sâu bên trong của em ấy。[p]
[iscript]
f.tr=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.talk==2"]
[eval exp="f.hp=f.hp-1"][hp_return][endif]
[squi][syl][random_4]
[if exp="f.wet<=250" ][call storage="H/Hx_text.ks" target="*tx_ex_s1" ]
[elsif exp="f.wet<=600" ][call storage="H/Hx_text.ks" target="*tx_ex_s2" ]
[elsif exp="f.wet<=1000 && f.r<=2" ][call storage="H/Hx_text.ks" target="*tx_ex_s3a" ]
[elsif exp="f.wet<=1000" ][call storage="H/Hx_text.ks" target="*tx_ex_s3b" ]
[elsif exp="f.r==1" ][call storage="H/Hx_text.ks" target="*tx_ex_s4a" ]
[elsif exp="f.r==2" ][call storage="H/Hx_text.ks" target="*tx_ex_s4b" ]
[elsif exp="f.r==3" ][call storage="H/Hx_text.ks" target="*tx_ex_s4c" ]
[else][call storage="H/Hx_text.ks" target="*tx_ex_s4d" ][endif]

[if exp="f.h_count>=170" ][jump storage="H/Hx_text.ks" target="*morning" ][endif]
[jump target="*h_def" ]

*y_out_cum
[cm][eval exp="f.kake=f.kake+1" ][cum_out]
[_]（Khi tôi đến giới hạn của mình tôi rút ra và bắn tinh trùng lên người em ấy。[p]
[if exp="f.h_in>=8" ][call storage="H/uncen1.ks" target="*zb5_"]
[elsif exp="f.h_in>=6" ][call storage="H/uncen1.ks" target="*zb4_"]
[elsif exp="f.h_in>=4" ][call storage="H/uncen1.ks" target="*zb3_"]
[elsif exp="f.h_in>=3" ][call storage="H/uncen1.ks" target="*zb2_"]
[elsif exp="f.h_in==2" ][call storage="H/uncen1.ks" target="*zb1_"]
[else][chara_mod name="z-b" time="0" storage="00.png" ][endif]

[left_non][right_non][cum_add][v_show]
[eval exp="f.h_sex=0" ][eval exp="f.h_act='off'" ]

[if exp="f.wet<=150" ][jump storage="H/Hx_text.ks" target="*tx_ex_y_out0" ]
[elsif exp="f.wet<=250" ][jump storage="H/Hx_text.ks" target="*tx_ex_y_out1" ]
[elsif exp="f.wet<=600" ][jump storage="H/Hx_text.ks" target="*tx_ex_y_out2" ]
[elsif exp="f.wet<=1000" ][jump storage="H/Hx_text.ks" target="*tx_ex_y_out3" ]
[else][jump storage="H/Hx_text.ks" target="*tx_ex_y_out4" ][endif]


*change_style
[cm]
[if exp="f.h_sex==1" ][eval exp="f.h_sex=0" ][left_non][right_non][se_nloop st="s-wet1.ogg" ][v_show][endif]
[if exp="f.h_act!='non'" ][eval exp="f.h_act='off'" ][endif]
[eval exp="f.h_style='sit'" ]

[black][xf/reset]
[_]（Tôi đỡ Sylvie dậy, để cô ấy ngồi lên đùi mình[p]
[jump storage="H/Hx2.ks" target="*show" ]
