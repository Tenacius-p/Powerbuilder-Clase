$PBExportHeader$w_abm_motivos.srw
forward
global type w_abm_motivos from w_abm_base
end type
end forward

global type w_abm_motivos from w_abm_base
integer width = 2139
integer height = 512
end type
global w_abm_motivos w_abm_motivos

on w_abm_motivos.create
call super::create
end on

on w_abm_motivos.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_motivos
integer x = 1678
integer y = 276
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_motivos
integer y = 276
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_motivos
integer y = 276
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_motivos
integer y = 276
end type

type dw_datos from w_abm_base`dw_datos within w_abm_motivos
integer width = 2043
integer height = 236
string dataobject = "dw_abm_motivos"
end type

