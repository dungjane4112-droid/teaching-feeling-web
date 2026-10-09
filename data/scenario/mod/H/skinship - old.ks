;;========script_by_ichibikun============
;----sờ_soạn-----------
*begin
[eval exp="f.wet_owe=0"]
[eval exp="f.cloth_off='false'"]
[eval exp="f.dress_ship='on'"]
[eval exp="f.pants_ship='on'"]
[eval exp="f.bra_ship='on'"]
[eval exp="f.pin_ship='on'"]
[eval exp="f.hair_ship='on'"]
[eval exp="f.socks_ship='on'"]
[eval exp="f.neck_ship='on'"]
[eval exp="f.glass_ship='on'"]
[chara_mod name="h" time="0" storage="00.png" ]
[chara_mod name="hand_R" time="0" storage="00.png" ]
[chara_mod name="p" time="0" storage="00.png" ]
[cm][black][stop_bgm]
[set_dress][f/cp_nt][chara_mod name="window" time="0" storage="o/win/act_win.png" ]
[call target="*show_dress"]
[bg  time="500"  method="crossfade"  storage="bg/bed.jpg" ]

[chara_show name="window" time="50" wait="false" left="613" top="22" ]
[bgm_MT]
#
(Tôi nên "thân mật" với Sylvie một chút đã...[p][f/s_nt]
#Sylvie
[name] muốn em chỉ cần đứng như thế này thôi sao?[p]
[f/sp_nt]Em sẽ làm mọi thứ mà [name] yêu cầu.♥♥♥[p][sm_05]
[chara_mod name="window" time="0" storage="o/win/act_win.png" ]
[layopt layer="message0" visible=false]
[nolog][current layer="message1" ][layopt layer="message1" visible=true][font_blue1]

[jump target="*next_1"]
*next_1
[chara_show name="h" time="0" wait="true" left=" 0.1" zindex="130" ]
[chara_show name="hand_R" time="0" wait="true" left=" 0.1" zindex="140" ]
[cm]
[if exp="f.wet>=180"]
[jump target="*H_wet"]
[endif]
[button target="*return" graphic="m/back.png" x="1032" y="560" ]
[if exp="f.cloth_off=='false'"]
[button target="*coi_do" graphic="m/coi_do.png" x="942" y="560" ]
[else][button target="*next_1" graphic="m/coi_do_.png" x="942" y="560" ][endif]
[if exp="f.dress_ship=='off' || f.pants_ship=='off' || f.bra_ship=='off' || "f.pin_ship=='off' || f.hair_ship=='off' || f.socks_ship=='off' || f.glass_ship=='off' || f.cloth_off=='true'"]
[button target="*mac_do" graphic="mod/mac_do.png" x="852" y="560" ][else]
[button target="*next_1" graphic="mod/mac_do-.png" x="852" y="560" ][endif]
[button target="*bo_tay_ra" graphic="m/off_hand.png" x="762" y="560" ]

[if exp="f.dress_ship=='on' && f.dress>=1"]
[button target="*dress_off" graphic="mod/dress.png" x="762" y="445" ]
[else][button target="*next_1" graphic="mod/dress-.png" x="762" y="445" ][endif]
[if exp="f.hair_ship=='on' && f.hair_band>=1 || f.hair_ship=='on' && f.hat>=1"]
[button target="*hair_off" graphic="mod/hair.png" x="852" y="445" ]
[else][button target="*next_1" graphic="mod/hair-.png" x="852" y="445" ][endif]
[if exp="f.pin_ship=='on' && f.pin>=1"]
[button target="*pin_off" graphic="mod/pin.png" x="964" y="445" ]
[else][button target="*next_1" graphic="mod/pin-.png" x="964" y="445" ][endif]
[if exp="f.socks_ship=='on' && f.socks>=1"]
[button target="*socks_off" graphic="mod/socks.png" x="1031" y="445" ]
[else][button target="*next_1" graphic="mod/socks-.png" x="1031" y="445" ][endif]
[if exp="f.bra_ship=='on' && f.under_b>=1"]
[button target="*bra_off" graphic="mod/bra.png" x="1120" y="445" ]
[else][button target="*next_1" graphic="mod/bra-.png" x="1120" y="445" ][endif]
[if exp="f.pants_ship=='on' && f.under_p>=1"]
[button target="*pants_off" graphic="mod/pant.png" x="1187" y="445" ]
[else][button target="*next_1" graphic="mod/pant-.png" x="1187" y="445" ][endif]
[if exp="f.neck_ship=='on' && f.neck>=1"]
[button target="*neck_off" graphic="mod/neck.png" x="1187" y="490" ]
[else][button target="*next_1" graphic="mod/neck-.png" x="1187" y="490" ][endif]
[if exp="f.glass_ship=='on' && f.glasses>=1"]
[button target="*glass_off" graphic="mod/glasses.png" x="1076" y="490" ]
[else][button target="*next_1" graphic="mod/glasses-.png" x="1076" y="490" ][endif]




[clickable width="45" height="45" x="358" y="240" storage="mod/H/skinship.ks" target="*kiss" border="" ]
[clickable width="146" height="130" x="314" y="31" storage="mod/H/skinship.ks" target="*xoa_dau" border="" ]
[clickable width="90" height="90" x="260" y="330" storage="mod/H/skinship.ks" target="*nguc_trai" border="" ]
[clickable width="90" height="90" x="400" y="333" storage="mod/H/skinship.ks" target="*nguc_phai" border="" ]
[clickable width="130" height="130" x="305" y="518" storage="mod/H/skinship.ks" target="*bung" border="" ]
[clickable width="95" height="55" x="326" y="696" storage="mod/H/skinship.ks" target="*pus_up" border="" ]
[if exp="f.wet<=30"]
[elsif exp="f.dress<=0 && f.under_p<=0]
[clickable width="95" height="30" x="326" y="751" storage="mod/H/skinship.ks" target="*pus_down" border="" ]
[elsif exp="f.cloth_off=='true'"]
[clickable width="95" height="30" x="326" y="751" storage="mod/H/skinship.ks" target="*pus_down" border="" ]
[elsif exp="f.dress_ship=='off' && f.pants_ship=='off'" ]
[clickable width="95" height="30" x="326" y="751" storage="mod/H/skinship.ks" target="*pus_down" border="" ]
[endif]
[clickable width="127" height="181" x="226" y="686" storage="mod/H/skinship.ks" target="*chan_trai" border="" ]
[clickable width="127" height="181" x="406" y="657" storage="mod/H/skinship.ks" target="*chan_phai" border="" ]
[s ]

*coi_do
[eval exp="f.h_bung=0"]
[eval exp="f.h_trai=0"]
[eval exp="f.h_phai=0"]
[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[cm][eval exp="f.cloth_off='true'"]
[eval exp="f.dress_ship='off'"]
[eval exp="f.pants_ship='off'"]
[eval exp="f.bra_ship='off'"]
[eval exp="f.pin_ship='off'"]
[eval exp="f.hair_ship='off'"]
[eval exp="f.socks_ship='off'"]
[eval exp="f.neck_ship='off'"]
[eval exp="f.glass_ship='off'"]
[chara_mod name="glasses" time="0" storage="00.png" ]
[chara_mod name="dress" time="0" storage="00.png" ]
[chara_mod name="sleeve" time="0" storage="00.png" ]
[chara_mod name="sleeve_b" time="0" storage="00.png" ]
[chara_mod name="neck" time="100" storage="00.png" ]
[chara_mod name="under_p" time="0" storage="00.png" ]
[chara_mod name="under_b" time="0" storage="00.png" ]
[chara_mod name="ribbon" time="500" storage="00.png" ]
[chara_mod name="ribbon_b" time="0" storage="00.png" ]
[chara_mod name="hair_b" time="0" storage="s/hair/D/nr.png" ]
[chara_mod name="pin" time="500" storage="00.png" ]
[chara_mod name="socks" time="500" storage="00.png"]
[chara_mod name="gloves" time="50" storage="00.png" ]

[f/clp_nt][jump target="*next_1"]

*mac_do
[eval exp="f.h_bung=0"]
[eval exp="f.h_trai=0"]
[eval exp="f.h_phai=0"]
[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[cm][eval exp="f.cloth_off='false'"]
[eval exp="f.dress_ship='on'"]
[eval exp="f.pants_ship='on'"]
[eval exp="f.bra_ship='on'"]
[eval exp="f.pin_ship='on'"]
[eval exp="f.hair_ship='on'"]
[eval exp="f.socks_ship='on'"]
[eval exp="f.neck_ship='on'"]
[eval exp="f.glass_ship='on'"]
[set_dress][call target="*show_dress"]
[f/sp_nt]
[chara_show name="h" time="0" wait="true" left=" 0.1" zindex="130" ]
[chara_show name="hand_R" time="0" wait="true" left=" 0.1" zindex="140" ]
[chara_mod name="window" time="0" storage="o/win/act_win.png" ]
[chara_show name="window" time="50" wait="false" left="613" top="22" ]
[jump target="*next_1"]

*dress_off
[eval exp="f.h_bung=0"]
[eval exp="f.h_trai=0"]
[eval exp="f.h_phai=0"]
[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[cm][eval exp="f.dress_ship='off'"]
[chara_mod name="dress" time="0" storage="00.png" ]
[chara_mod name="sleeve" time="0" storage="00.png" ]
[chara_mod name="sleeve_b" time="0" storage="00.png" ]
[jump target="*next_1"]

*bo_tay_ra
[cm ]
[eval exp="f.h_bung=0"]
[eval exp="f.h_trai=0"]
[eval exp="f.h_phai=0"]
[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[jump target="*next_1"]

*pants_off
[cm][eval exp="f.pants_ship='off'"]
[chara_mod name="under_p" time="0" storage="00.png" ]
[jump target="*next_1"]

*bra_off
[cm][eval exp="f.bra_ship='off'"]
[chara_mod name="under_b" time="0" storage="00.png" ]
[jump target="*next_1"]

*socks_off
[cm][eval exp="f.socks_ship='off'"]
[chara_mod name="socks" time="500" storage="00.png"]
[chara_mod name="gloves" time="50" storage="00.png" ]
[jump target="*next_1"]

*pin_off
[cm][eval exp="f.pin_ship='off'"]
[chara_mod name="pin" time="500" storage="00.png" ]
[jump target="*next_1"]

*hair_off
[cm][eval exp="f.hair_ship='off'"]
[chara_mod name="ribbon" time="500" storage="00.png" ]
[chara_mod name="ribbon_b" time="0" storage="00.png" ]
[chara_mod name="hair_b" time="0" storage="s/hair/D/nr.png" ]
[jump target="*next_1"]

*glass_off
[cm][eval exp="f.glass_ship='off'"]
[chara_mod name="glasses" time="0" storage="00.png" ]
[jump target="*next_1"]
;------------------------------------------------------------------------------------

*kiss
[eval exp="f.wet=f.wet+7"]
[cm ]
[iscript]
f.talk=Math.floor(Math.random() * 16 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*kiss1"]
[elsif exp="f.talk==2"][jump target="*kiss2"]
[elsif exp="f.talk==3"][jump target="*kiss3"]
[elsif exp="f.talk==4"][jump target="*kiss4"]
[elsif exp="f.talk==5"][jump target="*kiss5"]
[elsif exp="f.talk==6"][jump target="*kiss6"]
[elsif exp="f.talk==7"][jump target="*kiss7"]
[elsif exp="f.talk==8"][jump target="*kiss8"]
[elsif exp="f.talk==9"][jump target="*kiss9"]
[elsif exp="f.talk==10"][jump target="*kiss10"]
[elsif exp="f.talk==11"][jump target="*kiss11"]
[elsif exp="f.talk==12"][jump target="*kiss12"]
[elsif exp="f.talk==13"][jump target="*kiss13"]
[elsif exp="f.talk==14"][jump target="*kiss14"]
[elsif exp="f.talk==15"][jump target="*kiss15"]
[else][jump target="*kiss16"][endif]
*xoa_dau
[cm ]
[eval exp="f.wet=f.wet+2"]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_head.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*nade1"]
[elsif exp="f.talk==2"][jump target="*nade2"]
[elsif exp="f.talk==3"][jump target="*nade3"]
[elsif exp="f.talk==4"][jump target="*nade4"]
[elsif exp="f.talk==5"][jump target="*nade5"]
[elsif exp="f.talk==6"][jump target="*nade6"]
[elsif exp="f.talk==7"][jump target="*nade7"]
[elsif exp="f.talk==8"][jump target="*nade8"]
[elsif exp="f.talk==9"][jump target="*nade9"]
[else][jump target="*nade10"][endif]

*nguc_trai
[cm ]
[eval exp="f.wet=f.wet+3"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_b<=0 || f.bra_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[if exp="f.dress<=0 && f.under_b<=0 || f.dress<=1076 && f.dress>=1061 && f.under_b<=0"]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_oppai_left.png" ]
[else][chara_mod name="h" time="0" storage="mod/hand/dress_h_oppai_left_.png" ][endif]
[eval exp="f.h_trai=1"]
[iscript]
f.talk=Math.floor(Math.random() * 12 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*oppai1"]
[elsif exp="f.talk==2"][jump target="*oppai2"]
[elsif exp="f.talk==3"][jump target="*oppai3"]
[elsif exp="f.talk==4"][jump target="*oppai4"]
[elsif exp="f.talk==5"][jump target="*oppai5"]
[elsif exp="f.talk==6"][jump target="*oppai6"]
[elsif exp="f.talk==7"][jump target="*oppai7"]
[elsif exp="f.talk==8"][jump target="*oppai8"]
[elsif exp="f.talk==9"][jump target="*oppai9"]
[elsif exp="f.talk==10"][jump target="*oppai10"]
[elsif exp="f.talk==11"][jump target="*oppai11"]
[else][jump target="*oppai12"][endif]

*nguc_phai
[cm ]
[eval exp="f.wet=f.wet+3"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_b<=0 || f.bra_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[if exp="f.dress<=0 && f.under_b<=0 || f.dress<=1076 && f.dress>=1061 && f.under_b<=0"]
[chara_mod name="hand_R" time="0" storage="mod/hand/dress_h_oppai_right.png" ]
[else][chara_mod name="hand_R" time="0" storage="mod/hand/dress_h_oppai_right_.png" ][endif]
[eval exp="f.h_phai=1"]
[iscript]
f.talk=Math.floor(Math.random() * 12 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*oppai1"]
[elsif exp="f.talk==2"][jump target="*oppai2"]
[elsif exp="f.talk==3"][jump target="*oppai3"]
[elsif exp="f.talk==4"][jump target="*oppai4"]
[elsif exp="f.talk==5"][jump target="*oppai5"]
[elsif exp="f.talk==6"][jump target="*oppai6"]
[elsif exp="f.talk==7"][jump target="*oppai7"]
[elsif exp="f.talk==8"][jump target="*oppai8"]
[elsif exp="f.talk==9"][jump target="*oppai9"]
[elsif exp="f.talk==10"][jump target="*oppai10"]
[elsif exp="f.talk==11"][jump target="*oppai11"]
[else][jump target="*oppai12"][endif]

*bung
[cm ]
[eval exp="f.wet=f.wet+3"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.dress<=0 && f.under_p<=0"]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_bung.png" ]
[else]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_bung_.png" ][endif]
[iscript]
f.talk=Math.floor(Math.random() * 8 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*hara1"]
[elsif exp="f.talk==2"][jump target="*hara2"]
[elsif exp="f.talk==3"][jump target="*hara3"]
[elsif exp="f.talk==4"][jump target="*hara4"]
[elsif exp="f.talk==5"][jump target="*hara5"]
[elsif exp="f.talk==6"][jump target="*hara6"]
[elsif exp="f.talk==7"][jump target="*hara7"]
[else][jump target="*hara8"][endif]

*pus_up
[cm ]
[eval exp="f.wet=f.wet+5"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_p<=0 || f.pants_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.dress<=0 && f.under_p<=0"]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_manko_up.png" ]
[else][chara_mod name="h" time="0" storage="mod/hand/dress_h_manko_up_.png" ][endif]
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*manko1"]
[elsif exp="f.talk==2"][jump target="*manko2"]
[elsif exp="f.talk==3"][jump target="*manko3"]
[elsif exp="f.talk==4"][jump target="*manko4"]
[elsif exp="f.talk==5"][jump target="*manko5"]
[elsif exp="f.talk==6"][jump target="*manko6"]
[elsif exp="f.talk==7"][jump target="*manko7"]
[elsif exp="f.talk==8"][jump target="*manko8"]
[elsif exp="f.talk==9"][jump target="*manko9"]
[else][jump target="*manko10"][endif]

*pus_down
[cm ]
[eval exp="f.wet=f.wet+18"]
[if exp="f.under_b<=0 || f.bra_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="hand_R" time="0" storage="00.png" ]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_manko_down.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*mankox1"]
[elsif exp="f.talk==2"][jump target="*mankox2"]
[elsif exp="f.talk==3"][jump target="*mankox3"]
[elsif exp="f.talk==4"][jump target="*mankox4"]
[elsif exp="f.talk==5"][jump target="*mankox5"]
[elsif exp="f.talk==6"][jump target="*mankox6"]
[elsif exp="f.talk==7"][jump target="*mankox7"]
[elsif exp="f.talk==8"][jump target="*mankox8"]
[elsif exp="f.talk==9"][jump target="*mankox9"]
[else][jump target="*mankox10"][endif]

*chan_trai
[cm ]
[eval exp="f.wet=f.wet+3"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_p<=0 || f.pants_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="hand_R" time="0" storage="mod/hand/dress_h_chan_trai.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*ashi1"]
[elsif exp="f.talk==2"][jump target="*ashi2"]
[elsif exp="f.talk==3"][jump target="*ashi3"]
[elsif exp="f.talk==4"][jump target="*ashi4"]
[elsif exp="f.talk==5"][jump target="*ashi5"]
[elsif exp="f.talk==6"][jump target="*ashi6"]
[elsif exp="f.talk==7"][jump target="*ashi7"]
[else][jump target="*ashi8"][endif]

*chan_phai
[cm ]
[eval exp="f.wet=f.wet+3"]
[if exp="f.dress<=0 || f.dress_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[if exp="f.under_p<=0 || f.pants_ship=='off'"]
[eval exp="f.wet=f.wet+5"][endif]
[chara_mod name="h" time="0" storage="mod/hand/dress_h_chan_phai.png" ]
[iscript]
f.talk=Math.floor(Math.random() * 4 + 1);
[endscript]
[if exp="f.talk==1"][jump target="*ashi1"]
[elsif exp="f.talk==2"][jump target="*ashi2"]
[elsif exp="f.talk==3"][jump target="*ashi3"]
[elsif exp="f.talk==4"][jump target="*ashi4"]
[elsif exp="f.talk==5"][jump target="*ashi5"]
[elsif exp="f.talk==6"][jump target="*ashi6"]
[elsif exp="f.talk==7"][jump target="*ashi7"]
[else][jump target="*ashi8"][endif]




*H_wet
[cm ]
[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[f/sclcp_nt]
[name] À~♥♥♥! Chúng ta cùng làm như mọi khi nhé![lr][f/sq_nt]
Với em thì lúc nào cũng được hết~♥♥♥[p]
[f/clp_nt]
[button  target="*H"  graphic="s_ch/dress_ok.png"  x="650"  y="180" ]
[button target="*no_h"  graphic="s_ch/dress_remiddle.png"  x="650"  y="300" ]
[s ]
*H
[cm_t][layopt layer="message0" visible=true]
[black][stop_bgm]
[eval exp="f.wet=f.wet+f.wet_owe"][eval exp="f.wet_owe=0"]
[jump storage="H/before.ks"  target="*bed" ]
*no_h
[cm ]
[eval exp="f.wet_owe=f.wet_owe+f.wet"]
[eval exp="f.wet=0"]
[eval exp="f.lust=f.lust+2"]
[jump target="*next_1"]

*return
[cm_t]
[eval exp="f.h_bung=0"]
[eval exp="f.h_trai=0"]
[eval exp="f.h_phai=0"]
[chara_mod name="h" time="0" storage="mod/hand/00.png" ]
[chara_mod name="hand_R" time="0" storage="mod/hand/00.png" ]
[button  target="*H"  graphic="mod/s_ch/skinship_ch1.png"  x="650" y="120" ]
[button  target="*return_out"  graphic="mod/s_ch/skinship_ch2.png"  x="650" y="200" ]
[button  target="*next_1"  graphic="mod/s_ch/skinship_ch3.png"  x="650" y="280" ][s]

*return_out
[cm_t][layopt layer="message0" visible=true]
[eval exp="f.lust=f.lust+5"][eval exp="f.act='non'"]
[black][stop_bgm]…[p][day_end]
;;++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
;;kiss
*kiss1
[f/sclp_nt][k_01]~*kiss*[r]
Humm~um[lr]
...[p][f/cp_nt][stopse]
[jump target="*next_1"]
*kiss2
[f/sclp_nt][k_02]~*kiss*[r]
Humm~um[lr]
...[name]♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss3
[f/sclcp_nt][k_03]
~*kiss*[r]Humm~um[lr]
...[name_h]...Em...tuyệt quá...♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss4
[f/clp_nt][k_04]~*kiss*[r]
Humm~um[lr]
...[name]...em...muốn...nữa♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss5
[f/clp_nt][k_05]~*kiss*[r]Humm~um[lr]
...[name_h]...[lr]
[f/cp_nt][name_h]...Hãy yêu em nhiều hơn nữa đi...♥♥♥[p][f/sclp_nt][stopse]
[jump target="*next_1"]
*kiss6
[f/clp_nt][k_06]~*kiss*[r]
Humm~um[lr]
[name_h][lr]
[f/cp_nt]Nó thật tuyệt... nhưng... Anh có thể làm hơn nữa~♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*kiss7
[f/clcp_nt][k_07]~*kiss*[r]
Humm~um[lr]
...[name_h][p][f/sclp_nt][stopse]
[jump target="*next_1"]
*kiss8
[f/clcp_nt][k_08]~*kiss*[r]
Humm~um[lr]
...Ah~hah~♥♥♥~[name_h][p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss9
[f/clcp_nt][k_09]~*kiss*[r]
Humm~um[lr]
...[name_h]~~♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss10
[f/clcp_nt][k_10]~*kiss*[r]
Humm~um[lr]
♥♥♥...[name_h]~ ah[p][f/sclp_nt][stopse]
[jump target="*next_1"]
*kiss11
[f/clcp_nt][k_11]~*kiss*[r]
Umm~um[lr]
...[name]~ ah, thật tuyệt... Em muốn nhiều hơn nữa~♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss12
[f/clcp_nt][k_12]~*kiss*[r]
Humm~um[lr]
...[name]~ ah[p][f/sclp_nt][stopse]
[jump target="*next_1"]
*kiss13
[f/clcp_nt][k_13]~*kiss*[r]
Humm~um[lr]
...[name_h]~♥♥♥ [p][f/sp_nt][stopse]
[jump target="*next_1"]
*kiss14
[f/clcp_nt][k_14]~*kiss*[r]
Humm~um~[lr]
...[name]~ ah[p][f/sq_nt][stopse]
[jump target="*next_1"]
*kiss15
[f/clcp_nt][k_15]~*kiss**~Humm~hum[lr]
...[name]~ ah ~ [name_h] thật tốt với em...♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*kiss16
[f/clcp_nt][k_10]~*kiss*[r]
Humm~um[lr]
...[name]~ ah~~♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]


;;Nade
*nade1
[f/sclcp_nt][um_01]Umm~[lr]
[name_h][p][f/sp_nt][stopse]
[jump target="*next_1"]
*nade2
[f/sclcp_nt][um_05]Umm~[lr][f/ss_nt]
[name_h]...♥♥♥[p][stopse]
[jump target="*next_1"]
*nade3
[f/ss_nt][um_01]Umm~[lr]
....♥♥♥[p][f/sclp_nt][stopse]
[jump target="*next_1"]
*nade4
[f/sclcp_nt][um_05]Umm~[lr]
....♥♥♥...tay của [name_h][p][f/sp_nt][stopse]
[jump target="*next_1"]
*nade5
[f/sclcp_nt][um_10]Umm~[lr]
....♥♥♥.. [name_h]... thật ấm áp[p][f/sp_nt][stopse]
[jump target="*next_1"]
*nade6
[f/ss_nt][sm_09]hmm~[lr]
....♥♥♥.. [name_h][p][f/s_nt][stopse]
[jump target="*next_1"]
*nade7
[f/sclp_nt][sm_09]hmm~[lr]
....♥♥♥.. [name_h] thật tốt...[p][f/sp_nt][stopse]
[jump target="*next_1"]
*nade8
[f/sclp_nt][sm_05]
hmm~[lr]
....♥♥♥.. [name_h] hãy chạm vào em nhiều hơn nữa...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*nade9
[f/sclp_nt][um_10]Umm~[lr]
....♥♥♥.. [name_h] hãy chạm vào em đi~♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*nade10
[f/sclp_nt][um_01]♥♥♥...Em muốn nhiều hơn nữa...♥♥♥[p][f/ss_nt][stopse]
[jump target="*next_1"]



;;oppai
*oppai1
[f/clp_nt][u_01]Umm~[lr] 
[name_h]...♥♥♥[p]
[f/sp_nt]Anh hãy làm bất cứ điều gì anh muốn với cơ thể em. ♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai2
[f/clp_nt][u_02]...[lr][f/sclp_nt]
[name_h]~♥♥♥~ Cơ thể em...[kimochi_ii_1]Cảm thấy thật tuyệt...♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai3
[f/clp_nt][u_03]Umm~...[lr][f/sclp_nt]
[name_h]~♥♥♥~ chạm vào cơ thể em...[kimochi_ii_1]...thật tuyệt...♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai4
[f/sclp_nt][u_04]Umm~[l][f/sclcp_nt][motto_2]♥♥♥....Chạm vào em nữa đi...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai5
[f/clp_nt][u_07]Umm~♥♥♥[l][f/sclp_nt][motto_2]~♥♥♥....Chạm vào em nhiều hơn nữa đi...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai6
[f/sclp_nt][u_09]Umm~♥♥♥[l][f/sclp_nt][kimochii_1]~♥♥♥....Em thấy thật hạnh phúc...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai7
[f/sclp_nt][u_10]Umm~♥♥♥[l][ii_1]♥♥♥....Ngực của em~♥♥♥...nó ổn với anh chứ...?~♥♥♥...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai8
[f/clp_nt][u_08]Umm~♥[p][f/sclp_nt][ii_1]Em không thấy khó chịu hay gì đâu~♥♥♥[l]
[motto_2]...Anh có thể làm mạnh hơn chút nữa được đó~♥♥♥...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai9
[f/clp_nt][u_11]Umm~♥♥[p][f/sclp_nt][ii_1]Nó không hề khó chịu hay gì đâu~♥♥♥[lr]
Được [name_h] chạm vào em cảm thấy rất tuyệt~♥♥♥...[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai10
[f/clp_nt][u_13]Umm~♥♥♥♥[p][f/sclp_nt][ii_1]Em không cảm thấy khó chịu chút nào cả~♥♥♥[l]
Vì em luôn tin tưởng [name_h] mà!~♥♥♥...[p][f/ss_nt][stopse]
[jump target="*next_1"]
*oppai11
[u_05][f/clcp_nt]....[name]...♥♥♥~[l][f/sclp_nt]
[motto_2]Hãy cho em nhiều hơn nữa...♥♥♥[p][f/sq_nt][stopse]
[jump target="*next_1"]
*oppai12
[u_06][f/p_nt]......♥♥♥[p][f/sp_nt][stopse]
[jump target="*next_1"]


;;Hara
*hara1
[f/sclcp_nt][um_01]Umm~[lr][f/ss_nt]
~♥♥♥~ Nhột quá!~ [sm_05][name_h] thật là...[p][f/sp_nt]
[jump target="*next_1"]
*hara2
[f/sclcp_nt][um_01]Umm~[lr][f/ss_nt]
~♥♥♥~ Nhột quá!~ [sm_05][name_h] thật là...[p][f/sp_nt]
[jump target="*next_1"]
*hara3
[f/sclcp_nt][um_02]Umm~[lr]
~♥♥♥...[name_h]~Cảm giác này...Có chút kì kì![lr]
[f/clcp_nt]
[name_h] Làm vậy là có ý gì...♥♥♥?[p][f/sp_nt]
[jump target="*next_1"]
*hara4
[f/sclcp_nt][um_03]Umm~♥♥♥[lr]
~♥♥♥....Bụng em...[kimochi_ii_1]dù bất cứ chỗ nào được [name_h] chạm tới cũng đều rất tuyệt...![p][f/sp_nt]
[jump target="*next_1"]
*hara5
[f/sclp_nt][um_04]Umm~♥♥♥[lr]
....[name_h]♥♥♥...thôi mà...♥♥♥[p][f/sq_nt]
[jump target="*next_1"]
*hara6
[f/clcp_nt][um_05]Umm~♥♥♥[lr]
[sm_05]......♥♥♥[p][f/q_nt]
[jump target="*next_1"]
*hara7
[f/clcp_nt][um_06]Hah~~~♥♥♥[lr]
[sm_09]...[name_h] kì ghê...♥♥♥[p][f/q_nt]
[jump target="*next_1"]
*hara8
[f/clcp_nt][um_14]Hah~~~♥♥♥[lr]
[name_h]...♥♥♥[p][f/q_nt]
[jump target="*next_1"]


;;Manko
*manko1
[f/clcp_nt][u_05]Umm~♥♥♥[l] [name_h]~♥♥♥[[lr][f/clcp_nt]
[kore_1]Chỗ đó...em thấy lạ quá...[p][f/sq_nt]
[jump target="*next_1"]
*manko2
[f/clcp_nt][u_01]Un~!♥♥♥ [l][f/sclcp_nt]
Em không sao đâu~♥♥♥..[lr]
Nên anh có thể...mạnh hơn chút nữa~~♥♥♥[p][sm_05][f/sq_nt]
[jump target="*next_1"]
*manko3
[f/clcp_nt][u_03]♥♥♥.....[lr]
[kimochi_ii_1]Thật tuyệt ♥♥♥~ [l]Dù có hơi xấu hổ~~♥♥♥[p][f/sq_nt]
Anh có thể làm hơn nữa được mà...♥♥♥...[name_h][p]
[jump target="*next_1"]
*manko4
[f/clcp_nt][u_02]♥♥♥...[lr][f/sq_nt]
Anh có muốn nữa không?♥♥♥[p]
[jump target="*next_1"]
*manko5
[f/clcp_nt][u_04]Umm~~~♥♥♥.....[l]
[manko_1]chỗ đó của em~~♥♥♥[l][f/q_nt]
...Em sắp không chịu được nữa rồi...[name_h]~♥♥♥[p][f/sq_nt]
[jump target="*next_1"]
*manko6
[f/clcp_nt][u_05]Umm~~♥♥♥.....[lr]
Cơ thể em~~♥♥♥[p][u_06]
Uh!...Em sắp không chịu được nữa rồi...[name_h]~♥♥♥[p][f/sp_nt]
[jump target="*next_1"]
*manko7
[f/clcp_nt][u_07]Umm~huh~♥♥♥.....[l]
Cơ thể em~~♥♥♥[l]
[name_h]~♥♥♥~ Làm ơn...[lr]
[motto_2]Hãy "YÊU" em nhiều hơn nữa đi...♥♥♥[p][f/sp_nt]
[jump target="*next_1"]
*manko8
[f/clcp_nt][u_08]Umm~uh~♥♥♥.....[l]
[manko_de_1]Chỗ đó của em~~♥♥♥~[l]
như đang...[l][hora_1] [name_h]~♥♥♥~ Làm ơn...[p]
Hãy chiếm lấy cơ thể em...♥♥♥[f/cp_nt]
[jump target="*next_1"]
*manko9
[f/clcp_nt][u_09]Umm~uh~♥♥♥.....[l][f/sclcp_nt]
[kore_1]Chỗ đó của em~~♥♥♥[lr]
như đang...[l]muốn cùng [name_h]~♥♥♥~ [p][f/sq_nt]
[jump target="*next_1"]
*manko10
[f/clcp_nt][u_10]Umm~♥♥♥.....[p][f/sp_nt]
[manko_ga_1]Chỗ đó của em~~♥♥♥[l]
Cảm thấy rất tuyệt khi [name_h] chạm vào~♥♥♥~ [sm_09][p][f/sq_nt]
[jump target="*next_1"]


;Mankox
*mankox1
[f/clcp_nt][wet_0][u_07]Umm~♥♥♥[l] [name_h][lr][f/clcp_nt]
Chỗ đó...[ii_1]thật tuyệt~♥♥♥[p][f/sq_nt]
[jump target="*next_1"]
*mankox2
[f/clcp_nt][wet_0][u_05]Un~!♥♥♥ [lr][f/clcp_nt][sugoi_3]
Em sắp...không chịu nổi nữa rồi...♥♥♥[p]
[f/sq_nt]
[jump target="*next_1"]
*mankox3
[wet_0][f/clcp_nt][u_04]
~♥♥♥[lr]
[f/q_nt]
[name_h][oku_ni_1]~~ Chạm vào em đi~♥♥♥~~làm ơn~♥♥♥[p]
[jump target="*next_1"]
*mankox4
[wet_0][f/clcp_nt][u_02]Uh~♥♥♥...[lr][f/q_nt]
Em muốn...[motto_2]hơn nữa...♥♥♥?[p][f/sq_nt]
[jump target="*next_1"]
*mankox5
[wet_1][f/clcp_nt][U_03]Uh~♥♥♥...[l][f/sq_nt]
[name_h][naka_1] Đang chạm vào bên trong em~♥♥♥[lr][f/q_nt]
Em muốn...[motto_2]hơn nữa...♥♥♥?[p][f/sq_nt]
[jump target="*next_1"]
*mankox6
[wet_1][f/clcp_nt][U_06]Uh~♥♥♥...[l][f/sq_nt]
[name_h][sugoi_wa_1]~♥♥♥ Đang chạm vào bên trong em~♥♥♥[lr][f/q_nt]
Dù cách chúng ta tiếp xúc như vậy không đẹp cho lắm~~♥♥♥?[p][f/sq_nt]
[jump target="*next_1"]
*mankox7
[wet_1][f/clcp_nt][U_08]Uh~♥♥♥...[lr][f/q_nt]
[name_h][motto_2]~♥♥♥~có thể~♥♥♥~sâu hơn một chút~♥♥♥[lr][f/cp_nt]
Cảm giác này~~♥♥♥~ cũng không quá tệ~[p][f/sq_nt]
[jump target="*next_1"]
*mankox8
[wet_1][f/clcp_nt][U_09]Uh~♥♥♥...[lr][f/q_nt]
[name_h]~♥♥♥~[manko_1]chỗ đó~♥♥♥~~♥♥♥[lr][f/cp_nt]
Em có thể cảm thấy anh~~♥♥♥~~[p][f/sq_nt]
[jump target="*next_1"]
*mankox9
[wet_1][f/clcp_nt][U_11]Uh~♥♥♥...[lr][f/p_nt]
[name_h]~♥♥♥~[naka_de_1]chỗ đó~♥♥♥~~♥♥♥[lr][f/cp_nt]
cơ thể em như muốn tan chảy~~♥♥♥~~[p][f/sq_nt]
[jump target="*next_1"]

;;Ashi
*ashi1
[f/clp_nt][u_01]Umm~[lr][f/q_nt][hora_1]
Anh làm vậy thật kì quá [name_h]~♥♥♥[p]
[jump target="*next_1"]
*ashi2
[f/clcp_nt][u_02]...♥♥♥[lr][f/sp_nt]
[ii_1]Cảm giác cũng không khó chịu gì cả[p]
[jump target="*next_1"]
*ashi3
[f/clcp_nt][u_03]....♥♥♥[p][f/sp_nt]
[jump target="*next_1"]
*ashi4
[f/clcp_nt][u_06]....[name_h]...♥♥♥[p][f/q_nt]
[jump target="*next_1"]
*ashi5
[f/clcp_nt][u_07]......♥♥♥[p][f/sq_nt]
[jump target="*next_1"]
*ashi6
[f/clcp_nt][u_04]Umm~♥♥♥[lr][f/sclcp_nt]
[na_1]Chân em có gì hấp dẫn anh đến vậy?[p][f/sq_nt]
[jump target="*next_1"]
*ashi7
[f/clcp_nt][u_08]Umm~♥♥♥[lr][f/sclcp_nt]
[ii_1]Em không cảm thấy khó chịu gì đâu[p][f/ssc_nt]
[sm_09]Nên anh cứ tiếp tục đi[p]
[jump target="*next_1"]
*ashi8
[f/clcp_nt][u_09]Umm~♥♥♥[lr][f/ssc_nt]
[motto_2]Em muốn được [name_h] chạm vào nhiều hơn nữa[p][sm_05]
[jump target="*next_1"]
;;===========================================================================
*show_dress
[chara_mod name="p" time="0" storage="mod/win/beg.png" ]
[chara_show name="hair_b" time="0" wait="false" left="0.1" ]
[chara_show name="ribbon_b" time="0" wait="false" left="0.1" ]
[chara_show name="body" time="0" wait="false" left="0.1" ]
[chara_show name="b_acc" time="0" wait="false" left="0.1" ]
[chara_show name="under_p" time="0" wait="false" left="0.1" ]
[chara_show name="under_b" time="0" wait="false" left="0.1" ]
;[chara_show name="ef2" time="0" wait="false" left="0.1" ]
[chara_show name="gloves" time="0" wait="false" left="0.1" ]
[chara_show name="socks" time="0" wait="false" left="0.1" ]
[chara_show name="dress" time="0" wait="false" left="0.1" ]
[chara_show name="neck" time="0" wait="false" left="0.1" ]

[chara_show name="head" time="0" wait="false" left="0.1" ]
[chara_show name="eyes" time="0" wait="false" left="0.1" ]
[chara_show name="mouth" time="0" wait="false" left="0.1" ]
[chara_show name="glasses" time="0" wait="false" left="0.1" ]
[chara_show name="mayu" time="0" wait="false" left="0.1" ]
[chara_show name="hair_f" time="0" wait="false" left="0.1" ]


[chara_show name="pin" time="0" wait="false" left="0.1" ]
[chara_show name="ribbon" time="0" wait="false" left="0.1" ]
[chara_show name="hat" time="0" wait="false" left="0.1" ]
[chara_show name="p" time="0" wait="false" left="0.1" ]
[bg  time="0"  method="crossfade"  storage="bg/bed.jpg" ]
[hide_black][return]


*show_mise_game1
[bg storage="H/Hxf.jpg" time="0" ]

[chara_show name="hair_b" time="0" wait="false" left="0.1" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="0.1" zindex=6 ][endif]

[chara_show name="body" time="0" wait="false" left="0.1" zindex=10 ]


[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="0.1" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="0.1" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="0.1" zindex=50 ][endif]
;[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="0.1" zindex=60 ][endif]
[if exp="f.dress>=1" ][chara_show name="ef2" time="0" wait="false" left="0.1" zindex=60 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="0.1" zindex=70 ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="0.1" zindex=105 ][endif]

[if exp="f.dress>=60 && f.dress<=69" ]
[chara_show name="arm" time="0" wait="false" left="0.1" zindex=5 ]
[else][chara_show name="arm" time="0" wait="false" left="0.1" zindex=80 ][endif]

;[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="0.1" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="0.1" zindex=100 ][endif]

[chara_show name="head" time="0" wait="false" left="0.1" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="0.1" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="0.1" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="0.1" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="0.1" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="0.1" zindex=146 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="0.1" zindex=160 ][endif]

[chara_show name="ribbon" time="0" wait="false" left="0.1" zindex=165 ]
[chara_show name="hat" time="0" wait="false" left="0.1" zindex=170 ]
;[chara_show name="other" time="0" wait="false" height="900" width="1350" left="0.1" zindex=180 ]

;[if exp="f.step!=6" ][chara_show name="h" time="0" wait="false" left="0.1" zindex=190 ][endif]
[hide_black][return]