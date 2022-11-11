$PBExportHeader$w_abm_familias.srw
forward
global type w_abm_familias from w_abm_base
end type
end forward

global type w_abm_familias from w_abm_base
integer width = 2208
integer height = 524
end type
global w_abm_familias w_abm_familias

on w_abm_familias.create
call super::create
end on

on w_abm_familias.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_familias
integer x = 1728
integer y = 288
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_familias
integer y = 288
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_familias
integer y = 288
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_familias
integer y = 288
end type

type dw_datos from w_abm_base`dw_datos within w_abm_familias
integer width = 2094
integer height = 248
string dataobject = "dw_abm_familias"
end type

