*touch
[cm][black]
[if exp="f.rape==0" ][jump storage="H/H0.ks" target="*touch0" ]
[elsif exp="f.rape==0.1" ][jump storage="H/H0.ks" target="*touch1" ][endif]

[set_mise]
[if exp="f.uncen=='true'"]
[chara_mod name="body" time="0" storage="Hf/body/uncen/body0.png" ][else]
[chara_mod name="body" time="0" storage="Hf/body/body0.png" ][endif]
[chara_mod name="eyes" time="0" storage="face/s0-d.png" ][show_mise]

[_]（Tôi từ từ vén áo cô ấy.。[p_]
[syl][eh_01]…[p]
[chara_mod name="h" time="0" storage="o/hand/s0-a.png" ]
[_]（Tôi mở rộng bàn tay và bắt đầu chạm vào nơi "kín đáo" của cô ấy。[p_]
[jump storage="H/H0.ks" target="*touch2" ]

*touch0
;[black]
[bg time="0" method="crossfade" storage="H_rape/s00.jpg" ]
[_]（Tôi thử chạm vào ngực của Sylvie[lr_]
…Nhưng vì ngực cô ấy hơi nhỏ nên tôi vẫn chưa cảm giác gì cả。[p_]
[syl]…？[p]
[_]（cô ấy cựa quậy nhẹ nhàng, nhưng có vẻ em ấy không phản kháng lại[p_]
[eval exp="f.act=f.act+1" ]
[eval exp="f.rape=0.1" ]
[jump storage="sys/talk_lead.ks" target="*after_touch" ]

*touch1
[cm][set_mise]
[if exp="f.uncen=='true'"][chara_mod name="body" time="0" storage="Hf/body/uncen/body0.png" ][else]
[chara_mod name="body" time="0" storage="Hf/body/body0.png" ][endif]
[chara_mod name="eyes" time="0" storage="face/s0-d.png" ][show_mise]

[eval exp="f.trust=f.trust-1" ]
[eval exp="f.rape=0.5" ]

[_]（Vừa lúc tôi vén quần áo của Sylvie lên thì hình ảnh cái mu của cô ấy ập vào mắt tôi。[lr_]
Có vẻ cô ấy không mặc quần lót。[p_]
[syl]…[p]

[chara_mod name="h" time="0" storage="o/hand/s0-a.png" ]
[_]（Tôi duỗi tay đến và chạm vào vùng kín của cô ấy。[p_]
[chara_mod name="eyes" time="0" storage="face/s0-a.png" ]
[syl]A-Anh làm gì v-vậy…？[p_]
[button storage="H/H0.ks" target="*touch2" graphic="ch/continue.png" x="0" y="200" ]
[button storage="H/H0.ks" target="*stop1" graphic="ch/stop.png" x="0" y="350" ]
[cancelskip][s]

*touch2
[cm][if exp="f.uncen=='true'"][chara_mod name="h" time="0" storage="o/hand/uncen/s0-b.png" ][else]
[chara_mod name="h" time="0" storage="o/hand/s0-b.png" ][endif]
[_]（Tôi nhẹ nhàng chạm vào vùng kín và âm hạch của cô ấy[p_]
[syl][chara_mod name="eyes" time="0" storage="face/s0-b.png" ]
Un…[p]
[button storage="H/H0.ks" target="*touch3" graphic="ch/continue.png" x="0" y="200" ]
[button storage="H/H0.ks" target="*stop1" graphic="ch/stop.png" x="0" y="350" ]
[cancelskip][s]

*touch3
[cm]
[if exp="f.uncen=='true'"][chara_mod name="h" time="0" storage="o/hand/uncen/s0-c.png" ][else]
[chara_mod name="h" time="0" storage="o/hand/s0-c.png" ][endif]
[_]（Làn da của cô ấy dần dần trở nên ẩm ướt hơn ngay khi tôi chạm vào chỗ ấy。[lr_]
Tôi không biết nếu cô  ấy đã có kinh nghiệm về chuyện đó chưa。[p_]
[chara_mod name="eyes" time="0" storage="face/s0-c.png" ]
[syl]E-Ehhhh…？[lr_]KKK-Không, chủ nhân trước của em chưa bao giờ… làm điều này với em cả…。[p_]
[button storage="H/H0.ks" target="*touch4" graphic="ch/continue.png" x="0" y="200" ]
[button storage="H/H0.ks" target="*stop2" graphic="ch/stop.png" x="0" y="350" ]
[cancelskip][s]

*touch4
[cm]
[_][chara_mod name="eyes" time="0" storage="face/s0-e.png" ]
[chara_mod name="h" time="0" storage="o/hand/s0-c.png" ]

[syl]Cái này…  em có cảm giác rất lạ[p_]
[_]（Có lẽ cô  ấy bắt đầu cảm thấy thoải mái. [lr_] Nước từ âm đạo của em ấy đã bắt đầu tràn xuống đùi。[p_]
[if exp="f.uncen=='true'"][chara_mod name="h" time="0" storage="o/hand/uncen/s0-d.png" ][else]
[chara_mod name="h" time="0" storage="o/hand/s0-d.png" ][endif]
（…Nhiêu đây chắc có lẽ đã quá đủ[p_]

[button storage="H/rape.ks" target="*rape" graphic="ch/H_x.png" x="0" y="200" ]
[button storage="H/H0.ks" target="*stop2" graphic="ch/remind.png" x="0" y="350" ]
[cancelskip][s]

*ks6
[if exp="f.codex==31520 && f.codey==125"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==36598 && f.codey==1165"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==4020 && f.codey==102"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==45261 && f.codey==7795"]
[eval exp="f.code_ss='ful'"]
[elsif exp="f.codex==65698 && f.codey==35264"]
[eval exp="f.code_ss='ful'"]
[endif][return]

*stop1
[cm][chara_mod name="h" time="0" storage="00.png" ]
[_]（Tôi ngừng chạm thân thể của Sylvie。[p_]
[chara_mod name="eyes" time="0" storage="face/s0-c.png" ]
[syl]…Ngài xong rồi ư？[p_]
[chara_mod name="eyes" time="0" storage="face/s0-f.png" ]
Phew…[p_]
[jump storage="sys/talk_lead.ks" target="*after_touch" ]

*stop2
[cm]
[if exp="f.uncen=='true'"][chara_mod name="h" time="0" storage="o/hand/uncen/s0-d.png" ][else]
[chara_mod name="h" time="0" storage="o/hand/s0-d.png" ][endif]
[_]（Tôi ngừng chạm thân thể của Sylvie。[p_]
[chara_mod name="eyes" time="0" storage="face/s0-c.png" ]
[if exp="f.uncen=='true'"][chara_mod name="h" time="0" storage="o/hand/uncen/s0-1.png" ][else]
[chara_mod name="h" time="0" storage="o/hand/s0-1.png" ][endif]
[syl]…Ngài xong rồi ư？[p_]
[chara_mod name="eyes" time="0" storage="face/s0-f.png" ]
Phew…[p_]
[jump storage="sys/talk_lead.ks" target="*after_touch" ]



