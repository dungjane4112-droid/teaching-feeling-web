*begin
[cm][black][stopbgm][bgm_MT][l][chara_mod name="sub" time="0" storage="o/sub/nephy/nephy-3.png" ]
[eval exp="f.glasses=0"]
[set_stand][f/cp_nt]
[call target="show_stand"]
[bg time="1" method="crossfade" storage="bg/door.jpg" ]
[chara_show name="sub" time="0" wait="false" left="0" top="5" zindex=1 ][wait time="300"][anim name="sub" time="200" left="250" ]

[neph]Ah!!![lr_]
Bị phát hiện rồi nè! hehe[p_]
[_](Nephy có vẻ khá bình tĩnh, Sylvie đứng đó khẽ cau mày nhìn chúng tôi.[p]
[neph]E-hèm![lr_] 
Nếu đã vậy, Tôi sẽ rời đi trước.[r] Có gì anh giải thích với Sylvie-kun dùm tôi nhé.[p_]
[chara_mod name="sub" time="0" storage="o/sub/nephy/nephy-6.png" ]
[wait time="800"]
[chara_mod name="sub" time="0" storage="o/sub/nephy/nephy-7.png" ]
Mối quan hệ của chúng ta kỳ thực không như cô bé nghĩ đâu.[p_]
[chara_mod name="sub" time="300" storage="o/sub/ne_def/ne_non_1.png" ]
Vẫn đang giờ làm việc nên Tôi té trước đây! hehe![lr_]
Gặp lại sau nhé! Sylvie-kun! Bye~[p_]
[anim name="sub" time="150" left="800" ][wait time="50"]
[chara_mod name="sub" time="0" storage="00.png" ]
[_](Nephy Vừa nói vừa mặc đồ một cách nhanh chóng rồi thật nhanh lướt ra khỏi cửa,[lr_]
Bỏ lại tôi một mình đối mặt với Sylvie.[p_]
[syl][f/clcp_nt][um_07]...[lr_]
[f/scp][na_1]Được rồi!...[name] không cần giải thích gì nữa.[p_]
[f/sclcp]Mỗi lần [name] về muộn vẫn còn lưu lại mùi hương của cô ấy trên người[r]
Em đều đoán ra được rồi.[p_]
[f/sclcp]Kỳ thực...[lr_]
[f/sclcp]Hai người làm vậy ở ngoài này có chút...[p_]
[f/sq][na_1]Nhưng nếu [name] có nhu cầu thì...ở nhà em có thể giúp anh mà[p_]
[_](...[p_]
[syl][f/sclcp]Vừa rồi hình như em đã chen ngang hai người...chuyện đó...[p_]
[f/sscp]N-nếu [name] còn muốn...E-em có thể thay cô ấy...cùng anh...ở đây.[p_][sm_09]
[button target="*sex" graphic="ch/kiss.png" x="0" y="175" ]
[button target="*bed" graphic="ch/sleep.png" x="0" y="325" ]
[button target="*nade" graphic="ch/n-head.png" x="0" y="475" ]
[s]

*nade
[cm]
[_][black](Tôi nhẹ xoa đầu Sylvie như một cách xin lỗi cô ấy[r] rồi cùng cô ấy vào trong nhà[p]
[stopbgm][bgm_SG]
[cm][limit_status][clearstack]
[set_sit][f/shcp_nt][set_time][show_sit]
[mood_calc][set_time]
[syl][um_01]...![p_]
[clickable_touch][clickable_touch_scar][clickable_touch_hair]
[show_button]




























*show_stand
[chara_show name="hair_b" time="0" wait="false" left="-350" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-350" zindex=6 ][endif]

[chara_show name="body" time="0" wait="false" left="-350" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-350" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="-350" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-350" zindex=50 ][endif]
[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="-350" zindex=60 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="-350" zindex=70 ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="-350" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="-350" zindex=105 ][endif]

[chara_show name="arm" time="0" wait="false" left="-350" zindex=80 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-350" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="-350" zindex=100 ][endif]

[chara_show name="head" time="0" wait="false" left="-350" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="-350" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="-350" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="-350" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="-350" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="-350" zindex=130 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-350" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="-350" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="-350" zindex=180 ]
[hide_black]
[return]