;;========script_by_ichibikun============

*list
[commu_text][-]
[chara_show name="window" time="0" wait="false" left="613" top="22" zindex=180 ]
[link target="*Dress" ]【Đứng - khi thay đồ】[r]
[link target="*stand" ]【Đứng - khi ra ngoài】[r]
[link target="*nade" ]【xoa đầu】[r]
[link target="*sit" ]【Ngồi - bình thường】[r]
[link target="*dinner" ]【Ngồi - ăn】[r]
;[link target="*mise" ]【Show pussy!】[r]
[link target="*face" ]【status!】[r]
[link target="*return" ]【Quay ra】[s]


*Dress
[cm][call target="*Chara_hide"]
[set_dress][f/s_nt][show_dress][chara_hide name="window" ]
[jump target="*list"]

*stand
[cm][call target="*Chara_hide"]
[set_stand][f/s_nt][bg_bed][call target="*show_stand"]
[jump target="*list"]


*nade
[cm][call target="*Chara_hide"]
[set_nade][f/s_nt][call target="*show_nade"][chara_hide name="window" ]
[jump target="*list"]


*sit
[cm][call target="*Chara_hide"]
[set_sit][f/s_nt][show_sit]
[jump target="*list"]


*dinner
[cm][call target="*Chara_hide"]
[set_dinner][f/s_nt][show_dinner][bg_cafe]
[jump target="*list"]

*mise
[cm][call target="*Chara_hide"]
[set_mise][f/s_nt][show_mise][bg_bed]
[jump target="*face_H"]



*return
[black][chara_hide_all time="50" wait="true"]
[set_sit][show_sit]
[_][cm_t][eval exp="f.system_act=1" ][return_menu]


*Chara_hide
[chara_mod name="sub" time="10"  storage="00.png" ]
[chara_mod name="other" time="10"  storage="00.png" ][chara_mod name="window" time="10"  storage="00.png" ]

[chara_mod name="body" time="10"  storage="00.png" ][chara_mod name="head" time="10"  storage="00.png" ]
[chara_mod name="arm" time="10"  storage="00.png" ][chara_mod name="arm_b" time="10"  storage="00.png" ]
[chara_mod name="hair_b" time="10"  storage="00.png" ][chara_mod name="ribbon_b" time="10"  storage="00.png" ]
[chara_mod name="hair_f" time="10"  storage="00.png" ]
[chara_mod name="eyes" time="10"  storage="00.png" ][chara_mod name="mouth" time="10"  storage="00.png" ]
[chara_mod name="mayu" time="10"  storage="00.png" ]
[chara_mod name="face" time="10"  storage="00.png" ]

[chara_mod name="dress" time="10"  storage="00.png" ][chara_mod name="neck" time="10"  storage="00.png" ]
[chara_mod name="sleeve" time="10"  storage="00.png" ][chara_mod name="sleeve_b" time="10"  storage="00.png" ]
[chara_mod name="gloves" time="10"  storage="00.png" ][chara_mod name="gloves_b" time="10"  storage="00.png" ]
[chara_mod name="hat" time="10"  storage="00.png" ][chara_mod name="ribbon" time="10"  storage="00.png" ]
[chara_mod name="under_b" time="10"  storage="00.png" ][chara_mod name="under_p" time="10"  storage="00.png" ]
[chara_mod name="glasses" time="10"  storage="00.png" ][chara_mod name="pin" time="10"  storage="00.png" ]
[chara_mod name="socks" time="10"  storage="00.png" ][chara_mod name="b_acc" time="10"  storage="00.png" ]

[chara_mod name="x" time="10"  storage="00.png" ][chara_mod name="tx" time="10"  storage="00.png" ]
[chara_mod name="se" time="10"  storage="00.png" ][chara_mod name="ef" time="10"  storage="00.png" ]
[chara_mod name="z-a" time="10"  storage="00.png" ][chara_mod name="z-b" time="10"  storage="00.png" ]
[chara_mod name="hand_R" time="10"  storage="00.png" ][chara_mod name="hand_L" time="10"  storage="00.png" ]
[chara_mod name="p" time="10"  storage="00.png" ][chara_mod name="breath" time="10"  storage="00.png" ]
[chara_mod name="tear" time="10"  storage="00.png" ][chara_mod name="ef2" time="10"  storage="00.png" ]

[chara_mod name="h" time="10"  storage="00.png" ]
[chara_mod name="season" time="10"  storage="00.png" ]
[chara_mod name="sachi" time="10"  storage="00.png" ]
[chara_mod name="akemi" time="10"  storage="00.png" ]
[chara_mod name="rui" time="10"  storage="00.png" ]
[return]

*face_H
[cm][link target="*fh1" ]【Lông mày bth,nhắm mắt】-
[link target="*fh2" ]【Lông mày bth,mắt nhìn xuống】-
[link target="*fh3" ]【Lông mày bth,mắt nhìn lên】-
[link target="*fh4" ]【Lông mày bth,mắt nhìn lên】-
















*face
[cm][font_blue1]
[link target="*f1" ]【Bình thường】-
[link target="*f2" ]【xấu hổ】-
[link target="*f3" ]【Mắt không hài lòng】-
[link target="*f4" ]【Mắt trống rỗng - xấu hổ】-
[link target="*f5" ]【đỏ mặt】-
[link target="*f6" ]【rắc rối, đỏ mặt】-
[link target="*f7" ]【nửa mắt】-
[link target="*f8" ]【nửa mắt - vụng về, xấu hổ】-
[link target="*f9" ]【nửa mắt - trống rỗng】-
[link target="*f10" ]【nửa mắt - trống rỗng, xấu hổ】-
[link target="*f11" ]【nửa mắt - đỏ mặt】-
[link target="*f12" ]【nửa mắt - đỏ mặt, rắc rối】-
[link target="*f13" ]【mắt trái tim - đỏ mặt】[r]
[link target="*face2" ]【Trang tiếp】
[link target="*list" ]【Quay lại】[s]
*face2
[cm][font_blue1]
[link target="*f14" ]【Mắt trái tim, xấu hổ, đỏ mặt】-
[link target="*f15" ]【Mắt một nửa, trái tim, đỏ mặt】-
[link target="*f16" ]【Mắt hờn dỗi, hạnh phúc, đỏ mặt】-
[link target="*f17" ]【Mắt nhìn xa xăm】-
[link target="*f18" ]【Mắt nhìn xa xăm, xấu hổ】-
[link target="*f19" ]【Mắt nhìn xa xăm, trống rỗng】-
[link target="*f20" ]【Mắt nhìn xa xăm, xấu hổ, trống rỗng】-
[link target="*face" ]【Trang trước】
[link target="*list" ]【Quay lại】[s]
;-----------------------------------------------------
*f1
[cm][font_blue1]
[link target="*fnt" ]【f/nt】-
[link target="*f" ]【f/】-
[link target="*fsnt" ]【f/s_nt】-
[link target="*fs" ]【f/s】-
[link target="*fclnt" ]【f/sl_nt】-
[link target="*fcl" ]【f/cl】-
[link target="*fsclnt" ]【f/scl_nt】-
[link target="*fscl" ]【f/scl】-
[link target="*fssnt" ]【f/ss_nt】-
[link target="*fss" ]【f/ss】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】-
[s]
*fnt
[cm]
[f/nt]
Test satust....statusssss![p_]
[jump target="*f1"]
*f
[cm]
[f/]Test satust....statusssss![p_]
[jump target="*f1"]
*fsnt
[cm]
[f/s_nt]Test satust....statusssss![p_]
[jump target="*f1"]
*fs
[cm]
[f/s]Test satust....statusssss![p_]
[jump target="*f1"]
*fclnt
[cm]
[f/cl_nt]Test satust....statusssss![p_]
[jump target="*f1"]
*fcl
[cm]
[f/cl]Test satust....statusssss![p_]
[jump target="*f1"]
*fsclnt
[cm]
[f/scl_nt]Test satust....statusssss![p_]
[jump target="*f1"]
*fscl
[cm]
[f/scl]Test satust....statusssss![p_]
[jump target="*f1"]
*fssnt
[cm]
[f/ss_nt]Test satust....statusssss![p_]
[jump target="*f1"]
*fss
[cm]
[f/ss]Test satust....statusssss![p_]
[jump target="*f1"]


;--------------------------------------------------------
*f2
[cm][font_blue1]
[link target="*fcnt" ]【f/c_nt】-
[link target="*fc" ]【f/c】-
[link target="*fscnt" ]【f/sc_nt】-
[link target="*fsc" ]【f/sc】-
[link target="*fclcnt" ]【f/slc_nt】-
[link target="*fclc" ]【f/clc】-
[link target="*fsclcnt" ]【f/sclc_nt】-
[link target="*fsclc" ]【f/sclc】-
[link target="*fsscnt" ]【f/ssc_nt】-
[link target="*fssc" ]【f/ssc】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】-
[s]

*fcnt
[cm]
[f/c_nt]
Test satust....statusssss![p_]
[jump target="*f2"]
*fc
[cm]
[f/c]Test satust....statusssss![p_]
[jump target="*f2"]
*fscnt
[cm]
[f/sc_nt]Test satust....statusssss![p_]
[jump target="*f2"]
*fsc
[cm]
[f/sc]Test satust....statusssss![p_]
[jump target="*f2"]
*fclcnt
[cm]
[f/clc_nt]Test satust....statusssss![p_]
[jump target="*f2"]
*fclc
[cm]
[f/clc]Test satust....statusssss![p_]
[jump target="*f2"]
*fsclcnt
[cm]
[f/sclc_nt]Test satust....statusssss![p_]
[jump target="*f2"]
*fsclc
[cm]
[f/sclc]Test satust....statusssss![p_]
[jump target="*f2"]
*fsscnt
[cm]
[f/ssc_nt]Test satust....statusssss![p_]
[jump target="*f2"]
*fssc
[cm]
[f/ssc]Test satust....statusssss![p_]
[jump target="*f2"]


;----------------------------------------------------------
*f3
[cm][font_blue1]
[link target="*frnt" ]【f/r_nt】-
[link target="*fr" ]【f/r】-
[link target="*fsrnt" ]【f/sr_nt】-
[link target="*fsr" ]【f/sr】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】
[s]
*frnt
[cm]
[f/r_nt]Test satust....statusssss![p_]
[jump target="*f3"]
*fr
[cm]
[f/r]Test satust....statusssss![p_]
[jump target="*f3"]
*fsrnt
[cm]
[f/sr_nt]Test satust....statusssss![p_]
[jump target="*f3"]
*fsr
[cm]
[f/sr]Test satust....statusssss![p_]
[jump target="*f3"]
;-----------------------------------------------------------
*f4
[cm][font_blue1]
[link target="*fcrnt" ]【f/cr_nt】-
[link target="*fcr" ]【f/cr】-
[link target="*fscrnt" ]【f/scr_nt】-
[link target="*fscr" ]【f/scr】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】
[s]
*fcrnt
[cm]
[f/cr_nt]Test satust....statusssss![p_]
[jump target="*f4"]
*fcr
[cm]
[f/cr]Test satust....statusssss![p_]
[jump target="*f4"]
*fscrnt
[cm]
[f/scr_nt]Test satust....statusssss![p_]
[jump target="*f4"]
*fscr
[cm]
[f/scr]Test satust....statusssss![p_]
[jump target="*f4"]
;---------------------------------------------------------
*f5
[cm][font_blue1]
[link target="*fpnt" ]【f/p_nt】-
[link target="*fp" ]【f/p】-
[link target="*fspnt" ]【f/sp_nt】-
[link target="*fsp" ]【f/sp】-
[link target="*fclpnt" ]【f/slp_nt】-
[link target="*fclp" ]【f/clp】-
[link target="*fsclpnt" ]【f/sclp_nt】-
[link target="*fsclp" ]【f/sclp】-
[link target="*fsspnt" ]【f/ssp_nt】-
[link target="*fssp" ]【f/ssp】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】-
[s]

*fpnt
[cm]
[f/p_nt]
Test satust....statusssss![p_]
[jump target="*f5"]
*fp
[cm]
[f/p]Test satust....statusssss![p_]
[jump target="*f5"]
*fspnt
[cm]
[f/sp_nt]Test satust....statusssss![p_]
[jump target="*f5"]
*fsp
[cm]
[f/sp]Test satust....statusssss![p_]
[jump target="*f5"]
*fclpnt
[cm]
[f/clp_nt]Test satust....statusssss![p_]
[jump target="*f5"]
*fclp
[cm]
[f/clp]Test satust....statusssss![p_]
[jump target="*f5"]
*fsclpnt
[cm]
[f/sclp_nt]Test satust....statusssss![p_]
[jump target="*f5"]
*fsclp
[cm]
[f/sclp]Test satust....statusssss![p_]
[jump target="*f5"]
*fsspnt
[cm]
[f/ssp_nt]Test satust....statusssss![p_]
[jump target="*f5"]
*fssp
[cm]
[f/ssp]Test satust....statusssss![p_]
[jump target="*f5"]

;------------------------------------------------------------
*f6
[cm][font_blue1]
[link target="*fcpnt" ]【f/cp_nt】-
[link target="*fcp" ]【f/cp】-
[link target="*fscpnt" ]【f/scp_nt】-
[link target="*fscp" ]【f/scp】-
[link target="*fclcpnt" ]【f/clcp_nt】-
[link target="*fclcp" ]【f/clcp】-
[link target="*fsclcpnt" ]【f/sclcp_nt】-
[link target="*fsclcp" ]【f/sclcp】-
[link target="*fsscpnt" ]【f/sscp_nt】-
[link target="*fsscp" ]【f/sscp】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】-
[s]

*fcpnt
[cm]
[f/cp_nt]
Test satust....statusssss![p_]
[jump target="*f6"]
*fcp
[cm]
[f/cp]Test satust....statusssss![p_]
[jump target="*f6"]
*fscpnt
[cm]
[f/scp_nt]Test satust....statusssss![p_]
[jump target="*f6"]
*fscp
[cm]
[f/scp]Test satust....statusssss![p_]
[jump target="*f6"]
*fclcpnt
[cm]
[f/clcp_nt]Test satust....statusssss![p_]
[jump target="*f6"]
*fclcp
[cm]
[f/clcp]Test satust....statusssss![p_]
[jump target="*f6"]
*fsclcpnt
[cm]
[f/sclcp_nt]Test satust....statusssss![p_]
[jump target="*f6"]
*fsclcp
[cm]
[f/sclcp]Test satust....statusssss![p_]
[jump target="*f6"]
*fsscpnt
[cm]
[f/sscp_nt]Test satust....statusssss![p_]
[jump target="*f6"]
*fsscp
[cm]
[f/sscp]Test satust....statusssss![p_]
[jump target="*f6"]
;-------------------------------------------------------------

*f7
[cm][font_blue1]
[link target="*fhnt" ]【f/h_nt】-
[link target="*fh" ]【f/h】-
[link target="*fshnt" ]【f/sh_nt】-
[link target="*fsh" ]【f/sh】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fhnt
[cm]
[f/h_nt]Test satust....statusssss![p_]
[jump target="*f7"]
*fh
[cm]
[f/h]Test satust....statusssss![p_]
[jump target="*f7"]
*fshnt
[cm]
[f/sh_nt]Test satust....statusssss![p_]
[jump target="*f7"]
*fsh
[cm]
[f/sh]Test satust....statusssss![p_]
[jump target="*f7"]

;------------------------------------------------
*f8
[cm][font_blue1]
[link target="*fhcnt" ]【f/hc_nt】-
[link target="*fhc" ]【f/hc】-
[link target="*fhscnt" ]【f/hsc_nt】-
[link target="*fhsc" ]【f/hsc】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fhcnt
[cm]
[f/hc_nt]Test satust....statusssss![p_]
[jump target="*f8"]
*fhc
[cm]
[f/hc]Test satust....statusssss![p_]
[jump target="*f8"]
*fhscnt
[cm]
[f/hsc_nt]Test satust....statusssss![p_]
[jump target="*f8"]
*fhsc
[cm]
[f/hsc]Test satust....statusssss![p_]
[jump target="*f8"]

;------------------------------------------------
*f9
[cm][font_blue1]
[link target="*fhrnt" ]【f/hr_nt】-
[link target="*fhr" ]【f/hr】-
[link target="*fshrnt" ]【f/shr_nt】-
[link target="*fshr" ]【f/shr】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fhrnt
[cm]
[f/hr_nt]Test satust....statusssss![p_]
[jump target="*f9"]
*fhr
[cm]
[f/hr]Test satust....statusssss![p_]
[jump target="*f9"]
*fshrnt
[cm]
[f/shr_nt]Test satust....statusssss![p_]
[jump target="*f9"]
*fshr
[cm]
[f/shr]Test satust....statusssss![p_]
[jump target="*f9"]

;------------------------------------------------
*f10
[cm][font_blue1]
[link target="*fhcrnt" ]【f/hcr_nt】-
[link target="*fhcr" ]【f/hcr】-
[link target="*fshcrnt" ]【f/shcr_nt】-
[link target="*fshcr" ]【f/shcr】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fhcrnt
[cm]
[f/hcr_nt]Test satust....statusssss![p_]
[jump target="*f10"]
*fhcr
[cm]
[f/hcr]Test satust....statusssss![p_]
[jump target="*f10"]
*fshcrnt
[cm]
[f/shcr_nt]Test satust....statusssss![p_]
[jump target="*f10"]
*fshcr
[cm]
[f/shcr]Test satust....statusssss![p_]
[jump target="*f10"]

;------------------------------------------------

*f11
[cm][font_blue1]
[link target="*fhpnt" ]【f/hp_nt】-
[link target="*fhp" ]【f/hp】-
[link target="*fshpnt" ]【f/shp_nt】-
[link target="*fshp" ]【f/shp】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fhpnt
[cm]
[f/hp_nt]Test satust....statusssss![p_]
[jump target="*f11"]
*fhp
[cm]
[f/hp]Test satust....statusssss![p_]
[jump target="*f11"]
*fshpnt
[cm]
[f/shp_nt]Test satust....statusssss![p_]
[jump target="*f11"]
*fshp
[cm]
[f/shp]Test satust....statusssss![p_]
[jump target="*f11"]

;------------------------------------------------

*f12
[cm][font_blue1]
[link target="*fhcpnt" ]【f/hcp_nt】-
[link target="*fhcp" ]【f/hcp】-
[link target="*fshcpnt" ]【f/shcp_nt】-
[link target="*fshcp" ]【f/shcp】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fhcpnt
[cm]
[f/hcp_nt]Test satust....statusssss![p_]
[jump target="*f12"]
*fhcp
[cm]
[f/hcp]Test satust....statusssss![p_]
[jump target="*f12"]
*fshcpnt
[cm]
[f/shcp_nt]Test satust....statusssss![p_]
[jump target="*f12"]
*fshcp
[cm]
[f/shcp]Test satust....statusssss![p_]
[jump target="*f12"]

;------------------------------------------------

*f13
[cm][font_blue1]
[link target="*fqnt" ]【f/q_nt】-
[link target="*fq" ]【f/q】-
[link target="*fsqnt" ]【f/sq_nt】-
[link target="*fsq" ]【f/sq】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fqnt
[cm]
[f/q_nt]Test satust....statusssss![p_]
[jump target="*f13"]
*fq
[cm]
[f/q]Test satust....statusssss![p_]
[jump target="*f13"]
*fsqnt
[cm]
[f/sq_nt]Test satust....statusssss![p_]
[jump target="*f13"]
*fsq
[cm]
[f/sq]Test satust....statusssss![p_]
[jump target="*f13"]
;------------------------------------------------

*f14
[cm][font_blue1]
[link target="*fcqnt" ]【f/cq_nt】-
[link target="*fcq" ]【f/cq】-
[link target="*fscqnt" ]【f/scq_nt】-
[link target="*fscq" ]【f/scq】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fcqnt
[cm]
[f/cq_nt]Test satust....statusssss![p_]
[jump target="*f14"]
*fcq
[cm]
[f/cq]Test satust....statusssss![p_]
[jump target="*f14"]
*fscqnt
[cm]
[f/scq_nt]Test satust....statusssss![p_]
[jump target="*f14"]
*fscq
[cm]
[f/scq]Test satust....statusssss![p_]
[jump target="*f14"]
;-------------------------------------------
*f15
[cm][font_blue1]
[link target="*fhqnt" ]【f/hq_nt】-
[link target="*fhq" ]【f/hq】-
[link target="*fshqnt" ]【f/shq_nt】-
[link target="*fshq" ]【f/shq】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fhqnt
[cm]
[f/hq_nt]Test satust....statusssss![p_]
[jump target="*f15"]
*fhq
[cm]
[f/hq]Test satust....statusssss![p_]
[jump target="*f15"]
*fshqnt
[cm]
[f/shq_nt]Test satust....statusssss![p_]
[jump target="*f15"]
*fshq
[cm]
[f/shq]Test satust....statusssss![p_]
[jump target="*f15"]
;-------------------------------------------
*f16
[cm][font_blue1]
[link target="*fhcqnt" ]【f/hcq_nt】-
[link target="*fhcq" ]【f/hcq】-
[link target="*fshcqnt" ]【f/shcq_nt】-
[link target="*fshcq" ]【f/shcq】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fhcqnt
[cm]
[f/hcq_nt]Test satust....statusssss![p_]
[jump target="*f16"]
*fhcq
[cm]
[f/hcq]Test satust....statusssss![p_]
[jump target="*f16"]
*fshcqnt
[cm]
[f/shcq_nt]Test satust....statusssss![p_]
[jump target="*f16"]
*fshcq
[cm]
[f/shcq]Test satust....statusssss![p_]
[jump target="*f16"]
;-------------------------------------------
*f17
[cm][font_blue1]
[link target="*fant" ]【f/a_nt】-
[link target="*fa" ]【f/a】-
[link target="*fasnt" ]【f/a_s_nt】-
[link target="*fas" ]【f/a_s】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*fant
[cm]
[f/a_nt]Test satust....statusssss![p_]
[jump target="*f17"]
*fa
[cm]
[f/a]Test satust....statusssss![p_]
[jump target="*f17"]
*fasnt
[cm]
[f/a_s_nt]Test satust....statusssss![p_]
[jump target="*f17"]
*fas
[cm]
[f/a_s]Test satust....statusssss![p_]
[jump target="*f17"]
;-------------------------------------------
*f18
[cm][font_blue1]
[link target="*facnt" ]【f/a_c_nt】-
[link target="*fac" ]【f/a_c】-
[link target="*fascnt" ]【f/a_sc_nt】-
[link target="*fasc" ]【f/a_sc】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*facnt
[cm]
[f/a_c_nt]Test satust....statusssss![p_]
[jump target="*f18"]
*fac
[cm]
[f/a_c]Test satust....statusssss![p_]
[jump target="*f18"]
*fascnt
[cm]
[f/a_sc_nt]Test satust....statusssss![p_]
[jump target="*f18"]
*fasc
[cm]
[f/a_sc]Test satust....statusssss![p_]
[jump target="*f18"]
;-------------------------------------------
*f19
[cm][font_blue1]
[link target="*farnt" ]【f/a_r_nt】-
[link target="*far" ]【f/a_r】-
[link target="*fasrnt" ]【f/a_sr_nt】-
[link target="*fasr" ]【f/a_sr】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*farnt
[cm]
[f/a_r_nt]Test satust....statusssss![p_]
[jump target="*f19"]
*far
[cm]
[f/a_r]Test satust....statusssss![p_]
[jump target="*f19"]
*fasrnt
[cm]
[f/a_sr_nt]Test satust....statusssss![p_]
[jump target="*f19"]
*fasr
[cm]
[f/a_sr]Test satust....statusssss![p_]
[jump target="*f19"]
;-------------------------------------------
*f20
[cm][font_blue1]
[link target="*facrnt" ]【f/a_cr_nt】-
[link target="*facr" ]【f/a_cr】-
[link target="*fascrnt" ]【f/a_scr_nt】-
[link target="*fascr" ]【f/a_scr】[r]
[link target="*face" ]【Quay lại】-
[link target="*list" ]【Đổi tư thế】[s]

*facrnt
[cm]
[f/a_cr_nt]Test satust....statusssss![p_]
[jump target="*f20"]
*facr
[cm]
[f/a_cr]Test satust....statusssss![p_]
[jump target="*f20"]
*fascrnt
[cm]
[f/a_scr_nt]Test satust....statusssss![p_]
[jump target="*f20"]
*fascr
[cm]
[f/a_scr]Test satust....statusssss![p_]
[jump target="*f20"]

*show_stand
[chara_show name="hair_b" time="0" wait="false" left="-250" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-250" zindex=6 ][endif]

[chara_show name="body" time="0" wait="false" left="-250" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-250" zindex=30 ][endif]
[if exp="f.under_p>=1" ][chara_show name="under_p" time="0" wait="false" left="-250" zindex=40 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-250" zindex=50 ][endif]
[if exp="f.socks>=1" ][chara_show name="socks" time="0" wait="false" left="-250" zindex=60 ][endif]

[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="-250" zindex=70 ][endif]
[if exp="f.neck>=11 && f.neck<=20" ][chara_show name="neck" time="0" wait="false" left="-250" zindex=75 ]
[elsif exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="-250" zindex=105 ][endif]

[chara_show name="arm" time="0" wait="false" left="-250" zindex=80 ]
[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-250" zindex=90 ][endif]
[if exp="f.dress>=1" ][chara_show name="sleeve" time="0" wait="false" left="-250" zindex=100 ][endif]

[chara_show name="head" time="0" wait="false" left="-250" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="-250" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="-250" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="-250" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="-250" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="-250" zindex=130 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-250" zindex=160 ][endif]

[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="-250" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="-250" zindex=180 ]
[hide_black][return]

*show_nade
[bg storage="bg/nade.jpg" time="0" ]
[chara_show name="hair_b" time="0" wait="false" left="-400" zindex=5 ]
[if exp="f.hair_style>=1" ][chara_show name="ribbon_b" time="0" wait="false" left="-400" zindex=6 ][endif]
[chara_show name="body" time="0" wait="false" left="-400" zindex=10 ]

[if exp="f.b_acc>=1" ][chara_show name="b_acc" time="0" wait="false" left="-400" zindex=30 ][endif]
[if exp="f.under_b>=1" ][chara_show name="under_b" time="0" wait="false" left="-400" zindex=50 ][endif]
[if exp="f.dress>=1" ][chara_show name="dress" time="0" wait="false" left="-400" zindex=70 ][endif]

;[if exp="f.gloves>=1" ][chara_show name="gloves" time="0" wait="false" left="-400" zindex=90 ][endif]
[if exp="f.neck>=1" ][chara_show name="neck" time="0" wait="false" left="-400" zindex=110 ][endif]

[chara_show name="head" time="0" wait="false" left="-400" zindex=125 ]
[chara_show name="eyes" time="0" wait="false" left="-400" zindex=135 ]
[chara_show name="mouth" time="0" wait="false" left="-400" zindex=140 ]
[if exp="f.glasses>=1" ][chara_show name="glasses" time="0" wait="false" left="-400" zindex=145 ][endif]
[chara_show name="hair_f" time="0" wait="false" left="-400" zindex=150 ]
[chara_show name="mayu" time="0" wait="false" left="-400" zindex=155 ]

[if exp="f.pin>=1" ][chara_show name="pin" time="0" wait="false" left="-400" zindex=160 ][endif]
[if exp="f.hair_style>=1" ][chara_show name="ribbon" time="0" wait="false" left="-400" zindex=175 ][endif]
[chara_show name="hat" time="0" wait="false" left="-400" zindex=180 ]

[chara_show name="hand_R" time="0" wait="false" left="-400" zindex=185 ]
[chara_mod name="window" time="1" storage="00.png" ][chara_show name="window" time="1" wait="false" left="20" top="30" zindex=190 ]
[chara_mod name="other" time="1" storage="00.png" ][chara_show name="other" time="1" wait="false" height="38" width="430" left="31" top="41" zindex=195 ]
[if exp="f.last_act!='nade_conti'" ][hide_black][endif]
[return]