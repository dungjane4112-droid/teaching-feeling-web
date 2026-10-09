;;========script_by_ichibikun============
*game_list
[cm]
[if exp="f.game1d>=1 && f.game2d>=1 "]
[syl][f/ssp][na_1]Chúng ta hết lượt chơi hôm nay rồi, [name][lr_]
[f/sp]Để mai quay lại mục này nhé[p_][sm_09][end_talk][endif]

[syl][f/sclp]
[name][na_1] muốn chơi trò gì với em?[p_]

[if exp="f.game1d>=1"][else]
[font color="lightblue"][link target="*bao_bua_keo" ]【Chơi bao-búa-kéo】[r][r][endif]

[if exp="f.game2d>=1"][else]
[font color="lightblue"][link target="*xem_hentai" ]【Cùng xem Anime】[resetfont][s][endif]

[s]

*bao_bua_keo
[cm]
[if exp="f.dress<=0 || f.under_p<=0 || f.under_b<=0 || f.pin<=0 || f.socks<=0 || f.head<=0"][jump target="*game1_of_cloth_non"][endif]
[if exp="f.dress<=0 || f.under_p<=0 || f.under_b<=0 || f.pin<=0 || f.socks<=0 || f.hair<=0"][jump target="*game1_of_cloth_non"][endif]
[eval exp="f.game1d=1"]

[if exp="f.game1>=1"]
[eval exp="f.game1=f.game1+1"][else]
[eval exp="f.game1=0"]
#Sylvie
[f/p_nt][a_04]Gì cơ!~ [lr_]
[f/p]Trò "Bao-búa-kéo" Nhưng mà....[um_01][p_]
[f/clp]Mỗi lần em thua [name] sẽ lấy 1 món đồ trên người em ạ? [p_]
[f/sclp]Em hiểu rồi![l_][a_06] [f/ssp] [name] muốn "lột đồ" em ra phải không?[p_]
[f/sp]Thay vào đó, nếu em thắng thì [name] sẽ làm theo một yêu cầu của em nhé![sm_05][p_]
[jump storage="mod/game/off_cloth.ks" target="*set"][endif]

[random_3][if exp="f.r==1"]
[syl][f/p_nt][a_04]Gì cơ!~ [lr_]
[f/p]Trò "Bao-búa-kéo" Nhưng mà....[um_01][p_]
[f/clp]Mỗi lần em thua [name] sẽ lấy 1 món đồ trên người em ạ? [p_]
[f/sclp]Em hiểu rồi![l_][a_06] [f/ssp] [name] muốn "lột đồ" em ra phải không?[p_]
[f/sp]Thay vào đó, nếu em thắng thì [name] sẽ làm theo một yêu cầu của em nhé![sm_05][p_]
[jump storage="mod/game/off_cloth.ks" target="*set"]
[elsif exp="f.r==2"]
#Sylvie
[f/p]
lại là trò đó ạ?[lr_]
[f/shp]
Vậy chúng ta vẫn giữ nguyên luật cũ nhé ♥♥♥♥♥! [sm_05][p_]
[jump storage="mod/game/off_cloth.ks" target="*set"]
[elsif exp="f.r==3"]
#Sylvie
[f/shp]Vâng! Em hiểu rồi ạ! Vậy chúng ta bắt đầu nhé ♥[sm_05][p_]
[jump storage="mod/game/off_cloth.ks" target="*set"]
[else]
#Sylvie
[f/shcp]Vâng! [name] có vẻ thích "lột đồ" của em nhỉ!♥♥♥[sm_05][p_]
[jump storage="mod/game/off_cloth.ks" target="*set"]
[endif]


*game1_of_cloth_non
[cm][random_2]
[if exp="f.r==1"]
[syl]
[f/clp]Lại trò đó nhỉ?[l_][f/sclp] Nhưng phải để em mặc đủ trang phục mới công bằng chứ[p_]
[_]
(...)[p_]
[jump storage="sys/dress.ks" target="*change_dress"]
[else]
#System
Bạn hãy cho Sylvie mặc đủ trang phục mới chơi được[p_]
[_]
(...)[p_]
[syl]
Phải thay đồ sao?[p_]
[jump storage="sys/dress.ks" target="*change_dress"]
[endif]





*xem_hentai
[cm][syl][f/p_nt]
[random_4][if exp="f.r==1"][a_01]
[elsif exp="f.r==2"][a_02]
[else][a_04]
[endif]
Hmm?[lr_]
[f/sclp]X-xem Anime cùng [name][lr_]
[if exp="f.act<=4"]
[f/scp]N-nhưng bây giờ còn sớm,[r] 
không phải thời điểm phù hợp để xem loại Anime đó đâu ạ.[p][sm_09][end_talk]
[endif]
[f/sp]V-vâng! Em hiểu rồi ạ.[p_][sm_09]
[eval exp="f.game2d=1"]
[jump storage="mod/H/H_pc.ks" target="*begin" graphic="ch/H_pc.png" x="0" y="400" ]

