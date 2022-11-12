$PBExportHeader$w_ribon_ramas.srw
forward
global type w_ribon_ramas from w_ribon
end type
end forward

global type w_ribon_ramas from w_ribon
integer width = 2085
integer height = 540
string title = "ramas"
end type
global w_ribon_ramas w_ribon_ramas

on w_ribon_ramas.create
call super::create
end on

on w_ribon_ramas.destroy
call super::destroy
end on

type dw_datos from w_ribon`dw_datos within w_ribon_ramas
integer x = 0
integer y = 160
integer width = 2213
integer height = 412
string dataobject = "dw_abm_ramas"
borderstyle borderstyle = stylebox!
end type

type rbb_1 from w_ribon`rbb_1 within w_ribon_ramas
integer width = 2194
integer height = 168
boolean hidetabheader = true
boolean hidepaneltext = true
boolean autosizeheight = false
end type

