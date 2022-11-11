$PBExportHeader$w_rpt_proveedores.srw
forward
global type w_rpt_proveedores from w_rpt_base
end type
end forward

global type w_rpt_proveedores from w_rpt_base
end type
global w_rpt_proveedores w_rpt_proveedores

on w_rpt_proveedores.create
call super::create
end on

on w_rpt_proveedores.destroy
call super::destroy
end on

type em_final from w_rpt_base`em_final within w_rpt_proveedores
end type

type em_inicial from w_rpt_base`em_inicial within w_rpt_proveedores
end type

type cb_salir from w_rpt_base`cb_salir within w_rpt_proveedores
end type

type dw_datos from w_rpt_base`dw_datos within w_rpt_proveedores
string dataobject = "dw_rpt_proveedores"
end type

type st_2 from w_rpt_base`st_2 within w_rpt_proveedores
end type

type st_1 from w_rpt_base`st_1 within w_rpt_proveedores
end type

type cb_ultimo from w_rpt_base`cb_ultimo within w_rpt_proveedores
end type

type cb_anterior from w_rpt_base`cb_anterior within w_rpt_proveedores
end type

type cb_nuevo from w_rpt_base`cb_nuevo within w_rpt_proveedores
end type

type cb_siguiente from w_rpt_base`cb_siguiente within w_rpt_proveedores
end type

type cb_imprimir from w_rpt_base`cb_imprimir within w_rpt_proveedores
end type

type cb_ver from w_rpt_base`cb_ver within w_rpt_proveedores
end type

type cb_primero from w_rpt_base`cb_primero within w_rpt_proveedores
end type

