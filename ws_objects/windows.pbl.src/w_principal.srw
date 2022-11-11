$PBExportHeader$w_principal.srw
forward
global type w_principal from window
end type
type cb_3 from commandbutton within w_principal
end type
type cb_2 from commandbutton within w_principal
end type
type cb_1 from commandbutton within w_principal
end type
end forward

global type w_principal from window
integer width = 3378
integer height = 1484
boolean titlebar = true
string title = "Untitled"
string menuname = "m_principal"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
end type
global w_principal w_principal

on w_principal.create
if this.MenuName = "m_principal" then this.MenuID = create m_principal
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_1}
end on

on w_principal.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
end on

event open;title = 'Nombre del Programa: ' + this.classname()
end event

type cb_3 from commandbutton within w_principal
integer x = 41
integer y = 468
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Ribbon menu"
end type

event clicked;	open(w_ribon_ramas)
end event

type cb_2 from commandbutton within w_principal
integer x = 41
integer y = 328
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Crosstab "
end type

event clicked;
open(w_rpt_compras_por_mes)
end event

type cb_1 from commandbutton within w_principal
integer x = 41
integer y = 188
integer width = 603
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "empleados por fecha"
end type

event clicked;open(w_rpt_empleados_con_fecha)
end event

