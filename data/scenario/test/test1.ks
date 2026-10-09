
*neph_come
[cm][eval exp="f.neph_wst='off'"]
[_]*Ting~~* (tiếng chuông cửa)
[syl][a_02][f/]Hmm?[lr_]
[f/re] Hình như có khách?[p_]
[_]
[if exp="f.ne_x_s<=10"][jump target="*open_d"][endif]
[font color="lightblue"][link target="*open_d" ]【Ra mở cửa】[r][r][link target="*syl_open_d" ]【Để Sylvie ra mở cửa】[resetfont][s]

*open_d
[cm][_](Tôi ngăn Sylvie lại khi cô ấy định đứng lên.[p]
[jump storage="mod/nephy_home_test.ks" target="*begin"]

*syl_open_d
[cm]
[if exp="f.dress==0 || f.dress==5 || f.dress==6 || f.dress>=1001 && f.dress<=3000" ]
[syl][f/ssp][name] à! Mặc kiểu này em không thể ra ngoài được đâu[p_][f/sp][sm_09]
[font color="lightblue"][link target="*open_d" ]【Ra mở cửa】[r][r][link target="*syl_open_d" ]【Để Sylvie ra mở cửa】[resetfont][s]
[endif]
[syl][f/s]Em sẽ ra mở cửa. Anh ở đây đợi chút nhé![p_]
[jump storage="mod/nephy_home_test.ks" target="*begin_syl"]