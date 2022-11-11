$PBExportHeader$w_abm_unidades_medida.srw
forward
global type w_abm_unidades_medida from w_abm_base
end type
end forward

global type w_abm_unidades_medida from w_abm_base
integer width = 2030
integer height = 520
end type
global w_abm_unidades_medida w_abm_unidades_medida

on w_abm_unidades_medida.create
call super::create
end on

on w_abm_unidades_medida.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_unidades_medida
integer x = 1563
integer y = 288
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_unidades_medida
integer y = 288
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_unidades_medida
integer y = 288
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_unidades_medida
integer y = 288
end type

type dw_datos from w_abm_base`dw_datos within w_abm_unidades_medida
integer width = 1929
integer height = 240
string dataobject = "dw_abm_unidades_medidas"
end type

