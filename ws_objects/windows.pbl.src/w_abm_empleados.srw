$PBExportHeader$w_abm_empleados.srw
forward
global type w_abm_empleados from w_abm_base
end type
end forward

global type w_abm_empleados from w_abm_base
integer width = 2162
integer height = 1256
end type
global w_abm_empleados w_abm_empleados

on w_abm_empleados.create
call super::create
end on

on w_abm_empleados.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_empleados
integer x = 1696
integer y = 1012
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_empleados
integer y = 1012
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_empleados
integer y = 1012
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_empleados
integer y = 1012
end type

type dw_datos from w_abm_base`dw_datos within w_abm_empleados
integer width = 2062
integer height = 972
string dataobject = "dw_abm_empleados"
end type

