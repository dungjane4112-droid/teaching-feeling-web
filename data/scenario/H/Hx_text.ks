;;キス形容テキスト

*tx_m
[k_01]（Tôi hôn Sylvie。[p_][jump target="*m_calc" ]
*tx_m_
[k_02]（Lưỡi của chúng tôi bắt chéo nhau trong khi hôn。[p_][jump target="*m_calc" ]
*tx_bbm
[k_07]（Tôi tiếp tục hôn trong khi kích thích ngực của em ấy.。[p_][jump target="*m_calc" ]
*tx_bbm_
[k_10]（Lưỡi của chúng tôi bắt chéo nhau khi hôn và tôi vuốt ve ngực em。[p_][jump target="*m_calc" ]
*tx_bcm
[k_13]（Chúng tôi tiếp tục hôn trong khi tôi vuốt ve ngực và âm hộ của em.。[p_][jump target="*m_calc" ]
*tx_bcm_
[k_14]（Tôi khám phá miệng của Sylvie với lưỡi của mình, đồng thời vuốt ve ngực và âm hộ.。[p_][jump target="*m_calc" ]
*tx_cm
[k_05]（Tôi hôn Sylvie trong khi tiếp tục vuốt ve âm hộ của em。[p_][jump target="*m_calc" ]
*tx_cm_
[k_03]（Lưỡi của chúng tôi bắt chéo nhau trong khi tôi tiếp tục vuốt ve âm hộ em ấy.[p_][jump target="*m_calc" ]
*tx_bfm
[k_08]（Tôi hôn Sylvie trong khi kích thích những vùng nhạy cảm của cô ấy。[p_][jump target="*m_calc" ]
*tx_bfm_
[k_04]（Lưỡi của chúng tôi bắt chéo nhau trong khi tôi kích thích ngực và âm hộ của em。[p_][jump target="*m_calc" ]
*tx_fm
[k_12]（Tôi hôn Sylvie cũng khi đang vuốt ve âm hộ của em。[p_][jump target="*m_calc" ]
*tx_fm_
[k_09]（Tôi hôn Sylvie trong khi để ngón tay mình ngày một đẩy sâu hơn vào bên trong em ấy。[p_][jump target="*m_calc" ]
*tx_vm
[k_06]（Tôi hôn Sylvie trong khi tôi vẫn nối kết với cô ấy。[p_][jump target="*m_calc" ]
*tx_vm_
[k_05]（Lưỡi của chúng tôi bắt chéo nhau trong khi tôi tiếp tục đẩy sâu vào bên trong em.。[p_][jump target="*m_calc" ]
*tx_vcm
[k_07]（Tôi hôn Sylvie trong khi dùng cả tay và dương vật kích thích âm đạo của cô ấy。[p_][jump target="*m_calc" ]
*tx_vcm_
[k_11]（Tôi tận hưởng chiếc lưỡi của Sylvie trong khi tiếp tục tấn công phần dưới của em。[p_][jump target="*m_calc" ]
*tx_vbbm
[k_15]（Tôi hôn Sylvie mà không dừng lại ngón tay và cả những cú đẩy của mình。[p_][jump target="*m_calc" ]
*tx_vbbm_
[k_12]（Tôi hôn Sylvie mà không dừng lại ngón tay và cả những cú đẩy của mình.。[p_][jump target="*m_calc" ]

;;キスセリフ
*m_calc
[hx/shake][syl]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==6 || f.lust<=1999 && f.lust>=1000 && f.h_count==9 || f.lust<=999 && f.lust>=500 && f.h_count==12 || f.lust<=499 && f.lust>=250 && f.h_count==15) " ]
[jump target="*nedari_1" ][endif]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==11 || f.lust<=1999 && f.lust>=1000 && f.h_count==16 || f.lust<=999 && f.lust>=500 && f.h_count==21 || f.lust<=499 && f.lust>=250 && f.h_count==26) " ]
[jump target="*nedari_2" ][endif]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==16 || f.lust<=1999 && f.lust>=1000 && f.h_count==24 || f.lust<=999 && f.lust>=500 && f.h_count==30 || f.lust<=499 && f.lust>=250 && f.h_count==40) " ]
[jump target="*nedari_3" ][endif]

[xf/kiss][random_5]
[if exp="f.wet<=150" ][jump target="*tx_m1" ]
[elsif exp="f.wet<=250" ][jump target="*tx_m2" ]
[elsif exp="f.wet<=600" ][jump target="*tx_m3" ]
[elsif exp="f.wet<=1000" ][jump target="*tx_m4" ]
[else][jump target="*tx_m5" ][endif]

*tx_m1
[syl][if exp="f.r==1" ][r_27]Mu…。[p]
[elsif exp="f.r==2" ][r2_01]Mn。[p]
[elsif exp="f.r==3" ][r2_04]Un~…。[p]
[elsif exp="f.r==4" ][r_14]Umn…。[p]
[elsif exp="f.r==5" ][r_20]un…。[p][endif]

[random_3]
[_][if exp="f.r==1" ][k_01]（Cơ thể em dần thoải mái hơn trong khi tôi dịu dàng hôn cô ấy。[p]
[elsif exp="f.r==2" ][k_03]（Sylvie cũng bắt đầu vụng về khám phá miệng tôi với lưỡi của cô ấy。[p][endif]
[jump target="*desc_calc" ]

*tx_m2
[syl][if exp="f.r==1" ][r_05]un…♥[p]
[elsif exp="f.r==2" ][kya_11]fua…。[p]
[elsif exp="f.r==3" ][r_09]un、saa…。[p]
[elsif exp="f.r==4" ][r2_02]amu…。haa…。[p]
[elsif exp="f.r==5" ][lc_02]Fuu…、a…。[p][endif]

[random_3]
[_][if exp="f.r==1" ][k_05]（Cơ thể em dần thoải mái hơn trong khi tôi dịu dàng hôn em。[p]
[elsif exp="f.r==2" ][k_04]（Sylvie cũng bắt đầu vụng về khám phá miệng tôi với lưỡi của em。[p][endif]
[jump target="*desc_calc" ]

*tx_m3
[syl][if exp="f.r==1" ][r2_02]un…♥[p]
[elsif exp="f.r==2" ][kya_11]Fua…♥[p]
[elsif exp="f.r==3" ][r_05]un、saa…♥[p]
[elsif exp="f.r==4" ][r_07]Amu…。haa…♥[p]
[elsif exp="f.r==5" ][r_15]Fuu…、a…♥[p][endif]

[random_3]
[_][if exp="f.r==1" ][k_03]（Trong khi lưỡi của tôi tiếp tục quấy phá trong miệng Sylvie, lưỡi của em đáp ứng đầy khoái cảm。[p]
[elsif exp="f.r==2" ][k_02]（Nước bọt chúng tôi trộn lẫn với nhau trong khi đôi môi gắn kết。[p][endif]
[jump target="*desc_calc" ]

*tx_m4
[syl][if exp="f.r==1" ][r2_08]Unu！♥[p]
[elsif exp="f.r==2" ]_*lick* ♥[p]
[elsif exp="f.r==3" ][r_05]Ahn…♥ Mn…♥[p]
[elsif exp="f.r==4" ]_*kiss*…♥[p]
[elsif exp="f.r==5" ][r_13]Fuuu…♥ Mn…♥[p][endif]

[random_3]
[_][if exp="f.r==1" ]（Sylvie dính lưỡi ra và tham lam khám phá bên trong miệng của tôi。[p]
[elsif exp="f.r==2" ]（Chúng tôi hôn nhau và trao chuyển nước bọt。[p][endif]
[jump target="*desc_calc" ]

*tx_m5
[syl][if exp="f.r==1" ][r_14]Un゛〜！！♥♥[p]
[elsif exp="f.r==2" ][r_21]Ah〜…！♥♥[p]
[elsif exp="f.r==3" ][r_09]Ah~un！♥[p]
[elsif exp="f.r==4" ][r_08]Aa…♥um…♥♥[p]
[elsif exp="f.r==5" ][r_21]Aa〜♥♥*lick*…♥[p]
[endif]
[random_3]
[_][if exp="f.r==1" ][k_02]（Như khi cơ thể Sylvie run lên, em ấy mạnh bạo hơn với lưỡi của mình。[p]
[elsif exp="f.r==2" ][k_01]（em ấy hôn tôi sâu hơn, với chiếc lưỡi chuyển động một cách hoang dã。[p][endif]
[jump target="*desc_calc" ]

;;行動テキスト
*tx_b_b
[l_15]（Tôi đặt tay mình lên vòng ngực nhỏ của Sylvie。[p][jump target="*tx_calc" ]
*tx_b_b_
[l_13]（tôi vuốt ve bộ ngực nhỏ bé của Sylvie。[p][jump target="*tx_calc" ]
*tx_b_bb
[l_14]（Tay tôi thoải mái kích thích cả hai ngực của em cùng lúc。[p][jump target="*tx_calc" ]
*tx_b_bb_
[l_11]（Tôi vuốt ve bộ ngực bé nhỏ của Sylvie bằng cả hai tay mình。[p][jump target="*tx_calc" ]
*tx_b_bc
[l_10]（Tay tôi thoải mái kích thích cả hai ngực của em cùng lúc。[p][jump target="*tx_calc" ]
*tx_b_bc_
[l_02]（Tôi chà xát cả ngực và âm đạo của em。[p][jump target="*tx_calc" ]
*tx_b_bf
[l_15]（Tay tôi thoải mái kích thích cả hai ngực của em。[p][jump target="*tx_calc" ]
*tx_b_bf_
[wet_0][wait_sou][r2_01]（Tôi vuốt ve ngực trong khi chơi với âm đạo của em。[p][jump target="*tx_calc" ]
*tx_b_vb
[wet_0][wait_sou][r2_10]（Tôi chà xát vòng ngực nhỏ của Sylvie trong khi vào bên trong em。[p][jump target="*tx_calc" ]
*tx_b_vbb
[wet_0][wait_sou][r2_12]（Tay tôi thoải mái kích thích cả hai ngực của em。[p][jump target="*tx_calc" ]
*tx_b_vbb_
[wet_0][wait_sou][r_09]（Tôi thoải mái kích thích cả hai ngực của Sylvie bằng hai tay。[p][jump target="*tx_calc" ]
*tx_b_vbc
[wet_0][wait_sou][l_08]（Tôi dùng tay chà xát âm đạo của em bằng một tay trong khi đưa tay khác đến ngực。[p][jump target="*tx_calc" ]
*tx_b_vbc_
[wet_0][wait_sou][r_06]（Tôi kích thích ngực và âm đạo của em trong khi cọ xát lại âm đạo。[p][jump target="*tx_calc" ]

*tx_c_c
[wet_0][wait_sou][l_12]（Tôi chậm rãi chà âm đạo của Sylvie với ngón tay của mình。[p][jump target="*tx_calc" ]
*tx_c_c_
[wet_0][wait_sou][r2_10]（Tôi chà điểm nhạy cảm nhất trên người em nhẹ nhàng với ngón tay mình。[p][jump target="*tx_calc" ]
*tx_c_bc
[wet_0][wait_sou][r_10]Tôi nhẹ nhàng chà âm đạo của em trong khi tiếp tục vuốt ve ngực。[p][jump target="*tx_calc" ]
*tx_c_bc_
[wet_0][wait_sou][r2_05]（Tôi tiếp tục kích thích hai điểm nhạy cảm của em。[p][jump target="*tx_calc" ]
*tx_c_cf
[wet_1][wait_sou][r2_10]（Tôi đẩy vào em trong khi nhẹ nhàng chà xát âm đạo。[p][jump target="*tx_calc" ]
*tx_c_cf_
[wet_1][wait_sou][r_02]（Tôi tấn công những vùng nhạy cảm của em với cả hai tay。[p][jump target="*tx_calc" ]
*tx_c_vc
[wet_0][wait_sou][r2_05]（Tôi chà xát âm đạo của em với những ngón tay của tôi。[p][jump target="*tx_calc" ]
*tx_c_vc_
[wet_2][wait_sou][l_02]（Tôi tiếp tục cưỡng hiếp âm đạo của Sylvie với thằng nhỏ và những ngón tay của mình。[p][jump target="*tx_calc" ]
*tx_c_vbc
[wet_1][wait_sou][l_14]（Tôi chà xát âm đạo nhạy cảm của em bằng tay trái, khiến em cảm thấy sướng hơn。[p][jump target="*tx_calc" ]
*tx_c_vbc_
[wet_1][wait_sou]（Tôi tiếp tục tấn công cả hai vùng nhạy cảm của Sylvie。[p][jump target="*tx_calc" ]

*tx_fi_a
[wet_1][wait_sou][r2_04]（Tôi nhẹ nhàng chèn ngón tay của mình vào âm đạo của Sylvie。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_fi_b
[wet_1][wait_sou][r_11]（Tôi chèn ngón tay của mình vào bên trong âm đạo ẩm ướt của Sylvie。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_fi_c
[wet_1][wait_sou][r_03]（Tôi chèn ngón tay mình vào trong âm đạo sẵn sàng của Sylvie。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_fi_d
[wet_1][wait_sou][r2_11]（Tôi chèn ngón tay mình vào bên trong âm đạo ướt dẫm của Sylvie。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_fi_e
[wet_0][wait_sou][l_15]（Tôi chèn ngón tay mình vào trong âm đạo ướt của Sylvie。[p][jump storage="H/Hx.ks" target="*h_def" ]

*tx_f_bf
[wet_1][wait_sou][r2_10]（Tôi chà ngực của em trong khi đẩy vào bên trong âm đạo。[p][jump target="*tx_calc" ]
*tx_f_cf
[wet_2][wait_sou][r_01]（Tôi nhẹ nhàng vuốt ve âm đạo của em bên trong lẫn bên ngoài。[p][jump target="*tx_calc" ]
*tx_f_f
[wet_1][wait_sou][r2_09]（Tôi thoải mái khám phá âm đạo Sylvie trong khi kích thích các điểm nhạy cảm của em。[p][jump target="*tx_calc" ]

*tx_ff_bf
[wet_1][wait_sou][r_02]（Tôi chà ngực của em trong khi đẩy vào bên trong âm đạo。[p][jump target="*tx_calc" ]
*tx_ff_cf
[wet_2][wait_sou][r2_01]（Tôi mạnh bạo chà xát âm đạo của em bên trong lẫn bên ngoài。[p][jump target="*tx_calc" ]
*tx_ff_f
[wet_1][wait_sou][l_02]（Tôi đẩy tay mình vào sâu hơn trong âm đạo của em, trong lúc em đang run rẩy đầy khoái cảm。[p][jump target="*tx_calc" ]

*tx_fo_a
*tx_fo_b
*tx_fo_c
*tx_fo_d
[jump target="*desc_calc" ]

;;挿入テキスト
*tx_vi_a
[wet_0]（Tôi nhẹ nhàng đặt thằng nhỏ của mình vào bên trong âm đạo hầu như ẩm ướt của em。[p]
[syl][xf/reset][kya_11]Kuu!…[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_vi_b
[l_12]（Tôi thâm nhập vào âm đạo ướt át của em với thằng nhỏ "cứng" của tôi。[p]
[syl][xf/reset][r_04]Un…[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_vi_c
[wet_1][wait_sou][l_13]（Tôi chèn thằng nhỏ của mình vào bên trong âm đạo của Sylvie。[p]
[syl][xf/reset][wet_1][wait_sou][r_18]Fuu…♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_vi_d
[wet_2][wait_sou][l_11]（Tôi chèn thằng nhỏ của mình vào bên trong âm đạo ướt đẫm của Sylvie。[p]
[syl][xf/reset][r_22]Aaah〜 Fuuuu〜♥♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_vi_e
[wet_1][wait_sou][l_14]（Tôi đẩy vào âm đạo ẩm ướt của Sylvie với thằng nhỏ của mình。[p]
[syl][xf/reset][r_23]Ah♥ Aaaaah〜♥♥♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]

;;ピストンテキスト
*tx_v_vbb
[wet_0][wait_sou][l_12]（Tôi chậm rãi đẩy vào và ra khỏi Sylvie trong khi sờ ngực của em。[p]
[jump target="*v_calc" ]
*tx_v_vbc
[wet_0][wait_sou][l_11]（Tôi chậm rãi di chuyển lưng của mình trong khi chà xát những điểm nhạy cảm của em。[p]
[jump target="*v_calc" ]
*tx_v_vc
[wet_0][wait_sou][l_04]（Tôi chậm rãi đẩy vào và ra khỏi Sylvie trong khi chơi với âm đạo của em。[p]
[jump target="*v_calc" ]
*tx_v_v
[wet_0][wait_sou][l_03]（Tôi cảm thấy hơi ấm từ âm đạo của Sylvie qua thằng nhỏ của mình。[p]
[jump target="*v_calc" ]
*tx_vv_vbb
[wet_0][wait_sou][l_01]（Tôi mạnh bạo đẩy vào và ra khỏi Sylvie trong khi sờ vòng ngực bé nhỏ của em。[p]
[jump target="*v_calc" ]
*tx_vv_vbc
[wet_1][wait_sou][l_02]（Cú đẩy của tôi tiến vào sâu hơn trong khi chà xát những điểm nhạy cảm của Sylvie。[p]
[jump target="*v_calc" ]
*tx_vv_vc
[wet_1][wait_sou][l_10]（Tôi đẩy vào và ra khỏi Sylvie một cách mạnh mẽ trong khi tôi mạnh bạo chà xát âm đạo em。[p]
[jump target="*v_calc" ]
*tx_vv_v
[wet_2][wait_sou][l_02]（Tôi khuấy động bên trong Sylvie và mạnh bạo đầy vào và ra khỏi Sylvie。[p]
[jump target="*v_calc" ]

*tx_vo_a
*tx_vo_b
*tx_vo_c
*tx_vo_d

;;抜きテキスト
[_][r_05]（Tôi kéo thằng nhỏ của mình ra khỏi Sylvie。[p]
[if exp="f.h_in>=6 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z5.png" ]
[elsif exp="f.h_in>=6" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z5.png" ]
[elsif exp="f.h_in>=5 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z4.png" ]
[elsif exp="f.h_in>=5" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z4.png" ]
[elsif exp="f.h_in>=3 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z3.png" ]
[elsif exp="f.h_in>=3" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z3.png" ]
[elsif exp="f.h_in==2 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z2.png" ]
[elsif exp="f.h_in==2" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z2.png" ]
[elsif exp="f.h_in==1 && f.h_style=='def'" ][chara_mod name="z-b" time="0" storage="Hx1/z2/z1.png" ]
[elsif exp="f.h_in==1" ][chara_mod name="z-b" time="0" storage="Hx2/z2/z1.png" ][endif]

[if exp="f.h_in>=6" ]
[wet_1][wait_sou][r_02]（Âm đạo của Sylvie co quắp lại như nó liên tục đẩy tinh dịch của tôi ra khỏi tử cung của em。[lr]
[r_06]（bụng của em dần dần trở nên phẳng hơn。[p]
[elsif exp="f.h_in>=5" ]
[wet_1][wait_sou]（Cái khắc tôi bắn ra, một lượng lớn tinh dịch trào ra từ âm đạo của Sylvie。[p]
[elsif exp="f.h_in>=3" ]
[wet_2][wait_sou]（Cơ thể nhỏ bé của Sylvie không thể chứa hết tinh dịch của tôi, và một lượng nhỏ trong chúng nhỏ giọt ra khỏi âm đạo em。[p]
[elsif exp="f.h_in==2" ]
[swet_2][wait_sou]（Tinh dịch của tôi, thứ đã làm đầy tử cung em cho đến miệng, bắt đầu trào ra và để lại một vũng nhỏ gần mông em。[p]
[elsif exp="f.h_in==1" ]
[swet_1][wait_sou]（Tinh dịch của tôi dần chảy ra từ âm đạo của em。[p][endif]
[jump target="*desc_calc" ]

;;ピストンセリフ
*v_calc
[random_3][if exp="f.r>=2" ][jump target="*tx_calc_" ][endif]
[hx/shake][syl]
[if exp="f.wet<=150" ][jump target="*tx_v1" ][elsif exp="f.wet<=250" ][jump target="*tx_v2" ]
[elsif exp="f.wet<=600" ][jump target="*tx_v3" ][elsif exp="f.wet<=1000" ][jump target="*tx_v4" ]
[else][jump target="*tx_v5" ][endif]

*tx_v1
[random_2]
[if exp="f.r==1" ][xf/ao][name_h][kimochi_ii_1]…Anh có thấy…Thỏa mãn chứ？[p]
[else][xf/eun][chinchin_de_1][p_name_ex] của [name_h], t-…thật lớn…[p]
[endif][jump target="*desc_calc" ]

*tx_v2
[random_4]
[if exp="f.r==1" ][xf/ao]E-em…[sex_name] cùng [name_h], làm chuyện đó…♥[r]Kết nối với nhau~ ♥♥[p]
[elsif exp="f.r==2" ][xf/eun][name_h][r_14] cũng… cảm thấy sướng chứ？[p]
[elsif exp="f.r==3" ][xf/ao][p_name_ex] của [name_h][r_20] đang…Um…♥[p]
[else][xf/ao][r2_01]Ah~…[v_name_ex] của em đang…Un♥[p]
[endif][jump target="*desc_calc" ]

*tx_v3
[random_4]
[if exp="f.r==1" ][xf/ao][sex_name] cùng với [name_h]…♥[r][kimochi_ii_1]Kimochi ii…~♥♥[p]
[elsif exp="f.r==2 && f.syl_j>=1" ][xf/eun][name_h]~、…[v_name_ex_] của em[kimochi_ii_1]… làm anh thấy sướng chứ？♥♥[lr]
nó có khiến anh quên đi được...cô ấy không?[p]
[elsif exp="f.r==2" ][xf/eun][name_h]~、…[v_name_ex_] của em[kimochi_ii_1]… làm anh thấy sướng chứ？♥♥[p]
[elsif exp="f.r==3" ][xf/ao][p_name_ex] của [name_h][r2_02]~…Ah~…♥♥[p]
[else][xf/ao]Ah~…♥[v_name_ex]♥ thật tuyệt… [kimochi_ii_1]Kimochi ii desu…♥♥[p]
[endif][jump target="*desc_calc" ]

*tx_v4
[random_4]
[if exp="f.r==1" ][xf/ao][r2_02]Ah〜♥♥[sex_name_ex]~ em muốn nó~[l] [suki_1]Em yêu nó…！♥♥[p]
[elsif exp="f.r==2" ][xf/ao][r2_02]Ah゛~♥[v_name] Thật tuyệt…♥♥[r]Em đã trở lên hư hỏng mất rồi…っ♥！♥♥[p]
[elsif exp="f.r==3" ][xf/ao][p_name_ex] của [name_h] đang~[r2_02]…Ah~a~！♥♥[p]
[else][xf/ao][r2_03]Ah~♥ a~…！♥[v_name_ex]♥♥ thật tuyệt [kimochi_ii_1] Kimochi ii desu…~♥♥[p]
[endif][jump target="*desc_calc" ]

*tx_v5
[random_5]
[if exp="f.r==1" ][xf/ao][suki_1]Ah〜♥♥ Em yêu nó…[sex_name] Em yêu việc này…！♥♥[p]
[elsif exp="f.r==2" ][xf/ao][suki_1]Em yêu việc này…♥♥[sex_name_ex].[l][motto_2] Thêm nữa đi anh！♥♥♥[p]
[elsif exp="f.r==3" ][xf/ao][r2_02]Ah〜！♥♥[v_name_ex]~…Nó thật ~♥♥~ Em cũng không biết nữa…~♥！♥♥[p]
[elsif exp="f.r==4" ][xf/ao][p_name_ex] của [name_h] đang ♥♥…♥ [r2_02]Ah~a！♥♥[p]
[else][xf/ao][r2_04]Ah〜！♥♥…[v_name] đang ♥…♥♥[r]Ah〜〜っ！♥！♥♥♥[p]
[endif][jump target="*desc_calc" ]



;;共通セリフ
*tx_calc
[if exp="f.h_act=='off'" ][jump target="*desc_calc" ][endif]
[random_3][if exp="f.h_sex==1 && f.r==3" ][jump target="*v_calc" ][endif]
*tx_calc_
[hx/shake][syl]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==6 || f.lust<=1999 && f.lust>=1000 && f.h_count==9 || f.lust<=999 && f.lust>=500 && f.h_count==12 || f.lust<=499 && f.lust>=250 && f.h_count==15) " ]
[jump target="*nedari_1" ][endif]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==11 || f.lust<=1999 && f.lust>=1000 && f.h_count==16 || f.lust<=999 && f.lust>=500 && f.h_count==21 || f.lust<=499 && f.lust>=250 && f.h_count==26) " ]
[jump target="*nedari_2" ][endif]
[if exp="f.y_feel==0 && (f.lust>=2000 && f.h_count==16 || f.lust<=1999 && f.lust>=1000 && f.h_count==24 || f.lust<=999 && f.lust>=500 && f.h_count==30 || f.lust<=499 && f.lust>=250 && f.h_count==40) " ]
[jump target="*nedari_3" ][endif]

[if exp="f.wet<=150" ][jump target="*tx_1" ][elsif exp="f.wet<=250" ][jump target="*tx_2" ]
[elsif exp="f.wet<=600" ][jump target="*tx_3" ][elsif exp="f.wet<=1000" ][jump target="*tx_4" ]
[else][jump target="*tx_5" ][endif]

*tx_1
[random_11]
[if exp="f.r==1" ][xf/iu][r2_27]Un…！ [lr][xf/ao][r_17]Ah!、[l][ii_1]…Em..Vẫn ổn ạ。[p]
[elsif exp="f.r==2" ][xf/eun][r_19]Ahah…[lr][xf/ao][na_1]Làm ơn…di chuyển chậm thôi。[p]
[elsif exp="f.r==3" ][xf/eun][r_20]Fuu…un…。[p]
[elsif exp="f.r==4" ][xf/ao][na_1]Xin hãy…nhẹ nhàng thôi ạ。[p]
[elsif exp="f.r==5" ][xf/eun][r2_24]Fuu…。[name_h]…[p]
[elsif exp="f.r>=10" ][xf/eun][r2_08]Unn…。[p]
[elsif exp="f.r>=8" ][xf/iu][r2_06][name_h]…Unn…。[p]
[elsif exp="f.r>=6" ][xf/ao][r2_08]A…un。[p]
[endif][jump target="*desc_calc" ]

*tx_2
[random_10]
[if exp="f.r==1" ][xf/ao][ii_1]Anh thật tốt…♥[p]
[elsif exp="f.r==2 && f.syl_j>=1" ][xf/ao][name_h][motto_2][name]♥ Làm ơn… Hãy chạm em nữa đi…♥[lr]
Và… [wait time="200"][um_01]Umm!…[p] 
dù có với ai cũng… đừng bỏ quên em...nhé![p]
[elsif exp="f.r==2" ][xf/ao][name_h][motto_2][name]♥ Làm ơn… Hãy chạm em nữa đi…♥[p]
[elsif exp="f.r==3" ][xf/ao][kanjiru_1]Thật tuyệt,..[v_name_h] của em…em cảm thấy nó tốt hơn rồi…。[p]
[elsif exp="f.r==4" ][xf/iu][r2_09]Un…[name_h]…♥[p]
[elsif exp="f.r==5" ][xf/eun][r_01]Haa…Fuu…。[name_h]…♥[p]
[elsif exp="f.r==6" ][xf/ao][name_h]…。[p]
[elsif exp="f.r==7" ][xf/ao][r_15]Ah…♥[p]
[elsif exp="f.r==8" ][xf/iu][r2_08]Unn…♥[p]
[elsif exp="f.r==9" ][xf/eun][r2_19]Fuu…♥[p]
[elsif exp="f.r==10" ][xf/ao][r_25]Ah…unn♥[p]
[endif][jump target="*desc_calc" ]

*tx_3
[random_10]
[if exp="f.r==1" ][xf/ao][r_06]Ah ♥Aa…ts♥[p]
[elsif exp="f.r==2" ][xf/iu][r_05]Ahnn ♥..♥[p]
[elsif exp="f.r==3" ][xf/eun][r2_01]Unn！♥[name_h]~♥[p]
[elsif exp="f.r==4" ][xf/ao][kimochii_2][name_h]♥[r]Điều này… Thật tuyệt♥♥[p]
[elsif exp="f.r==5" ][xf/ao][na_1]Em… với [name_h]…♥[p]
[elsif exp="f.r==6" ][xf/ao][r_26]Em muốn… s-sẽ mãi mãi như thế này…♥[p]
[elsif exp="f.r==7" ][xf/eun][r_01]Mnnnn…♥♥[p]
[elsif exp="f.r==8" ][xf/iu][r_26]Fuuuuu…♥[p]
[elsif exp="f.r==9" ][xf/ao][r_09]Ah… Auu♥♥♥[p]
[elsif exp="f.r==10" ][xf/ao][r_07]Ah♥ Mn♥♥[p]
[endif][jump target="*desc_calc" ]

*tx_4
[random_11]
[if exp="f.r==1" ][xf/ao][r_09]Ah〜♥♥♥[p]
[elsif exp="f.r==2" ][xf/ao][r2_05]Fuuu〜〜♥… Haaaa〜〜♥♥♥[p]
[elsif exp="f.r==3" ][xf/ao][r2_16][name_h]~♥[name_h]~♥♥[p]
[elsif exp="f.r==4" ][xf/ao][sugoi_4]Ah〜♥♥ Tuyệt ♥ [r]Tuyệt quáaaaaa♥♥[p]
[elsif exp="f.r==5" ][xf/ao][sugoi_wa_1][name_h]♥♥ Em thấy tuyệt lắm♥ E-em… sắp…[p]
[elsif exp="f.r==6" ][xf/ao][r_05]Ah…♥ Ah…♥ Ahhh♥♥[p]
[elsif exp="f.r==7" ][xf/eun][r2_04]Mnnnn〜♥♥[p]
[elsif exp="f.r==8" ][xf/ao][r_02]Ah♥ [name_h]♥ Chuyện này…♥ [lr_][dame_1]Không tốt tí nào!♥♥[p]
[elsif exp="f.r==9" ][xf/ao][hi_01]Ahn♥ Hiiii♥[p]
[elsif exp="f.r==10" ][xf/eun][r_02]Mnnnn![lr][xf/ao][r_08]Ah♥ Ah♥♥[p]
[elsif exp="f.r==11" ][xf/ao][r2_22]Haa〜♥ Fuuu〜♥♥[p]
[endif][jump target="*desc_calc" ]

*tx_5
[random_15]
[if exp="f.r==1" ][xf/ao][r2_03]Fuuu♥ Haaa♥ Hơi thở của em…♥[p]
[elsif exp="f.r==2" ][xf/ao][r2_05][name_h]！！♥[name]！！！♥♥[p]
[elsif exp="f.r==3" ][xf/ao][sugoi_4]Aaah〜♥♥ Tuyệt quá♥ [r]Điều này thật tuyệttttttt!♥♥[p]
[elsif exp="f.r==4" ][xf/ao][kimochii_5]Em sướng quáaa♥ Chắc em sẽ phát điên lên mất thôi♥♥[p]
[elsif exp="f.r==5" ][xf/ao][dame_1]Ah♥ [name]♥ Chuyện này…♥ không tốt tí nào!♥♥[p]
[elsif exp="f.r>=14" ][xf/ao][r_07]Ah…♥ Ah…♥ Ahhh♥♥[p]
[elsif exp="f.r>=12" ][xf/iu][r_08]Mnnnn〜!!♥[p]
[elsif exp="f.r>=10" ][xf/ao][r_28]Haaa〜♥ Fuuuu〜♥♥[p]
[elsif exp="f.r>=8" ][xf/iu][hi_02]Hiiii〜!!♥♥ Uuuuu〜!!!♥♥♥[p]
[elsif exp="f.r>=6" ][xf/ao][lc_05]Ah〜♥♥ Aaah〜♥♥♥[p]
[endif][jump target="*desc_calc" ]

;;ねだりセリフ
*nedari_1
[eh/def][mh/e][yh/conf]
[name_h]…？[lr]
Sono~…Là…[v_name] của em muốn được [sex_name_ex] nhiều hơn nữa… được không ạ？♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*nedari_2
[eh/half][mh/e][yh/conf]
[name_h]…、Em muốn… [p_name_ex]… của [name_h]…Anh làm ơn… có thể？…♥♥[lr]
Sono~…[sex_name_ex]… Em muốn biết thêm về nó…。[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*nedari_3
[eh/def][mh/e][yh/conf_h]
Um… Không muốn làm phiền [name_h] nhưng [sex_name] em muốn thêm nữa…♥[lr]
[p_name] của [name_h] cùng với…[v_name_ex], [sex_name_ex] Em muốn nó ♥♥♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]

;;形容テキスト
*desc_calc
[if exp="f.wet<=150" ][jump target="*tx_d1" ]
[elsif exp="f.wet<=250" ][jump target="*tx_d2" ]
[elsif exp="f.wet<=600" ][jump target="*tx_d3" ]
[elsif exp="f.wet<=1000" ][jump target="*tx_d4" ]
[else][jump target="*tx_d5" ][endif]

*tx_d1
[if exp="f.h_left=='hands' || f.h_right=='hands'" ][random_11]
[else][random_10][endif]
[_][if exp="f.r==1" ]（Sylvie trông có vẻ hơi sợ sệt, nhưng em cũng không tỏ vẻ khó chịu。[state_p]
[elsif exp="f.r==2" ]（Có vẻ như Sylvie đang lúng túng chấp nhận tôi。[state_p]
[elsif exp="f.r==3" ]（Di chuyển của Sylvie trông có vẻ lúng túng。[state_p]
[elsif exp="f.r==4" ]（Có lẽ Sylvie vẫn hơi bối rối bởi cơ thể của em trông còn hơi cứng。[state_p]
[elsif exp="f.r==5" ]（Có lẽ Sylvie vẫn còn hơi lo lắng. Có vẻ em ấy đang cố gắng trấn tĩnh lại。[state_p]
[elsif exp="f.r==6" ]（Có lẽ Sylvie đang lo lắng nhiều hơn là thích thú. em ấy có ướt một chút, nhưng không nhiều。[state_p]
[elsif exp="f.r==11" ]（Tôi cảm nhận được có một sự căng thẳng nhẹ từ bàn tay của Sylvie。[state_p]
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]


*tx_d2
[if exp="f.h_act=='off' || f.h_act=='hands' || f.h_act=='legs' || f.h_act=='open' || f.h_act=='non'" ][random_6]
[elsif exp="f.h_left=='hands' && f.h_right=='hands'" ][random_15]
[elsif exp="f.h_left=='hands' || f.h_right=='hands'" ][random_14]
[else][random_11][endif]
[_][if exp="f.r==1" ][l_12]（Tôi có thể thấy sự tin tưởng của Sylvie qua cái nhìn thân thiện của em。[state_p]
[elsif exp="f.r==2" ]（Có lẽ em ấy đã bình tĩnh hơn. Hơi thở em thoải mái hơn nhiều。[state_p]
[elsif exp="f.r==3" ][wet_1][wait_sou][l_12]（Âm đạo của Sylvie dần trở nên ướt át hơn。[state_p]
[elsif exp="f.r==4" ][r2_12]（Sylvie trông có vẻ thoải mái; Không còn nhiều sức ép lên cơ thể của em。[state_p]
[elsif exp="f.r==5" ][r2_15]（Sylvie dường như đang tập trung vào việc chấp nhận tôi。[state_p]
;6,7,8
[elsif exp="f.r==9" ][r_04][quake_3]（Sylvie thỉnh thoảng co giật khi tôi vuốt ve em。[state_p]
[elsif exp="f.r==10" ][l_15]（Tôi có thể cảm thấy hơi thở nhẹ nhàng của Sylvie。[state_p]
[elsif exp="f.r==11" ][r2_15][quake_3]（Sylvie chỉ cho phép tôi vuốt ve cơ thể em。[state_p]
[elsif exp="f.r==12" ][r2_12]（Sylvie dần dần cảm thấy thoải mái hơn, cơ thể em đang được bao bọc trong sự ngọt ngào。[state_p]
[elsif exp="f.r>=13" ][r_04]（Lòng bàn tay của Sylvie cung đã ướt vì mồ hôi, cô ây chắc cũng căng thẳng[state_p]
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]


*tx_d3
[if exp="f.h_act=='off' || f.h_act=='hands' || f.h_act=='legs' || f.h_act=='open' || f.h_act=='non'" ][random_14]
[elsif exp="f.h_left=='hands' && f.h_right=='hands'" ][random_24]
[elsif exp="f.h_left=='hands' || f.h_right=='hands'" ][random_22]
[else][random_20][endif]
[_][if exp="f.r==1" ][ss_01][r2_15]（Sylvie thở sâu và có vẻ đang cảm nhận những cái chạm của tôi。[state_p]
[elsif exp="f.r==2" ][ss_03][l_15]（Hơi thở của Sylvie dần trở nên sâu hơn。[state_p]
[elsif exp="f.r==3" ][um_01][wait_sou][l_15]（Hơi thở của Sylvie trở nên nóng hơn。[state_p]
[elsif exp="f.r==4" ][um_05][wait_sou][l_15]（Tôi có thể thấy rõ ràng nước dịch tình yêu của Sylvie chảy xuống từ âm đạo của em。[state_p]
[elsif exp="f.r==5" ][r_15][wait_sou][swet_1]（Nước dịch tình yêu của Sylvie chảy xuống đùi em từng vết。[state_p]
[elsif exp="f.r==6" ][ss_03]（Sylvie như đang ngây nhất trong khi hơi thở trở nên sâu hơn。[state_p]
[elsif exp="f.r==7" ][r2_12]（Sylvie nhìn tôi với đôi mắt bóng bẩy。[state_p]
[elsif exp="f.r==8" ][r2_03]（Sylvie thỉnh thoảng uốn éo cơ thể mình để lôi kéo tôi。[state_p]
[elsif exp="f.r==9" ][l_04]（Sylvie cảm dỗ tôi bằng những tiếng rên rỉ ngọt ngào thốt ra từ miệng em。[state_p]
[elsif exp="f.r==10" ][r2_03]（Sylvie thở hổn hển, cứ như đang mời gọi tôi。[state_p]
[elsif exp="f.r==11" ][l_11]（Sylvie dụ dỗ tôi khi nâng hông lên。[state_p]
[elsif exp="f.r==12" ][l_15]（Mùi vị từ nước dịch của em thấm dẫm phòng。[state_p]
[elsif exp="f.r==13" ][r_01]（Ngực nhỏ của Sylvie phồng lên và xuống, đấu tranh vì oxi。[state_p]
;14,15,16
[elsif exp="f.r==17" ][r2_02]（Sylvie đã hoàn toàn bị bao bọc bởi khoái cảm。[state_p]
[elsif exp="f.r==18" ][quake_3]（Cơ thể của Sylvie thỉnh thoảng co giật。[state_p]
[elsif exp="f.r==19" ][l_02]（Sylvie thốt ra những tiếng rên rỉ lớn, đầy dâm đãng。[state_p]
[elsif exp="f.r==20" ][r2_09]（Sylvie đang dần dẫn vào những niềm vui。[state_p]
[elsif exp="f.r>=21" ][l_02]（Sylvie đang tự hiến mình cho niềm vui khoái lạc。[state_p]
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]


*tx_d4
[if exp="f.h_act=='off' || f.h_act=='hands' || f.h_act=='legs' || f.h_act=='open' || f.h_act=='non'" ][random_10]
[elsif exp="f.h_left=='hands' && f.h_right=='hands'" ][random_27]
[elsif exp="f.h_left=='hands' || f.h_right=='hands'" ][random_25]
[else][random_21][endif]
[_][if exp="f.tr==1" ]
[l_11]（Cơ thể của Sylvie như đỏ lên。[state_p]
[elsif exp="f.tr==2" ]
[l_09]（Hơi thở của Sylvie như lớn hơn và khàn khàn。[state_p]
[elsif exp="f.tr==3" ]
[swet_1][wait_sou][r_10]（Nước dịch nhớp nháp Sylvie chảy từ âm đạo của em。[state_p]
[elsif exp="f.tr==4" ]
[wet_1][wait_sou][r_01]（Nước dịch của Sylvie chảy tự do, tiếp tục nhuộm tấm ga giường。[state_p]
[elsif exp="f.tr==5" ]
[l_02]（Sylvie nâng hông cao lên và bắt đầu lắc nó.)[state_p]
[elsif exp="f.tr==6" ]
[r2_09]（Sylvie thậm chí không cố gắng để ẩn đi các biểu hiện đáng xấu hổ trên khuôn mặt của em。[state_p]
[elsif exp="f.tr==7" ]
[l_03]（Biểu hiện của Sylvie đầy ngây ngất, cư như một tù nhân bị lắp đầy khoái cảm。[state_p]
[elsif exp="f.tr==8" ]
[l_02]（Sylvie để cơ thể em tràn ngập trong khoái cảm và rên rỉ to hơn。[state_p]
[elsif exp="f.tr==9" ]
[wet_1][wait_sou][r2_01]（Sylvie quằn quại trong sự ngây ngất tôi đem đến cho em, thậm chí còn không cho em một khoảnh khắc để nghỉ ngơi.)[state_p]
[elsif exp="f.tr==10" ]
[l_02]（Sylvie không còn có ý kìm nén bản thân hơn nữa và bắt đầu rên rỉ lớn hơn。[state_p]
[elsif exp="f.tr==11" ]
[wet_1][wait_sou][r_09]（Lưng của Sylvie hơi cong. Có vẻ như em vừa mới ra một ít。[state_p]
[elsif exp="f.tr==12" ]
[l_02]（Cơ thể Sylvie run rẩy như hồi đáp sự khoái cảm。[state_p]
[elsif exp="f.tr==13" ]
[r_01]（Sylvie có vẻ như sẽ ra bất kì lúc nào.)[state_p]
[elsif exp="f.tr==14" ]
[wet_2][wait_sou][l_10]（Những tiếng động dâm dục khi hông chúng tôi chạm nhau dần trở nên lớn hơn và lớn hơn.)[state_p]
[elsif exp="f.tr==15" ]
[r_09]（Hông của Sylvie như dựng lên khi những khoái cảm chạy dọc cơ thể em。[state_p]
[elsif exp="f.tr==16" ]
[l_01]（Sylvie đã hoàn toàn thả mình trong khoái cảm, và mùi của một em gái dâm đãng tràn ngập khắp phòng)[state_p]
[elsif exp="f.tr==17" ]
[swet_1][wait_sou][l_02]（Mồ hôi và các chất lỏng khác chảy xuống cơ thể chúng tôi。[state_p]
[elsif exp="f.tr==18" ]
[r_05]（Sylvie bắt đầu di chuyển cơ thể như đáp ứng những khoái cảm。[state_p]
[elsif exp="f.r==19" ][r_09]（Cổ họng cô ấy cũng khẽ run lên theo từng nhịp của khoái cảm。[state_p]

[elsif exp="f.r==20 || f.r==22" ][wet_1][wait_sou][r_09]（Tôi cảm thấy một phản ứng mạnh mẽ từ lòng bàn tay Sylvie。[state_p]
[elsif exp="f.r==21 || f.r==23" ][wet_1][wait_sou][r2_01]（Bàn tay của Sylvie dường như đang nóng lên。[state_p]

[elsif exp="f.r==22 || f.r==24 || f.r==26" ]（[wet_1][wait_sou][r_09]（Tôi cảm thấy một phản ứng mạnh mẽ từ lòng bàn tay Sylvie。[state_p]
[elsif exp="f.r==23 || f.r==25 || f.r==27" ][wet_1][wait_sou][r2_01]（Bàn tay của Sylvie dường như đang nóng lên。[state_p]
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]


*tx_d5
[if exp="f.h_act=='off' || f.h_act=='hands' || f.h_act=='legs' || f.h_act=='open' || f.h_act=='non'" ][random_9]
[elsif exp="f.h_left=='hands' && f.h_right=='hands'" ][random_27]
[elsif exp="f.h_left=='hands' || f.h_right=='hands'" ][random_25]
[else][random_21][endif]
[_][if exp="f.tr==1" ]
[wet_1][wait_sou][r_01][quake_3]（Âm đạo ẩm ướt Sylvie quằn quại, như muốn yêu cầu nhiều hơn 。[state_p]
[elsif exp="f.tr==2" ]
[wet_1][wait_sou][r_03]（Nước dịch của Sylvie chảy không ngừng. Phần dưới cơ thể em ấy hoàn toàn ẩm ướt。[state_p]
[elsif exp="f.tr==3" ]
[wet_1][wait_sou][r_05]（Tôi không cảm nhận được bất kỳ ý nghĩa gì từ đôi mắt trống rỗng của Sylvie。[state_p]
[elsif exp="f.tr==4" ]
[wet_1][wait_sou][r_02]（Chiếc giường đã hoàn toàn được ngâm trong sự ngọt ngào và cả những chất dịch cơ thể khác。[state_p]
[elsif exp="f.tr==5" ]
[wet_1][wait_sou][r_09]（Sylvie thở khò khè một cách tuyệt vọng giữa khoái cảm。[state_p]
[elsif exp="f.tr==6" ]
[wet_1][wait_sou][r_10]（Tôi chú ý cơ thể của mình cũng ướt dẫm trong ngọt ngào và những nước dịch tình yêu của Sylvie。[state_p]
[elsif exp="f.tr==7" ]
[wet_1][wait_sou][r_07]（Chất dịch cơ thể của chúng tôi hòa vào nhau; Tôi còn không thể nhận ra cái nào là của ai。[state_p]
[elsif exp="f.tr==8" ]
[wet_1][wait_sou][r_05]（Có vẻ như ý thức của Sylvie đã hoàn toàn mất đi, cũng như em ấy không hề có dấu hiệu để dừng lại。[state_p]
[elsif exp="f.tr==9" ]
[wet_0][wait_sou][r_02]（Những mùi hương ngọt ngào, tinh dịch, và nước dịch tình yêu của Sylvie tràn khắp phòng。[state_p]

[elsif exp="f.tr==10" ]
[wet_0][wait_sou][r_10][quake_3]（Cơ thể của Sylvie giẫy lên bất kì chỗ nào tôi chạm em, cứ như cả cơ thể của em là một vùng nhạy cảm lớn。[state_p]
[elsif exp="f.tr==11" ]
[wet_0][wait_sou][r_02]（Lưỡi của Sylvie lè ra trơ trẽn như khi em ấy rên rỉ lớn tiếng, như biểu hiển của một người nghiện thuốc。[state_p]
[elsif exp="f.tr==12" ]
[wet_0][wait_sou][r_01]（Cơ thể của Sylvie quằn quại liên tục như khi em đã ra khá nhiều lần。[state_p]
[elsif exp="f.tr==13" ]
[wet_0][wait_sou][r_09]（Cơ thể của Sylvie co quắp nhưng vẫn tham lam nuốt thằng nhỏ của tôi。[state_p]
[elsif exp="f.tr==14" ]
[wet_0][wait_sou][r_07]（Biểu hiển của Sylvie như khi em ngập tràn trong khoái cảm hoàn toàn khác so với tính nhút nhát của em。[state_p]
[elsif exp="f.tr==15" ]
[wet_0][wait_sou][l_09]（Khi những điểm nhạy cảm của em bị kích thích, Sylvie thốt ra những tiếng rên rỉ lớn giọng không một chút thận trọng。[state_p]
[elsif exp="f.tr==16" ]
[wet_0][wait_sou][l_02]Sylvie, người đã rên rỉ và thở như một con thú, vẫn có một biểu hiện khoái cảm trên mặt em.p]
[elsif exp="f.tr==17" ]
[wet_0][wait_sou][l_01]（Những tiếng động ẩm ướt từ nước dịch của em có thể nghe trong phòng mỗi khi hông chúng tôi chạm nhau。[state_p]
[elsif exp="f.tr==18" ]
[l_07]（Miệng em ấy mở ra đóng lại như cá thiếu nước, ngực em ấy mạnh liệt phồng lên rồi xuống。[state_p]
[elsif exp="f.r==19" ][wet_0][wait_sou][r_01]（Bất cứ vị trí nào mà tôi chạm vào, cơ thể Sylvie đều phản ứng như đó là điểm nhạy cảm trên cơ thể cô ấy vậy。[state_p]

[elsif exp="f.r==20 || f.r==22" ][wet_1]（Chúng tôi đang cọ xát, xoắn chặt những ngón tay ướt đẫm mồ hôi của nhau。[state_p]
[elsif exp="f.r==21 || f.r==23" ][r_02]（Ngón tay Sylvie đột nhiên run rẩy[r]Cô ấy chắc có chút cảm giác bất an。[state_p]

[elsif exp="f.r==22 || f.r==24 || f.r==26" ][wet_1]（Chúng tôi đang cọ xát, xoắn chặt những ngón tay ướt đẫm mồ hôi của nhau。[state_p]
[elsif exp="f.r==23 || f.r==25 || f.r==27" ][r_02]（Ngón tay Sylvie đột nhiên run rẩy[r]Cô ấy chắc có chút cảm giác bất an。[state_p]
[endif][if exp="f.h_state==1" ][eval exp="f.h_state=0" ][h_state][endif]
[jump storage="H/Hx.ks" target="*h_def" ]

;;絶頂テキスト
*tx_ex_both_1
[hx/ex1][xf/ex][mh/i]
[u_01]Un〜！♥、[if exp="f.x_speak>=1" ]Em ổn ạ…！♥[else][u_01]Un〜！♥[endif][p][return]
*tx_ex_both_2
[hx/ex2][xf/ex][mh/i]
[u_08]Mn♥[if exp="f.x_speak>=1" ]…i~ts[endif][u_08]Kuu…♥♥♥[p][return]
*tx_ex_both_3a
[hx/ex3][xf/ex][mh/i]
[if exp="f.x_speak>=1" ][u_01]Un゛n…♥ Unm~"…！！♥♥[else][um_04]Mn…♥ Hiiii!!!♥♥[endif][p][return]
*tx_ex_both_3b
[hx/ex3][xf/ex][mh/et][lc_01]Ah!!♥♥ Aaaah!!!♥♥♥[lr]
[xf/ex][mh/st][um_04]Mn…♥ Hiiii!!!♥♥[p][return]
*tx_ex_both_4a
[hx/ex4][xf/ex][mh/et]
[u_01]Ah~ts！！♥[if exp="f.x_speak>=1" ] Iku~…Iku~"…！！♥♥[else][lc_01]Ah!!♥♥ Aaaah!!!♥♥♥[endif][p][return]
*tx_ex_both_4b
[hx/ex4][xf/ex][mh/et][lc_01]Ah!!♥♥ Aaaah!!!♥♥♥[lr]
[xf/ex][lc_01]Ah!!♥♥ Aaaah!!!♥♥♥[p][return]
*tx_ex_both_4c
[hx/ex4][xf/ex][mh/i]
[if exp="f.x_speak>=1" ][u_01]…I~ts~[endif][u_08]Mn♥ Kuuuu…♥♥♥[lr]
[xf/ex][mh/ot][lc_01Uh~゛…ah ♥ a ♥♥…♥♥[p][return]
*tx_ex_both_4d
[hx/ex4][xf/ex][mh/st][lc_01]Ah!!♥♥ Aaaah!!!♥♥♥[lr]
[xf/ex][mh/i][um_04]Hii゛…♥♥ Guaa…a！♥♥♥[p][return]


*tx_ex_s1
[hx/ex1][xf/ex][mh/i]
[u_02]Ah~、[if exp="f.x_speak>=1" ][u_02]E-em ra…！♥[endif][u_02][wait_sou][lc_01]Un〜！♥[quake_3][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+30" ][endif][return]
*tx_ex_s2
[hx/ex2][xf/ex][mh/i]
Un~[if exp="f.x_speak>=1" ][hi_04]…ii~[endif][lc_06]Mn♥ Kuuuu…♥♥♥[quake_3][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+40" ][endif][return]
*tx_ex_s3a
[hx/ex3][xf/ex][mh/i]
[if exp="f.x_speak>=1" ][u_02]Un゛un~…♥I-i~kuu"…！！♥♥[else][hi_04]Mn…♥ Hiiii!!!♥♥[endif][quake_3][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+50" ][endif][return]
*tx_ex_s3b
[hx/ex3][xf/ex][mh/et][lc_02]Ah!!♥♥ Aaaah!!!♥♥♥[quake_3][lr]
[xf/ex][mh/st][hi_03]Haa…♥♥hii…♥♥♥[quake_3][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+50" ][endif][return]
*tx_ex_s4a
[hx/ex4][xf/ex][mh/et]
Ah~！！♥[if exp="f.x_speak>=1" ][u_02]Iku~…iku~"…！！♥♥[else][lc_02]♥Ah~a~！！！♥♥♥[endif][quake_3][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+60" ][endif][return]
*tx_ex_s4b
[hx/ex4][xf/ex][mh/et][lc_02]Ah~♥ a〜！♥♥！♥♥！[quake_3][lr]
[xf/ex][lc_02]Ah゛…！♥aa゛…！♥♥♥[quake_3][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+60" ][endif][return]
*tx_ex_s4c
[hx/ex4][xf/ex][mh/i]
[if exp="f.x_speak>=1" ][hi_03]…I~ii[endif]Kuu~゛…♥！！♥♥♥[quake_3][lr]
[xf/ex][mh/ot][lc_01]Uun~゛…a~♥~a~♥♥…♥♥[quake_3][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+60" ][endif][return]
*tx_ex_s4d
[hx/ex4][xf/ex][mh/st][lc_01]Ah~a゛~♥♥~ah~aa！！♥！♥♥[quake_3][lr]
[xf/ex][mh/i][hi_04]Hii゛…♥♥Guua！♥♥♥[quake_3][p]
[if exp="f.h_sex==1" ][eval exp="f.y_feel=f.y_feel+60" ][endif][return]


*tx_ex_sy_in1
[hx/ex1][xf/ex][mh/e]
[lc_12]Mn… Uuu… Fuuuu…! [name_h] đang ở trong em…♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_in2
[hx/ex2][xf/ex][mh/i]
[lc_11]Fuuuu〜♥♥ [wait_sou] [sore_wa_2]Của [name_h]…♥ Nhiều quá…♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_in3
[hx/ex3][xf/ex][mh/i]
[lc_03]Ii゛〜！♥♥[p_name] của [name_h] đang…♥Unn~…！！♥♥♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_in4
[hx/ex4][xf/ex][mh/et]
[lc_04]Ah〜!♥♥ Aaaah〜!♥♥♥♥[p]
[if exp="f.h_count>=170" ][jump target="*morning" ][endif]
[jump storage="H/Hx.ks" target="*h_def" ]

*tx_ex_sy_out1
[hx/ex1][xf/ex][mh/e]
[hi_03]Haa♥ Hiiii…!♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_out2
[hx/ex2][xf/ex][mh/et]
[lc_04]Haaaah!♥♥ [name_h]…♥♥♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_out3
[hx/ex3][xf/ex][mh/i]
[kimochii_5]Sướng quáaaa〜![l][r_02]♥♥ Mnn…!!♥♥♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_sy_out4
[hx/ex4][xf/ex][mh/st]
[lc_03]Ooooh…♥♥ Aaaah…♥♥♥[p]
[if exp="f.h_count>=170" ][jump target="*morning" ][endif]
[jump storage="H/Hx.ks" target="*h_def" ]

*tx_ex_y_in0
[hx/ex0][xf/eun]
[u_01]Un…！ Của [name_h] đang… bên trong em~♥[p]
[eval exp="f.s_feel=f.s_feel+30" ][return]
*tx_ex_y_in1
[hx/ex1][xf/eun]
[u_02]Un…u…Fuu…！[name_h]…[name_h]…♥[p]
[eval exp="f.s_feel=f.s_feel+30" ][return]
*tx_ex_y_in2
[hx/ex2][xf/ao]
[lc_11]Fuuuu〜♥♥ [wait_sou] [sore_wa_2]Của [name_h]…♥ Nhiều quá…♥[p]
[eval exp="f.s_feel=f.s_feel+40" ][return]
*tx_ex_y_in3
[hx/ex3][xf/ao]
[lc_03]Ah〜!♥ [name]〜♥♥♥♥[p]
[eval exp="f.s_feel=f.s_feel+50" ][return]
*tx_ex_y_in4
[hx/ex4][xf/ao]
[lc_04]Ah〜!♥♥ Aaaah〜!♥♥♥♥[p]
[eval exp="f.s_feel=f.s_feel+60" ][return]

*tx_ex_y_out0
[hx/ex0]
[xf/ao]
[lc_08]Mn…! [lr]…Hehe… [lr]
[kimochi_ii_1]Anh có…thấy thích không? [name_h]♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_y_out1
[hx/ex1][xf/ao]
[lc_03]Ah~a..[name_h]…[wait_sou][kore_1]♥ Nhiều thật đó♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_y_out2
[hx/ex2][xf/ao]
[lc_06]Mùi của [name_h]…♥♥ [lr][asoko_de_2]Em đã trở nên vấy bẩn cùng với [name_h]…♥♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_y_out3
[hx/ex3][xf/ao]
[lc_01]Haaaah〜♥♥ Làm ơn…[l] [wait_sou][motto_3]Nữa đi anh…♥♥♥[p]
[jump storage="H/Hx.ks" target="*h_def" ]
*tx_ex_y_out4
[hx/ex4][xf/ao]
[lc_05]Haaaah〜…♥ Haaaah〜…♥♥[p]
[if exp="f.h_count>=170" ][jump target="*morning" ][endif]
[jump storage="H/Hx.ks" target="*h_def" ]

*tx_state1
state1。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state2
state2。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state3
state3。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state4
state4。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state5
state5。[p][jump storage="H/Hx.ks" target="*h_def" ]
*tx_state6
state6。[p][jump storage="H/Hx.ks" target="*h_def" ]



*tx_stop1
[eh/def_nh][mh/e][yh/def][eh_01]Eh…? Chúng mình… xong rồi sao？[p]
[eh/half][mh/n][um_01]…Vâng, em hiểu。[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]
*tx_stop2
[eh/def_nh][mh/e][yh/def][a_08]Eh…? Chúng mình… xong rồi？[lr]
[yh/conf][yada_1]Em… em vẫn…[p]
[eh/half][mh/n][um_07]…Không, em hiểu rồi….。[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]
*tx_stop3
[eh/def][mh/e][yh/def][a_04]Fueh… Eh…? Chúng mình… xong rồi sao？[lr]
[eh/half][mh/n][um_08]Mn… Em… hiểu…[p]
[yh/conf][sm_09][name_h], ý của anh…[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]
*tx_stop4
[eh/half][mh/et][yh/conf][ss_01]Fuuu… Haa…[wait_sou][na_1] Chúng mình… xong rồi sao？[p]
[yada_1]Không thể nào…。[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]
*tx_stop5
[eh/half][mh/et][yh/conf][ss_01]Fuuu… Haa… [wait_sou][na_1]Chúng mình… xong rồi sao？[p]
[um_09]Em vẫn… ổn…[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]

*tx_stop6
[syl][xf/ao][lc_03]Haaa〜♥ Haaa〜♥♥[p]
[_]（Tôi đã đến giới hạn của mình… có lẽ tôi sẽ dừng lại tối nay[p]
[eval exp="f.act='sex'" ][jump target="*end" ]

*tx_end_y
[_]（Sức chịu đựng của tôi đã quá giới hạn. Có lẽ tôi sẽ dừng lại tối nay。[p]
[eval exp="f.act='nonp'" ][jump target="*end" ]

*tx_end_s
[if exp="f.h_style=='sit'" ][left_l][right_l][else][left_non][right_non][endif]
[if exp="f.h_sex==1" ][se_nloop st="s-wet1.ogg" ][v_show][endif]
[syl][if exp="f.wet>=600" ][lc_01]Ah… Auu♥ Gah… Ah♥♥[p]
[elsif exp="f.wet>=250" ][lc_02]Haaa〜♥ Haaa〜♥♥[p]
[elsif exp="f.wet>=150" ][lc_03]Haaa…♥ Hiii…♥[p]
[else][lc_05]Fuuuu…♥ Haaa…♥[p][endif]
 
[_]（Có vẻ như Sylvie đã đến giới hạn. Tôi sẽ dừng việc này tối nay。[p]
[eval exp="f.act='sex'" ]
[jump target="*end" ]

*morning
[if exp="f.h_style=='sit'" ][left_l][right_l][else][left_non][right_non][endif]
[if exp="f.h_sex==1" ][se_nloop st="s-wet1.ogg" ][v_show][endif]
[syl][lc_06]Ah… Auu♥ Gah… Ah♥♥[p]
[_]（Mặt trời đã bắt đầu gần sáng. Chúng tôi đều kiệt sức…。[p]
[black]
Ý thức của tôi nhạt dần như thể tôi đã ngất đi, và nằm bất động như một khúc gỗ…。[p]
[eval exp="f.act='sexmax'" ]
[jump target="*end" ]

*end
[black][stop_bgm]
[eval exp="f.drug_y=0" ][eval exp="f.drug_s=0" ]
[if exp="f.s_ex>=1" ][eval exp="f.sexless=0" ][eval exp="f.sexless_c=0" ]
[else][eval exp="f.sexless=f.sexless+2" ][endif]

[if exp="f.wet>=1000" ][eval exp="f.lust=f.lust+5" ]
[elsif exp="f.wet>=600" ][eval exp="f.lust=f.lust+4" ]
[elsif exp="f.wet>=250" ][eval exp="f.lust=f.lust+3" ]
[elsif exp="f.wet>=150" ][eval exp="f.lust=f.lust+2" ]
[elsif exp="f.wet>=80" ][eval exp="f.lust=f.lust+1" ]
[endif][eval exp="f.sex=f.sex+1" ][set_win_frame]
…[p][day_end]

