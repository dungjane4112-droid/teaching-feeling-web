*begin
[cm]
[stopbgm][bgm_IF][hide_message_w]
[black][chara_00][set_stand][f/sp_nt][l]
[call target="*show_stand"]
[chara_mod name="tear" time="0" storage="o/sub/neph_H/dark_ne_town.png" ]
[chara_show name="tear" time="100" left="0" zindex="500" ]
[bg  time="600"  method="crossfade" storage="H/mod/hem.jpg" ]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_a2.png"]
[chara_show name="sub" time="300" left="0" zindex="10" ]
[anim name="sub" time="500" left="200" ][wait time="10"]
[show_message_w]
[_](Ở đây có một con hẻm hơi tối,[r]
Khó mà nhìn thấy trong này nếu đứng bên ngoài kia...[p]
[syl][f/p][um_01]Umm~♥...C-Chỗ này có vẻ hơi đáng sợ nhỉ? [name]...[p_]
[neph][chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d1.png"]
[neph_na_3]Đừng lo lắng quá Sylvie-kun.[r]
Ngược lại, có một số việc thú vị có thể làm ở đây đó.[lr]
[neph_hora_2]Đúng không! [name_neph]~♥.[wait time="500"][neph_uhm_1] Hehe~♥[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d2.png"]
[_](Tôi thấy có chút không ổn, hiện tại còn có cả Sylvie...[p]

[neph][chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d3.png"]
[neph_na_2]Không cần lo chuyện đó đâu,[r][wait time="500"] 
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d1.png"]
Không gian trong này vẫn đủ cho ba người chúng ta di chuyển.[p]
[chara_mod name="sub" time="0" storage="o/sub/ne_def/ne_non_d2.png"]

[_](Cô ấy hình như hiểu nhầm ý tôi...[p]
[font color="lightblue"][link target="*look" ]【Ở lại trong này】[r][r][link target="*look_non" ]【Dẫn hai người họ ra ngoài】[resetfont][s]



*show_stand
[chara_show name="hair_b" time="0" wait="false" left="-300" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-300" zindex=6 ][endif]

[chara_show name="body" time="0" wait="false" left="-300" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-300" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="-300" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-300" zindex=50 ][endif]
[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="-300" zindex=60 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="-300" zindex=70 ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="-300" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="-300" zindex=105 ][endif]

[chara_show name="arm" time="0" wait="false" left="-300" zindex=80 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-300" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="-300" zindex=100 ][endif]

[chara_show name="head" time="0" wait="false" left="-300" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="-300" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="-300" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="-300" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="-300" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="-300" zindex=130 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-300" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="-300" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="-300" zindex=180 ]
[hide_black][return]

