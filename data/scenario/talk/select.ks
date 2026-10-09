;;call
*last_line
[r][r][link target="*select" ]【Quay lại】[link target="*end_talk" ]【Thôi, đổi ý rồi】
[endlink][resetdelay][endnolog][cancelskip][return]

;;区別選択
*select
[commu_text][-]
[link target="*like" ]【Tán tỉnh】[link target="*hi" ]【Lời chào】[link target="*want" ]【Yêu cầu】[link target="*sylvie" ]【Ý kiến】[r]
[link target="*negative" ]【Than vãn】[link target="*action" ]【Hành động】[link target="*ask" ]【Hỏi han】[r]
[link target="*other" ]【Khác】[if exp="f.sex>=1" ][link target="*lust" ]【♥♥♥】[endif][link target="*command" ]【Đặc biệt】
[r][r]
[call target="*reaction" ][r]
[link target="*end_talk" ]【Thôi, đổi ý rồi】[endlink][resetdelay][endnolog][cancelskip][s]

;;好意
*like
[commu_text]
[tx_link tg=*好き]【Anh thích em】[tx_link tg=*ありがとう]【Cảm ơn em】[if exp="f.love>=1500" ][tx_link tg=*愛してる]【Yêu em!】[endif][r]
[tx_link tg=*助かってる]【Em đã giúp đỡ anh rất nhiều】[tx_link tg=*嬉しい]【hạnh phúc】[tx_link tg=*楽しい]【vui】[r]
[tx_link tg=*幸せ]【This is bliss】
[call target="*last_line" ][s]

;;挨拶
*hi
[commu_text]
[tx_link tg=*おはよう]【Chào buổi sáng】[tx_link tg=*こんにちは]【Chào buổi chiều】[tx_link tg=*こんばんわ]【chào buổi tối】[r]
[tx_link tg=*お疲れ様]【Em đã vất vả rồi】
[call target="*last_line" ][s]

;;要望
*want
[commu_text]
[tx_link tg=*笑って]【Smile!】[tx_link tg=*抱きしめて]【Ôm lấy anh】[tx_link tg=*こっちきて]【Tới đây】[r]
[tx_link tg=*そばにいて]【Ở lại đây với anh】[tx_link tg=*応援して]【Wish me luck!】
;[tx_link tg=*慰めて]【help me!】[r]
[tx_link tg=*撫でていい？]【Hãy để anh xoa đầu】[tx_link tg=*手握って]【Nắm lấy tay anh】[tx_link tg=*撫でて]【Pat me】[r]
[tx_link tg=*抱きしめたい]【Anh muốn ôm em】[if exp="f.sex>=1" ][tx_link tg=*キスして]【Hôn anh đi】[endif]
[call target="*last_line" ][s]

;;評価
*sylvie
[commu_text]
[tx_link tg=*貧乳]【Cơ thể Loli của em...】[tx_link tg=*ちっちゃい]【Em thật nhỏ nhắn...】[tx_link tg=*可愛い]【Em thật dễ xương】[r]
[tx_link tg=*綺麗]【Em thật đáng yêu】[tx_link tg=*笑顔がかわいい]【Nụ cười của em thật đáng yêu.】[tx_link tg=*偉い]【Em là một cô gái tốt】[r]
[tx_link tg=*優しいね]【Em thật tuyệt】[tx_link tg=*天使]【Thiên thần】
[call target="*last_line" ][s]

;;弱音
*negative
[commu_text]
[tx_link tg=*game1_before]【*Chán quá】[tx_link tg=*お腹すいた]【Anh thấy đói bụng】[tx_link tg=*眠い]【Anh thấy buồn ngủ】[r]
;[tx_link tg=*疲れた]【疲れた】
[tx_link tg=*助けて]【Giúp anh với】[tx_link tg=*ごめん]【Xin lỗi】
[call target="*last_line" ][s]

;;問いかけ
*ask
[commu_text]
[tx_link tg=*楽しい？]【Em thấy vui không？】[tx_link tg=*幸せ？]【Happy？】[tx_link tg=*元気？]【Em có khỏe không？】[r]
[tx_link tg=*大丈夫？]【Em ổn chứ？】[tx_link tg=*欲しいものある？]【Em có muốn điều gì không？】[r]
[tx_link tg=*痛くない？]【Những vết thương đó sao rồi？】
[call target="*last_line" ][s]

;;行動
*action
[commu_text]
[tx_link tg=*じー]【Ngắm cô ấy】[r]
[call target="*last_line" ][s]

;;その他
*other
[commu_text]
[tx_link tg=*シルヴィ]【Sylvie-chan!】[tx_link tg=*料理]【I like your food】[tx_link tg=*傷跡]【Vết sẹo...】[r]
[if exp="f.shop_talk>=1" ][tx_link tg=*オーレリア]【Aurelia...】[endif]
[if exp="f.cafe_talk==1" ][tx_link tg=*ネフィー]【Neph...】[endif]
[if exp="f.ferrum>=1" ][tx_link tg=*フェルム]【Ferrum...】[endif]
[call target="*last_line" ][s]

;;エロ
*lust
[commu_text]
[if exp="f.lust>=100" ][tx_link tg=*セックス]【"Đi ngủ"】[endif]
[if exp="f.lust>=300" ][tx_link tg=*えろい]【Erotic】[endif]
[if exp="f.lust>=100" ][tx_link tg=*脱いで]【Strip!】[endif]
[r]
[if exp="f.lust>=30" ][link storage="sys/config.ks" target=*h_word]【Dạy một thành ngữ】[endif][font_blue1]
[r][call target="*last_line" ][s]

;;特殊
*command
[commu_text]
[if exp="f.Dc_f[0]=='got' && f.work_c==0 && f.act<=4" ][tx_link tg=*仕事をしよう]【Cùng làm việc】[endif]
[if exp="f.act>=3 && f.act<=4 && f.tea_time==0" ][tx_link tg=*お茶にしよう]【Uống trà】[endif]
[if exp="f.act>=5" ][tx_link tg=*おやすみ]【Chúc ngủ ngon】[endif]
[r]
[if exp="f.act>=5 && f.step>=6 && f.out==0 && f.love>=200 || f.act>=5 && f.step>=6 && f.out=='syl' && f.love>=200" ]
[tx_link tg=*出かけよう]【Cùng ra ngoài】[tx_link tg=*出かけてくる]【Ra ngoài một mình】[endif]
[r]
[tx_link tg=*着替えて]【Thay quần áo】[link storage="sys/config.ks" target=*name_change]【Đổi cách xưng hô】
[r]
[r][call target="*last_line" ][s]


;;返答
*reaction
[resetfont]Trả lời-[font_blue1]
[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ]
;	[tx_link tg="*助かる/これからも>ありがとう" ]【Cảm ơn em】
	[tx_link tg="*助かる/これからも>十分" ]【Đủ rồi】[endlink][endif]
[if exp="f.last_act=='c_助かってる/これからも'" ]
	[tx_link tg="*助かる/これからも>期待してる" ]【Looking forward to it】[endlink][endif]
[if exp="f.last_act=='c_ありがとう/ありがとう'" ]
	[tx_link tg="*ありがとう/ありがとう>どういたしまして" ]【You're welcome】[endlink][endif]
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ]
	[tx_link tg="*ありがとう/出来てるかな>出来てる" ]【It is done】
;	[tx_link tg="*ありがとう/出来てるかな>大丈夫" ]【大丈夫】[endlink]
[endif]
[if exp="f.last_act=='c_偉い/何かした？'" ]
	[tx_link tg="*偉い/何かした？>仕事" ]【Công việc】
	[tx_link tg="*偉い/何かした？>可愛い" ]【Em thật dễ thương】
	[tx_link tg="*偉い/何かした？>家事" ]【Việc nhà】[endlink][endif]
[if exp="f.last_act=='c_欲しいもの/ぎゅって'" ]
	[tx_link tg="*欲しいもの/ぎゅって>違う" ]【That's not it】
	[tx_link tg="*欲しいもの/ぎゅって>する" ]【"kéo lại"】[endlink][endif]
[if exp="f.last_act=='c_欲しいもの/特に'" ]
	[tx_link tg="*欲しいもの/特に>思いついたら" ]【Let me know】[endlink][endif]
[if exp="f.last_act=='c_楽しい？/はい'" ]
;	[tx_link tg="*楽しい？/はい>嬉しい" ]【happy.】
;	[tx_link tg="*楽しい？/はい>良かった" ]【Glad】
	[tx_link tg="*楽しい？/はい>こっちも楽しい" ]【Anh cũng rất vui】[endlink][endif]
[if exp="f.last_act=='c_幸せ？/ありがとう'" ]
	[tx_link tg="*ありがとう/ありがとう>どういたしまして" ]【Em luôn được chào đón】
	[tx_link tg="*幸せ？/ありがとう>こちらこそ" ]【Anh cũng vậy】[endlink][endif]
;[if exp="f.last_act=='c_幸せ？/ありがとう' || f.last_act=='c_幸せ？/一緒だから'" ]
;	[tx_link tg="*幸せ？/はい>良かった" ]【May quá】[endlink][endif]
[if exp="f.last_act=='c_幸せ？/怖いぐらい'" ]
	[tx_link tg="*幸せ？/怖いぐらい>大丈夫" ]【Không sao đâu】
	[tx_link tg="*幸せ？/怖いぐらい>慣れるよ" ]【Anh sẽ quen với nó】[endlink][endif]
;[if exp="f.last_act=='c_元気？/はい'" ]
;	[tx_link tg="*元気？/はい>良かった" ]【Thật tốt quá】[endlink][endif]
[if exp="f.last_act=='c_無理してない？/はい'" ]
	[tx_link tg="*無理してない？/はい>良かった" ]【tốt quá 】[endlink][endif]
[if exp="f.last_act=='c_嫉妬'" ]
	[tx_link tg="*嫉妬>ごめん" ]【Xin lỗi nhé】[endlink][endif]
[if exp="f.last_act=='c_嫉妬' && f.love>=1500" ]
	[tx_link tg="*嫉妬>愛してる" ]【I love you!】[endlink][endif]

[r][return]

;;end
*end_talk
[_][cm_t][eval exp="f.system_act=1" ][return_menu]

