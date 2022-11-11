$PBExportHeader$w_abm_colores.srw
forward
global type w_abm_colores from w_abm_base
end type
end forward

global type w_abm_colores from w_abm_base
integer width = 1966
integer height = 508
end type
global w_abm_colores w_abm_colores

on w_abm_colores.create
call super::create
end on

on w_abm_colores.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_colores
integer x = 1490
integer y = 268
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_colores
integer y = 268
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_colores
integer y = 268
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_colores
integer y = 268
end type

type dw_datos from w_abm_base`dw_datos within w_abm_colores
integer width = 1856
integer height = 232
string dataobject = "dw_abm_colores"
end type

