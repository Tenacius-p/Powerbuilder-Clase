$PBExportHeader$w_abm_depositos.srw
forward
global type w_abm_depositos from w_abm_base
end type
end forward

global type w_abm_depositos from w_abm_base
integer width = 2039
integer height = 516
end type
global w_abm_depositos w_abm_depositos

on w_abm_depositos.create
call super::create
end on

on w_abm_depositos.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_depositos
integer x = 1577
integer y = 276
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_depositos
integer y = 276
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_depositos
integer y = 276
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_depositos
integer y = 276
end type

type dw_datos from w_abm_base`dw_datos within w_abm_depositos
integer width = 1943
integer height = 236
string dataobject = "dw_abm_depositos"
end type

