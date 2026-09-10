
*home
[cm][black][chara_00][stopbgm][bgm_SG]
[chara_show name="window" time="0" wait="false" left="613" top="22" zindex=180 ]
[chara_show name="other" time="true" wait="false" height="38" width="460" left="830" top="20" zindex=190 ]
[bg time="800" method="crossfade" storage="bg/room.jpg" ]
[_](Sylvie không ở nhà, mọi thứ trở nên yên tĩnh lạ thường...[p]
tôi nên làm gì tiếp theo đây.[p]
*choice
[cm][random_8][if exp="f.r>=2 && f.r<=7"]
[eval exp="f.act=f.act+1"][endif]
[if exp="f.act>=4"]
[eval exp="f.act=4"]
[jump target="*syl_home"][endif]
[chara_mod name="window" time="0" storage="o/win/comu_win.png" ]
[set_time]
[glink text="Nghỉ&nbspngơi" x=660 y=150 target="*relax"]
[glink text="Ra&nbspngoài" x=660 y=230 target="*out"]
[glink text="Tới&nbspphòng&nbspkhám&nbsplàm&nbspviệc" x=660 y=310 target="*work"][s]

*relax
[cm]
[chara_mod name="window" time="0" storage="00.png" ]
[_][random_10]
[if exp="f.r==1"]
(Tôi quyết định nghỉ ngơi một chút...[p]
[elsif exp="f.r==2"]
(Tôi sẽ nghỉ ngơi một chút ở nhà...[p]
[elsif exp="f.r==3"]
(Tôi sẽ mở một bản nhạc mình thích và thư giãn một chút...[p]
[elsif exp="f.r==4"]
(Tôi nhâm nhi ly cà phê và thư giãn một chút...[p]
[elsif exp="f.r==5"]
(Tôi nhâm nhi ly cà phê và đọc một quyển sách trên kệ...[p]
[elsif exp="f.r==6"]
(Tôi nhâm nhi ly cà phê và đọc một tờ báo hôm nay...[p]
[elsif exp="f.r==7"]
(Tôi đọc một quyển sách lấy được trên kệ trong lúc nghỉ ngơi...[p]
[elsif exp="f.r==8"]
(Tôi xem một chút hồ sơ từ phòng khám trong lúc nghỉ ngơi...[p]
[elsif exp="f.r==9"]
(Tôi ngắm nhìn thị trấn qua cửa sổ trong lúc nghỉ ngơi...[p]
[elsif exp="f.r==10"]
(Tôi ngắm nhìn thị trấn qua cửa sổ phòng khách...[p]
[endif][jump target="*choice"]

*out
[cm][_](Tôi sẽ đi dạo một chút.[p]
[black][chara_00][stop_bgm]
[jump storage="mod/hiroba_alone.ks" target="*hiroba"]

*work
[black][chara_00][stop_bgm][bgm_JH]
(Tôi sẽ tới phòng khám làm việc hôm nay...[p]
[bg time="500" method="crossfade" storage="bg/work.jpg" ]
[jump target="*work_re"]

*work_re
[cm][timer]
[cos_work_rei]
[if exp="f.act>=6" ][jump target="*stop_w" ][endif]
[chara_mod name="window" time="0" storage="o/win/comu_win.png" ]
[chara_show name="window" time="0" wait="false" left="613" top="22" zindex=180 ]
[chara_show name="other" time="true" wait="false" height="38" width="460" left="830" top="20" zindex=190 ]
[set_time]

[button target="*work_next" graphic="s_menu/conti.png" x="745" y="190" ]
[button storage="act_alone/out_alone.ks" target="*back_home" graphic="s_menu/stop.png" x="745" y="270" ][s]


[s]


*work_next
[cm][_](Tôi tiếp tục công việc ở phòng khám...[lr]
[cos_work]
[cos_work_union]
Thu nhập thêm: [emb exp="f.money_work"][p]
[random_40][eval exp="f.r=f.r+10"]
[eval exp="f.r=f.r*2000+f.money_work/100*35"]
[eval exp="f.reven=f.reven+f.money_work+f.r"]
[jump target="*work_re"]

*stop_w
[cm][_](Trời đã tối. Tôi nghĩ mình nên trở về...[p]
[jump storage="act_alone/out_alone.ks" target="*back_home"]


*syl_home

[cm]
#Tiếng động
~Cạch~...[p]
[_](Có tiếng mở cửa dưới sảnh...[p][stopbgm]

[if exp="f.dress>=71 && f.dress<=74"]
[jump target="*syl_home_next"]
[else][jump target="*syl_wakufu"][endif]

*syl_wakufu
[cm][random_10]
[if exp="f.mua<=2 && f.r<=2"]
[eval exp="f.dress=71"]
[eval exp="f.socks=11"]
[elsif exp="f.mua<=2 && f.r>=3"]
[eval exp="f.socks=12"]
[eval exp="f.dress=72"]
[elsif exp="f.mua>=3 && f.r<=2"]
[eval exp="f.dress=73"]
[eval exp="f.socks=11"]
[elsif exp="f.mua>=3 && f.r>=3"]
[eval exp="f.dress=74"]
[eval exp="f.socks=12"]
[endif]
[if exp="f.thoi_tiet==1 || f.thoi_tiet==2 || f.thoi_tiet==3 || f.thoi_tiet==4 || f.thoi_tiet==5"]
[eval exp="f.hair_band=0"][eval exp="f.hair_style=0" ]
[call storage="mod/school/schl_af.ks" target="*hat_set"][endif]
[jump target="*syl_home_next"]

*syl_home_next
[cm][set_black][set_stand][f/s_nt][show_stand]
[bg time="1" method="crossfade" storage="bg/room.jpg" ]
[cm][bgm_SG]
[syl][f/s]Em đã về rồi...[name][p_][sm_09]
[_](Sylvie đã tan học. Tâm trạng của cô ấy hôm nay khá tốt.[p]
[eval exp="f.last_act='sch_fun'"][eval exp="f.out=0"]
[black]
[if exp="f.hat==11 || f.hat>=40 && f.hat<=60"]
[eval exp="f.hat=0"][endif]
[return_bace]

[s]