$PBExportHeader$w_abm_proveedores.srw
forward
global type w_abm_proveedores from w_abm_base
end type
end forward

global type w_abm_proveedores from w_abm_base
integer width = 2217
end type
global w_abm_proveedores w_abm_proveedores

on w_abm_proveedores.create
call super::create
end on

on w_abm_proveedores.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_proveedores
integer x = 1737
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_proveedores
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_proveedores
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_proveedores
end type

type dw_datos from w_abm_base`dw_datos within w_abm_proveedores
integer width = 2103
string dataobject = "dw_abm_proveedores"
end type

