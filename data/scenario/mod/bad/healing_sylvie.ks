;;========script_by_ichibikun============


*healing_1_cold
[cm_]
[black]
[stopbgm]
[chara_show name="e-body" time="50" wait="false" top="10" left="1" zindex="5" ]
[chara_show name="e-face" time="50" wait="false" top="10" left="1" zindex="10" ]
[chara_show name="man" time="50" wait="false" top="1" left="1" zindex="50" ]
[chara_mod name="man" time="10" storage="ichibi/win/heal.png" ]
[wait time="200"]
[chara_mod name="e-body" time="1000" storage="ichibi/chara/sick_close_.jpg" ]
[wait time="100"]
[chara_mod name="e-face" time="1000" storage="ichibi/chara/sick_.jpg" ]
#
(Sylvie bị cảm lạnh[p]
[random_t_3]
[if exp="f.talk==1"]
Có vẻ chỉ là sốt nhẹ. Ngày mai chắc sẽ khỏe lại)[p]
[elsif exp="f.talk==2"]
Cơn sốt của cô ấy không nặng lắm, chắc mai sẽ khỏe lại).[p]
[else]
Nhưng không nặng lắm, chắc sẽ sớm khỏe lại).[p][endif]
...[p]
#Sylvie
[chara_mod name="e-face" time="200" storage="ichibi/chara/sick.jpg" ]
E..Em xin lỗi...[name][lr]
[chara_mod name="e-face" time="1000" storage="ichibi/chara/sick_close_.jpg" ]
[wait time="100"]
[chara_mod name="e-face" time="500" storage="ichibi/chara/sick_.jpg" ]
[chara_mod name="e-face" time="500" storage="ichibi/chara/sick.jpg" ]
[random_t_3]
[if exp="f.talk==1"]
Em đã khiến anh phải lo lắng...~[p]
[elsif exp="f.talk==2"]
Em...lại gây phienf phức cho [name]...[p]
[else]
Sức khỏe của em...nó thật tệ...[p][endif]
[chara_mod name="e-face" time="700" storage="ichibi/chara/sick_.jpg" ]
#
...[p]
[black]
[set_sit][show_sit]
[jump storage="after_action.ks" target="*after_talk"]











----------------------------------------------------
*healing_2_cold


*healing_3_cold


*healing_1_heat


*healing_2_heat


*healing_3_heat


















