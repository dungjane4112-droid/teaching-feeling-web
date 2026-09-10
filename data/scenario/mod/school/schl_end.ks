;;--scrips_by_cihibi

*work_end
[cm][_]
(Đã hết giờ làm việc. Tôi nên làm gì đây.
[glink text="Về&nbspcùng&nbspSylvie" x=660 y=150 target="*out_with_syl"]
[if exp="f.lily_d=='in' && f.lil_love>=30"]
[glink text="Rủ&nbspLily-sensei&nbspvề&nbspcùng" x=660 y=250 target="*out_with_lily"][endif]
[glink text="về&nbspnhà&nbsptrước" x=660 y=350 target="*out_alone"][s]

*out_with_lily
[cm][bg time="0" method="crossfade" storage="bg/mod/school/01-1.jpg" ]
[chara_mod name="sub" time="0" storage="o/sub/lily/lily_def.png" ]
[chara_show name="sub" time="500" wait="false" left="350" top="0" zindex="5"]
[chara_mod name="sub" time="0" storage="o/sub/lily/lily_sm2.png" ]
#Lilya
[playse loop="false" storage="lily/ara_4.ogg"  clear="true" ]
Ah! Không được rồi, tôi cần ở lại thêm một lúc nữa.[r]
Cần phải chuẩn bị một chút cho ngày mai.[p] 
[chara_mod name="sub" time="0" storage="o/sub/lily/lily_sm1.png" ]
[_](...
[glink text="Về&nbspcùng&nbspSylvie" x=660 y=150 target="*out_with_syl"]

[glink text="về&nbspnhà&nbsptrước" x=660 y=350 target="*out_alone"][s]



*out_with_syl
[cm][chara_00][bg time="500" method="crossfade" storage="bg/mod/school/05.jpg" ]
[_](Phía cầu thang đã bắt đầu có học sinh bước xuống...[p]
[eval exp="f.hat=f.syl_talk_1"][eval exp="f.syl_talk_1=0"]
[black][set_stand]
[bg time="500" method="crossfade" storage="bg/mod/school/06.jpg" ]
[f/s_nt][show_stand]
[syl][na_1][f/s]Em tan học rồi [name]. Chúng ta cùng về nhé![p_]
[_](Tôi cùng Sylvie rời khỏi trường học.[p]
[stop_bgm]
[bg time="500" method="crossfade" storage="bg/mod/school/04.jpg" ]
[chara_mod name="window" time="0" storage="o/win/out_win.png" ]
[chara_show name="window" time="0" wait="false" left="860" top="22" zindex=180 ]

[glink text="Đi&nbspdạo&nbspquanh&nbspthị&nbsptrấn" x=900 y=150 target="*hiroba_syl"]
[glink text="về&nbspnhà" x=900 y=250 target="*go_home_syl"][s]

*go_home_syl
[eval exp="f.act=3"]
[cm][chara_mod name="window" time="0" storage="00.png" ]
[chara_hide name="window" wait="false" time="0"]
[eval exp="f.hat=0"]
[jump storage="act_with/hiroba.ks" target="*go_home"]

*hiroba_syl
[eval exp="f.act=3"]
[cm][chara_mod name="window" time="0" storage="00.png" ]
[chara_hide name="window" wait="false" time="0"]
[jump storage="act_with/hiroba.ks" target="*hiroba"]


*out_alone
[cm][_](Tôi nghĩ mình có thể về trước.
[eval exp="f.act=3"]
[jump storage="mod/hiroba_alone.ks" target="*hiroba"]




[return]
