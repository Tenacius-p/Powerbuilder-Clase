$PBExportHeader$w_abm_clientes.srw
forward
global type w_abm_clientes from w_abm_base
end type
end forward

global type w_abm_clientes from w_abm_base
integer width = 2080
integer height = 1352
end type
global w_abm_clientes w_abm_clientes

on w_abm_clientes.create
call super::create
end on

on w_abm_clientes.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_clientes
integer x = 1609
integer y = 1120
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_clientes
integer y = 1120
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_clientes
integer y = 1120
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_clientes
integer y = 1120
end type

type dw_datos from w_abm_base`dw_datos within w_abm_clientes
integer width = 1975
integer height = 1084
string dataobject = "dw_abm_clientes"
end type

