﻿$PBExportHeader$w_rpt_clientes.srw
forward
global type w_rpt_clientes from w_rpt_base
end type
end forward

global type w_rpt_clientes from w_rpt_base
end type
global w_rpt_clientes w_rpt_clientes

on w_rpt_clientes.create
call super::create
end on

on w_rpt_clientes.destroy
call super::destroy
end on

type em_final from w_rpt_base`em_final within w_rpt_clientes
end type

type em_inicial from w_rpt_base`em_inicial within w_rpt_clientes
end type

type cb_salir from w_rpt_base`cb_salir within w_rpt_clientes
end type

type dw_datos from w_rpt_base`dw_datos within w_rpt_clientes
string dataobject = "dw_rpt_clientes"
end type

type st_2 from w_rpt_base`st_2 within w_rpt_clientes
end type

type st_1 from w_rpt_base`st_1 within w_rpt_clientes
end type

type cb_ultimo from w_rpt_base`cb_ultimo within w_rpt_clientes
end type

type cb_anterior from w_rpt_base`cb_anterior within w_rpt_clientes
end type

type cb_nuevo from w_rpt_base`cb_nuevo within w_rpt_clientes
end type

type cb_siguiente from w_rpt_base`cb_siguiente within w_rpt_clientes
end type

type cb_imprimir from w_rpt_base`cb_imprimir within w_rpt_clientes
end type

type cb_ver from w_rpt_base`cb_ver within w_rpt_clientes
end type

type cb_primero from w_rpt_base`cb_primero within w_rpt_clientes
end type

