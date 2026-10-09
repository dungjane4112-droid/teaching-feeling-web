;;ボタンジャンプ
*awake
[cm][awakegame]
*show_ex_role
[show_ex_role][return]
*hide_ex_role
[hide_ex_role][return]
*show_bace_role
[show_bace_role][return]
*hide_bace_role
[hide_bace_role][return]

*show_H_role
[show_H_role][return]
*hide_H_role
[hide_H_role][return]
*show_H_config
[show_H_config][return]
*hide_H_config
[hide_H_config][return]

*return_menu
[return_menu]
*reload
[cm]
[set_black][chara_00][chara_hide_all]
[hide_role][show_role][reset_frame][set_win_frame][chara_stop]
[eval exp="f.system_act=1" ]
;[call storage="pre/exp.ks" ]
[return_bace]
*save
[showsave][return_menu]

;;記録



*record
[cm]
[font color="lightblue"][link target="*record_" ]【Thông tin】----[link target="*nhat_ky" ]【Nhật ký】----[link storage="talk/tex.ks" target="*mail" ]【TF-Email】----[link target="*hoa_don" ]【Sinh hoạt phí】[r][r]
[link target="*thuc_pham" ]【Thực phẩm】----[link target="*memory" ]【H-memory】----[link target="*load_save" ]【Tải lại save】----[link target="*out" ]【Quay ra】

[resetfont][s]

*memory
[cm][jump storage="sys/memory_tt.ks" target="*memory"]



*load_save
[cm][showload][jump target="*record" ]

*out
[cm][return_menu]

*update
[cm]
#System

[endnolog][return_menu]

*thuc_pham
[cm][nolog][delay speed=13][eval exp="f.system_act=1" ]
[_]Thực phẩm còn lại: gạo([emb exp="f.rice"]), thịt ([emb exp="f.foods"]), rau ([emb exp="f.veget"]), trứng ([emb exp="f.egg"]), kem ([emb exp="f.crem"])[p] 
[endnolog][return_menu]

*hoa_don
[cm][nolog][delay speed=13][eval exp="f.system_act=1" ]
[_]Chi phí tháng trước: Điện([emb exp="f.elect_old"] sốx3200đ), Gas ([emb exp="f.gas_old"]x800), Nước ([emb exp="f.water_old"]x30)[r] 
Một số khoản chi têu khác: 
[if exp="f.cos_ot>=1"]
[emb exp="f.cos_ot"]
[else][emb exp="f.cos_ot_old"][endif]
[r]
Tổng chi phí hết: [emb exp="f.money_month"] đồng, tài khoản hiện còn [money] đồng,[r]
Tiền nợ: [emb exp="f.money_owe"] đồng[p]
[endnolog][return_menu]

*nhat_ky
;[if exp="f.ne_love>=201"][eval exp="f.ne_love=200"][endif]
[cm][nolog][delay speed=13][eval exp="f.system_act=1" ]
[_]Hôm nay: [thu_text], ngày [emb exp="f.ngay"], tháng [emb exp="f.thang"], năm [emb exp="f.nam"][r]
Hiện đang là [mua_text], tiết [tiet_khi_text"]: [tiet_khi_tag],[r]
thời tiết: [thoi_tiet_text][p]
Tài khoản hiện có [money] đồng[r]
Doanh thu từ phòng khám đạt mức: [emb exp="f.reven"]-đồng[p]
[if exp="f.aur_love>=0"]Có: [emb exp="f.aur_love" ] điểm thân mật với Aurelia[r][endif]
[if exp="f.ne_love>=0 && f.cafe_talk==1"]Có: [emb exp="f.ne_love" ] điểm thân mật với Nephy
[elsif exp="f.ne_love>=0"]Có: [emb exp="f.ne_love" ] điểm thân mật với cô bồi bàn
[endif][p]
[endnolog][return_menu]

*record_
[cm][nolog][delay speed=13][eval exp="f.system_act=1" ]
[_]Tôi sống với Sylvie được [emb exp="f.day" ] ngày
[if exp="f.sex==0 || f.sex=='yet'" ][else]、Làm tình [emb exp="f.sex" ] lần[endif]
[if exp="f.heavn>=1" ]、Sylvie lên đỉnh [emb exp="f.heavn" ] Lần[endif]

[if exp="f.sex==0 || f.sex=='yet'" ][else][r][endif]
[if exp="f.cum>=1" ]Ra bên trong [emb exp="f.cum" ] Lần[endif]
[if exp="f.kake>=1" ]、Ra lên mặt [emb exp="f.kake" ] lần[endif]
[if exp="f.blow>=1" ]、Bằng miệng [emb exp="f.blow" ] lần[endif]
[if exp="f.drink>=1" ]、Nuốt tinh [emb exp="f.drink" ] lần[endif]
[if exp="f.self>=1" ]、Sylvie thủ dâm [emb exp="f.self" ] lần[endif]
[p][endnolog][return_menu]

;;所持品
*items
[cm][nolog][delay speed=1][eval exp="f.system_act=1" ]
#Vật phẩm
[if exp="f.book!='non'" ] Hoa hồng: [emb exp="f.flower" ][endif]
[if exp="f.flower_b>=1" ]、----Hoa xanh: [emb exp="f.flower_b" ][r][endif]
[if exp="f.book!='non'" ]Thuốc kích dục: [emb exp="f.drugx" ]----- Thuốc tăng lực: [emb exp="f.drugz" ][r][endif]
[if exp="f.akemi_dr=='yet'"]
[r]Thuốc chữa cảm: ([font color="0x05ffff"][emb exp="f.drugk_c"][resetfont], [font color="0xff0000"][emb exp="f.drugk_h"][resetfont])[endif]

[if exp="f.wine_c>=0" ][r][else][endif]
[if exp="f.wine_left>=31" ]、 Nhiều hơn ba chai rượu chưa mở
[elsif exp="f.wine_left>=30" ]、 Ba chai rượu chưa mở
[elsif exp="f.wine_left>=21" ]、 Hai chai rượu chưa mở và một chai đang dùng dở
[elsif exp="f.wine_left>=20" ]、 Hai chai rượu chưa mở
[elsif exp="f.wine_left>=11" ]、 Một chai rượu đã mở và một chai còn nguyên
[elsif exp="f.wine_left>=10" ]、 Một chai rượu chưa mở
[elsif exp="f.wine_left>=7" ]、 Một chai rượu đang uống dở
[elsif exp="f.wine_left>=4" ]、Một chai rượu đã uống hết một nửa
[elsif exp="f.wine_left>=3" ]、Một chai rượu chỉ còn lại một ít
[elsif exp="f.wine_left>=1" ]、Chỉ còn đủ cho một ly[endif]
[r]
[if exp="f.miyage=='non' || f.miyage=='nothing' || f.tea_time==1 || f.tea_time==2 " ][else]
Quà cho Sylvie: [miyage][endif]
[p][return_menu]

;;ステータス
*sil_state
[cm][if exp="f.pngt>=15 && f.step>=6 || f.step<=5"][else][c_ch][p][endif][nolog][delay speed=1][eval exp="f.system_act=1" ][limit_status]
[font color="lightsteelblue"]
[link target=*Sylvie_ex]【Sylvie sao rồi?】[endlink][r]
[link target=*Sylvie_health]【Sức khỏe của Sylvie】[endlink]
[resetfont]
[s ]
*Sylvie_ex
[cm][nolog]
[_][if exp="f.step==1" ]Sylvie vẫn nghĩ rằng bạn là người lạ。[r][show_love]
[elsif exp="f.step==2" ]Sylvie xem bạn như là một người quen。[r][show_love]
[elsif exp="f.step==3" ]Sylvie đang bắt đầu tin bạn như là một người thân。[r][show_love]
[elsif exp="f.step==4" ]Sylvie rất thích khoảng thời gian cô ấy dành cho bạn。[r][show_love]
[elsif exp="f.step==5" ]Sylvie ủng hộ bạn nhiệt tình。[r][show_love]
[elsif exp="f.step>=6 && f.love>=3000 && f.lust>=1500" ]
Sylvie có vẻ như sẽ có một cơn hoảng hốt nếu như rời xa bạn một ngày。[r][H_status]
[elsif exp="f.step>=6 && f.love>=2000 && f.lust>=1000" ]
Sylvie có vẻ như sẽ có một cơn hoảng hốt nếu như rời xa bạn một ngày。[r][H_status]
[elsif exp="f.step>=6 && f.love>=1000 && f.lust>=600" ]
Sylvie nghĩ rằng cô ấy không thể sống một ngày nếu thiếu bạn。[r][H_status]
[elsif exp="f.step>=6 && f.love>=600 && f.lust>=120" ]
Sylvie không nghĩ đến ai khác ngoài bạn bao giờ。[r][H_status]
[elsif exp="f.step>=6 && (f.sex==0 || f.sex=='yet')" ]
Sylvie nghĩ về bạn từ tận đáy lòng。[r][show_love]
[elsif exp="f.step==6" ]
Sylvie nghĩ về bạn từ tận đáy lòng。[r][H_status]
[endif]
[p]
[if exp="f.ne_x_s>=150"]
Mối quan hệ giữa Sylvie với Nephy đang rất tốt ([font color="0xff78c7"][emb exp="f.ne_x_s"][resetfont]: Điểm thân mật)
[elsif exp="f.ne_x_s>=100"]
Sylvie là bạn rất thân với Nephy ([font color="lightsteelblue"][emb exp="f.ne_x_s"][resetfont]: Điểm thân mật)
[elsif exp="f.ne_x_s>=50"]
Sylvie là bạn thân với Nephy ([emb exp="f.ne_x_s"]: Điểm thân mật)
[elsif exp="f.ne_x_s>=30"]
Sylvie đã là bạn với Nephy ([emb exp="f.ne_x_s"]: Điểm thân mật)
[elsif exp="f.ne_x_s>=10"]
Sylvie đã kết bạn với Nephy ([emb exp="f.ne_x_s"]: Điểm thân mật)
[else]Sylvie có: [emb exp="f.ne_x_s"]- điểm thân mật với Nephy[endif]
[p]
[return_menu]

*Sylvie_health
[cm][nolog][delay speed=1]

[if exp="f.hp<=20"]
#
Sức khỏe của Sylvie hiện đang rất kém. Có thể nguy hiểm đến tính mạng nếu bị ốm[r]
[font color="0xfc0000"][emb exp="f.hp" ][resetfont]/[font color="lightsteelblue"][emb exp="f.hp_max" ][resetfont] (Health point)[p]
[elsif exp="f.hp<=50"]
#
Sức khỏe của Sylvie hiện đang kém. cẩn thận khi cô ấy bị ốm[r]
[font color="0xf700ff"][emb exp="f.hp" ][resetfont]/[font color="lightsteelblue"][emb exp="f.hp_max" ][resetfont] (Health point)[p]

[elsif exp="f.hp<=80"]
#
Sức khỏe của Sylvie vẫn bình thường.[r]
[font color="0x3cff00"][emb exp="f.hp" ][resetfont]/[font color="lightsteelblue"][emb exp="f.hp_max" ][resetfont] (Health point)[p]

[elsif exp="f.hp<=100"]
#
Sức khỏe của Sylvie đang tốt.[r]
[font color="0xffff00"][emb exp="f.hp" ][resetfont]/[font color="lightsteelblue"][emb exp="f.hp_max" ][resetfont] (Health point)[p]

[elsif exp="f.hp>=101"]
#
Sức khỏe của Sylvie đang rất tốt.[r]
[font color="0x00ffee"][emb exp="f.hp" ][resetfont]/[font color="lightsteelblue"][emb exp="f.hp_max" ][resetfont] (Health point)[lr]
[endif]
[if exp="f.syl_fun>=100"]Tâm trạng: Đang rất hạnh phúc [font color="0xff5297"]♥[resetfont]
[elsif exp="f.syl_fun>=89"]Tâm trạng: Đang rất vui vẻ [font color="0x3cff00"]♪♪♪♪[resetfont]
[elsif exp="f.syl_fun>=79"]Tâm trạng: Đang rất vui vẻ [font color="0x3cff00"]♪♪♪[resetfont]
[elsif exp="f.syl_fun>=69"]Tâm trạng: Đang cảm thấy tốt [font color="0x3cff00"]♪♪[resetfont]
[elsif exp="f.syl_fun>=59"]Tâm trạng: Tốt [font color="0x3cff00"]♪[resetfont]
[elsif exp="f.syl_fun>=49"]Tâm trạng: Cô ấy thỉnh thoảng hay nhìn ra ngoài cửa sổ.
[elsif exp="f.syl_fun>=39"]Tâm trạng: Cô ấy luôn nhìn ra ngoài cửa sổ.
[elsif exp="f.syl_fun>=29"]Tâm trạng: Cô ấy muốn ra ngoài đi dạo.
[elsif exp="f.syl_fun>=19"]Tâm trạng: Cô ấy rất muốn ra ngoài đi dạo cùng bạn.
[elsif exp="f.syl_fun>=9"]Tâm trạng: Cô ấy thấy chán nản vì cảm thấy bị bỏ quên.
[elsif exp="f.syl_fun>=0"]Tâm trạng: [font color="0xff5297"]Đang cảm thấy tuyệt vọng.[resetfont][endif] - FP = [emb exp="f.syl_fun"][p]

[return_menu]

*dress_up
[cm][if exp="f.pngt>=15 && f.step>=6 || f.step<=5"][else][c_ch][p][endif][jump storage="sys/dress.ks" target="*change_dress" ]


;;調合
*medi
[cm][nolog][delay speed=1]
[if exp="f.flower>=1 && f.akemi_dr=='yet'" ]
#Vật phẩm
Hoa hồng:([emb exp="f.flower"])---Hoa xanh: ([emb exp="f.flower_b" ])---Rượu:([emb exp="f.wine_left"])[r]
thuốc kích dục:([emb exp="f.drugx"])---thuốc tăng lực:([emb exp="f.drugz"]),[r] 
Thuốc chữa cảm ([font color="0x05ffff"][emb exp="f.drugk_c"][resetfont], [font color="0xff0000"][emb exp="f.drugk_h"][resetfont]).
[button  target="*medi_z"  graphic="s_ch/medi-y.png"  x="650" y="120" hint="Thuốc_kích_dục" ]
[button  target="*medi_x"  graphic="s_ch/medi-s.png"  x="650" y="210" hint="Thuốc_tăng_lực" ]
[button  target="*medi_k"  graphic="s_ch/medi-k.png"  x="650" y="300" hint="Thuốc_kháng_sinh" ]
[button  target="*return_menu"  graphic="s_ch/remind.png"  x="650" y="510" ][cancelskip][s]
[elsif exp="f.flower>=1" ]
#Vật phẩm
Hoa hồng:（[emb exp="f.flower"]---Hoa xanh:[emb exp="f.flower_b" ][r]
Thuốc kích dục:（[emb exp="f.drugx"]---Thuốc tăng lực:（[emb exp="f.drugz"]
[button  target="*medi_z"  graphic="s_ch/medi-y.png"  x="650" y="120" hint="Thuốc_kích_dục" ]
[button  target="*medi_x"  graphic="s_ch/medi-s.png"  x="650" y="210" hint="Thuốc_tăng_lực" ]
[button  target="*return_menu"  graphic="s_ch/remind.png"  x="650" y="510" ][cancelskip][s]
[else]
[_]（Không đủ nguyên liệu。[p][return_menu][endif]
;===============================thuoocs khangs sinh================================================
*medi_k
[cm]
[if exp="f.wine_left<=0"]
(Cần có thêm rượu).[p]
[jump target="*return_menu" ][endif]
Vật phẩm - Hoa hồng([emb exp="f.flower"])、Rượu([emb exp="f.wine_left"]), Hoa xanh([emb exp="f.flower_b"]), Thuốc chữa cảm ([font color="0x05ffff"][emb exp="f.drugk_c"][resetfont], [font color="0xff0000"][emb exp="f.drugk_h"][resetfont]).
[button  target="*medi_k_c"  graphic="s_ch/medi-k-c.png"  x="650" y="120" hint="chữa_cảm_lạnh" ]
[button  target="*medi_k_h"  graphic="s_ch/medi-k-h.png"  x="650" y="210" hint="chữa_cảm_nhiệt" ]
[button  target="*return_menu"  graphic="s_ch/remind.png"  x="650" y="510" ][s]
;;-----------------------------------------------------------------------------------------
*medi_k_c
[cm]
Cần 1 [font color="0xff0000"]hoa hồng[resetfont] và 1 rượu cho 1 liều.[r]
Vật phẩm hiện có - Hoa hồng([emb exp="f.flower"])、Rượu([emb exp="f.wine_left"])

[button  target="*one_k_c"  graphic="s_ch/make-one.png"  x="650" y="120" ]
[if exp="f.flower>=5 && f.wine_left>=5" ]
[button  target="*five_k_c"  graphic="s_ch/make-five.png"  x="650" y="210" ]
[endif]
[button  target="*all_k_c"  graphic="s_ch/make-all.png"  x="650" y="300" ]
[button  target="*return_menu"  graphic="s_ch/remind.png"  x="650" y="510" ][s]

*one_k_c
[cm]
[eval exp="f.flower=f.flower-1"][eval exp="f.wine_left=f.wine_left-1"]
[eval exp="f.drugk_c=f.drugk_c+1"]
Vừa điều chế một liều thuốc trị cảm lạnh[p]
[jump target="*medi_k"]

*five_k_c
[cm]
[eval exp="f.flower=f.flower-5"][eval exp="f.wine_left=f.wine_left-5"]
[eval exp="f.drugk_c=f.drugk_c+5"]
Vừa điều chế 5 liều thuốc trị cảm lạnh[p]
[jump target="*medi_k"]

*all_k_c
[cm]
[if exp="f.flower<=f.wine_left"]
[eval exp="f.drugk_c=f.drugk_c+f.flower"]
[eval exp="f.wine_left=f.wine_left-f.flower"][eval exp="f.flower=0"]
[else]
[eval exp="f.drugk_c=f.drugk_c+f.wine_left"]
[eval exp="f.flower=f.flower-f.wine_left"][eval exp="f.wine_left=0"]
[endif]
Đã dùng hết nguyên liệu để chế thuốc trị cảm lạnh[p]
[jump target="*medi_k"]
;;-----------------------------------------------------------------------------------------------
*medi_k_h
[cm]
[if exp="f.flower_b<=0"]
(Cần có thêm hoa xanh)[p][endif]
Cần 1 [font color="0x05ffff"]hoa xanh[resetfont] và 1 rượu cho 1 liều.[r]
Vật phẩm hiện có - Hoa xanh([emb exp="f.flower_b"])、Rượu([emb exp="f.wine_left"])
[button  target="*one_k_h"  graphic="s_ch/make-one.png"  x="650" y="120" ]
[if exp="f.flower_b>=5 && f.wine_left>=5" ]
[button  target="*five_k_h"  graphic="s_ch/make-five.png"  x="650" y="210" ]
[endif]
[button  target="*all_k_h"  graphic="s_ch/make-all.png"  x="650" y="300" ]
[button  target="*return_menu"  graphic="s_ch/remind.png"  x="650" y="510" ][s]

*one_k_h
[cm]
[eval exp="f.flower=f.flower_b-1"][eval exp="f.wine_left=f.wine_left-1"]
[eval exp="f.drugk_h=f.drugk_h+1"]
Vừa điều chế một liều thuốc trị cảm nhiệt[p]
[jump target="*medi_k"]

*five_k_h
[cm]
[eval exp="f.flower_b=f.flower_b-5"][eval exp="f.wine_left=f.wine_left-5"]
[eval exp="f.drugk_h=f.drugk_h+5"]
Vừa điều chế 5 liều thuốc trị cảm nhiệt[p]
[jump target="*medi_k"]

*all_k_h
[cm]
[if exp="f.flower_b<=f.wine_left"]
[eval exp="f.drugk_h=f.drugk_h+f.flower_"]
[eval exp="f.wine_left=f.wine_left-f.flower_b"][eval exp="f.flower_b=0"]
[else]
[eval exp="f.drugk_h=f.drugk_h+f.wine_left"]
[eval exp="f.flower=f.flower_b-f.wine_left"][eval exp="f.wine_left=0"]
[endif]
Đã dùng hết nguyên liệu để chế thuốc trị cảm nhiệt[p]
[jump target="*medi_k"]
;====================================end=============================================
*medi_x
[cm]Vật phẩm-Hoa hồng （[emb exp="f.flower"]、Thuốc kích dục （[emb exp="f.drugx"]、Thuốc tăng lực （[emb exp="f.drugz"]
[button  target="*one_x"  graphic="s_ch/make-one.png"  x="650" y="120" ]
[if exp="f.flower>=5" ]
[button  target="*five_x"  graphic="s_ch/make-five.png"  x="650" y="210" ][endif]
[button  target="*all_x"  graphic="s_ch/make-all.png"  x="650" y="300" ]
[button  target="*return_menu"  graphic="s_ch/remind.png"  x="650" y="510" ][cancelskip][s]
*medi_z
[cm]Vật phẩm-Hoa hồng （[emb exp="f.flower"]、Thuốc kích dục （[emb exp="f.drugx"]、Thuốc tăng lực （[emb exp="f.drugz"]
[button  target="*one_z"  graphic="s_ch/make-one.png"  x="650" y="120" ]
[if exp="f.flower>=5" ]
[button  target="*five_z"  graphic="s_ch/make-five.png"  x="650" y="210" ][endif]
[button  target="*all_z"  graphic="s_ch/make-all.png"  x="650" y="300" ]
[button  target="*return_menu"  graphic="s_ch/remind.png"  x="650" y="510" ][cancelskip][s]

*one_z
[cm][eval exp="f.flower=f.flower-1" ][eval exp="f.drugz=f.drugz+1" ]
Tôi là 1 viên thuốc tăng lực。[r]
Vật phẩm-Hoa hồng （[emb exp="f.flower"]、Thuốc kích dục （[emb exp="f.drugx"]、Thuốc tăng lực （[emb exp="f.drugz"][p]
[return_menu]
*five_z
[cm][eval exp="f.flower=f.flower-5" ][eval exp="f.drugz=f.drugz+5" ]
Tôi là 5 viên thuốc tăng lực。[r]
Vật phẩm-Hoa hồng （[emb exp="f.flower"]、Thuốc kích dục （[emb exp="f.drugx"]、Thuốc tăng lực （[emb exp="f.drugz"][p]
[return_menu]
*all_z
[cm][eval exp="f.drugz=f.flower+f.drugz" ][eval exp="f.flower=0" ]
Tôi dùng tất cả hoa hồng để làm thuốc tăng lực。[r]
Vật phẩm-Hoa hồng （[emb exp="f.flower"]、Thuốc kích dục （[emb exp="f.drugx"]、Thuốc tăng lực （[emb exp="f.drugz"][p]
[return_menu]

*one_x
[cm][eval exp="f.flower=f.flower-1" ][eval exp="f.drugx=f.drugx+1" ]
Tôi là 1 viên thuốc kích dục。[r]
Vật phẩm-Hoa hồng （[emb exp="f.flower"]、Thuốc kích dục （[emb exp="f.drugx"]、Thuốc tăng lực （[emb exp="f.drugz"][p]
[return_menu]
*five_x
[cm][eval exp="f.flower=f.flower-5" ][eval exp="f.drugx=f.drugx+5" ]
Tôi là 5 viên thuốc kích dục。[r]
Vật phẩm-Hoa hồng （[emb exp="f.flower"]、Thuốc kích dục （[emb exp="f.drugx"]、Thuốc tăng lực （[emb exp="f.drugz"][p]
[return_menu]
*all_x
[cm][eval exp="f.drugx=f.flower+f.drugx" ][eval exp="f.flower=0" ]
Tôi dùng tất cả hoa hồng để làm thuốc kích dục。[r]
Vật phẩm-Hoa hồng （[emb exp="f.flower"]、Thuốc kích dục （[emb exp="f.drugx"]、Thuốc tăng lực （[emb exp="f.drugz"][p]
[return_menu]
;;ゲームオーバー
*game_over
[stopbgm][black]
@clearfix name="role_button"
…[p_]
[button name="role_button" role="load" graphic="ch/load.png" x=0 y=200]
[button name="role_button" role="title" graphic="ch/title.png" x=0 y=350][s]
[jump storage="first.ks" ]



