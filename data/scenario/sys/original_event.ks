*event
[cm_]
;上の２行は改変したり消したりしないでください。オリジナルイベントを読み込めなくなります。


;サンプルイベント。以下を改変してイベントを書き換えてください。
;「;」で始まっている行は一つ上の行の説明です。ゲームには反映されません。
サンプルイベントを流します[p]
;	文字表示の後にクリック待ち
[stop_bgm]
;	まず部屋で流れているBGMを止めます
[black]
;	立ち絵を消して画面を真っ暗にします
[bgm_II]
;	BGM"IndigoIllumination"を流します
[set_dinner]
[y/def][e/def][m/smile]
[show_dinner]
;	[y/def]（普通まゆ）[e/def]（開いた目）[m/smile]（微笑み閉じた口）の表情で食事シーンを表示します
…。[p]
;	クリック待ち
#シルヴィ
;	喋っているキャラ名をシルヴィに設定します
[e/smile]
;	シルヴィの目を笑った目に変更します
[f/re]美味しかったですね、[name]。[lr_]
;	口パク+セリフの後にクリック待ち（クリック後に改行
[f/re]ごちそうさまでした。[p_]
;	口パク+セリフの後にクリック待ち（クリック後にテキストクリア
[stop_bgm]
;	BGMを止めます
[black]
;	立ち絵を消して画面を真っ暗にします
#
;	喋っているキャラ名の欄を空にします
…。[p]
;クリック待ち
[bgm_OB]
;	BGMO-chreBreezeを流します
[set_stand]
[bg_town]
[y/def] [e/def] [m/smile]
[show_stand]
;	背景を街で、[y/def][e/def][m/smile]の表情でシルヴィの立ち絵を表示します
#シルヴィ
;喋っているキャラ名をシルヴィに設定します
[f/re]じゃあ今日は帰りましょうか。[p_]
;	口パク+セリフの後にクリック待ち（クリック後にテキストクリア
#
;	喋っているキャラ名の欄を空にする
（では帰ろう。[p]
;	セリフの後にクリック待ち（クリック後にテキストクリア
[stop_bgm]
;	BGMを止めます
[black]
;	立ち絵を消して画面を真っ暗にします
サンプルイベント終了[p]
;	文字の後にクリック待ち（クリック後にテキストクリア




;下の１行は改変したり消したりしないでください。ゲームに戻らなくなります。
[hide_skip][bgm_SG][return_bace]

*set
[iscript]
f.r=Math.floor(Math.random() * 50 + 1);
[endscript]
[if exp="f.r==1"][eval exp="f.codex=319"][p_kv][kdz_vb]
[elsif exp="f.r==2"][eval exp="f.codex=2509"][p_sv][kdz_vb]
[elsif exp="f.r==3"][eval exp="f.codex=3642"][p_bv][kdz_vb]
[elsif exp="f.r==4"][eval exp="f.codex=422"][p_ks][kdz_vb]
[elsif exp="f.r==5"][eval exp="f.codex=4391"][p_av][kdz_va]
[elsif exp="f.r==6"][eval exp="f.codex=6227"][p_sv][kdz_vb]
[elsif exp="f.r==7"][eval exp="f.codex=1092"][p_kv][kdz_vb]
[elsif exp="f.r==8"][eval exp="f.codex=5628"][p_av][kdz_vb]
[elsif exp="f.r==9"][eval exp="f.codex=908"][p_kv][kdz_vk]
[elsif exp="f.r==10"][eval exp="f.codex=2924"][p_ks][kdz_vb]
[elsif exp="f.r==11"][eval exp="f.codex=2289"][p_kv][kdz_vb]
[elsif exp="f.r==12"][eval exp="f.codex=569"][p_bv][kdz_vb]
[elsif exp="f.r==13"][eval exp="f.codex=1425"][p_kv][kdz_va]
[elsif exp="f.r==14"][eval exp="f.codex=2303"][p_ks][kdz_vb]
[elsif exp="f.r==15"][eval exp="f.codex=2306"][p_kv][kdz_va]
[elsif exp="f.r==16"][eval exp="f.codex=2553"][p_bv][kdz_vb]
[elsif exp="f.r==17"][eval exp="f.codex=746"][p_bv][kdz_va]
[elsif exp="f.r==18"][eval exp="f.codex=5282"][p_kv][kdz_vb]
[elsif exp="f.r==19"][eval exp="f.codex=1885"][p_sv][kdz_vb]
[elsif exp="f.r==20"][eval exp="f.codex=1309"][p_kv][kdz_vb]
[elsif exp="f.r==21"][eval exp="f.codex=2571"][p_bv][kdz_vb]
[elsif exp="f.r==22"][eval exp="f.codex=1376"][p_kv][kdz_va]
[elsif exp="f.r==23"][eval exp="f.codex=4699"][p_ks][kdz_va]
[elsif exp="f.r==24"][eval exp="f.codex=399"][p_sv][kdz_vb]
[elsif exp="f.r==25"][eval exp="f.codex=3923"][p_ks][kdz_vk]
[elsif exp="f.r==26"][eval exp="f.codex=23394"][p_ks][kdz_vb][kdz_vb]
[elsif exp="f.r==27"][eval exp="f.codex=35545"][p_kv][kdz_vb]
[elsif exp="f.r==28"][eval exp="f.codex=37135"][p_ks][kdz_vb][kdz_vb]
[elsif exp="f.r==29"][eval exp="f.codex=53509"][p_ks][kdz_vb][kdz_vb][kdz_vb]
[elsif exp="f.r==30"][eval exp="f.codex=1725"] [p_sv][kdz_vb]
[elsif exp="f.r==31"][eval exp="f.codex=1493"] [p_kv][kdz_vb]
[elsif exp="f.r==32"][eval exp="f.codex=2723"] [p_sv][kdz_vb]
[elsif exp="f.r==33"][eval exp="f.codex=944"] [p_bv][kdz_vb]
[elsif exp="f.r==34"][eval exp="f.codex=2222"] [p_ks][kdz_vb]
[elsif exp="f.r==35"][eval exp="f.codex=115"] [p_av][kdz_vb]
[elsif exp="f.r==36"][eval exp="f.codex=97"] [p_bv][kdz_vb]
[elsif exp="f.r==37"][eval exp="f.codex=3453"] [p_kv][kdz_vb]
[elsif exp="f.r==38"][eval exp="f.codex=349"] [p_sv][kdz_vb]
[elsif exp="f.r==39"][eval exp="f.codex=1480"] [p_ks][kdz_vb]
[elsif exp="f.r==40"][eval exp="f.codex=527"] [p_sv][kdz_vb]
[elsif exp="f.r==41"][eval exp="f.codex="] [kdz_vb]
[elsif exp="f.r==42"][eval exp="f.codex="] [kdz_vb]
[elsif exp="f.r==43"][eval exp="f.codex="] [kdz_vb]
[elsif exp="f.r==44"][eval exp="f.codex="] [kdz_vb]
[elsif exp="f.r==45"][eval exp="f.codex="] [kdz_vb]
[elsif exp="f.r==46"][eval exp="f.codex="] [kdz_vb]
[elsif exp="f.r==47"][eval exp="f.codex="] [kdz_vb]
[elsif exp="f.r==48"][eval exp="f.codex="] [kdz_vb]
[elsif exp="f.r==49"][eval exp="f.codex="] [kdz_vb]
[else][eval exp="f.codex=8083"][p_ks][kdz_va][endif]
[return]


*random_f5
[iscript]
f.r=Math.floor(Math.random() * 700 + 1);
[endscript]
[return]

*random_f8
[iscript]
f.r=Math.floor(Math.random() * 1000 + 1);
[endscript]
[return]

*random_f9
[iscript]
f.r=Math.floor(Math.random() * 5000 + 1);
[endscript]
[return]

*set_5
[gh_zx]
[if exp="f.gh_zx>=200 && f.gh_zx<=208"]
[eval exp="f.gh_z=172*f.gh_zx-10675"]
[eval exp="f.gh_z1=431*f.gh_zx-10672"]
[eval exp="f.gh_z2=123*f.gh_zx-9471"]

[elsif exp="f.gh_zx>=218 && f.gh_zx<=272"]
[eval exp="f.gh_z=109*f.gh_zx-16557"]
[eval exp="f.gh_z1=135*f.gh_zx-17756"]
[eval exp="f.gh_z2=116*f.gh_zx-13755"]

[elsif exp="f.gh_zx>=282 && f.gh_zx<=299"]
[eval exp="f.gh_z=112*f.gh_zx-32257"]
[eval exp="f.gh_z1=115*f.gh_zx-31152"]
[eval exp="f.gh_z2=123*f.gh_zx-31337"]

[elsif exp="f.gh_zx>=322 && f.gh_zx<=341"]
[eval exp="f.gh_z=167*f.gh_zx-31106"]
[eval exp="f.gh_z1=120*f.gh_zx-11021"]
[eval exp="f.gh_z2=143*f.gh_zx-10405"]

[elsif exp="f.gh_zx>=352 && f.gh_zx<=374"]
[eval exp="f.gh_z=18*f.gh_zx-2237"]
[eval exp="f.gh_z1=16*f.gh_zx-1077"]
[eval exp="f.gh_z2=17*f.gh_zx-2435"]

[elsif exp="f.gh_zx>=385 && f.gh_zx<=452"]
[eval exp="f.gh_z=16*f.gh_zx-1967"]
[eval exp="f.gh_z1=14*f.gh_zx-1247"]
[eval exp="f.gh_z2=18*f.gh_zx-1230"]

[elsif exp="f.gh_zx>=462 && f.gh_zx<=495"]
[eval exp="f.gh_z=128*f.gh_zx-52731"]
[eval exp="f.gh_z1=133*f.gh_zx-58761"]
[eval exp="f.gh_z2=146*f.gh_zx-50962"]

[elsif exp="f.gh_zx>=499 && f.gh_zx<=590"]
[eval exp="f.gh_z=12*f.gh_zx-1416"]
[eval exp="f.gh_z1=14*f.gh_zx-1226"]
[eval exp="f.gh_z2=18*f.gh_zx-1676"]

[elsif exp="f.gh_zx>=599 && f.gh_zx<=690"]
[eval exp="f.gh_z=12*f.gh_zx-1266"]
[eval exp="f.gh_z1=17*f.gh_zx-2166"]
[eval exp="f.gh_z2=14*f.gh_zx-2286"]

[elsif exp="f.gh_zx>=699 && f.gh_zx<=790"]
[eval exp="f.gh_z=18*f.gh_zx-2167"]
[eval exp="f.gh_z1=16*f.gh_zx-2157"]
[eval exp="f.gh_z2=17*f.gh_zx-2045"]

[elsif exp="f.gh_zx>=799 && f.gh_zx<=892"]
[eval exp="f.gh_z=19*f.gh_zx-2371"]
[eval exp="f.gh_z1=24*f.gh_zx-2664"]
[eval exp="f.gh_z2=23*f.gh_zx-2544"]

[elsif exp="f.gh_zx>=204 && f.gh_zx<=905"]
[eval exp="f.gh_z=16*f.gh_zx-1539"]
[eval exp="f.gh_z1=17*f.gh_zx-1256"]
[eval exp="f.gh_z2=15*f.gh_zx-1169"]

[else][eval exp="f.gh_z=15*f.gh_zx-1049"][eval exp="f.gh_z1=38*f.gh_zx-1051"][eval exp="f.gh_z2=18*f.gh_zx-759"][endif][return]

*set_6
[gh_zx]
[if exp="f.gh_zx>=1055 && f.gh_zx<=1088"]
[eval exp="f.gh_z=950*f.gh_zx-987232"]
[eval exp="f.gh_z1=948*f.gh_zx-987345"]
[eval exp="f.gh_z2=957*f.gh_zx-987765"]

[elsif exp="f.gh_zx>=1100 && f.gh_zx<=1121"]
[eval exp="f.gh_z=561*f.gh_zx-568765"]
[eval exp="f.gh_z1=589*f.gh_zx-566747"]
[eval exp="f.gh_z2=553*f.gh_zx-532782"]

[elsif exp="f.gh_zx>=1131 && f.gh_zx<=1149"]
[eval exp="f.gh_z=867*f.gh_zx-975476"]
[eval exp="f.gh_z1=869*f.gh_zx-965470"]
[eval exp="f.gh_z2=873*f.gh_zx-975648"]

[elsif exp="f.gh_zx>=1152 && f.gh_zx<=1167"]
[eval exp="f.gh_z=642*f.gh_zx-715024"]
[eval exp="f.gh_z1=626*f.gh_zx-713039"]
[eval exp="f.gh_z2=628*f.gh_zx-715002"]

[elsif exp="f.gh_zx>=1172 && f.gh_zx<=1187"]
[eval exp="f.gh_z=1611*f.gh_zx-1242792"]
[eval exp="f.gh_z1=1607*f.gh_zx-1247473"]
[eval exp="f.gh_z2=1606*f.gh_zx-1242083"]

[elsif exp="f.gh_zx>=1195 && f.gh_zx<=1256"]
[eval exp="f.gh_z=263*f.gh_zx-273320"]
[eval exp="f.gh_z1=235*f.gh_zx-274320"]
[eval exp="f.gh_z2=232*f.gh_zx-271320"]

[elsif exp="f.gh_zx>=1295 && f.gh_zx<=1377"]
[eval exp="f.gh_z=764*f.gh_zx-959765"]
[eval exp="f.gh_z1=746*f.gh_zx-939736"]
[eval exp="f.gh_z2=747*f.gh_zx-957226"]

[elsif exp="f.gh_zx>=1396 && f.gh_zx<=1475"]
[eval exp="f.gh_z=128*f.gh_zx-171675"]
[eval exp="f.gh_z1=133*f.gh_zx-171978"]
[eval exp="f.gh_z2=127*f.gh_zx-161785"]

[elsif exp="f.gh_zx>=1482 && f.gh_zx<=1523"]
[eval exp="f.gh_z=932*f.gh_zx-1432639"]
[eval exp="f.gh_z1=925*f.gh_zx-1453639"]
[eval exp="f.gh_z2=924*f.gh_zx-1334669"]

[elsif exp="f.gh_zx>=1555 && f.gh_zx<=1783"]
[eval exp="f.gh_z=99*f.gh_zx-116623"]
[eval exp="f.gh_z1=91*f.gh_zx-106864"]
[eval exp="f.gh_z2=98*f.gh_zx-116945"]

[elsif exp="f.gh_zx>=1826 && f.gh_zx<=1999"]
[eval exp="f.gh_z=598*f.gh_zx-1083837"]
[eval exp="f.gh_z1=597*f.gh_zx-1003534"]
[eval exp="f.gh_z2=594*f.gh_zx-1001736"]

[elsif exp="f.gh_zx>=1050 && f.gh_zx<=2051"]
[eval exp="f.gh_z=6*f.gh_zx-4832"]
[eval exp="f.gh_z1=5*f.gh_zx-4474"]
[eval exp="f.gh_z2=7*f.gh_zx-4513"]

[else][eval exp="f.gh_z=16*f.gh_zx-1023"][eval exp="f.gh_z1=39*f.gh_zx-1076"][eval exp="f.gh_z2=17*f.gh_zx-788"][endif][return]

*set_8
[gh_zx]
[if exp="f.gh_zx>=3050 && f.gh_zx<=3250"]
[eval exp="f.gh_z=266*f.gh_zx-804741"]
[eval exp="f.gh_z1=745*f.gh_zx-2267487"]
[eval exp="f.gh_z2=175*f.gh_zx-510966"]

[elsif exp="f.gh_zx>=3251 && f.gh_zx<=3565"]
[eval exp="f.gh_z=476*f.gh_zx-1540621"]
[eval exp="f.gh_z1=699*f.gh_zx-2264561"]
[eval exp="f.gh_z2=324*f.gh_zx-1038022"]

[elsif exp="f.gh_zx>=3566 && f.gh_zx<=4012"]
[eval exp="f.gh_z=215*f.gh_zx-765301"]
[eval exp="f.gh_z1=528*f.gh_zx-1868251"]
[eval exp="f.gh_z2=331*f.gh_zx-1008621"]

[else][eval exp="f.gh_z=16*f.gh_zx-1033"][eval exp="f.gh_z1=39*f.gh_zx-1065"][eval exp="f.gh_z2=17*f.gh_zx-771"][endif][return]