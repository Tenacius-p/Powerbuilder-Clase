$PBExportHeader$w_abm_ramas.srw
forward
global type w_abm_ramas from w_abm_base
end type
end forward

global type w_abm_ramas from w_abm_base
integer width = 2135
integer height = 492
end type
global w_abm_ramas w_abm_ramas

on w_abm_ramas.create
call super::create
end on

on w_abm_ramas.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_ramas
integer x = 1659
integer y = 256
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_ramas
integer y = 256
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_ramas
integer y = 256
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_ramas
integer y = 256
end type

type dw_datos from w_abm_base`dw_datos within w_abm_ramas
integer width = 2025
integer height = 204
string dataobject = "dw_abm_ramas"
end type

