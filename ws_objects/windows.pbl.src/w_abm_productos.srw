$PBExportHeader$w_abm_productos.srw
forward
global type w_abm_productos from w_abm_base
end type
end forward

global type w_abm_productos from w_abm_base
integer width = 2277
integer height = 1892
end type
global w_abm_productos w_abm_productos

on w_abm_productos.create
call super::create
end on

on w_abm_productos.destroy
call super::destroy
end on

type cb_salir from w_abm_base`cb_salir within w_abm_productos
integer x = 1806
integer y = 1652
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_productos
integer y = 1652
end type

type cb_borrar from w_abm_base`cb_borrar within w_abm_productos
integer y = 1652
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_productos
integer y = 1652
end type

type dw_datos from w_abm_base`dw_datos within w_abm_productos
integer width = 2171
integer height = 1612
string dataobject = "dw_abm_productos"
end type

