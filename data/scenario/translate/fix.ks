

*code
[jump_to][commit][cm]
[if exp="f.codex==1100 && f.codey==4351"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1101 && f.codey==4172"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1102 && f.codey==3652"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1103 && f.codey==7563"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1104 && f.codey==4526"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1105 && f.codey==1254"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1106 && f.codey==3365"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1107 && f.codey==3721"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1108 && f.codey==7896"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1109 && f.codey==7315"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1110 && f.codey==7894"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1111 && f.codey==2134"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1112 && f.codey==5624"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1113 && f.codey==7368"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1114 && f.codey==0235"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1115 && f.codey==3654"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1116 && f.codey==4724"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1117 && f.codey==7754"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1118 && f.codey==6982"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1119 && f.codey==9863"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1120 && f.codey==8562"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1121 && f.codey==7311"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1122 && f.codey==7777"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1123 && f.codey==5632"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1124 && f.codey==1056"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1125 && f.codey==4003"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1126 && f.codey==3540"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1127 && f.codey==9802"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1128 && f.codey==7120"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1129 && f.codey==7746"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codex==1130 && f.codey==7894"]
[eval exp="f.code_ss='yet'"]
[elsif exp="f.codey=='đéo_biết'"]
[eval exp="f.code_ss='yet'"]
[endif]
[if exp="f.code_ss=='yet'"]
[jump target="*check_event"]
[else][jump target="*bad_event"][endif]



*random_cod
[iscript]
f.r=Math.floor(Math.random() * 10 + 1);
[endscript]
[if exp="f.r==1"]
[eval exp="f.codex=1100"]
[elsif exp="f.r==2"]
[eval exp="f.codex=1101"]
[elsif exp="f.r==3"]
[eval exp="f.codex=1102"]
[elsif exp="f.r==4"]
[eval exp="f.codex=1103"]
[elsif exp="f.r==5"]
[eval exp="f.codex=1104"]
[elsif exp="f.r==6"]
[eval exp="f.codex=1105"]
[elsif exp="f.r==7"]
[eval exp="f.codex=1106"]
[elsif exp="f.r==8"]
[eval exp="f.codex=1107"]
[elsif exp="f.r==9"]
[eval exp="f.codex=1108"]
[elsif exp="f.r==10"]
[eval exp="f.codex=1109"][endif]
[return]

*check_event
[if exp="f.code_w=='event5'"]
[_] Key đã được nhập thành công.[p]
[eval exp="f.codex=0"]
[eval exp="f.codey=0"]
[eval exp="f.codey_=0"]
[eval exp="f.code_ss=0"]
[eval exp="f.code_w=0"]
[jump storage="intro/event.ks" target="*choice_5x"][endif]
[if exp="f.code_w=='event_nuse'"]
[_] Key đã được nhập thành công.[p]
[eval exp="f.codex=0"]
[eval exp="f.codey=0"]
[eval exp="f.codey_=0"]
[eval exp="f.code_ss=0"]
[eval exp="f.code_w=0"]
[jump storage="act_with/go_out.ks" target="*together_cont"][endif]

*bad_event
[_]Chú ý mã code bạn nhận chỉ là thứ tự của key chứ không phải để nhập mã này.[p]
Key nhập không đúng. Bạn hãy vào website [font color="0x05ffff"]keytf.tk[resetfont] hoặc vào group facebook: [font color="0x05ffff"]Teaching feeling mod by ichibikun[resetfont] để lấy key tương ứng với code của bạn nhận được trên bài ghim.[p]

[jump storage="talk/words.ks" target="*event5_"]

*code_

[commit][cm]
[if exp="f.save_k=='yet'"][else]
#Hệ thống
Bạn hãy click vào nút 'save game' và lưu lại game trước đã.[p][_]
[jump storage="talk/words.ks" target="*out_xy"][endif]


[out_to_y]
[if exp="f.code_ss=='ful'"]
[jump storage="H/before/reload.ks" target="*check_event"]
[else]
[jump storage="H/before/reload.ks" target="*bad_event_"][endif]
























