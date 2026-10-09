*music
[cm][bg_room][bgm_SG][mod_win st="o/win/music-win.png" ]
[chara_show name="window" time="0" wait="false" left="363" top="22" zindex=180 ]
*menu
[cm]
[button storage="sys/memory.ks" target="*memory" graphic="menu/back.png" x="938" y="770" ]

[button target="*Silver_Glass" graphic="music/Silver_Glass.png" x="391" y="120" ]
[button target="*Ivory_Fiber" graphic="music/Ivory_Fiber.png" x="391" y="170" ]
[button target="*Ochre_Breeze" graphic="music/Ochre_Breeze.png" x="391" y="220" ]
[button target="*Apricot_Smile" graphic="music/Apricot_Smile.png" x="391" y="270" ]
[button target="*Jelly_Honey" graphic="music/Jelly_Honey.png" x="391" y="320" ]
[button target="*Aquamarine_Temperature" graphic=music/Aquamarine_Temperature".png" x="391" y="370" ]
[button target="*Smooth_Turquoise" graphic=music/Smooth_Turquoise".png" x="391" y="420" ]
[button target="*Brilliant_Red" graphic="music/Brilliant_Red.png" x="391" y="470" ]
[button target="*Lime_Swing" graphic="music/Lime_Swing.png" x="391" y="520" ]
[button target="*Rusty_Gainsboro" graphic="music/Rusty_Gainsboro.png" x="391" y="570" ]
[button target="*Indigo_Illumination" graphic="music/Indigo_Illumination.png" x="391" y="620" ]
[button target="*Deep_Scarlet" graphic="music/Deep_Scarlet.png" x="391" y="670" ]
[button target="*Magenta_Touch" graphic="music/Magenta_Touch.png" x="391" y="720" ]
[cancelskip][s]
*Silver_Glass
[playbgm loop="true" storage="Silver_Glass.ogg" ]
[bg_room][jump target="*menu" ]
*Ivory_Fiber
[playbgm loop="true" storage="Ivory_Fiber.ogg" ]
[bg_door][jump target="*menu" ]
*Ochre_Breeze
[playbgm loop="true" storage="Ochre_Breeze.ogg" ]
[bg_town][jump target="*menu" ]
*Apricot_Smile
[playbgm loop="true" storage="Apricot_Smile.ogg" ]
[bg_market][jump target="*menu" ]
*Jelly_Honey
[playbgm loop="true" storage="Jelly_Honey.ogg" ]
[bg time="1" method="crossfade" storage="bg/db-b.jpg" ][jump target="*menu" ]
*Aquamarine_Temperature
[playbgm loop="true" storage="Aquamarine_Temperature.ogg" ]
[bg_outside][jump target="*menu" ]
*Smooth_Turquoise
[playbgm loop="true" storage="Smooth_Turquoise.ogg" ]
[bg_town][jump target="*menu" ]
*Brilliant_Red
[playbgm loop="true" storage="Brilliant_Red.ogg" ]
[bg_shop][jump target="*menu" ]
*Lime_Swing
[playbgm loop="true" storage="Lime_Swing.ogg" ]
[bg_cafe][jump target="*menu" ]
*Rusty_Gainsboro
[playbgm loop="true" storage="Rusty_Gainsboro.ogg" ]
[bg_market][jump target="*menu" ]
*Indigo_Illumination
[playbgm loop="true" storage="Indigo_Illumination.ogg" ]
[bg_restaurant][jump target="*menu" ]
*Deep_Scarlet
[playbgm loop="true" storage="Deep_Scarlet.ogg" ]
[bg_shop_n][jump target="*menu" ]
*Magenta_Touch
[playbgm loop="true" storage="Magenta_Touch.ogg" ]
[bg_bed][jump target="*menu" ]


