;;========script_by_modkun============

;;I-cold--------------------------------------------------------------------------------
*cold
[eval exp="f.act_health=0"]
[cm]
[black]
[stopbgm]
[bgm_IF]
[eval exp="f.hair_band=0" ][eval exp="f.hair_style=0" ]
[eval exp="f.pin=0" ]
[eval exp="f.hat=0" ]
[eval exp="f.socks=0" ]
[eval exp="f.glasses=0" ]
[eval exp="f.gloves=0" ]
[eval exp="f.b_acc=0" ]
[eval exp="f.neck=0" ]
[set_stand][bg_bed][show_stand][f/cp_nt]
#Sylvie
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"]
[name]...[p_]
[f/cp]Tự nhiên em cảm thấy...rất chóng mặt...[p_]
[f/clcp]...và mệt[p_][f/p_nt]
[elsif exp="f.talk==2"]
[name]...[p_]
[f/cp]Em cảm thấy lạ lắm...[l_]chóng mặt..[p_]
[f/clcp]...và rất mệt[p_]
[else]
[name]...[p_]
[f/clcp]Em thấy chóng mặt..[p_]
[f/clcp]...và mệt ạ.[p_][f/p_nt]
#
[endif]
[cm]
[black]
[set_nade][f/clcp_nt]
[call  storage="mod/set_show_mod.ks"  target="*show_nade_mod" ][bg_bed]
#
(Tôi kiểm tra cơ thể của Sylvie một chút [p_]
[iscript]
f.talk=Math.floor(Math.random() * 5 + 1);
[endscript]
[if exp="f.mua==1 && f.talk<=3"]
[jump target="*coule_bad"]
[elsif exp="f.mua==2 && f.talk==4"]
[jump target="*coule_bad"]
[elsif exp="f.mua==3 && f.talk>=4"]
[jump target="*coule_bad"]
[elsif exp="f.mua==4 && f.talk>=2"]
[jump target="*coule_bad"]
[else][jump target="*heath_bad"][endif]
;;-----------------------------cold-------------------------------------
*coule_bad
[eval exp="f.bad_stype='cold'"]
[chara_mod name="h" time="50" storage="mod/hand/check.png" ]
[chara_show name="h" time="50" wait="false" left="1" zindex=250]
#Sylvie
Humm~...[p_]
[chara_mod name="h" time="50" storage="mod/hand/00.png" ]
#
[if exp="f.pin==0" ]
[chara_mod  name="face"  time="500"  storage="o/face/n-ctp.png" ][else]
[chara_mod  name="face"  time="500"  storage="o/face/n-ctp-.png" ][endif]
(Trán của cô ấy nóng, cơ thể run và hơi tái. Cô ấy đã bị [font color="0x05ffff"]cảm lạnh[resetfont].[lr_]
Tôi cần để cô ấy nghỉ ngơi và chăm sóc cô ấy.[p_]
Các loại dược liệu điều chế từ hoa hồng có thể giúp điều trị [font color="0x05ffff"]cảm lạnh[resetfont].[p_]
[jump target="*to_next"]
;--------------------------------heath----------------------------------------
*heath_bad
[eval exp="f.bad_stype='heath'"]
[chara_mod name="h" time="50" storage="mod/hand/check.png" ]
[chara_show name="h" time="50" wait="false" left="1" zindex=250]
#Sylvie
Humm~...[p_]
[chara_mod name="h" time="50" storage="mod/hand/00.png" ]
#
[if exp="f.pin==0" ]
[chara_mod  name="face"  time="500"  storage="mod/face/n-ctp.png" ][else]
[chara_mod  name="face"  time="500"  storage="mod/face/n-ctp-.png" ][endif]
(Trán của cô ấy nóng, mạch đập rất nhanh. Cô ấy đã bị [font color="0xff0000"]cảm nhiệt[resetfont].[lr_]
[font color="0xff0000"]Cảm nhiệt[resetfont] thật sự rất nguy hiểm, tôi cần để cô ấy nghỉ ngơi và chăm sóc cô ấy cẩn thận.[p_]
Các loại dược liệu điều chế từ hoa xanh có thể giúp điều trị cảm nhiệt.[p_]
[jump target="*to_next"]
;--------------------------------------to_next-----------------------------------
*to_next
[eval exp="f.bad_lv=100"]
[iscript]
f.talk=Math.floor(Math.random() * 100 + 1);
[endscript]
[eval exp="f.bad_lv=f.bad_lv+f.talk"]
[black]
[stopbgm]
[cm]
#
...[p_]
[chara_mod  name="body"  time="500"  storage="chara/face/00.png" ]
[chara_mod  name="face"  time="500"  storage="chara/face/00.png" ]
[chara_show name="body" time="50" wait="false" top="10" left="1" zindex="5" ]
[chara_show name="face" time="50" wait="false" top="10" left="1" zindex="10" ]
[chara_show name="window" time="50" wait="false" top="1" left="1" zindex="50" ]
[chara_show name="h" time="50" wait="false" left="1" zindex="18" ]
[chara_mod name="window" time="10" storage="mod/win/heal.png" ]
[wait time="200"]
[chara_mod name="body" time="1000" storage="mod/chara/bg_sick_close_.jpg" ]
[wait time="100"]
[chara_mod name="face" time="1000" storage="mod/chara/sick_.png" ]
[bgm_JH]
#
(Sylvie bị cảm.[p_]
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"]
Chắc một hai ngày nữa sẽ khỏe lại).[p_]
[elsif exp="f.talk==2"]
Cơn sốt của cô ấy không nặng lắm, chắc sau vài ngày sẽ khỏe lại).[p_]
[else]
chắc sẽ sớm khỏe lại).[p_][endif]
...[p_]
#Sylvie
[chara_mod name="face" time="200" storage="mod/chara/sick.png" ]
E..Em xin lỗi...[name][lr_]
[chara_mod name="face" time="1000" storage="mod/chara/sick_close_.png" ]
[wait time="100"]
[chara_mod name="face" time="500" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="500" storage="mod/chara/sick.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"]
Em đã khiến anh phải lo lắng...~[p_]
[elsif exp="f.talk==2"]
Em...lại gây phiền phức cho [name]...[p_]
[else]
Sức khỏe của em...nó thật tệ...[p_][endif]
[chara_mod name="face" time="500" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="500" storage="mod/chara/sick_close_.png" ]
#
...[p_]
[jump target="*choice"]

*choice
#Sylvie
...hzzzz~!.
[eval exp="f.talk=f.talk+1"]
[eval exp="f.act_health=f.act_health+1"]
[if exp="f.act_health>=13"]
[eval exp="f.act_health=0"]
[jump target="*end"][endif]

[if exp="f.bad_lv<=0"][eval exp="f.bad_lv=0"]
[button target="*lv_bad" graphic="health_ch/s_f.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=90 && f.bad_stype=='heath'"]
[button target="*lv_bad" graphic="health_ch/s_h_3.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=50 && f.bad_stype=='heath'"]
[button target="*lv_bad" graphic="health_ch/s_h_2.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=1 && f.bad_stype=='heath'"]
[button target="*lv_bad" graphic="health_ch/s_h_1.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=100 && f.bad_stype=='cold'"]
[button target="*lv_bad" graphic="health_ch/s_c_3.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=50 && f.bad_stype=='cold'"]
[button target="*lv_bad" graphic="health_ch/s_c_2.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=1 && f.bad_stype=='cold'"]
[button target="*lv_bad" graphic="health_ch/s_c_1.png"  x="1165" y="17" ][endif]


[if exp="f.act_health==1"]
[button target="*times" graphic="health_ch/sang1.png"  x="1255" y="17" ]
[elsif exp="f.act_health==2"]
[button target="*times" graphic="health_ch/sang2.png"  x="1255" y="17" ]
[elsif exp="f.act_health==3"]
[button target="*times" graphic="health_ch/sang3.png"  x="1255" y="17" ]
[elsif exp="f.act_health==4"]
[button target="*times" graphic="health_ch/sang4.png"  x="1255" y="17" ]
[elsif exp="f.act_health==5"]
[button target="*times" graphic="health_ch/trua1.png"  x="1255" y="17" ]
[elsif exp="f.act_health==6"]
[button target="*times" graphic="health_ch/trua2.png"  x="1255" y="17" ]
[elsif exp="f.act_health==7"]
[button target="*times" graphic="health_ch/trua3.png"  x="1255" y="17" ]
[elsif exp="f.act_health==8"]
[button target="*times" graphic="health_ch/chieu1.png"  x="1255" y="17" ]
[elsif exp="f.act_health==9"]
[button target="*times" graphic="health_ch/chieu2.png"  x="1255" y="17" ]
[elsif exp="f.act_health==10"]
[button target="*times" graphic="health_ch/toi1.png"  x="1255" y="17" ]
[elsif exp="f.act_health==11"]
[button target="*times" graphic="health_ch/toi2.png"  x="1255" y="17" ]
[elsif exp="f.act_health>=12"]
[button target="*times" graphic="health_ch/toi3.png"  x="1255" y="17" ]
[endif]

[if exp="f.act_health==1 || f.act_health==6 || f.act_health==11"]
[button target="*medi" graphic="health_ch/medi.png"  x="21" y="95" ]
[button target="*talk" graphic="health_ch/nade.png"  x="21" y="158" ]
[button target="*talk" graphic="health_ch/talk.png"  x="21" y="221" ]
[button target="*not_action" graphic="health_ch/not_action.png"  x="21" y="284" ]
[s][endif]


[button target="*nade" graphic="health_ch/nade.png"  x="21" y="95" ]
[button target="*talk" graphic="health_ch/talk.png"  x="21" y="158" ]
[button target="*not_action" graphic="health_ch/not_action.png"  x="21" y="221" ]
;[button target="*end" graphic="health_ch/end.png"  x="21" y="490" ]
[s]

*choice_
[cm]
[if exp="f.bad_lv<=0"][eval exp="f.bad_lv=0"]
[button target="*lv_bad" graphic="health_ch/s_f.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=90 && f.bad_stype=='heath'"]
[button target="*lv_bad" graphic="health_ch/s_h_3.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=50 && f.bad_stype=='heath'"]
[button target="*lv_bad" graphic="health_ch/s_h_2.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=1 && f.bad_stype=='heath'"]
[button target="*lv_bad" graphic="health_ch/s_h_1.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=100 && f.bad_stype=='cold'"]
[button target="*lv_bad" graphic="health_ch/s_c_3.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=50 && f.bad_stype=='cold'"]
[button target="*lv_bad" graphic="health_ch/s_c_2.png"  x="1165" y="17" ]
[elsif exp="f.bad_lv>=1 && f.bad_stype=='cold'"]
[button target="*lv_bad" graphic="health_ch/s_c_1.png"  x="1165" y="17" ][endif]


[if exp="f.act_health==1"]
[button target="*times" graphic="health_ch/sang1.png"  x="1255" y="17" ]
[elsif exp="f.act_health==2"]
[button target="*times" graphic="health_ch/sang2.png"  x="1255" y="17" ]
[elsif exp="f.act_health==3"]
[button target="*times" graphic="health_ch/sang3.png"  x="1255" y="17" ]
[elsif exp="f.act_health==4"]
[button target="*times" graphic="health_ch/sang4.png"  x="1255" y="17" ]
[elsif exp="f.act_health==5"]
[button target="*times" graphic="health_ch/trua1.png"  x="1255" y="17" ]
[elsif exp="f.act_health==6"]
[button target="*times" graphic="health_ch/trua2.png"  x="1255" y="17" ]
[elsif exp="f.act_health==7"]
[button target="*times" graphic="health_ch/trua3.png"  x="1255" y="17" ]
[elsif exp="f.act_health==8"]
[button target="*times" graphic="health_ch/chieu1.png"  x="1255" y="17" ]
[elsif exp="f.act_health==9"]
[button target="*times" graphic="health_ch/chieu2.png"  x="1255" y="17" ]
[elsif exp="f.act_health==10"]
[button target="*times" graphic="health_ch/toi1.png"  x="1255" y="17" ]
[elsif exp="f.act_health==11"]
[button target="*times" graphic="health_ch/toi2.png"  x="1255" y="17" ]
[elsif exp="f.act_health>=12"]
[button target="*times" graphic="health_ch/toi3.png"  x="1255" y="17" ]
[endif]

[if exp="f.act_health==1 || f.act_health==6 || f.act_health==11"]
[button target="*medi" graphic="health_ch/medi.png"  x="21" y="95" ]
[button target="*talk" graphic="health_ch/nade.png"  x="21" y="158" ]
[button target="*talk" graphic="health_ch/talk.png"  x="21" y="221" ]
[button target="*not_action" graphic="health_ch/not_action.png"  x="21" y="284" ]
[s][endif]


[button target="*nade" graphic="health_ch/nade.png"  x="21" y="95" ]
[button target="*talk" graphic="health_ch/talk.png"  x="21" y="158" ]
[button target="*not_action" graphic="health_ch/not_action.png"  x="21" y="221" ]
;[button target="*end" graphic="health_ch/end.png"  x="21" y="490" ]
[s]

*lv_bad
[cm]
#
Tình trạng sức khỏe của Sylvie:[r]
[if exp="f.bad_lv<=0"]
Đã ổn định.
[elsif exp="f.bad_lv>=150"]
Đang rất nguy hiểm, có thể ảnh hưởng đến tính mạng.
[elsif exp="f.bad_lv>=90"]
Đang rất tệ.
[elsif exp="f.bad_lv>=50"]
Có chút chuyển biến tốt.
[elsif exp="f.bad_lv>=1 "]
Đã không còn nguy hiểm nữa.[endif][r]
Mức độ: 
[if exp="f.bad_lv>=150"][font/red]
[elsif exp="f.bad_lv>=120"][font/yellow]
[elsif exp="f.bad_lv>=100"][font/orange]
[elsif exp="f.bad_lv>=80"][font/purple]
[elsif exp="f.bad_lv>=50"][font/pink]
[elsif exp="f.bad_lv>=20"][font/blue]
[elsif exp="f.bad_lv>=1"][font_blue2]
[else][font_blue1][endif]
([emb exp="f.bad_lv"])[p]
[jump target="*choice_"]
*times
[cm]
#
Thời gian trong ngày.[p_]
[eval exp="f.act_health=f.act_health-1"]
[jump target="*choice_"]


;;----------------------talk--------------

*talk
[cm]
[eval exp="f.bad_lv=f.bad_lv-1"]
[eval exp="f.talk=f.talk+1"]
[iscript]
f.talk=Math.floor(Math.random() * 15 + 1);
[endscript]
[if exp="f.talk==1"]
[jump target="*talk1"]
[elsif exp="f.talk==2"]
[jump target="*talk2"]
[elsif exp="f.talk==3"]
[jump target="*talk3"]
[elsif exp="f.talk==4"]
[jump target="*talk4"]
[elsif exp="f.talk==5"]
[jump target="*talk5"]
[elsif exp="f.talk==6"]
[jump target="*talk6"]
[elsif exp="f.talk==7"]
[jump target="*talk7"]
[elsif exp="f.talk==8"]
[jump target="*talk8"]
[elsif exp="f.talk==9"]
[jump target="*talk9"]
[elsif exp="f.talk==10"]
[jump target="*talk10"]
[elsif exp="f.talk==11 || f.talk==12"]
[jump target="*talk1"]
[else]
[jump target="*talk8"][endif]


*talk1
#Sylvie
...Hzzzzzz!!!....[p_]
[jump target="*choice"]

*talk2
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Trước đây, em cũng thường hay bị ốm như vậy lắm.[lr_]
Và đó là khoảng thời gian duy nhất em được nghỉ ngơi[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
...[p_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*talk3
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Thực sự thì.[l_] Em không hề cảm thấy sợ bị ốm[p_]
[chara_mod name="face" time="300" storage="mod/chara/sick_close.png" ]
Vì Chắc chắn [name] sẽ chăm sóc em rất chu đáo[p_]
[chara_mod name="face" time="300" storage="mod/chara/sick.png" ]
Liệu em có quá ích kỉ khi nghĩ như vậy không nhỉ?[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
...[p_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*talk4
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Em luôn nghĩ rằng[l_] thật tuyệt vì [name] luôn ở bên và chăm sóc em như thế này[p_]
Có phải em có chút ích kỉ khi muốn vậy không nhỉ[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
...[p_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*talk5
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Em đã nghĩ rằng sức khỏe của mình đã tốt hơn rất nhiều khi bên cạnh [name][lr_]
[chara_mod name="face" time="300" storage="mod/chara/sick_close.png" ]
Vậy mà vẫn có thể bị ốm dễ dàng đến vậy.[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
...[p_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*talk6
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Vì [name] là một bác sỹ rất tốt[lr_]
[chara_mod name="face" time="300" storage="mod/chara/sick_close.png" ]
Nên em nghĩ sẽ chẳng sao nếu mình bị ốm[p_]
[chara_mod name="face" time="300" storage="mod/chara/sick.png" ]
Tuy nhiên như thế sẽ gây chút phiền phức cho anh...[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
...[p_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*talk7
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Vì [name] sẽ chăm sóc cho em rất tốt[lr_]
[chara_mod name="face" time="300" storage="mod/chara/sick_close.png" ]
Nên em nghĩ sẽ chẳng sao nếu mình bị ốm[p_]
[chara_mod name="face" time="300" storage="mod/chara/sick.png" ]
Tuy nhiên như thế sẽ gây chút phiền phức cho anh...[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
...[p_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*talk8
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
#Sylvie
...Hzzz...[l_] [name]...[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_close_.png" ]
#
(Có vẻ Sylvie đang mệt.)[p_]
[jump target="*choice"]

*talk9
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
#Sylvie
Một ngày nào đó...[l_] em cũng sẽ chăm sóc anh như vậy khi anh bị ốm nhé [name][p_]
[chara_mod name="face" time="300" storage="mod/chara/sick.png" ]
Đó không phải là vì...[l_] em muốn anh bị ốm đâu...[p_]
[chara_mod name="face" time="300" storage="mod/chara/sick_close_.png" ]
Em muốn [name] sẽ luôn mạnh khỏe...[p_]
...[p_]
[jump target="*choice"]

*talk10
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Em cũng muốn nhanh chóng khỏe lại để có thể...[l_]Umm...[lr_]
[chara_mod name="face" time="300" storage="mod/chara/sick_close_.png" ]
...Cùng [name][p_]
...[p_]
[jump target="*choice"]


;;------------------------------------------------------------------------------------------------

*not_action
[cm][eval exp="f.bad_lv=f.bad_lv-1"]
...[p_]
[jump target="*choice"]

*nade
[eval exp="f.bad_lv=f.bad_lv-3"]
[cm]
[chara_mod name="h" time="200" storage="mod/hand/health_n.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 13 + 1);
[endscript]
[if exp="f.talk==1"]
[jump target="*nade1"]
[elsif exp="f.talk==2"]
[jump target="*nade2"]
[elsif exp="f.talk==3"]
[jump target="*nade3"]
[elsif exp="f.talk==4"]
[jump target="*nade4"]
[elsif exp="f.talk==5"]
[jump target="*nade5"]
[elsif exp="f.talk==6"]
[jump target="*nade6"]
[elsif exp="f.talk==7"]
[jump target="*nade7"]
[elsif exp="f.talk==8"]
[jump target="*nade8"]
[elsif exp="f.talk==9"]
[jump target="*nade9"]
[elsif exp="f.talk==10"]
[jump target="*nade10"]
[elsif exp="f.talk==11 || f.talk==12 || f.talk==13"]
[jump target="*nade12"]
[else]
[jump target="*nade11"]
[endif]


;;---------------------nade-----------------------------------------------------------------------
*nade1
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="500" storage="mod/chara/sick.png" ]
#Sylvie
[name]...[l_]anh không cần lo lắng đâu.[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade2
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Em đã dễ chịu hơn nhiều rồi[l_]...[name][p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade3
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Anh đã luôn ở bên em[l_]...[name][p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade4
#Sylvie
Umm~[p_]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice" ]

*nade5
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Ah~...[l_][name][p_]
Em thấy dễ chịu hơn rồi[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade6
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Hah!~...[l_]Cảm ơn anh, [name][p_]
Anh đã luôn chăm sóc em như vậy[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade7
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
[name]...[l_]Cảm ơn anh[p_]
anh đã luôn dịu dàng với em như vây.[lr_]
Em không còn sợ bị ốm như trước đây nữa[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade8
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Umm~...[l_]Anh thật tốt với em, [name][p_]
Việc bị ốm như thế này không còn đáng sợ như trước đây nữa[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
cảm ơn anh rất nhiều...[p_]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade9
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Umm~...[l_][name][lr_]
thật ấm áp.[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade10
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
Umm~...[l_]Anh đừng lo lắng, [name][p_]
em nghĩ mình sẽ nhanh khỏe lại thôi.[p_]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade11
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
#Sylvie
Umm~...Hzzzz![l_] [name]...[p_]
#
(Sylvie có lẽ đã mệt.)[p_]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*nade12
[if exp="f.bad_stype=='cold'"]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
#Sylvie
Umm~...Hzzzz![l_] [name]...[p_]
#
(Cơ thể của Sylvie khẽ run lên.[lr_]
...)[p_]
[else]
#Sylvie
Umm~...Hzzzz![l_] [name]...[p_]
#
[endif]
[chara_mod name="h" time="200" storage="mod/hand/00.png" ]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]
;;----------------------------medi------------------------------------------------------------
*medi
[cm]
[if exp="f.akemi_dr=='yet'"]
Vật phẩm hiện có - Hoa hồng([emb exp="f.flower"]), Hoa xanh([emb exp="f.flower_b"]),[r] thuốc chữa cảm lạnh: ([font color="0x05ffff"][emb exp="f.drugk_c"][resetfont]), Thuốc chữa cảm nhiệt: ([font color="0xff0000"][emb exp="f.drugk_h"][resetfont]).
[button target="*red_tea" graphic="health_ch/red_tea.png"  x="21" y="95" ]
[button target="*blue_tea" graphic="health_ch/blue_tea.png"  x="21" y="158" ]
[button target="*cold_medi" graphic="health_ch/cold_medi.png"  x="21" y="221" ]
[button target="*heath_medi" graphic="health_ch/heath_medi.png"  x="21" y="284" ]
[button target="*not_action" graphic="health_ch/not_action.png"  x="21" y="347" ]
[s]

[else]
Vật phẩm hiện có - Hoa hồng([emb exp="f.flower"]), Hoa xanh([emb exp="f.flower_b"]),
[button target="*red_tea" graphic="health_ch/red_tea.png"  x="21" y="95" ]
[button target="*blue_tea" graphic="health_ch/blue_tea.png"  x="21" y="158" ]
[button target="*not_action" graphic="health_ch/not_action.png"  x="21" y="347" ]
[s]
[endif]

*red_tea
[cm]
#
[if exp="f.flower<=0"]
(Không còn đủ hoa hồng để pha trà).[p_][jump target="*medi"][endif]
Tôi sẽ pha cho Sylvie 1 ly trà hoa hồng.[l_] Hoa hồng có công hiệu tốt trong việc điều trị [font color="0x05ffff"]cảm lạnh[resetfont].[p_]
[eval exp="f.flower=f.flower-1"]
[if exp="f.bad_stype=='heath'"]
[eval exp="f.bad_lv=f.bad_lv+20"]
#Sylvie
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
Cảm ơn anh, [name]...[lr_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
Hzzzz~!....[p_]
[jump target="*choice"][endif]

[eval exp="f.bad_lv=f.bad_lv-10"]
[iscript]
f.talk=Math.floor(Math.random() * 5 + 1);
[endscript]
[eval exp="f.bad_lv=f.bad_lv-f.talk"]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"]
Cảm ơn anh, [name]...[l_]đã làm phiền anh rồi.[p_]
[elsif exp="f.talk==2"]
Cảm ơn anh, [name]...[l_]em có thể cảm thấy vị ngọt của trà...[lr_]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
Và cơ thể cũng ấm lên rồi ạ.[p_]
[else]
Umm~...[l_] Cảm ơn anh, [name][lr_]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
Em cảm thấy ấm hơn rồi ạ.[p_]
[endif]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]

*blue_tea
[cm]
#
[if exp="f.flower_b<=0"]
(Không còn đủ hoa xanh để pha trà).[p_]
[jump target="*medi"][endif]
Tôi sẽ pha cho Sylvie 1 ly trà hoa xanh. Hoa xanh có công hiệu tốt trong việc điều trị [font color="0xff0000"]cảm nhiệt[resetfont].[p_]
[eval exp="f.flower_b=f.flower_b-1"]
[if exp="f.bad_stype=='cold'"]
[eval exp="f.bad_lv=f.bad_lv+20"]
#Sylvie
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
Cảm ơn anh, [name]...[lr_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
Hzzzz~!....[p_]
[jump target="*choice"][endif]
[eval exp="f.bad_lv=f.bad_lv-10"]
[iscript]
f.talk=Math.floor(Math.random() * 5 + 1);
[endscript]
[eval exp="f.bad_lv=f.bad_lv-f.talk"]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"]
Cảm ơn anh, [name]...[l_]đã làm phiền anh rồi.[p_]
[elsif exp="f.talk==2"]
Cảm ơn anh, [name]...[l_]em có thể cảm thấy vị mát và thơm của trà...[lr_]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
Và cơ thể cũng dễ chịu hơn rồi ạ.[p_]
[else]
Umm~...[l_] Cảm ơn anh, [name][lr_]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
Em cảm thấy dễ chịu hơn rồi ạ.[p_]
[endif]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]


*cold_medi
[cm]
#
[if exp="f.drugk_c<=0"]
(Không còn liều thuốc cảm lạnh nào nữa)[p_][jump target="*medi"][endif]
Tôi sẽ cho Sylvie uống một liều thuốc chữa cảm lạnh.[p_]
[eval exp="f.drugk_c=f.drugk_c-1"]
[if exp="f.bad_stype=='heath'"]
[eval exp="f.bad_lv=f.bad_lv+30"]
#Sylvie
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
Cảm ơn anh, [name]...[lr_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
Hzzzz~!....[p_]
[jump target="*choice"][endif]

[eval exp="f.bad_lv=f.bad_lv-25"]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[eval exp="f.bad_lv=f.bad_lv-f.talk"]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"]
Cảm ơn anh, [name]...[l_]đã làm phiền anh rồi.[p_]
[elsif exp="f.talk==2"]
Cảm ơn anh, [name]...[l_]Thuốc này không khó uống như em tưởng...[lr_]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
Và em thấy dễ chịu hơn rồi ạ.[p_]
[else]
Umm~...[l_] Cảm ơn anh, [name][lr_]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
Em cảm thấy dễ chịu hơn rồi ạ.[p_]
[endif]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]


*heath_medi
[cm]
#
[if exp="f.drugk_h<=0"]
(Không còn liều thuốc cảm nhiệt nào nữa)[p_][jump target="*medi"][endif]
Tôi sẽ cho Sylvie uống một liều thuốc chữa cảm nhiệt.[p_]
[eval exp="f.drugk_h=f.drugk_h-1"]
[if exp="f.bad_stype=='cold'"]
[eval exp="f.bad_lv=f.bad_lv+30"]
#Sylvie
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
Cảm ơn anh, [name]...[lr_]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
Hzzzz~!....[p_]
[jump target="*choice"][endif]

[eval exp="f.bad_lv=f.bad_lv-25"]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[eval exp="f.bad_lv=f.bad_lv-f.talk"]
[chara_mod name="face" time="600" storage="mod/chara/sick_.png" ]
[chara_mod name="face" time="600" storage="mod/chara/sick.png" ]
#Sylvie
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"]
Cảm ơn anh, [name]...[l_]đã làm phiền anh rồi.[p_]
[elsif exp="f.talk==2"]
Cảm ơn anh, [name]...[l_]Thuốc này không khó uống như em tưởng...[lr_]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
Và em thấy dễ chịu hơn rồi ạ.[p_]
[else]
Umm~...[l_] Cảm ơn anh, [name][lr_]
[chara_mod name="face" time="600" storage="mod/chara/sick_close.png" ]
Em cảm thấy dễ chịu hơn rồi ạ.[p_]
[endif]
[chara_mod name="face" time="900" storage="mod/chara/sick_close_.png" ]
[jump target="*choice"]



;;-----------------------------------------------------------------------------------------------
*end
[day_up]
[stopbgm] [cm] [black]
[iscript]
f.talk=Math.floor(Math.random() * 2 + 1);
[endscript]
[if exp="f.bad_lv>=200 && f.talk>=2"]
[jump target="*die"][endif]
[if exp="f.bad_lv>=1"]
[eval exp=f.act_health=0]
#
Hôm nay Sylvie vẫn chưa khỏi bệnh nên tôi vẫn tiếp tục chăm sóc cô ấy[p_]
[chara_mod  name="body"  time="500"  storage="00.png" ]
[chara_mod  name="face"  time="500"  storage="00.png" ]
[chara_show name="body" time="50" wait="false" top="10" left="1" zindex="5" ]
[chara_show name="face" time="50" wait="false" top="10" left="1" zindex="10" ]
[chara_show name="window" time="50" wait="false" top="1" left="1" zindex="50" ]
[chara_show name="h" time="50" wait="false" left="1" zindex="18" ]
[chara_mod name="window" time="10" storage="mod/win/heal.png" ]
[wait time="200"]
[chara_mod name="body" time="1000" storage="mod/chara/bg_sick_close_.jpg" ]
[wait time="100"]
[chara_mod name="face" time="1000" storage="mod/chara/sick_.png" ]
[bgm_JH]
[jump target="*choice"]
[endif]
[bgm_SG]
#
(Hôm nay, Sức khỏe của Sylvie đã tốt hơn rất nhiều rôi. Cô ấy đã bình phục.)[p_]
[eval exp="f.bad_stype='non'"]
[bg  time="400"  method="crossfade"  storage="bg-bed.png" ]
[eval exp="f.dress=5" ]
[eval exp="f.head=0" ]
[eval exp="f.socks=0" ]
[eval exp="f.arm=0" ]
[eval exp="f.pin=0" ]
[eval exp="f.hair=0" ]
[eval exp="f.head=0" ]
[eval exp="f.neck=0" ]
[iscript]
f.talk=Math.floor(Math.random() * 12 + 1);
[endscript]
[if exp="f.c_b1==1 && f.talk==1" ]
[eval exp="f.under_p=1"]
[elsif exp="f.u_a2==1 && f.talk==2" ]
[eval exp="f.under_p=2"]
[elsif exp="f.u_a3==1 && f.talk==3" ]
[eval exp="f.under_p=3"]
[elsif exp="f.u_a4==1 && f.talk==4" ]
[eval exp="f.under_p=4"]
[elsif exp="f.u_a5==1 && f.talk==5" ]
[eval exp="f.under_p=5"]
[elsif exp="f.u_a6==1 && f.talk==6" ]
[eval exp="f.under_p=6"]
[elsif exp="f.u_soc1==1 && f.talk==7" ]
[eval exp="f.under_p=101"]
[elsif exp="f.u_soc2==1 && f.talk==8" ]
[eval exp="f.under_p=102"]
[elsif exp="f.u_soc3==1 && f.talk==9" ]
[eval exp="f.under_p=103"]
[elsif exp="f.u_soc4==1 && f.talk==10" ]
[eval exp="f.under_p=104"]
;;----------------------------------------------
[elsif exp="f.u_b1==1 && f.talk==7" ]
[eval exp="f.under_p=11"]
[elsif exp="f.u_b2==1 && f.talk==8" ]
[eval exp="f.under_p=12"]
[elsif exp="f.u_b3==1 && f.talk==9" ]
[eval exp="f.under_p=13"]
[elsif exp="f.u_b4==1 && f.talk==10" ]
[eval exp="f.under_p=14"]
[elsif exp="f.u_b5==1 && f.talk==11" ]
[eval exp="f.under_p=15"]
[elsif exp="f.u_b6==1 && f.talk==12" ]
[eval exp="f.under_p=16"]
[else][eval exp="f.under_p=1"]
[endif]
;;-----------------------------------------bra
[if exp="f.under_p==1" ]
[eval exp="f.under_b=1"]
[elsif exp="f.under_p==2" ]
[eval exp="f.under_b=2"]
[elsif exp="f.under_p==3" ]
[eval exp="f.under_b=3"]
[elsif exp="f.under_p==4" ]
[eval exp="f.under_b=4"]
[elsif exp="f.under_p==5" ]
[eval exp="f.under_b=5"]
[elsif exp="f.under_p==6" ]
[eval exp="f.under_b=6"]
;;----------------------------------------------
[elsif exp="f.under_p==11" ]
[eval exp="f.under_b=11"]
[elsif exp="f.under_p==12" ]
[eval exp="f.under_b=12"]
[elsif exp="f.under_p==13" ]
[eval exp="f.under_b=13"]
[elsif exp="f.under_p==14" ]
[eval exp="f.under_b=14"]
[elsif exp="f.under_p==15" ]
[eval exp="f.under_b=15"]
[elsif exp="f.under_p==16" ]
[eval exp="f.under_b=16"]
[elsif exp="f.under_p==101" ]
[eval exp="f.under_b=101"]
[elsif exp="f.under_p==102" ]
[eval exp="f.under_b=102"]
[elsif exp="f.under_p==103" ]
[eval exp="f.under_b=103"]
[elsif exp="f.under_p==104" ]
[eval exp="f.under_b=104"]
[endif]
[set_stand][f/sp_nt][show_stand][bg_bed]
#Sylvie
Umm!~...[name][lr_][f/sp]
Em đã cảm thấy khỏe hơn nhiều rồi[p_]
[f/sclp]Cảm ơn anh vì đã luôn ở bên và chăm sóc em[p_]
[f/ssp]Có vẻ em đã làm phiền anh rất nhiều rồi[p_][f/sp_nt]...[lr_]
[f/ssp]Ở bên anh, em thực sự rất hạnh phúc trong bất cứ hoàn cảnh nào.[p_]
[black][stopbgm]
[eval exp="f.bad_cold=5"]
[if exp="f.hp<=50"][eval exp="f.hp=50"][endif][bgm_SG]
[day_up][dress_random][return_bace]











---------------------Die-------------------------------
*die
[cm][stopbgm]
[black]
#
...[p_]
Bệnh của Sylvie đã chuyển biến theo chiều hướng xấu đi.[lr_]
Tôi đã cố gắng chăm sóc cô ấy trong suốt thời gian này nhưng sức khỏe của Sylvie ngày một suy giảm.[p_]
[iscript]
f.talk=Math.floor(Math.random() * 6 + 1);
[endscript]
[if exp="f.talk==4"]
[mes_hide]
[bgm_IF]
[layopt layer="message0" visible=false][delay speed=17]
[position width=1270 height=865 top=25 left=50 ]
[position page=fore frame="00.png" margint=20 marginl=20 marginr=20 marginb=50 vertical=false opacity="90" color="0x000000"]
[glyph fix="false" left="0" top="0" ]
[show_message_w]
...[p_]
Sylvie đã đã không thể tiếp tục chống chọi với bệnh tật được nữa [lr_]
Cô ấy đã trút hơi thở cuối cùng, Trong thời gian này, tôi vô cùng đau buồn, Đó là một sự mất mát lớn với tôi.[lr_]
Trong quãng thời gian sau này, tôi không biết mình sẽ phải sống ra sao nữa.[p_]
...[p_]
Có lẽ...[lr_]
Có lẽ tôi sẽ rời khỏi nơi này...[lr_]
Đến một nơi nào đó....để quên đi sự việc đau thương này[p_]
...[p_]
[deffont face="tahoma" size="60"]Bad Ending[p_][deffont face="tahoma" size="30"]
[stopbgm][mes_hide]
[jump storage="title_screen.ks"]
[endif]
[eval exp=f.act_health=0]
#
Hôm nay Sức khỏe của Sylvie vẫn tiếp tục xấu đi.[l_]Tôi sẽ cố gắng chăm sóc cô ấy thật tốt và hi vọng cô ấy sẽ khỏe lại.[p_]
[if exp="f.bad_stype='cold'"]
Sylvie bị cảm lạnh. thuốc hoặc dược liệu từ hoa hồng sẽ giúp cô ấy khá hơn.[p_]
[else]
Sylvie bị cảm nhiệt. thuốc hoặc dược liệu từ hoa xanh sẽ giúp cô ấy khá hơn.[p_]
[endif]
[chara_mod  name="body"  time="500"  storage="chara/face/00.png" ]
[chara_mod  name="face"  time="500"  storage="chara/face/00.png" ]
[chara_show name="body" time="50" wait="false" top="10" left="1" zindex="5" ]
[chara_show name="face" time="50" wait="false" top="10" left="1" zindex="10" ]
[chara_show name="window" time="50" wait="false" top="1" left="1" zindex="50" ]
[chara_show name="h" time="50" wait="false" left="1" zindex="18" ]
[chara_mod name="window" time="10" storage="mod/win/heal.png" ]
[wait time="200"]
[chara_mod name="body" time="1000" storage="mod/chara/bg_sick_close_.jpg" ]
[wait time="100"]
[chara_mod name="face" time="1000" storage="mod/chara/sick_.png" ]
[bgm_JH]
[jump storage="mod/bad/lever_3.ks" target="*choice"]



















