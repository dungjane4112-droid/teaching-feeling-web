
*show_nade_mod
[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]
[chara_show name="body" time="0" wait="false" left="0.1" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=30 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="0.1" zindex=70 ][endif]

;[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="0.1" zindex=90 ][endif]
[if exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=110 ][endif]

[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="0.1" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=155 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]
[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=180 ]


[chara_mod name="other" time="1" storage="00.png" ][chara_show name="other" time="1" wait="false" height="38" width="430" left="31" top="41" zindex=195 ]
[if exp="f.last_act!='nade_conti'" ][hide_black][endif]
[return]