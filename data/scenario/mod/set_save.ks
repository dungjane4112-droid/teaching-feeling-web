*set
[if exp="f.lust>=0"][else][eval exp="f.lust=0"][endif]
[if exp="f.sex>=0"][else][eval exp="f.sex=0"][endif]
[if exp="f.heavn>=0"][else][eval exp="f.heavn=0"][endif]
[if exp="f.cum>=0"][else][eval exp="f.cum=0"][endif]
[if exp="f.kake>=0"][else][eval exp="f.kake=0"][endif]
[if exp="f.drink>=0"][else][eval exp="f.drink=0"][endif]
[if exp="f.blow>=0"][else][eval exp="f.blow=0"][endif]
[if exp="f.flower>=0"][else][eval exp="f.flower=0"][endif]
[if exp="f.flower_b>=0"][else][eval exp="f.flower_b=0"][endif]
[cm][black]
#System
Save chỉ được set lại một lần duy nhất trên mỗi save thôi, bạn hãy chú ý cân nhắc.[p]
[jump target="*ngay"]
;----------------------------------------------------------------------
*ngay
[cm][if exp="f.ngay>=31"][emb exp="f.ngay=1"][endif]
ngày (theo lịch): [emb exp="f.ngay"].
[button  target="*ngay_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*ngay_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
;[button  target="*ngay_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
;[button  target="*ngay_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*thang"  graphic="mod/setsave/next.png"  x="1150" y="130" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="130" ][s]


*ngay_1
[cm][eval exp="f.ngay=f.ngay+1"][jump target="*ngay"]
*ngay_10
[cm][eval exp="f.ngay=f.ngay+10"][jump target="*ngay"]
*ngay_100
[cm][jump target="*ngay"]
*ngay_1000
[cm][jump target="*ngay"]
;;--------------------------------------------------------------------------
*thang
[cm][if exp="f.thang>=13"][eval exp="f.thang=1"][endif]
Tháng (theo lịch): [emb  exp="f.thang"].
[button  target="*thang_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*thang_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
;[button  target="*thang_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
;[button  target="*thang_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*day"  graphic="mod/setsave/next.png"  x="1150" y="130" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="130" ][s]


*thang_1
[cm][eval exp="f.thang=f.thang+1"][jump target="*thang"]
*thang_10
[cm][eval exp="f.thang=f.thang+10"][jump target="*thang"]
*thang_100
[cm][jump target="*thang"]
*thang_1000
[cm][jump target="*thang"]

;;--------------------------------------------------------------------------
*day
[cm]
Bạn đã sống với Sylvie được: [emb  exp="f.day"] ngày.
[button  target="*day_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*day_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*day_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*day_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*love"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*day_1
[cm][eval exp="f.day=f.day+1"][jump target="*day"]
*day_10
[cm][eval exp="f.day=f.day+10"][jump target="*day"]
*day_100
[cm][eval exp="f.day=f.day+100"][jump target="*day"]
*day_1000
[cm][eval exp="f.day=f.day+1000"][jump target="*day"]


;;--------------------------------------------------------------------------
*love
[cm]
Thân mật: [emb  exp="f.love"].
[button  target="*love_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*love_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*love_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*love_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*lust"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*love_1
[cm][eval exp="f.love=f.love+1"][jump target="*love"]
*love_10
[cm][eval exp="f.love=f.love+10"][jump target="*love"]
*love_100
[cm][eval exp="f.love=f.love+100"][jump target="*love"]
*love_1000
[cm][eval exp="f.love=f.love+1000"][jump target="*love"]


;;--------------------------------------------------------------------------
*lust
[cm]
Ham muốn: [emb  exp="f.lust"].
[button  target="*lust_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*lust_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*lust_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*lust_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*sex"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*lust_1
[cm][eval exp="f.lust=f.lust+1"][jump target="*lust"]
*lust_10
[cm][eval exp="f.lust=f.lust+10"][jump target="*lust"]
*lust_100
[cm][eval exp="f.lust=f.lust+100"][jump target="*lust"]
*lust_1000
[cm][eval exp="f.lust=f.lust+1000"][jump target="*lust"]


;;--------------------------------------------------------------------------
*sex
[cm]
Làm tình: [emb  exp="f.sex"] lần.
[button  target="*sex_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*sex_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*sex_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*sex_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*heavn"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*sex_1
[cm][eval exp="f.sex=f.sex+1"][jump target="*sex"]
*sex_10
[cm][eval exp="f.sex=f.sex+10"][jump target="*sex"]
*sex_100
[cm][eval exp="f.sex=f.sex+100"][jump target="*sex"]
*sex_1000
[cm][eval exp="f.sex=f.sex+1000"][jump target="*sex"]


;;--------------------------------------------------------------------------
*heavn
[cm]
Sylvie lên đỉnh: [emb  exp="f.heavn"] lần.
[button  target="*heavn_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*heavn_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*heavn_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*heavn_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*cum"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*heavn_1
[cm][eval exp="f.heavn=f.heavn+1"][jump target="*heavn"]
*heavn_10
[cm][eval exp="f.heavn=f.heavn+10"][jump target="*heavn"]
*heavn_100
[cm][eval exp="f.heavn=f.heavn+100"][jump target="*heavn"]
*heavn_1000
[cm][eval exp="f.heavn=f.heavn+1000"][jump target="*heavn"]

;;--------------------------------------------------------------------------
*cum
[cm]
Ra bên trong: [emb  exp="f.cum"] lần.
[button  target="*cum_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*cum_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*cum_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*cum_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*kake"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*cum_1
[cm][eval exp="f.cum=f.cum+1"][jump target="*cum"]
*cum_10
[cm][eval exp="f.cum=f.cum+10"][jump target="*cum"]
*cum_100
[cm][eval exp="f.cum=f.cum+100"][jump target="*cum"]
*cum_1000
[cm][eval exp="f.cum=f.cum+1000"][jump target="*cum"]

;;--------------------------------------------------------------------------
*kake
[cm]
Ra bên ngoài và lên mặt: [emb  exp="f.kake"] lần.
[button  target="*kake_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*kake_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*kake_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*kake_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*drink"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*kake_1
[cm][eval exp="f.kake=f.kake+1"][jump target="*kake"]
*kake_10
[cm][eval exp="f.kake=f.kake+10"][jump target="*kake"]
*kake_100
[cm][eval exp="f.kake=f.kake+100"][jump target="*kake"]
*kake_1000
[cm][eval exp="f.kake=f.kake+1000"][jump target="*kake"]


;;--------------------------------------------------------------------------
*drink
[cm]
Sylvie nuốt tinh: [emb  exp="f.drink"] lần.
[button  target="*drink_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*drink_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*drink_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*drink_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*blow"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*drink_1
[cm][eval exp="f.drink=f.drink+1"][jump target="*drink"]
*drink_10
[cm][eval exp="f.drink=f.drink+10"][jump target="*drink"]
*drink_100
[cm][eval exp="f.drink=f.drink+100"][jump target="*drink"]
*drink_1000
[cm][eval exp="f.drink=f.drink+1000"][jump target="*drink"]

;;--------------------------------------------------------------------------
*blow
[cm]
Quan hệ bằng miệng (BJ): [emb  exp="f.blow"] lần.
[button  target="*blow_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*blow_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*blow_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*blow_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*flower"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*blow_1
[cm][eval exp="f.blow=f.blow+1"][jump target="*blow"]
*blow_10
[cm][eval exp="f.blow=f.blow+10"][jump target="*blow"]
*blow_100
[cm][eval exp="f.blow=f.blow+100"][jump target="*blow"]
*blow_1000
[cm][eval exp="f.blow=f.blow+1000"][jump target="*blow"]

;;--------------------------------------------------------------------------
*flower
[cm]
Vật phẩm - hoa hồng: [emb  exp="f.flower"].
[button  target="*flower_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*flower_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*flower_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*flower_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*flower_b"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*flower_1
[cm][eval exp="f.flower=f.flower+1"][jump target="*flower"]
*flower_10
[cm][eval exp="f.flower=f.flower+10"][jump target="*flower"]
*flower_100
[cm][eval exp="f.flower=f.flower+100"][jump target="*flower"]
*flower_1000
[cm][eval exp="f.flower=f.flower+1000"][jump target="*flower"]


;;--------------------------------------------------------------------------
*flower_b
[cm]
Vật phẩm - hoa xanh: [emb  exp="f.flower_b"].
[button  target="*flower_b_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*flower_b_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*flower_b_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*flower_b_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*zince"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*flower_b_1
[cm][eval exp="f.flower_b=f.flower_b+1"][jump target="*flower_b"]
*flower_b_10
[cm][eval exp="f.flower_b=f.flower_b+10"][jump target="*flower_b"]
*flower_b_100
[cm][eval exp="f.flower_b=f.flower_b+100"][jump target="*flower_b"]
*flower_b_1000
[cm][eval exp="f.flower_b=f.flower_b+1000"][jump target="*flower_b"]

;;--------------------------------------------------------------------------
*zince
[cm]
Tiền của bạn hiện tại: [emb  exp="f.zince"] đồng.
[button  target="*zince_1"  graphic="mod/setsave/plus1.png"  x="20" y="30" ]
[button  target="*zince_10"  graphic="mod/setsave/plus10.png"  x="20" y="130" ]
[button  target="*zince_100"  graphic="mod/setsave/plus100.png"  x="20" y="230" ]
[button  target="*zince_1000"  graphic="mod/setsave/plus1000.png"  x="20" y="330" ]
[button  target="*sachi"  graphic="mod/setsave/next.png"  x="1150" y="330" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="330" ][s]


*zince_1
[cm][eval exp="f.zince=f.zince+1000"][jump target="*zince"]
*zince_10
[cm][eval exp="f.zince=f.zince+10000"][jump target="*zince"]
*zince_100
[cm][eval exp="f.zince=f.zince+100000"][jump target="*zince"]
*zince_1000
[cm][eval exp="f.zince=f.zince+1000000"][jump target="*zince"]

;;--------------------------------------------------------------------------
*sachi
[cm]
#System
Bạn đã mở được sự kiện của Sachi chưa?
[button  target="*sachi_on"  graphic="mod/setsave/open.png"  x="50" y="250" ]
[button  target="*sachi_off"  graphic="mod/setsave/non.png"  x="250" y="250" ]
[button  target="*akemi"  graphic="mod/setsave/next.png"  x="1150" y="250" ]
[button  target="*thoat"  graphic="mod/setsave/out.png"  x="980" y="250" ][s]

*sachi_on
[cm]
#System
Bạn đã đủ điều kiện để mở được event đầu tiên của Sachi. Hãy ra ngoài 1 mình và nói chuyện với cô ấy để mở được sự kiện này.
[eval exp="f.sachi_name='sachi'"][eval exp="f.sachi=1"]
[eval exp="f.sachi_talk=11"]
[button  target="*sachi_on"  graphic="mod/setsave/open.png"  x="50" y="250" ]
[button  target="*sachi_off"  graphic="mod/setsave/non.png"  x="250" y="250" ]
[button  target="*akemi"  graphic="mod/setsave/next.png"  x="1150" y="250" ][s]

*sachi_off
[cm]
#System
Bạn chưa mở được event đầu tiên của Sachi.
[eval exp="f.sachi_talk=0"][eval exp="f.sachi_name='non'"][eval exp="f.sachi=0"]
[button  target="*sachi_on"  graphic="mod/setsave/open.png"  x="50" y="250" ]
[button  target="*sachi_off"  graphic="mod/setsave/non.png"  x="250" y="250" ]
[button  target="*akemi"  graphic="mod/setsave/next.png"  x="1150" y="250" ][s]

;;--------------------------------------------------------------------------
*akemi
[cm]
#System
Bạn đã mở được sự kiện của Akemi chưa?
[button  target="*akemi_on"  graphic="mod/setsave/open.png"  x="50" y="250" ]
[button  target="*akemi_off"  graphic="mod/setsave/non.png"  x="250" y="250" ]
[button  target="*thoat"  graphic="mod/setsave/next.png"  x="1150" y="250" ][s]

*akemi_on
[cm]
#System
Bạn đã mở được sự kiện của Akemi. Giờ bạn có thể chế thuốc chữa bệnh
[eval exp="f.akemi=1"]
[eval exp="f.akemi_talk=3"]
[eval exp="f.akemi_name='akemi'"]
[eval exp="f.akemi_dr='yet'"]
[button  target="*akemi_on"  graphic="mod/setsave/open.png"  x="50" y="250" ]
[button  target="*akemi_off"  graphic="mod/setsave/non.png"  x="250" y="250" ]
[button  target="*thoat"  graphic="mod/setsave/next.png"  x="1150" y="250" ][s]

*akemi_off
[cm]
#System
Bạn chưa mở được event đầu tiên của Akemi
[eval exp="f.akemi=0"]
[eval exp="f.akemi_talk=0"]
[eval exp="f.akemi_name='non'"]
[eval exp="f.akemi_dr='non'"]
[button  target="*akemi_on"  graphic="mod/setsave/open.png"  x="50" y="250" ]
[button  target="*akemi_off"  graphic="mod/setsave/non.png"  x="250" y="250" ]
[button  target="*thoat"  graphic="mod/setsave/next.png"  x="1150" y="250" ][s]


*thoat
[cm]
[eval exp="f.set_save=1"]
#
[black]
[set_sit]
[show_sit]
[after_talk]




