$PBExportHeader$w_rpt_compras_por_mes.srw
forward
global type w_rpt_compras_por_mes from w_rpt_base
end type
end forward

global type w_rpt_compras_por_mes from w_rpt_base
end type
global w_rpt_compras_por_mes w_rpt_compras_por_mes

on w_rpt_compras_por_mes.create
call super::create
end on

on w_rpt_compras_por_mes.destroy
call super::destroy
end on

type em_final from w_rpt_base`em_final within w_rpt_compras_por_mes
integer width = 475
alignment alignment = Left!
maskdatatype maskdatatype = datemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

type em_inicial from w_rpt_base`em_inicial within w_rpt_compras_por_mes
integer width = 475
alignment alignment = Left!
maskdatatype maskdatatype = datemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

type cb_salir from w_rpt_base`cb_salir within w_rpt_compras_por_mes
end type

type dw_datos from w_rpt_base`dw_datos within w_rpt_compras_por_mes
string dataobject = "dw_rpt_compras_por_mes"
end type

type st_2 from w_rpt_base`st_2 within w_rpt_compras_por_mes
end type

type st_1 from w_rpt_base`st_1 within w_rpt_compras_por_mes
end type

type cb_ultimo from w_rpt_base`cb_ultimo within w_rpt_compras_por_mes
end type

type cb_anterior from w_rpt_base`cb_anterior within w_rpt_compras_por_mes
end type

type cb_nuevo from w_rpt_base`cb_nuevo within w_rpt_compras_por_mes
end type

event cb_nuevo::clicked;call super::clicked;em_final.text = string(today())
end event

type cb_siguiente from w_rpt_base`cb_siguiente within w_rpt_compras_por_mes
end type

type cb_imprimir from w_rpt_base`cb_imprimir within w_rpt_compras_por_mes
end type

type cb_ver from w_rpt_base`cb_ver within w_rpt_compras_por_mes
end type

event cb_ver::clicked;if dw_datos.retrieve(date(em_inicial.text), date(em_final.text)) > 0 then
	f_habilitaboton(cb_imprimir)
	f_habilitaboton(cb_primero)
	f_habilitaboton(cb_anterior)
	f_habilitaboton(cb_siguiente)
	f_habilitaboton(cb_ultimo)
	
	commit using sqlca;
else 
	f_deshabilitaboton(cb_imprimir)
	f_deshabilitaboton(cb_primero)
	f_deshabilitaboton(cb_anterior)
	f_deshabilitaboton(cb_siguiente)
	f_deshabilitaboton(cb_ultimo)
	
	rollback using sqlca;
	
end if 
end event

type cb_primero from w_rpt_base`cb_primero within w_rpt_compras_por_mes
end type

