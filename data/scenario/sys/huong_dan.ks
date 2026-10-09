;;script_by_ichibikun_

*lits
[cm][free_chara][free_layermode time="0" wait="false" ][chara_config pos_mode="false" anim="false" ]
[nolog][hide_message_w][hide_role][jump target="*v10" ]
*v10
[cm][bg time="0" method="crossfade" storage="hd/bg_menu.jpg" ]
[eval exp="f.memory=10" ][jump target="*button" ]

*button
[button target="*cheat" graphic="update/cheat.png" x="20" y="81" ]
[button target="*hd" graphic="update/hd.png" x="20" y="151" ]
[button target="*awake" graphic="how_to/return.png" x="20" y="830" ]
[s]

*cheat
[cm][bg time="0" method="crossfade" storage="hd/cheat.jpg" ]
[button target="*v10" graphic="how_to/return.png" x="1120" y="820" ]
[button target="*cheat2" graphic="how_to/next.png" x="1200" y="820" ]
[s]

*cheat2
[cm][bg time="0" method="crossfade" storage="hd/cheat2.jpg" ]
[button target="*v10" graphic="how_to/return.png" x="1040" y="820" ]
[button target="*cheat" graphic="how_to/preview.png" x="1120" y="820" ]
[button target="*cheat3" graphic="how_to/next.png" x="1200" y="820" ]
[s]

*cheat3
[cm][bg time="0" method="crossfade" storage="hd/cheat3.jpg" ]
[button target="*v10" graphic="how_to/return.png" x="1120" y="820" ]
[button target="*cheat2" graphic="how_to/preview.png" x="1200" y="820" ]
[s]

*awake
[cm][endnolog][chara_re][awakegame][stopbgm]
[jump storage="sys/title_screen.ks" target="*title" ]

*hd
[cm][bg time="0" method="crossfade" storage="hd/hd1.jpg" ]
[button target="*v10" graphic="how_to/return.png" x="50" y="820" ]
[button target="*hd1" graphic="update/hd1.png" x="60" y="90" ]
[button target="*hd2" graphic="update/hd2.png" x="60" y="150" ]
[button target="*hd3" graphic="update/hd3.png" x="60" y="210" ]
[s]

*hd1
[cm][bg time="0" method="crossfade" storage="hd/sachi_akemi.jpg" ]
[button target="*hd" graphic="how_to/return.png" x="50" y="830" ]
[s]

*hd2
[cm][bg time="0" method="crossfade" storage="hd/healing.jpg" ]
[button target="*hd" graphic="how_to/return.png" x="50" y="840" ]
[s]

*hd3
[cm][bg time="0" method="crossfade" storage="hd/money.jpg" ]
[button target="*hd" graphic="how_to/return.png" x="50" y="830" ]
[s]






