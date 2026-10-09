*event
[bg time="400" method="crossfade" storage="bg/door_n.jpg" ]
[f/s_nt][show_stand][bgm_SG]
[eval exp="f.out=1" ]
[f/sp]Mừng anh đã về! [name].[p_] 
[f/sclp]Em vừa chuẩn bị bữa tối xong.[lr_]
;[if exp="f.sexless>=2 || f.sexless_c>=1"][else]
;[f/ssp]Chúng ta cùng ăn sau khi anh tắm xong nhé![p_]
;[jump storage="mod/nigh_dinner.ks" target="*lunch"]
;[endif]
[f/sp]Anh muốn ăn tối luôn hay tắm trước...❤❤❤?[p_]
[f/re]Hay là...[l_][f/ssp]E-Em trước?
[random_3]
[if exp="f.r==1"][sm_05]
[elsif exp="f.r==2"][sm_07][else][sm_09][endif]
[p_]
[button storage="mod/nigh_dinner.ks" target="*lunch" graphic="ch/go_home_lunch.png" x="0" y="175" ]
[button target="*bat" graphic="ch/go_home_bat.png" x="0" y="325" ]
[if exp="f.dress>=21 && f.dress<=29"]
[button target="*sex" graphic="ch/go_home_sex.png" x="0" y="475" ]
[elsif exp="f.dress>=41 && f.dress<=49"]
[button target="*sex" graphic="ch/go_home_sex.png" x="0" y="475" ]
[elsif exp="f.dress>=1000 && f.dress<=1029"]
[button target="*sex" graphic="ch/go_home_sex.png" x="0" y="475" ][endif]

[s]

*event_aur1
[eval exp="f.act=1"]
[set_stand][bg_doorout][f/nt][show_stand][bgm_IF]
[syl][f/s]Mừng anh đã về, [name].[p_]
[f/s]Hôm qua mưa lớn quá, chắc anh bị kẹt không về được.[lr_]
[f/clc]Em thực sự thấy lo lắm đấy. Hi vọng anh không bị gì...[p_]
[f/re]Thực sự đêm qua em luôn có linh cảm xấu...[lr_]
[f/ss]Nhưng anh về thế này là em yên tâm rồi.[p_]
[f/ss]Anh đã vất vả rồi...[p_][f/s_nt][wait time="700"][bg_door]
[f/c_nt]...??[p_]
[f/c]M-mà hình như...[lr_]
[black]
[set_nade][bg_door][f/clcp][call storage="mod/H/town_h.ks" target="*show_nade"]
[f/clc_nt][um_09]*Humm~humm*...[p_]
[f/clc]Hình như có mùi gì đó...??[lr_]
[f/re]Hmm~mm~...nó có chút quen thuộc...và...khó chịu...[p_] 
[f/sclp]Chắc do thời tiết xấu còn lưu lại.[p_]
[black][set_stand][bg_door][f/s_nt][show_stand]
[f/s]Anh vào tắm chút đi, em chuẩn bị nước rồi. Em sẽ làm chút đồ ăn cho[r] 
anh.[p_]
[f/clp]Hay là...[l_][f/p_nt][um_01]Umm...[wait time="800"][f/sclp]tắm cùng em luôn...[p_]
[f/ssp]Em sẽ kì lưng giúp anh...[sm_09]*smile*[p_]
[eval exp="f.act='aureliah'"]
[black][stopbgm].[wait time="300"].[wait time="300"].[wait time="300"][cm]
[eval exp="f.last_act='non'"]
[chara_mod name="sub" time="0" storage="00.png"]
[chara_mod name="h" time="0" storage="00.png"]
[chara_mod name="tear" time="0" storage="00.png"]
[eval exp="f.syl_j=7"][eval exp="f.aur_av=1"]

[button storage="mod/nigh_dinner.ks" target="*lunch" graphic="ch/go_home_lunch.png" x="0" y="175" ]
[button target="*bat_" graphic="ch/go_home_bat.png" x="0" y="325" ]

[s]

*event_aur2

[button storage="mod/nigh_dinner.ks" target="*lunch" graphic="ch/go_home_lunch.png" x="0" y="175" ]
[button target="*bat_" graphic="ch/go_home_bat.png" x="0" y="325" ]

[s]

*bat
[cm][syl]
[f/sp_nt][um_10]Umm~...[l_][f/ssp]P-Phòng tắm đã sẵn sàng rồi ạ![p_]
[jump storage="mod/bath.ks" target="*begin"]

*bat_
[cm][syl]
[f/sp_nt][um_10]Umm~...[l_][f/ssp]P-Phòng tắm đã sẵn sàng rồi ạ![p_]
[jump storage="mod/bath_def.ks" target="*begin"]

*sex
[cm][f/p_nt]
[a_02]Umm?[p_]
[jump storage="mod/H/H_door.ks" target="*begin"]











