;;==========Script by ichibikun=======

*bad_random
[iscript]
f.talk=Math.floor(Math.random() * 100 + 1);
[endscript]
[if exp="f.hp<=10"]
[jump storage="mod/bad/lever_3.ks" target="*cold"][endif]
[if exp="f.hp<=40"]
[jump storage="mod/bad/lever_2.ks" target="*cold"][endif]
[if exp="f.hp<=50"]
[jump storage="mod/bad/lever_1.ks" target="*cold"][endif]
[if exp="f.tiet==7 || f.tiet==19"]
[jump target="*bad_lv1"]
[elsif exp="f.tiet==12 || f.tiet==18 || f.tiet==23 || f.tiet==24"]
[jump target="*bad_lv2"]
[else][jump target="*bad_lv3"][endif]

*bad_lv1
[if exp="f.talk>=30 && f.talk<=50"]
[jump storage="mod/bad/lever_1.ks" target="*cold"]
[else]
[day_end][endif]

*bad_lv2
[if exp="f.talk>=40 && f.talk<=60 && f.hp<=100"]
[jump storage="mod/bad/lever_2.ks" target="*cold"]
[elsif exp="f.talk>=50 && f.talk<=70"]
[jump storage="mod/bad/lever_1.ks" target="*cold"]
[else]
[day_end][endif]

*bad_lv3
[if exp="f.talk>=55 && f.talk<=60"]
[jump storage="mod/bad/lever_1.ks" target="*cold"]
[else]
[day_end][endif]