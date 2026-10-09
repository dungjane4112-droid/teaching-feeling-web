;;名前変更H----------------------------------------------------------
*name_change_h
[cm_t][syl][f/p]Vâng, [name] muốn em đổi cách xưng hô？[p_]
[f/re]…Vậy、Anh muốn em gọi anh là gì？[t/s]
[eval exp="f.name_h_=f.name_h" ][eval exp="f.system_act=1" ]

*name_edi_h
[edit left=780 top=160 width="400" height="42" color="magenta" size="30" name="f.name_h" ]
[button target="*sbm_name_h" x="645" y="220" graphic="menu/n_call.png" ]
[button target="*name_h_def" x="645" y="280" graphic="menu/n_call_def.png" ]
[button target="*nop_h" x="645" y="340" graphic="menu/n_non.png" ][cancelskip][s]
*sbm_name_h
[commit][cm][if exp="f.name_h==''" ][jump target="*nop_h" ][endif]
[if exp="f.lust>=800" ][f/sq]Vâng、Vậy khi chúng ta…"làm chuyện đó"…em sẽ gọi anh là [name_h]…♥
[else][f/re]Vâng, Vậy em sẽ vẫn gọi anh là [name_h] Khi chúng ta...♥♥♥。[endif]
[p_][return_menu]
*name_h_def
[cm][eval exp="f.name_h=0" ]
[f/re]Như bình thường？[r]em hiểu rồi。[p_][return_menu]
*nop_h
[cm][if exp="f.name_h==''" ][eval exp="f.name_h=f.name_h_" ][endif]
[f/re]Umm、như vậy được không ạ？[p_][return_menu]

;;名前変更----------------------------------------------------------
*name_change
[cm_t][syl][f/]Anh muốn thây đổi cách xưng hô của em？[lr_]
[f/s]Vâng, vậy anh muốn em gọi anh thế nào？[t/s]
[eval exp="f.name_=f.name" ][eval exp="f.system_act=1" ]

*name_edi
[edit left=780 top=170 width="400" height="42" color="magenta" size="30" name="f.name" ]
[button target="*sbm_name" x="672" y="260" graphic="menu/n_call.png" ]
[button target="*nop" x="672" y="330" graphic="menu/n_non.png" ][cancelskip][s]

*sbm_name
[commit][cm][if exp="f.name==''" ][_]-vui lòng nhập tên-[p_][jump target="*name_edi" ][endif]

[syl][if exp="f.name==f.name_" ]
[f/s]Un、Anh muốn em gọi như vậy ạ？[p_]
[f/re]Từ giờ em sẽ gọi anh là [name] nhé。[p_][return_menu]

[elsif exp="f.name=='お兄ちゃん' || f.name=='おにいちゃん' || f.name=='兄さん' || f.name=='お兄様' || f.name=='お兄さん' || f.name=='にぃに' || f.name=='にぃ' || f.name=='兄さま' || f.name=='兄様' || f.name=='あに様'" ]
[f/re]私、兄弟はいませんけど。妹みたいに可愛がってくれたら嬉しいです。[lr_]
[f/sp][name]。[p_][return_menu]

[elsif exp="f.name=='あなた'" ]
[f/sp]あ・な・た…♥。[p_][return_menu]

[elsif exp="f.name=='旦那様' || f.name=='旦那さま' || f.name=='だんなさま'" ]
[f/sp][name]…♥[p_][return_menu]

[elsif exp="f.name=='パパ' || f.name=='お父さん' || f.name=='お父様' || f.name=='お父上'" ]
[f/re]娘のように思ってくれてるってことなんでしょうか。[p_][return_menu]

[elsif exp="f.name=='先生' || f.name=='ドクター' || f.name=='せんせい' || f.name=='せんせー' || f.name=='センセー'" ]
[f/re]お医者さまですから、こう呼ばれるのが慣れているんでしょうか。[p_][return_menu]

[elsif exp="f.name=='先輩' || f.name=='せんぱい' || f.name=='センパイ'" ]
[f/]…なんの先輩なんでしょう？[p_][return_menu]

[elsif exp="f.name=='マスター' || f.name=='主様'" ]
[f/]意味は「ご主人様」とそう変わらないですよね？[r]
響きは違いますけど。[p_][return_menu]

[elsif exp="f.name=='ユーザー' || f.name=='ユーザ'" ]
[f/]…えんいー？[p_][return_menu]

[elsif exp="f.name=='プロデューサー' || f.name=='Pさん' || f.name=='プロデューサーさん'" ]
[f/]…[name]ってなんですか？[lr_]
[f/c]…アイドル？？ごめんなさい、よくわからないです[p_][return_menu]

[elsif exp="f.name=='ご主人様' || f.name=='ごしゅじんさま'" ]
[f/re]最初の呼び方はなんだか呼び慣れますね。[p_][return_menu]

[elsif exp="f.name=='おじさん' || f.name=='おじさま'　|| f.name=='おじ様'" ]
[f/]普通はあまり年をとったような呼ばれ方は喜ばないと思ってましたけど…。[p_][return_menu]

[elsif exp="f.name=='ダーリン' && f.lust>=10 || f.name=='だぁりん' && f.lust>=10" ]
[f/p]愛しの人…。その通りでもちょっと呼ぶのが恥ずかしいですね。[p_][return_menu]

[elsif exp="f.name=='博士' || f.name=='教授' || f.name=='はかせ' || f.name=='きょうじゅ'" ]
[f/]…何か研究もなされているんですか？[p_][return_menu]

[elsif exp="f.name=='キャプテン'" ]
[f/]スポーツを嗜んでいたことでもあるんですか？[lr_]
[f/re]まさか、軍にいたことがあるとか…？[p_][return_menu]

[elsif exp="f.name=='ゴミ' || f.name=='豚' || f.name=='ブタ' || f.name=='ゴミ虫' || f.name=='クズ' || f.name=='クソムシ' || f.name=='バカ' || f.name=='馬鹿' || f.name=='アホ'" ]
[jump target="*mazo" ]

[else]
[f/s]Vâng, từ bây giờ em sẽ gọi anh là 「[name]」 ạ。[p_][return_menu][endif]

*mazo
[f/c]
[if exp="f.lust>=100" ]
え…本当にそんな風に呼んで欲しいんですか？冗談じゃなく？[lr_]
[f/clc]…どうしても呼んで欲しいというなら、わかりました。[p_]
[f/c]でも、私を嫌いになったりしないでくださいね。[p_][return_menu]

[else]
え…そんな風に呼ぶなんて、私にはできません。[lr_]
[f/re]何か、他の呼び方でどうかお願いします。[p_]
[eval exp="f.name=f.name_" ][jump target="*name_edi" ]
[endif]

*nop
[cm][if exp="f.name==''" ][eval exp="f.name=f.name_" ][endif]
[syl][f/]Um, như vậy được không ạ？[p_][return_menu]

