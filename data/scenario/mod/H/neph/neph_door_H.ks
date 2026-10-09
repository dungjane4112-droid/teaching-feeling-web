*begin
[cm][black][stopbgm][bgm_IF][l]
[bg  time="500"  method="crossfade"  storage="nephy_H/door/01_1.jpg" ]
[chara_mod name="other" time="1" storage="o/sub/nephy/cxs.png" ]
[chara_show name="other" time="0" wait="false" left="0.1" zindex=30 ]
[chara_show name="s_feel" time="0" wait="false" width="18" height="2" top="575" left="10" zindex="200" ]
[chara_show name="y_feel" time="0" wait="false" width="18" height="2" top="575" left="55" zindex="200" ]
[eval exp="f.s_feel=1"][call target="*s_feel"]
[emb exp="f.s_feel"][p]
[eval exp="f.s_feel=5"][call target="*s_feel"]
[emb exp="f.s_feel"][p][jump target="*test"]

*test
[cm][eval exp="f.s_feel=f.s_feel+5"]
[random_5]
[eval exp="f.y_feel=f.s_feel-f.r"]
[call target="*s_feel"][call target="*y_feel"]
[emb exp="f.s_feel"][p][jump target="*test"]
[s]

*s_feel
[if exp="f.s_feel<=5" ][chara_move name="s_feel" height="2" top=573 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=11" ][chara_move name="s_feel" height="15" top=560 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=16" ][chara_move name="s_feel" height="30" top=545 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=21" ][chara_move name="s_feel" height="45" top=530 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=26" ][chara_move name="s_feel" height="60" top=515 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=31" ][chara_move name="s_feel" height="75" top=500 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=36" ][chara_move name="s_feel" height="90" top=485 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=41" ][chara_move name="s_feel" height="105" top=470 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=46" ][chara_move name="s_feel" height="120" top=455 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=51" ][chara_move name="s_feel" height="135" top=440 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=56" ][chara_move name="s_feel" height="150" top=425 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=61" ][chara_move name="s_feel" height="165" top=410 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=66" ][chara_move name="s_feel" height="180" top=395 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=71" ][chara_move name="s_feel" height="195" top=380 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=76" ][chara_move name="s_feel" height="210" top=365 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=81" ][chara_move name="s_feel" height="225" top=350 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=86" ][chara_move name="s_feel" height="240" top=335 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=91" ][chara_move name="s_feel" height="255" top=320 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=96" ][chara_move name="s_feel" height="270" top=305 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=100" ][chara_move name="s_feel" height="285" top=290 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=110" ][chara_move name="s_feel" height="300" top=275 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=116" ][chara_move name="s_feel" height="315" top=260 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=121" ][chara_move name="s_feel" height="330" top=245 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=126" ][chara_move name="s_feel" height="335" top=240 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=131" ][chara_move name="s_feel" height="360" top=215 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=136" ][chara_move name="s_feel" height="375" top=200 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=141" ][chara_move name="s_feel" height="390" top=185 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=146" ][chara_move name="s_feel" height="405" top=170 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=151" ][chara_move name="s_feel" height="420" top=155 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=156" ][chara_move name="s_feel" height="435" top=140 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=161" ][chara_move name="s_feel" height="450" top=125 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=166" ][chara_move name="s_feel" height="465" top=110 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=171" ][chara_move name="s_feel" height="480" top=95 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=176" ][chara_move name="s_feel" height="495" top=80 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=181" ][chara_move name="s_feel" height="510" top=65 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=186" ][chara_move name="s_feel" height="525" top=50 time=300 anim=true wait=false ]

[elsif exp="f.s_feel<=191" ][chara_move name="s_feel" height="540" top=35 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=196" ][chara_move name="s_feel" height="555" top=20 time=300 anim=true wait=false ]
[elsif exp="f.s_feel<=201" ][chara_move name="s_feel" height="563" top=12 time=300 anim=true wait=false ]
;[elsif exp="f.s_feel<=206" ][chara_move name="s_feel" height="525" top=50 time=300 anim=true wait=false ]
;[elsif exp="f.s_feel<=211" ][chara_move name="s_feel" height="525" top=50 time=300 anim=true wait=false ]
[else][chara_move name="s_feel" height="563" top=12 time=300 anim=true wait=false ][endif]
[return]

*y_feel
[if exp="f.y_feel<=5" ][chara_move name="y_feel" height="2" top=573 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=11" ][chara_move name="y_feel" height="15" top=560 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=16" ][chara_move name="y_feel" height="30" top=545 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=21" ][chara_move name="y_feel" height="45" top=530 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=26" ][chara_move name="y_feel" height="60" top=515 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=31" ][chara_move name="y_feel" height="75" top=500 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=36" ][chara_move name="y_feel" height="90" top=485 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=41" ][chara_move name="y_feel" height="105" top=470 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=46" ][chara_move name="y_feel" height="120" top=455 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=51" ][chara_move name="y_feel" height="135" top=440 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=56" ][chara_move name="y_feel" height="150" top=425 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=61" ][chara_move name="y_feel" height="165" top=410 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=66" ][chara_move name="y_feel" height="180" top=395 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=71" ][chara_move name="y_feel" height="195" top=380 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=76" ][chara_move name="y_feel" height="210" top=365 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=81" ][chara_move name="y_feel" height="225" top=350 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=86" ][chara_move name="y_feel" height="240" top=335 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=91" ][chara_move name="y_feel" height="255" top=320 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=96" ][chara_move name="y_feel" height="270" top=305 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=100" ][chara_move name="y_feel" height="285" top=290 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=110" ][chara_move name="y_feel" height="300" top=275 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=116" ][chara_move name="y_feel" height="315" top=260 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=121" ][chara_move name="y_feel" height="330" top=245 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=126" ][chara_move name="y_feel" height="335" top=240 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=131" ][chara_move name="y_feel" height="360" top=215 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=136" ][chara_move name="y_feel" height="375" top=200 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=141" ][chara_move name="y_feel" height="390" top=185 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=146" ][chara_move name="y_feel" height="405" top=170 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=151" ][chara_move name="y_feel" height="420" top=155 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=156" ][chara_move name="y_feel" height="435" top=140 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=161" ][chara_move name="y_feel" height="450" top=125 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=166" ][chara_move name="y_feel" height="465" top=110 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=171" ][chara_move name="y_feel" height="480" top=95 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=176" ][chara_move name="y_feel" height="495" top=80 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=181" ][chara_move name="y_feel" height="510" top=65 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=186" ][chara_move name="y_feel" height="525" top=50 time=300 anim=true wait=false ]

[elsif exp="f.y_feel<=191" ][chara_move name="y_feel" height="540" top=35 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=196" ][chara_move name="y_feel" height="555" top=20 time=300 anim=true wait=false ]
[elsif exp="f.y_feel<=201" ][chara_move name="y_feel" height="563" top=12 time=300 anim=true wait=false ]
;[elsif exp="f.y_feel<=206" ][chara_move name="y_feel" height="525" top=50 time=300 anim=true wait=false ]
;[elsif exp="f.y_feel<=211" ][chara_move name="y_feel" height="525" top=50 time=300 anim=true wait=false ]
[else][chara_move name="y_feel" height="563" top=12 time=300 anim=true wait=false ][endif]
[return]
























