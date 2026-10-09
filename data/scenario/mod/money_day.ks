
*chi_phi
;--------chi phí khác----------
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[eval exp="f.cos_ot=f.cos_ot+20000+4000*f.talk"]
;--------------đơn giá 3200 đ---------
[iscript]
f.talk=Math.floor(Math.random() * 10 + 1);
[endscript]
[eval exp="f.elect=f.elect+f.talk+5"]
;;------------1/1000m3-------đơn giá 30k/m3------
[iscript]
f.talk=Math.floor(Math.random() * 200 + 1);
[endscript]
[eval exp="f.water=f.water+f.talk+200"]
;;-----------1/100 Kg-----đơn giá 80k/kg-------
[iscript]
f.talk=Math.floor(Math.random() * 20 + 1);
[endscript]
[eval exp="f.gas=f.gas+f.talk+20"]
[return]

*return_money
[eval exp="f.money_month=f.elect*3200+f.water*30+f.gas*800+f.cos_ot"]
[eval exp="f.elect_old=f.elect"]
[eval exp="f.water_old=f.water"]
[eval exp="f.gas_old=f.gas"]
[eval exp="f.cos_ot_old=f.cos_ot"]
[eval exp="f.elect=0"]
[eval exp="f.water=0"]
[eval exp="f.gas=0"]
[eval exp="f.cos_ot=0"]
[if exp="f.money_month<=f.zince"]
[eval exp="f.zince=f.zince-f.money_month"]
[else]
[eval exp="f.money_owe=f.money_owe+f.money_month-f.zince"]
[eval exp="f.zince=0"]
[endif]
[return]

*money_owe
[if exp="f.money_owe>=f.zince"][else]
[eval exp="f.zince=f.zince-f.money_owe"]
[eval exp="f.money_owe=0"]
[endif]
[return]













