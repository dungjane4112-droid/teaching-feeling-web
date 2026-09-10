;;好意
*好き
[cm_t][eval exp="f.talk_love=f.talk_love+1" ][eval exp="f.love=f.love+1" ]
[if exp="f.syl_game1=='love'"]
[eval exp="f.syl_game1='non'"][eval exp="f.love=f.love+3"][eval exp="f.hp=f.hp+5"][hp_return]
[f/ss]Cảm ơn anh! ♥♥♥[p_]
[endif]
[random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_好き/嬉しい'" ]
	[f/s]Cảm ơn anh rất nhiều。[lr_]
	[f/re]…Thật sự, thật sự rất vui ạ。[p_]
	[f/ssp]Vâng、em cũng thích [name] lắm ạ!。[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_好き/私も'" ]
	[f/s]Em yêu anh, yêu anh rất nhiều。[lr_]
	[f/sp][name]、em cũng thích anh。[p_]
[else][eval exp="f.last_act='c_好き/私も'" ]
	[f/s]Em thích anh, thích lắm lắm lun ấy,♥。[lr_]
	[f/ss]Em yêu anh、em yêu anh rât nhiều♥[p_]
[endif][end_talk]

*愛してる
[if exp="f.love<=1500" ][c_non][endif]
[if exp="f.last_act=='c_嫉妬'" ][jump target="*嫉妬>愛してる" ][endif]
[cm_t][eval exp="f.love=f.love+2" ][eval exp="f.talk_love=f.talk_love+1" ]
[if exp="f.syl_game1=='love'"]
[eval exp="f.syl_game1='non'"][eval exp="f.love=f.love+3"][eval exp="f.hp=f.hp+5"][hp_return]
[f/ss]Cảm ơn anh! ♥♥♥[p_]
[endif]
[random_4]
[if exp="f.r==1" ][eval exp="f.last_act='c_愛してる'" ]
	[f/clp]…。[p_]
	[f/cp]Em xin lỗi。[lr_]
	[f/re]Em vui tới nỗi không nói nên lời rồi…。[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_愛してる'" ]
	[f/sp]Cảm ơn anh rất nhiều。[p_]
	Em cũng yêu anh nhiều lắm, [name]。[lr_]
	[f/sclp]Em yêu anh nhiều lắm…。[p_]
[elsif exp="f.r==3" ][eval exp="f.last_act='c_愛してる'" ]
	[f/cp]…Thật chứ ạ？[lr_]
	[f/re]Em có thể tin anh chứ？[p_]
	[f/clp]Những lời ấy, em sẽ trân trọng nó…. E sẽ giữ mãi mãi trong lòng。[p_]
[elsif exp="f.r==4" ][eval exp="f.last_act='c_愛してる'" ]
	[f/cp]…Có lẽ, em sẽ dừng nghĩ ngợi lung tung….. kiểu …”sẽ ra sao nếu anh phản bội em’ 。[p_]
	[f/clp][name]…Em yêu anh nhiều nhắm (lắm)![name] >< 。[p_]
[endif][end_talk]

*ありがとう
[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ]
	[jump target="*助かる/これからも>ありがとう" ][endif]
[cm_t][eval exp="f.love=f.love+1" ][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_ありがとう/ありがとう'" ]
	[f/s]Vâng, nhưng lẽ ra em mới là người nên nói lời cảm ơn anh。[lr_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
;	→どういたしまして
[elsif exp="f.r==2" ][eval exp="f.last_act='c_ありがとう/出来てるかな'" ]
	[f/s]Phải chăng chỉ cần nói “không có gì” là đủ?[lr_]
	[f/ss]Em hy vọng em có thể làm gì đó để tỏ lòng biết ơn。[p_]
;	→助かってる/出来てる
[endif][end_talk]

*助かる
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ][jump target="*出来てる" ][endif]
*助かってる
[cm_t][eval exp="f.love=f.love+1" ][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_助かってる/これからも'" ]
	[f/]Thật hả？[lr_]
	[f/cl]Em cũng không biết mình có thể làm gì để đền ơn anh được, [name]。[p_]
	[f/s]Vậy thì…. E sẽ tiếp tục cố gắng để làm điều tốt nhất cho anh。[p_]
;	→お願いする/期待してる、もう十分、ありがとう
[elsif exp="f.r==2" ][eval exp="f.last_act='c_助かってる/もっと頑張る'" ]
	[f/s]Tuy em không thể làm được gì nhiều, nhưng dù là một ít thôi, em cũng rất vui vì có thể giúp được anh。[lr_]
	[f/ss]Nếu anh cần gì hơn, anh cứ nói em nhé, được không。[p_]
;	→もう十分、ありがとう
[else][eval exp="f.last_act='c_助かってる/もっと頑張る'" ]
	[f/s]Thật chứ？[lr_]
	[f/re]Có lẽ, em vẫn muốn có ích với anh hơn。[p_]
	[f/ss]Em nghĩ mình có thể làm được tất cả, miễn là anh cần ,[name]♥[p_]
[endif][end_talk]

;;問いかけ
*楽しい？
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_楽しい？/はい'" ]
	[f/ss]hai, urenshii desu yo!。[r]Vâng ạ, e cảm thấy rất vui[lr_]
	[f/s]Miễn là [name] đồng ý, em sẽ luôn ủng hộ。[p_]
;	→良かった、こっちも楽しい、嬉しい
[else][eval exp="f.last_act='c_楽しい？/はい'" ]
	[f/s]Để xem nào。[lr_]
	[f/re]Được đi chơi, được làm việc cùng [name], Được ăn ngon、[lr_]
	[f/ss]Mỗi ngày có hơi nhiều việc để làm nhưng em rất vui vì điều đó。[p_]
;	→良かった、こっちも楽しい、嬉しい
[endif][end_talk]

*幸せ？
[cm_t][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_幸せ？/ありがとう'" ]
	[f/cl]Em chẳng thể nhớ được những chuyện đã xảy ra trước kia…[lr_]
	[f/s]nhưng sự thật là khi bản thân tin vào cuộc sống đang có cũng đủ để khiến em hạnh phúc。[p_]
	[f/ss]Cảm ơn anh rất nhiều、[name]。[p_]
;	→良かった、こっちも幸せ、どういたしまして、こちらこそ
[elsif exp="f.r==2" ][eval exp="f.last_act='c_幸せ？/怖いぐらい'" ]
	[f/s]Vâng, em rất hạnh phúc ạ。[lr_]
	[f/cl]So với cuộc sống trước kia, có lẽ đáng sợ, nhưng bây giờ thì em rất hạnh phúc。[p_]
;	→こっちも幸せ、大丈夫/安心して、慣れるよ
[else][eval exp="f.last_act='c_幸せ？/一緒だから'" ]
	[f/ss]Vâng, em rất hạnh phúc ạ。[lr_]
	[f/s][name] đã luôn ở bên em sau tất cả。[p_]
;	→良かった、こっちも幸せ
[endif][end_talk]

*元気？
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_元気？/はい'" ]
	[f/s]Vâng、Em cảm thấy ổn ạ。[lr_]
	[f/re]Em cảm thấy cơ thể mình có vẻ đã khỏe hơn trước rất nhiều rồi ạ。[p_]
;	→良かった
[else][eval exp="f.last_act='c_元気？/はい'" ]
	[f/s]Vâng, em chẳng thấy đau tí nào。[lr_]
	[f/ss]Có sức khỏe tốt luôn là điều tuyệt vời nhỉ。[p_]
;	→良かった
[endif][end_talk]

*大丈夫？
*無理してない？
[cm_t][random_2]
[if exp="f.r==1" ]
	[f/s]Em vẫn ổn。[lr_]
	Em chắc là mình đã khỏe hơn trước rất nhiều、[r]
	[f/re]Em nghĩ về điều đó sẽ giúp cho quộc sống của mình tốt hơn。[p_]
;	→良かった
[else]
	[f/s]Em không có gượng ép mình đâu~？[lr_]
	[f/ss]Giúp đỡ anh là cả một niềm vui, dù cho thân thể em có lụi tàn đi nữa。[r]
	được giúp anh vẫn quý hơn kết quả mà em gặt hái được[p_]
;	→良かった
[endif][eval exp="f.last_act='c_無理してない？/はい'" ][end_talk]

*欲しいものある？
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_欲しいもの/特に'" ]
	[f/cl][um_07]Mồ…. Em chả nghĩ được cái gì cả _._。[lr_]
	[f/s]Em đã nhận được nhiều hơn những niềm vui giản đơn mà em có được trước đây。[p_]
;	→思いついたら言って
[else][eval exp="f.last_act='c_欲しいもの/ぎゅって'" ]
	[f/sp][um_10] Ùm…. Giờ sao nhỉ? ,… Ôm em đi nha？[lr_]
	[f/c][a_07]…Ý anh không phải vậy à?[p_]
;	→ギュッとする、違う
[endif][end_talk]

*痛くない？
[cm_t]
[eval exp="f.last_act='c_痛くない？'" ]
	[f/s]Dạ, Lúc mới bị, thực sự rất đau đớn。[lr_]
	Nhưng giờ thì không sao nữa rồi。[p_]
[end_talk]

;;感想/感情ポジティブ
*嬉しい
[cm_t][if exp="f.last_act=='c_楽しい？/はい'" ][jump target="*楽しい？/はい>嬉しい" ][endif]
[eval exp="f.last_act='c_嬉しい'" ]
	[f/s]Mọi thứ vẫn ổn chứ ạ？[lr_]
	[f/ss]Nếu như [name] hạnh phúc, em cũng không thể kiềm nổi niềm vui sướng ấy đâu.。[p_]
[end_talk]

*楽しい
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_楽しい'" ]
	[f/ss]Vâng、em vui lắm ạ。[lr_]
	[f/s]Khi [name] và em ở bên nhau, dù ở đâu, làm gì, em vẫn thấy rất thoải mái ạ.。[p_]
[else]
	[f/]Đúng vậy nhỉ？[p_]
	[f/cl]Nhưng chỉ cần làm mọi thứ như bình thường cũng đủ vui rồi、[r]
	[f/re]Em không chắc nhưng em tự hỏi rằng đôi khi [name] có cảm thấy như thế không?。[lr_]
	[f/s]Khi có anh ở bên, chỉ cần anh thấy vui, là em cũng đủ hạnh phúc rồi。[p_]
[endif][end_talk]

*幸せ
[cm_t][eval exp="f.love=f.love+1" ][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_幸せ'" ]
	[f/s]Thật chứ ạ？[lr_]
	[f/ss]Nếu anh nghĩ chỉ cần có em là đủ, thì em ắt hẳn là người hạnh phúc nhất rồi。[p_]
[else][eval exp="f.last_act='c_幸せ'" ]
	[f/s]Em yêu [name] nhiều hơn cả anh biết đấy[lr_]
	[f/scl]Chỉ cần [name] nói như thế cũng đủ làm em yêu anh biết chừng nào…。[p_]
[endif][end_talk]

;;感想/感情ネガティブ
*お腹すいた
[cm_t]
[if exp="f.act<=2" ][eval exp="f.last_act='c_お腹すいた午前/早めに'" ]
	[f/]À, anh đói rồi ha?[lr_]
	[f/s]Thế thì sao mình không chuẩn bị ăn trưa sớm hơn tí nhỉ。[p_]
[elsif exp="f.act==3" ][eval exp="f.last_act='c_お腹すいた昼/何にしましょう'" ]
	[f/]Sắp trưa đỉnh đầu rồi~。[lr_]
	[f/s]Chúng mình nên ăn gì hôm nay nhỉ。[p_]
[elsif exp="f.act==4" ][eval exp="f.last_act='c_お腹すいた食後/デザートでも？'" ]
	[f/]Bữa trưa hôm nay chưa đủ ha?[lr_]
	[f/cl]Có lẻ trà có thể giúp anh thỏa mãn cơn đói đấy…[lr_]
	[f/ss]Ahh, hay là mình dùng ít đồ tráng miệng nhé？[p_]
[else][eval exp="f.last_act='c_お腹すいた午後/そろそろ夕食'" ]
	[f/]Thật sự là em cũng cảm thấy hơi đói。[lr_]
	[f/s]Tụi mình nên ăn tối sớm một chút không anh?[p_]
[endif][end_talk]

*体調が悪い
[cm_t][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_体調悪い'" ]
	[f/c]Anh ổn chứ？[lr_]
	[f/re]Trông anh không được khỏe, ngồi nghỉ tí nhé？[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_体調悪い'" ]
	[f/c]Anh ổn chứ？[lr_]
	[f/re]Em nghĩ nếu anh không khỏe, anh nên đi nghỉ sớm đi ạ。[p_]
	[f/re]Em có thể giúp gì cho anh không？[p_]
[else][eval exp="f.last_act='c_体調悪い'" ]
	[f/]Anh bị căng thẳng hả？[lr_]
	[f/c]Nếu em có thể giúp gì được anh, xin anh hãy nói em nghe。[p_]
[endif][end_talk]

*眠い
[cm_t]
[if exp="f.act<=2" ][eval exp="f.last_act='c_眠い朝'" ]
	[f/]Anh còn buồn ngủ sao？[lr_]
	[f/s]Do anh ngủ không đủ giấc sao[lr_]
	[f/ssp]Hẳn do em làm phiền anh đêm qua nhỉ![sm_09][p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_眠い昼'" ]
	[f/c]Sáng và chiều luôn làm người ta mệt mỏi nhỉ。[lr_]
	[f/cl]Em cũng không rõ nhưng em cũng thấy hơi mệt。[p_]
[else][eval exp="f.last_act='c_眠い午後'" ]
	[f/c]Em tự hỏi liệu em đang có căng thẳng quá không?…。[lr_]
	[f/re]Có lẽ tụi mình nên đi ngủ sớm？[p_]
[endif][end_talk]

;寒い/さむい
;*cold
;
;[end_talk]

;;評価
*貧乳
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_貧乳/成長する'" ]
	[f/cl_nt]…。[p_]
	[f/re]Em còn lớn nữa mà, chắc chúng sẽ bự ra thôi。[lr_]
	[f/re]Hy vọng thế…。[p_]
;	→成長する/大きくなる、可愛い/好き、小さいままで
[else][eval exp="f.last_act='c_貧乳/成長する'" ]
	[f/c]Em biết mà! Ngực bự luôn hấp dẫn anh？[lr_]
	[f/re]Cho em thời gian đi, em sẽ….cố gắng。[p_]
;	→成長する/大きくなる、可愛い/好き、小さいままで
[endif][end_talk]

*ちっちゃい
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_ちっちゃい/そうかも'" ]
	[f/]Có lẽ size của em hơi nhỏ hơn cỡ trung bình thì phải。[lr_]
	[f/cl]Có lẽ do quộc sống trước đây。[p_]
;	→胸が、大きくなる、可愛い
[else][eval exp="f.last_act='c_ちっちゃい/役に立てない'" ]
	[f/]Đúng rồi nhỉ。[lr_]
	[f/cl]Của em không lớn lắm, nhưng nếu như em lớn tí nữa thì[r]
	[f/re]Em có thể hữu ích cho [name] hơn bây giờ…。[p_]
;	→胸が、大きくなる、大丈夫、十分助かってる
[endif][end_talk]

*可愛い
[if exp="f.last_act=='c_偉い/何かした？'" ][jump target="*偉い/何かした？>可愛い" ][endif]
[cm_t][eval exp="f.love=f.love+1" ][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_可愛い/そうなのかな'" ]
	[f/cl]Thực sự thì, em không chắc là mấy từ đó phù hơp với mình。[lr_]
	[f/ss]Nhưng nếu [name] nghĩ thế thì ắt hẳng nó đúng như vậy。[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_可愛い/もっと好かれたい'" ]
	[f/s]Cảm ơn anh rất nhiều。[lr_]
	[f/ss]Em muốn trở nên dễ thương hơn để [name] có thể yêu em nhiều hơn。[p_]
[else][eval exp="f.last_act='c_可愛い/信じれる'" ]
	[f/cl]Em không nghĩ là… thậm chí em còn chẳng hiểu được anh trước kia。[lr_]
	[f/s]Nhưng bây giờ, em tin chắc rằng anh đã khiến em trở nên đáng yêu hơn。[p_]
[endif][end_talk]

*綺麗
[cm_t][eval exp="f.love=f.love+1" ][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_綺麗/そうありたい'" ]
	[f/]Vậy ư？[lr_]
	[f/scl]Thậm chí là em có lớn lên đi chăng nữa, em vẫn sẽ mãi ở bên [name][r]
	[f/re][name][um_13]Em muốn chóng trưởng thành để khi bị bắt gặp cũng không khiến anh xấu hổ。[p_]
;	→素敵だよ、自信持って
[else][eval exp="f.last_act='c_綺麗/わからない'" ]
	[f/]Thế … khuôn mặt này thì sao ạ?[um_07] Em không tự tin lắm về cơ thể mình…。[lr_]
	[f/ss]Nhưng em thật hạnh phúc khi [name] cũng cảm thấy em như vậy。[p_]
;	→自信持って
[endif][end_talk]

*笑顔がかわいい
[if exp="f.last_act=='c_偉い/何かした？'" ][jump target="*偉い/何かした？>可愛い" ][endif]
[cm_t][eval exp="f.last_act='c_笑顔がかわいい'" ][random_2]
[if exp="f.r==1" ]
	[f/s]Cảm ơn anh ạ。[lr_]
	[f/ss]Anh biết không, người duy nhất có thể khiến em nở nụ cười này, chỉ có mỗi [name] thôi？[p_]
[else]
	[f/ss][sm_09]fufu[lr_]
	[f/re]Nghe những lời anh nói, em cảm thấy thật hạnh phúc。[p_]
[endif][end_talk]

*偉い
[cm_t][random_2][if exp="f.love<=1000" ][eval exp="f.r=1" ][endif]
[if exp="f.r==1" ][eval exp="f.last_act='c_偉い/何かした？'" ]
	[f/][um_10]E-to~…[lr_]
	[f/s]Em đã làm được gì xứng đáng để anh ca ngợi đâu?[p_]
;	→仕事、家事、可愛い
[else][eval exp="f.last_act='c_偉い/撫でて'" ]
	[f/s]Em có ích với anh đúng không [name]?[lr_]
	[f/ss]Thế thì anh xoa đầu em nha ^^[sm_09][p_]
[endif][end_talk]

*えろい
[if exp="f.lust<=300" ][c_non][endif]
[cm_t][add_lust_act][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_えろい/誰のせい？'" ]
	[f/clcp][um_02]Uhmmm… [name], ý anh là…。[lr_]
	[f/cq]Không biết đó là lỗi của ai nhỉ？[p_]
;	→Sylvie、ごめん
[elsif exp="f.r==2" ][eval exp="f.last_act='c_えろい/あなたのせい'" ]
	[f/clp][um_01]Nhưng bởi vì [name] đã khiến em thành ra thế này!。[lr_]
	[f/cq][name] hãy … nhận trách nhiệm đi。[sm_09][p_]
;	→責任取る
[else][eval exp="f.last_act='c_えろい/嫌い？'" ]
	[f/cp][um_02]…Phải chăng sự "ecchi" của em làm anh khó chịu？[name]？[p_]
;	→好き、お淑やかに
[endif][end_talk]

*優しいね
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_優しい/あなたのおかげ'" ]
	[f/ss][um_01]Vì anh đối xử rất tốt với em nên em cũng ..., [name]..？[p_]
[else][eval exp="f.last_act='c_優しい/あなたの方が'" ]
	[f/s]Vậy ư？[lr_]
	[f/ss]Em nghĩ [name] là người tốt hơn em nhiều。[p_]
;	→ありがとう、そうでもない
[endif][end_talk]

*天使
[cm_t][eval exp="f.last_act='c_天使'" ]
	[f/ssc][um_01]Em cũng chẳng còn giống một nô lệ , nhưng...、[r]
	Em cũng không thể so với một thiên thần được。[p_]
;	→サキュバス
[end_talk]

*サキュバス
[end_talk]

;;甘える
*助けて
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_助けて'" ]
	[f/c]Vâng ạ？[lr_]
	[f/re]Nếu điều đó tốt cho anh, em sẽ lắng nghe tất cả những vấn đề của anh。[p_]
[else][eval exp="f.last_act='c_助けて'" ]
	[f/c][eh_01]Anh không sao chứ？[lr_]
	[f/re]Em có thể giúp gì được anh không？[p_]
[endif][end_talk]

*応援して
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_応援して'" ]
	[f/s]？[p_]
	[f/ss]Uhm, cố gắng lên nhé!、[name]♥[p_]
[else][eval exp="f.last_act='c_応援して'" ]
	[f/s][eh_01]…？[p_]
	[f/s][name]!Em chắc chắn anh sẽ ổn thôi, cứ cố hết sức nhé。[p_]
[endif][end_talk]

*撫でて
[cm_t][random_2]
	[f/][a_01]Anh muốn em xoa đầu anh à, [name]？[lr_]
	[f/s]Thế thì phiền anh vậy。[p_]
[if exp="f.r==1" ][eval exp="f.last_act='c_撫でて'" ]
	[f/s][na_1]……Em tự hỏi [name] sẽ cảm thấy như thế nào khi xoa đầu em[p_]
[else][eval exp="f.last_act='c_撫でて'" ]
	[f/scl]…Cảm ơn anh vì tất cả、[name]。[p_]
[endif][end_talk]

;甘えたい/慰めて/なでて/あまえたい
;*寂しい
;
;[end_talk]

;*眠れない
;
;[end_talk]

*ごめん
[if exp="f.last_act=='c_嫉妬'" ][jump target="*嫉妬>ごめん" ][endif]
[cm_t][eval exp="f.last_act='c_ごめん'" ]
	[f/][a_02]…Anh đang nói về điều gì thế？[lr_]
	[f/s]Nhưng anh có làm điều gì để cần phải xin lỗi đâu？[p_]
[end_talk]

;;要求
*笑って
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_笑って'" ]
	[f/][a_01]Nếu anh hỏi em làm gì thì hơi bất ngờ đấy…[lr_]
	[f/ss]…Em sẽ chỉ cười thôi nhỉ ^^[sm_19]。[lr_]
	[f/s]Em đang tự hỏi thế nào mới là hạnh phúc[p_]
[else][eval exp="f.last_act='c_笑って'" ]
	[f/ss]…Vâng♥[p_]
	[f/s]Em không nghĩ mình có thể thay đổi được quá khứ, nhưng、[r]
	Giờ thì em có thể mỉm cười tự nhiên được rồi。[p_]
[endif][end_talk]

*抱きしめて
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_抱きしめて'" ]
	[f/sp]Vâng, Đã làm phiền anh rồi…。[lr_]
	[f/ssp][sm_09]fufu…♥[p_]
[else][eval exp="f.last_act='c_抱きしめて'" ]
	[f/ss]Vâng、Thật vinh hạnh quá♥[lr_]
	[f/sclp][sm_09]…Thật ấm áp[p_]
[endif][end_talk]

*こっちきて
[cm_t][eval exp="f.last_act='c_こっちきて'" ]
	[f/ss]Vâng…♥[lr_]
	[f/sp]…Em tự hỏi sao bên [name] em lại thấy hạnh phúc đến thế[p_][f/ssp][um_09]...[p_]
[end_talk]

*キスして
[if exp="f.sex<=0 || f.sex=='yet'" ][c_non][endif]
[cm_t][eval exp="f.love=f.love+1" ][mouth_up_little]

[if exp="f.lust>=600 || f.mood=='lust'" ][else][eval exp="f.last_act='c_キスして/バード'" ]
	[f/sp][eh_02]Dạ, nhưng anh có thể cúi xuống một chút được không？[p_]
	[f/clp][um_10]…Un。[l_]
	[f/re]Chuu~…。[lr_]
	[f/sp][sm_21]Thay vì làm những cách khác, hôn anh luôn làm em cảm thấy tốt hơn。[p_]
[end_talk][endif]

[eval exp="f.last_act='c_キスして/ディープ'" ]
[random_2][add_lust_act][mouth_up_little]
[if exp="f.r==1" ]
	[f/sp]Vâng、[l_]
	[f/clp][um_10]Unmu…。[p_]
	[_](Cái phút giây môi chạm môi, cô ấy đưa lưỡi vào miệng tôi[p_]
	#Sylvie
	[f/re][um_10]Chuu~…reru…。[lr_]
	[f/re][um_13]Unmu…haa……juru~…。[p_]
	[f/re]Fuhaa~…[lr_]
	[f/cq]…[name]♥[p_]
[else]
	[f/sp]Vâng、[l_][um_09]Un…。[p_]
	[_]Hơi thở của cô ấy nóng hơn khi cô ấy đưa lưỡi vào miệng tôi。[p_]
	[f/re][um_01]Un~chuu~…Fua…[lr_]
	[f/re][um_13]Unmu…haa……Juru…[lr_]
	[f/re]Chuu~…reru[p_]
	[f/re][um_13]Puaa…[p_]
	[f/cq]…[name]♥[p_]
[endif][end_talk]

*そばにいて
[cm_t][eval exp="f.love=f.love+1" ][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_そばにいて/離れません'" ]
	[f/ss]Vâng、đúng rồi đấy ạ。[lr_]
	[f/sp]Nếu đó là những gì [name] muốn, em sẽ không bao giờ rời xa anh đâu♥[p_]
[else][eval exp="f.last_act='c_そばにいて/こちらからも'" ]
	[f/s]Đáng lẽ em mới là người nói điều đó。[lr_]
	[f/scl]Làm ơn, hãy ở bên em mãi mãi…♥[p_]
[endif][end_talk]

*胸触らせて
[end_talk]

*手握って
[cm_t]
	[f/s]Vâng[p_][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_手握って/小さい？'" ]
	[f/re][um_10]Tay của [name] thật lớn。[lr_]
	[f/]Chắc vì tay của em nhỏ hơn…nhỉ？[p_]
[else][eval exp="f.last_act='c_手握って/優しい'" ]
	[f/scl]…Tay của anh thật dịu dàng。[p_]
[endif][end_talk]

;;要望
*抱きしめたい
[cm_t][eval exp="f.last_act='c_抱きしめたい'" ]
	[f/ss]Tất nhiên là anh có thể chứ![p_]
	[f/sclp][eh_02]…Eh![lr_]
[random_3]
[if exp="f.r==1" ]
	[f/re][um_09]Fuu~tsu…[name]…♥[p_]
[elsif exp="f.r==2" ]
	[f/re]n…Thật ấm áp[p_]
[else]
	[f/re]…Em thật hạnh phúc。[p_]
[endif][end_talk]

*撫でていい？
[cm_t][eval exp="f.last_act='c_撫でていい？'" ]
	[f/]Sau bao lâu nay, dù vẫn mong được chấp thuận, không biết có vấn đề gì không ạ?[lr_]
	[f/ss]Tất nhiên là được ạ。[lr_]
	[f/s]Như thể em không bao giờ từ chối vậy。[p_]
[end_talk]

*キズ触らせて
[end_talk]
*いたずらしたい
[end_talk]
*キスしたい
[end_talk]

*Sylvie
[if exp="f.love>=1000" ][random_4][else][random_3][endif]
[cm_t][eval exp="f.last_act='c_Sylvie/はい？'" ]
[if exp="f.r==1" ]
	[f/s][eh_01]Vâng、Có chuyện gì ạ [name]？[p_]
[elsif exp="f.r==2" ]
	[f/s][a_01]Vâng、Gì thế ạ？[p_]
[elsif exp="f.r==3" ]
	[f/s][a_02]Vâng、anh cần gì ạ？[p_]
[else][eval exp="f.last_act='c_Sylvie/はい♥'" ]
	[f/ssp]Đúng ạ, em là Sylvie của anh、[name]♥[p_]
[endif][end_talk]

*お姉ちゃん
[end_talk]
*お母さん
[end_talk]

;;挨拶
*おはよう
[cm_t]
[if exp="f.act<=2" ][eval exp="f.last_act='c_おはよう朝'" ]
	[f/s]Vâng、(ohayou~gozaimasu)Chào buổi sáng[lr_]
	[f/re]Em hy vọng hôm nay mọi thứ vẫn tốt đẹp。[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_おはよう昼'" ]
	[f/s]Vâng。Chào buổi sáng。[lr_]
	[f/]Nhưng giờ đã quá trưa rồi？[p_]
[else][eval exp="f.last_act='c_おはよう夜'" ]
	[f/c]Em nghĩ là chào “buổi tối” sẽ thích hợp lúc này hơn…[p_]
[endif][end_talk]

*こんばんわ
[cm_t]
[if exp="f.act<=2" ][eval exp="f.last_act='c_こんばんわ朝'" ]
	[f/]Em thấy hình như hơi sớm thì phải。[lr_]
	[f/s]Chúng ta vừa mới ngủ dậy mà。[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_こんばんわ昼'" ]
	[f/]Vâng、(konbanwa) - chào buổi chiều…[p_]
	[f/re]「Em thấy hơi sớm để “chào buổi chiều” nhỉ？[p_]
[else][eval exp="f.last_act='c_こんばんわ夜'" ]
	[f/s]Vâng、chào buổi chiều。[lr_]
	[f/]Có vấn đề gì ạ。[p_]
[endif][end_talk]

*こんにちは
[cm_t]
[if exp="f.act<=1" ][eval exp="f.last_act='c_こんにちは朝'" ]
	[f/]Anh có nghĩ là “chào buổi tối” chắc hợp hơn không…？[p_]
[elsif exp="f.act<=4" ][eval exp="f.last_act='c_こんにちは昼'" ]
	[f/s]Vâng、chào buổi tối。[lr_]
	[f/]Có vấn đề gì ạ。[p_]
[else][eval exp="f.last_act='c_こんにちは夜'" ]
	[f/s]Có lẽ hơi sớm để nói "chào buổi tối"？[p_]
[endif][end_talk]

*お疲れ様
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_お疲れ様'" ]
	[f/s]Vâng、[name] cũng vậy。[p_]
[else][eval exp="f.last_act='c_お疲れ様'" ]
	[f/s]Cảm ơn anh ạ。[p_]
	[f/re]Nhưng、em đã làm được gì đâu？[p_]
[endif][end_talk]

;;行動
*じー
[cm_t][random_4][eval exp="f.last_act='c_じー'" ]
[if exp="f.r==1" ]
	[f/s_nt]…？[p_]
[elsif exp="f.r==2" ]
	[f/][a_01]…Có gì không ổn sao、[name]？[p_]
[elsif exp="f.r==3" ]
	[f/p][eh_01]…Có gì dích trên mặt em ạ?[p_]
[else]
	[f/clp]…Hơi bị xấu hổ khi anh cứ nhìn chăm chăm vào e như thế đó ><。[p_]
[endif][end_talk]

*ぎゅー
[if exp="f.last_act=='c_欲しいもの/ぎゅって'" ][jump target="*欲しいもの/ぎゅって>する" ][endif]
[c_non]

*キスする
[end_talk]

;;その他
*オーレリア
[if exp="f.shop_talk>=1" ][else][c_non][endif]
[if exp="f.jealous>=4" ][jump target="*嫉妬" ][endif]
[cm_t][random_4]
[if exp="f.r==1" ]
	[f/c]Uừ thì cô ấy đẹp đấy, nhưng anh không thấy hơi đáng sợ sao？[lr_]
	[f/re]Cách cô ấy nói chuyện thật khó hiểu…。[p_]
[elsif exp="f.r==2" ]
	[f/]…Uhm… Anh có thấy người chủ shop đó “hơi bự” hông?。[lr_]
	[f/cl]Không… ý em là… cô ta cho em 1 cái ấn tượng như vậy, em không có ý gì khác đâu。[p_]
[elsif exp="f.r==3" ]
	[f/s]Cô ta khá thời trang anh nhỉ。[lr_]
	[f/re]Em tin rằng đó là kì vọng của 1 chủ cửa hàng quần áo đối với khách của mình。[p_]
[else]
	[f/s]Shop của cô ấy có quá nhiều thứ đáng để chọn nhỉ。[lr_]
	[f/re]Em thấy như kiểu có hàng tá đồ mặc thường ngày luôn sẵn có ở shop。[p_]
[endif][eval exp="f.last_act='c_woman'" ][end_talk]

*ネフィー
[cm_t]
[if exp="f.cafe_talk!=1" ][c_non][endif]
[if exp="f.talk_neph==1" ][else][eval exp="f.talk_neph=1" ]
	[f/c]Um, ai nữa vậy？[lr_]
	[f/s]…Ahh, liệu đó có phải tên của Thým bồi bàn không。[p_][endif]
[if exp="f.jealous>=4" ][jump target="*嫉妬" ][endif]

[random_5]
[if exp="f.r==1" ]
	[f/]Trông cô ấy có hơi bê bối, nhưng có vẻ cô ta chưa bao giờ làm đổ 1 cái dĩa nào。[lr_]
	[f/re]Nó thật sự đáng kinh ngạc đấy。[p_]
[elsif exp="f.r==2" ]
	[f/]Cô ấy là kiểu người kì lạ nhỉ。[lr_]
	[f/cl]Nó như kiểu cô ấy sống hẳn ở đó hay ở đâu nhỉ…。[p_]
[elsif exp="f.r==3" ]
	[f/]Đồ cô ấy bán khác với thứ cô ấy đang mặc và thậm chí là những thứ khác。[lr_]
	[f/re]Liệu chăng cô ấy có gì đặc biệt hay không？[p_]
[elsif exp="f.r==4" ]
	[f/s]Chuỗi hạt đeo bên hông của cô ta khá dài。[p_]
	[f/re]Em chắc là chúng không gây cản trở lắm、[lr_]
	[f/cl]Em chưa bao giờ thấy điều gì xảy ra với nó。[p_]
[else]
	[f/c]Em cũng không biết nữa… Trông cô ấy đờ đẫn, dáng đi như đang say。[lr_]
	[f/]Chuyển động cũng lạ nữa、[lr_]
	[f/s]Thậm chí là với cái điệu bộ đó, càng nhìn lâu càng làm em ấy mệt mỏi。[p_]
[endif][eval exp="f.last_act='c_woman'" ][end_talk]

;;返答
*嫉妬
[cm_t][random_2]
[if exp="f.r==1" ]
	[f/cl]…Có vẻ anh thích nói về người phụ nữ khác lắm nhỉ。[lr_]
	[f/re]Không, nó không phải do em quan tâm thái quá đâu。[p_]
[else]
	[f/cl]…Vậy anh chỉ thích nói về phụ nữ hoy đúng ko。[lr_]
	[f/re]Không, chả có gì đâu。[p_]
[endif][eval exp="f.last_act='c_嫉妬'" ][end_talk]

*嫉妬>愛してる
[cm_t][eval exp="f.love=f.love+2" ][eval exp="f.talk_love=f.talk_love+1" ]
[eval exp="f.last_act='c_嫉妬>愛してる'" ]
	[f/cl]…Em biết chứ。[lr_]
	[f/cp]…Bởi vì em yêu [name] nhất？[p_]
[end_talk]

*嫉妬>ごめん
[cm_t][eval exp="f.last_act='c_嫉妬>ごめん'" ]
	[f/cl]…Gì vậy ạ?？[p_]
	[f/scl][sm_09]…fufu~[p_]
[end_talk]

*フェルム
[cm_t][eval exp="f.last_act='c_フェルム'" ]
[if exp="f.ferrum==1" ][eval exp="f.ferrum=2" ]
	[f/c]Etou、Đó là ai nhỉ？[lr_]
	[f/]…Ahh, đó có thể là tên của vị doanh nhân chăng。[p_]
	[f/re]Có phải anh tình cờ gặp ông ta (lão thương nhân) khi đi mua sắm 1 mình đúng không？[p_]
	[f/clc]Ước gì em có thể nói lời cảm ơn người đó vì ông ta mang em đến với anh…。[lr_]
	[f/c]Nếu anh gặp lại ông ta lần nữa khi em không bên cạnh, liệu anh sẽ nói lời cảm ơn chứ？[p_]
	[f/cl]Ông ấy đem em từ bờ vực sự sống về, và để em gặp [name] trước thềm nhà này。[lr_]
	[f/s]Tất cả niềm hạnh phúc em đang có là nhờ ông ta cả。[p_]
[end_talk][endif]
[if exp="f.ferrum>=2" ][else][c_non][endif]

[random_6]
[if exp="f.r==1" ]
	[f/]Người thương nhân ấy sẽ đến khu mình thường xuyên đúng chứ?。[lr_]
	[f/s]Có vẻ công việc của ông ta khá thuận lợi, dù không biết là làm gì nữa。[p_]
[elsif exp="f.r==2" ]
	[f/cl]Ông ta có vẻ mới có 1 chuyến hành trình dài。[lr_]
	[f/s]Em nghĩ là vì công việc nên ông ta phải đi nhiều nơi。[p_]
[elsif exp="f.r==3" ]
	[f/]Em tự hỏi là ông ta có mua gì ở nước ngoài không?。[lr_]
	[f/re]Em đang nghĩ về những ngày xưa, cái ngày mà ông ta đem em đến đây、[r]
	[f/re]Em nhớ là em thấy vài cái hộp có những dòng chữ tiếng nước ngoài mà em chả thể đọc được。[p_]
[elsif exp="f.r==4" ]
	[f/cl]Em không thể nói rằng ông ta đối xử dịu dàng như anh, nhưng cũng không tới nỗi thô lỗ。[lr_]
	[f/]Ông ta đối xử với em như một thứ đồ vật vậy、[r]
	nên em khá chắc là ông ta chỉ xem em như một món hàng thôi。[p_]
	[f/s]Nhưng ông ấy đã tạm hoãn chuyến đi của mình để đưa em đến thềm nhà [name]、[r]
	nên em nghĩ, ít nhiều gì thì ông ấy vẫn xem em như một con người。[p_]
[elsif exp="f.r==5" ]
	[f/]Nếu em không lầm thì chính [name] đã cứu ông ta đúng chứ？[lr_]
	[f/c]Em tự hỏi liệu ông ta đã gặp nguy hiểm gì nhỉ…。[p_]
	[f/cl]Ít nhất là lúc em còn ở cùng ông ta[r]
	Công việc của ông ta thì có thể gặp nguy hiểm gì nhỉ。[p_]
[elsif exp="f.r==6" ]
	[f/cl]Ông ấy cũng có hơi đáng sợ một chút。[lr_]
	[f/s]Nhưng ông ta cũng chả bao giờ bỏ em lại、[r]
	[f/re]nên em không nghĩ ông ta là người xấu。[p_]
[endif][end_talk]

;;お菓子
*ケーキ
[end_talk]
*クッキー
[end_talk]
*お菓子
[end_talk]
*アップルパイ
[end_talk]
*パンケーキ
[end_talk]
*チョコケーキ
[end_talk]

*医者
[end_talk]

*おっぱい
[cm_t][eval exp="f.last_act='c_胸'" ]
[f/c]Vậy ra [name] cũng thích phụ nữ đầy đặn？[lr_]
[f/clc]Quãng thời gian anh gặp thým bồi bàn và bà chủ cửa hàng quần áo sẽ trở thành một chút đau khổ với em…。[p_]
[end_talk]

*料理
[cm_t][random_3]
[if exp="f.r==1" ][eval exp="f.last_act='c_料理'" ]
	[f/]Em nấu ăn hợp khẩu vị của anh không ạ？[lr_]
	[f/s]Hãy cho em biết những món mà anh thích đi [name]。[p_]
[elsif exp="f.r==2" ][eval exp="f.last_act='c_料理'" ]
	[f/s]Em rất dễ mắc lỗi khi nấu ăn, nhưng dù sao em nghĩ em biết  mình sai chỗ nào。[lr_]
	[f/ss]Em vẫn luôn chăm chỉ để nấu tốt hơn, Và em tin là mình sẽ làm tốt việc đó。[p_]
[else][eval exp="f.last_act='c_料理'" ]
	[f/s]Em muốn mình nấu được nhiều món nữa cơ。[lr_]
	[f/re]Để em có thể nấu bất cứ thứ gì mà [name] muốn ăn ♥[p_]
[endif][end_talk]

*えんいー
はい、えんいー？
…ぼふにゃー
[end_talk]

*傷跡
[cm_t][random_2]
[if exp="f.r==1" ][eval exp="f.last_act='c_傷跡'" ]
	[f/cl]Em biết, những vết sẹo này thật xấu xí。[lr_]
	[f/s]Nhưng、nếu [name] không khó chịu với nó, em cung chả buồn phiền gì đâu。[p_]
[else][eval exp="f.last_act='c_傷跡'" ]
	[f/clc]Em vẫn nhớ như in những kí ức kinh hoàng khi em “nhận” những vết thương ấy。[p_]
	[f/re]Nó đau đớn vô cùng, và em rất sợ 、[r]
	Và bằng cách nào đấy, em biết được rằng chúng sẽ chóng thành những vết sẹo xấu xí。[p_]
	[f/]Nhưng tất cả chỉ là quá khứ。[lr_]
	[f/cl]Sẽ chẳng có gì thay đổi nếu em nghĩ mãi về quá khứ, nên em chả cần quan tâm nữa。[p_]
[endif][end_talk]

*ほにゃらら
はい？
ほにゃらら？
…ほにゃらら？
[end_talk]

;;特殊
*仕事
*仕事をしてる
[if exp="f.last_act=='c_偉い/何かした？'" ][jump target="*偉い/何かした？>仕事" ][endif]
*仕事をしよう
[if exp="f.Dc_f[0]!='got'" ][c_non][endif]
[cm_t]
[if exp="f.work_c==1" ][eval exp="f.last_act='c_仕事をしよう/もう閉めた'" ]
	[f/c]Etou, liệu ta có nên đóng cửa phòng khám một ngày không nhỉ…？[p_]
[end_talk]
[elsif exp="f.act>=5" ][eval exp="f.last_act='c_仕事をしよう/もう遅い'" ]
	[f/c]Lúc này dù có mở cửa đi chăng nữa, em nghĩ chả ai tới đâu…。[p_]
[end_talk][endif]
[jump storage="act_with/work.ks" target="*work" ]

*脱いで
[if exp="f.lust<=100" ][c_non][endif]
[cm_t]
[if exp="f.dress==0 && f.lust<=500" ][eval exp="f.last_act='c_脱いで/もう脱いでる'" ]
	[f/p]Vâng、em hiểu rồi…。[p_][end_talk]
[elsif exp="f.dress==0 && f.under_p==0 && f.dress==0" ][eval exp="f.last_act='c_脱いで/もう脱いでる'" ]
	[f/p]Vâng, vậy em sẽ đổi ngay…？[p_]
[end_talk][endif]

[if exp="f.lust<=400" ][eval exp="f.dress=0" ]
	[f/p]Em có mặc gì nữa đâu？[lr_]
	[f/clp]Là anh kêu em mới làm đó、cơ thể em không có gì đẹp cả。[p_]
	[chara_mod name="dress" time="300" storage="00.png" ]
	[chara_mod name="sleeve" time="300" storage="00.png" ][chara_mod name="sleeve_b" time="300" storage="00.png" ]
	[eh_01]Eh!…。[lr_]
	[f/p]anh muốn vậy thật sao？[p_]
[else][eval exp="f.under_b=0" ][eval exp="f.under_p=0" ][eval exp="f.dress=0" ]
	[f/p]…vâng, em hiểu rồi。[lr_]
	[chara_mod name="dress" time="300" storage="00.png" ]
	[chara_mod name="sleeve" time="300" storage="00.png" ][chara_mod name="sleeve_b" time="300" storage="00.png" ]
	[chara_mod name="under_p" time="300" storage="00.png" ][chara_mod name="under_b" time="300" storage="00.png" ]
	[f/shp_nt]…[lr_]
	[f/re]脱ぎましたよ、[name]♥[p_]
[endif][eval exp="f.last_act='c_脱いで/はい'" ][add_lust_act][end_talk]

*セックス
[if exp="f.lust<=100" ][c_non][endif]
[cm_t]
[if exp="f.act>=4" ][jump storage="H/before.ks" target="*bed" ][endif]
[if exp="f.lust<=500" ]
	[f/p][eh_02]Eh! anh muốn luôn bây giờ ạ？[lr_]
	[f/re]Nhưng vẫn còn sớm mà…。[p_]
	[f/clp]Không、Không phải em không muốn。[lr_]
	[f/sp]Thế thì vào phòng ngủ đi…。[p_]
	[jump storage="H/before.ks" target="*bed" ]
[else]
	[f/p]Anh muốn làm giờ này luôn à？[p_]
	[f/sp]Không! Em ổn ạ。[lr_]
	[f/shp]Vậy em sẵn sang rồi♥[p_]
	[jump storage="H/before.ks" target="*bed" ]
[endif]

*出かけよう
[cm_t][jump storage="act_with/go_out.ks" target="*out" ]

*お茶にしよう
[if exp="f.act>=3 && f.act<=4 && f.tea_time==0" ][cm_t][jump storage="act_with/tea.ks" target="*tea" ]
[else][c_non][endif]

*出かけてくる
[cm_t][jump storage="act_alone/out_alone.ks" target="*alone" ]


*おやすみ
[if exp="f.act<=4" ][c_non][endif]
[cm_t]
	[f/]Có vẻ hôm nay kết thúc sớm hơn bình thường、do hôm nay anh thấy mệt mỏi ạ？[lr_]
	[f/s]Vậy em sẽ chuẩn bị giường。[p_]
[jump storage="talk/step6.ks" target="*night" ]

*着替えて
[cm_t]
	[f/s]Vâng、em hiểu rồi ạ。[p_]
	[f/re]Em nên đổi thành kiểu gì nhỉ？[p_]
[jump storage="sys/dress.ks" target="*change_dress" ]

*¥e
[_][close][eval exp="f.system_act=1" ][return_menu]

;;オリジナル衣装ボタン
*original_dress
[_][if exp="f.ori_c==1" ][eval exp="f.ori_c=0" ]（オリジナル衣装ボタン表示をオフにしました）[p_]
[else][eval exp="f.ori_c=1" ]（オリジナル衣装ボタン表示をオンにしました）[p_][endif]
[eval exp="f.system_act=1" ][return_menu]


;;会話返答
*偉い/何かした？>仕事
[cm_t]
[random_2][eval exp="f.last_act='c_偉い/何かした？>仕事'" ]
	[f/]Anh hôm nay không làm việc ạ？[p_]
[if exp="f.r==1" ]
	[f/s]でも、まだ大したことはできてないですし、[r]
	いろいろ一人でできる[name]はすごいなって思います。[p_]
[else]
	[f/s]あれぐらいでも[name]のお役に立ってるんでしょうか。[lr_]
	[f/ss]仕事着をいただいて、形ばかりですけど少しでも役に立ててるなら嬉しいです。[p_]
[endif][end_talk]

*家事
[if exp="f.last_act=='c_偉い/何かした？'" ][jump target="*偉い/何かした？>家事" ][endif]
[c_non]
*偉い/何かした？>家事
[cm_t][random_2]
	[f/]家事のことですか？[p_]
[if exp="f.r==1" ][eval exp="f.last_act='c_偉い/何かした？>家事'" ]
	[f/s]少しでも[name]の負担を減らせてればいいんですけど…。[lr_]
	[f/ss]普段のお手伝い以外も何かしてほしいことがあったら言ってくださいね。[p_]
[else][eval exp="f.last_act='c_偉い/何かした？>家事'" ]
	[f/cl]今よりもっとお役に立てるようにって思ってるんですけど…。[lr_]
	[f/]やっぱり一番上達しがいがあるのはお料理ですよね。[p_]
	[f/s]美味しいご飯をいろいろ作れるようになったら…[lr_]
	[f/ssp]その時はまた褒めてくれますか？[p_]
[endif][end_talk]

*偉い/何かした？>可愛い
[cm_t][random_2]
	[f/]え…？[lr_]
[if exp="f.r==1" ][eval exp="f.last_act='c_偉い/何かした？>可愛い'" ]
	[f/sc]それって、褒められるようなことなんですか？[lr_]
	[f/ssc]嬉しいですけど、なんて返すのがいいか困っちゃます…。[p_]
[else][eval exp="f.last_act='c_偉い/何かした？>可愛い'" ]
	[f/]何かしたわけじゃないのにですか？[lr_]
	[f/ss]…よくわからないですけど、[name]が嬉しいなら私も何だか嬉しいです。[p_]
[endif][end_talk]


*どういたしまして
[if exp="f.last_act=='c_ありがとう/ありがとう'" ][jump target="*ありがとう/ありがとう>どういたしまして" ][endif]
[if exp="f.last_act=='c_幸せ？/ありがとう'" ][jump target="*ありがとう/ありがとう>どういたしまして" ][endif]
[c_non]

*ありがとう/ありがとう>どういたしまして
[cm_t][eval exp="f.last_act='c_ありがとう/ありがとう>どういたしまして'" ]
	[f/s]はい。ありがとうございます。[lr_]
	[f/scl]本当に…。[p_]
[end_talk]

*出来てる
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ][jump target="*ありがとう/出来てるかな>出来てる" ][endif]
[c_non]
*ありがとう/出来てるかな>出来てる
[cm_t][random_2][eval exp="f.last_act='c_ありがとう/出来てるかな>出来てる'" ]
	[f/s]そうですか？[lr_]
[if exp="f.r==1" ]
	[f/re]でも、もっともっと[name]のお役に立ちたいです。[p_]
	[f/ssp]もっともっと[name]に感謝していただきたいです…。[p_]
[else]
	[f/re]私が頑張れる一番の理由は[name]に喜んでいただくことですから[lr_]
	[f/ss]そう感じてくださるなら嬉しいです。[p_]
[endif][end_talk]

*お願い
[if exp="f.last_act=='c_助かってる/これからも'" ][jump target="*助かる/これからも>期待してる" ][endif]
[c_non]

*期待してる
[if exp="f.last_act=='c_助かってる/これからも'" ][jump target="*助かる/これからも>期待してる" ][endif]
[c_non]

*助かる/これからも>期待してる
[cm_t][random_2][eval exp="f.last_act='c_助かる/これからも>期待してる'" ]
[if exp="f.r==1" ]
	[f/ss]はい、任せてください。[lr_]
	[f/s][name]も何か頼みたいことがあれば遠慮なく言ってくださいね。[p_]
[else]
	[f/s]はい、期待していてください。[lr_]
	[f/ss]きっともっともっと[name]のお役に立ってみせます。[p_]
[endif][end_talk]

*もう十分
[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ][jump target="*助かる/これからも>十分" ][endif]
[c_non]
*助かる/これからも>十分
[cm_t][random_2][eval exp="f.last_act='c_助かる/これからも>十分'" ]
	[f/]そうですか？[p_]
[if exp="f.r==1" ]
	[f/cl]…いえ。そんなことはないですよ。[lr_]
	[f/s]きっとまだできることがあると思います。[p_]
[else]
	[f/s]いえ、でももう少し頑張らせてください。[lr_]
	[f/re][name]に迷惑はかけないようにしますから。[p_]
[endif][end_talk]

;*助かる/これからも>ありがとう
[cm_t][c_non]
;[if exp="f.last_act=='c_助かってる/これからも' || f.last_act=='c_助かってる/もっと頑張る'" ][else][c_non][endif]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]

*良かった
[if exp="f.last_act=='c_楽しい？/はい'" ][jump target="*楽しい？/はい>良かった" ][endif]
[if exp="f.last_act=='c_幸せ？/ありがとう' || f.last_act=='c_幸せ？/一緒だから'" ][jump target="*幸せ？/はい>良かった" ][endif]
[if exp="f.last_act=='c_元気？/はい'" ][jump target="*元気？/はい>良かった" ][endif]
[if exp="f.last_act=='c_無理してない？/はい'" ][jump target="*無理してない？/はい>良かった" ][endif]
[c_non]

*楽しい？/はい>良かった
[cm_t][c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]

*無理してない？/はい>良かった
[cm_t][random_2][eval exp="f.last_act='c_無理してない？/はい>良かった'" ]
[if exp="f.r==1" ]
	[f/s]昔より体力もついてると思いますし、そんなに心配しないでも大丈夫ですよ。[lr_]
	[f/ss][name]が大事に思ってくれるのは嬉しいですけどね。[p_]
[else]
	[f/s]疲れたように見えることもあるかもしれないですけど、[r]
	楽しくて張り切りすぎちゃってるだけなので心配しないでください。[p_]
[endif][end_talk]

*幸せ？/はい>良かった
[cm_t]
[c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]

*こっちも楽しい
[if exp="f.last_act=='c_楽しい？/はい'" ][jump target="*楽しい？/はい>こっちも楽しい" ][endif]
[c_non]
*楽しい？/はい>こっちも楽しい
[cm_t][random_2][eval exp="f.last_act='c_楽しい？/はい>こっちも楽しい'" ]
[if exp="f.r==1" ]
	[f/s]そうですか？[lr_]
	[f/ss][name]と同じ時間を一緒に楽しめるのって本当に幸せです。[p_]
[else]
	[f/s]それは良かったです。[p_]
	[f/cl][name]は優しいから無理して合わせてくれてるんじゃないかって、たまに思っちゃうので[lr_]
	[f/ss]そう言っていただけると安心です。[p_]
[endif][end_talk]

*楽しい？/はい>嬉しい
[cm_t][c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]


*幸せ？/はい>こっちも幸せ
;[cm_t][c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif][end_talk]

*幸せ？/はい/ありがとう>どういたしまして
;[cm_t][c_non]
;[eval exp="f.last_act='c_'" ][random_2]
;[if exp="f.r==1" ]
;[else]
;[endif]
;[end_talk]

*こちらこそ
[if exp="f.last_act=='c_幸せ？/ありがとう'" ][jump target="*幸せ？/ありがとう>こちらこそ" ][endif]
[c_non]
*幸せ？/ありがとう>こちらこそ
[cm_t][eval exp="f.last_act='c_幸せ？/ありがとう>こちらこそ'" ]
	[f/scl][name]が本当にそう思ってくださってるのがなんとなくわかります。[p_]
	[f/]だから「どういたしまして」が正しい答えなんでしょうけど…、[lr_]
	[f/ss]でももう一度「ありがとうございます」、[name]。[p_]
[end_talk]

*大丈夫
*安心して
[if exp="f.last_act=='c_ありがとう/出来てるかな'" ][jump target="*ありがとう/出来てるかな>大丈夫" ][endif]
[if exp="f.last_act=='c_幸せ？/怖いぐらい'" ][jump target="*幸せ？/怖いぐらい>大丈夫" ][endif]
[c_non]

*幸せ？/怖いぐらい>大丈夫
[eval exp="f.last_act='c_幸せ？/怖いぐらい>大丈夫'" ]
[if exp="f.love>=1500" ][jump target="*幸せ？/怖いぐらい>大丈夫b" ][endif]
[cm_t]
	[f/s]…はい、そうですね。[lr_]
	[f/ss][name]がいてくれたら、何も怖いことなんてないはずです。[p_]
[end_talk]
*幸せ？/怖いぐらい>大丈夫b
[cm_t][random_2]
[if exp="f.r==1" ]
	[f/s]はい。ありがとうございます。[p_]
	[f/re]でもそんなに深刻に考えたりはしてないですよ。[lr_]
	[f/ss][name]がいてくれたら、何も怖いことなんてないです。[p_]
[else]
	[f/s]そうですね。[lr_]
	[f/ss][name]がいるんだから、怖がることなんてないですよね。[p_]
[endif][end_talk]

;幸せ？>怖いぐらい>慣れるよ
*慣れるよ
[if exp="f.last_act=='c_幸せ？/怖いぐらい'" ][jump target="*幸せ？/怖いぐらい>慣れるよ" ][endif]
[c_non]
*幸せ？/怖いぐらい>慣れるよ
[cm_t][random_2][eval exp="f.last_act='c_幸せ？/怖いぐらい>慣れるよ'" ]
[if exp="f.r==1" ]
	[f/]そうですかね？[lr_]
	[f/cl]慣れてしまって…いいんでしょうか。[p_]
[else]
	[f/clc]慣れたら慣れたでそれがまた怖くなりそうです。[p_]
	[f/c]…あ、ごめんなさい、[lr_]
	[f/s]後ろ向きにばっかり考えてちゃよくないですよね。[p_]
[endif][end_talk]

*思いついたら言って
[if exp="f.last_act=='c_欲しいもの/特に'" ][jump target="*欲しいもの/特に>思いついたら" ][endif]
[c_non]
*欲しいもの/特に>思いついたら
[cm_t][random_2][eval exp="f.last_act='c_欲しいもの/特に>思いついたら'" ]
	[f/s]わかりました。[p_]
	[f/cl]でも、寝る場所とご飯と、お洋服まで頂いて…[lr_]
	[f/c]これ以上望むものなんて思いつきそうもないですけど…。[p_]
[end_talk]

*欲しいもの/ぎゅって>する
[cm_t][random_3][eval exp="f.last_act='c_欲しいもの/ぎゅって>する'" ]
[_][f/s_nt]（Sylvieを抱きしめてやる[p_]
[if exp="f.r==1" ]
	[f/ss]ふふっ…♥[lr_]
	[f/sp]ありがとうございます、[name]♥[p_]
[elsif exp="f.r==2" ]
	[f/sp][name]♥[lr_]
	[f/ssp]これがいつでも私の欲しいものです♥[p_]
[else]
	[f/clp]ん…[lr_]
	[f/sp]これで、これだけで私は幸せです…♥[p_]
[endif][end_talk]

*そうじゃない
*違う
[if exp="f.last_act=='c_欲しいもの/ぎゅって'" ][jump target="*欲しいもの/ぎゅって>違う" ][endif]
[c_non]
*欲しいもの/ぎゅって>違う
[cm_t][eval exp="f.last_act='c_欲しいもの/ぎゅって>違う'" ]
	[f/cl]ん、じゃあ特にないですかね。[lr_]
	[f/s]私が今望むのは[name]と一緒にいることぐらいです。[p_]
[end_talk]


;;end
*non
[cm_t]
[_][eval exp="f.system_act=1" ][return_menu]

;;===========================================game_1======================================================

*game1_before
[cm_t]
[jump target="*game1"]


*game1_
[cm_t]
#Sylvie
[f/s]
Um!~ Vậy thì... [lr_]
[f/ss]
Hay chúng ta ra ngoài đi đâu đó nhé?[p_]
[end_talk]

*game1
[iscript]
f.talk=Math.floor(Math.random() * 6 + 1);
[endscript]
[if exp="f.love<=1000 && f.lust<=400"]
[jump target="*game1_"][endif]
[if exp="f.talk==5"]
[jump target="*game1_"][endif]
[cm_t]
[if exp="f.game1>=0"]
[else] [eval exp="f.game1=0"]
[endif]
#Sylvie
[f/ss_nt]
Vậy chúng ta bày trò gì đó chơi nhé?
[button  target="*game1_on"  graphic="s_ch/duoc_do.png"  x="650"  y="180" ]
[button  target="*non"  graphic="s_ch/thoi_khong_can.png"  x="650"  y="280" ]
[s]

*game1_on
[if exp="f.dress<=0 || f.under_p<=0 || f.under_b<=0 || f.pin<=0 || f.socks<=0 || f.head<=0"]
[jump target="*game1_on_2"]
[endif]
[jump target="*game1_on_1"]

*game1_on_1
[commu_text]
#
[resetfont]_V__Hãy Chọn một hành động nào đó: [r]
[if exp="f.set_num3<=0"]
１.[font color="lightsteelblue"][link target="*game1_of_cloth" ]【Chơi "bao-búa-kéo"】[endlink][resetfont][r][endif]
２.[font color="lightsteelblue"][link storage="talk/touch.ks" target="*mouth_kiss" ]【Hôn cô ấy】[endlink][resetfont][r]
３.[font color="lightsteelblue"][link storage="talk/touch.ks" target="*shoulder_hug" ]【Ôm cô ấy】[endlink][resetfont][r]
4.[font color="lightsteelblue"][link target="*game1_nade" ]【Xoa đầu cô ấy】[endlink][resetfont][r]
5.[font color="lightsteelblue"][link target="*game1_out" ]【Ra ngoài chơi】[endlink][resetfont][r]
6.[font color="lightsteelblue"][link target="*game1_beg" ]【"Đi ngủ"】[endlink][resetfont][r]
7.[font color="lightsteelblue"][link target="*non" ]【Thôi, không làm gì nữa】[endlink][resetfont]
[s]

*game1_on_2
[cm]
[if exp="f.dress<=0 || f.under_p<=0 || f.under_b<=0 || f.pin<=0 || f.socks<=0 || f.hair<=0"]
[else][jump target="*game1_on_1"][endif]

[commu_text]
#
[resetfont]_X__Hãy Chọn một hành động nào đó: [r]
[if exp="f.set_num3<=0"]
１.[font color="lightsteelblue"][link target="*game1_of_cloth_non" ]【Chơi "bao-búa-kéo"】[endlink][resetfont][r][endif]
２.[font color="lightsteelblue"][link storage="talk/touch.ks" target="*mouth_kiss" ]【Hôn cô ấy】[endlink][resetfont][r]
３.[font color="lightsteelblue"][link storage="talk/touch.ks" target="*shoulder_hug" ]【Ôm cô ấy】[endlink][resetfont][r]
4.[font color="lightsteelblue"][link target="*game1_nade" ]【Xoa đầu cô ấy】[endlink][resetfont][r]
5.[font color="lightsteelblue"][link target="*game1_out" ]【Ra ngoài chơi】[endlink][resetfont][r]
6.[font color="lightsteelblue"][link target="*game1_beg" ]【"Đi ngủ"】[endlink][resetfont][r]
7.[font color="lightsteelblue"][link target="*non" ]【Thôi, không làm gì nữa】[endlink][resetfont]
[s]

*game1_of_cloth_non
[cm_t][delay speed=13]
[if exp="f.game1>=2"]
#Sylvie
[f/clp]Lại trò đó nhỉ?[l_][f/sclp] Nhưng phải để em mặc đủ trang phục mới công bằng chứ[p_]
#
(...)[p_]
[jump storage="sys/dress.ks" target="*change_dress"]
[else]
#Ichibikun
Bạn hãy cho Sylvie mặc đủ trang phục mới chơi được[p_]
#
(...)[p_]
#Sylvie
Phải thay đồ sao?[p_]
[jump storage="sys/dress.ks" target="*change_dress"]
[endif]
[end_talk]

*game1_of_cloth
[cm_t][delay speed=13]
[if exp="f.game1<=0"]
[eval exp="f.game1=f.game1+1"]
#Sylvie
[f/p_nt][a_04]Gì cơ!~ [lr_]
[f/p]Trò "Bao-búa-kéo" Nhưng mà....[um_01][p_]
[f/clp]Mỗi lần em thua [name] sẽ lấy 1 món đồ trên người em ạ? [p_]
[f/sclp]Em hiểu rồi![l_][a_06] [f/ssp] [name] muốn "lột đồ" em ra phải không?[p_]
[f/sp]Thay vào đó, nếu em thắng thì [name] sẽ làm theo một yêu cầu của em nhé![sm_05][p_]
[jump storage="mod/game/off_cloth.ks" target="*set"]
[elsif exp="f.game1>=1"]
[eval exp="f.game1=f.game1+1"][jump target="*game1_of_clot_other"][endif]

*game1_of_clot_other
[cm]
[iscript]
f.talk=Math.floor(Math.random() * 3 + 1);
[endscript]
[if exp="f.talk==1"]
#Sylvie
[f/p]
lại là trò đó ạ?[lr_]
[f/shp]
Vậy chúng ta vẫn giữ nguyên luật cũ nhé ♥♥♥♥♥! [sm_05][p_]
[jump storage="mod/game/off_cloth.ks" target="*set"]
[elsif exp="f.talk==2"]
#Sylvie
[f/shp]Vâng! Em hiểu rồi ạ! Vậy chúng ta bắt đầu nhé ♥[sm_05][p_]
[jump storage="mod/game/off_cloth.ks" target="*set"]
[else]
#Sylvie
[f/shcp]Vâng! [name] có vẻ thích "lột đồ" của em nhỉ!♥♥♥[sm_05][p_]
[jump storage="mod/game/off_cloth.ks" target="*set"]
[endif]

*game1_nade
[cm_t][delay speed=13]
[black]
[set_nade]
[f/s_nt]
[show_nade]
#Sylvie
[f/scl]
Được ạ! Mời anh.♥♥♥[p_]
...[p_]
[after_nade]

*game1_out
[cm_t][delay speed=13]
[if exp="f.act<=4"][eval exp="f.out=0"]
#Sylvie
[f/ss]Vâng! Chúng ta sẽ cùng ra ngoài và đi đâu đó nhé![p_]
[jump storage="act_with/go_out.ks" target="*out"]
[else]
#Sylvie
[f/]Nhưng giờ đã khá muộn rồi. Để mai nhé! [name][p_][end_talk]
[endif]

*game1_beg
[cm_t][delay speed=13]
[if exp="f.act<=3"]
[f/sp] Bây giờ vẫn còn sớm mà nhỉ?[l_][f/sclp] Nhưng nếu [name] đã muốn thế thì....♥♥♥[sm_05][p_]
[else]
[f/sclp]Vâng! [name].♥♥♥[sm_05][p_]
[endif]
[jump storage="H/before.ks" target="*bed"]
;;-------------------------------------------------------------------------------------------------

*end_talk
[_][eval exp="f.communicate_c=f.communicate_c+1" ]
[eval exp="f.daily_communicate=f.daily_communicate+1" ]

[if exp="f.daily_communicate==3" ][eval exp="f.daily_communicate=0" ]
[eval exp="f.daily_talk=f.daily_talk+1" ][endif]
[if exp="f.communicate_c>=3" ][eval exp="f.communicate_c=0" ][eval exp="f.act=f.act+1" ][endif]
[if exp="f.last_act=='c_woman'" ][eval exp="f.jealous=f.jealous+1" ][else][eval exp="f.jealous=0" ][endif]
[return_menu]

