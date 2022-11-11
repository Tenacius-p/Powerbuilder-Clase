$PBExportHeader$w_rpt_base.srw
forward
global type w_rpt_base from window
end type
type em_final from editmask within w_rpt_base
end type
type em_inicial from editmask within w_rpt_base
end type
type cb_salir from commandbutton within w_rpt_base
end type
type dw_datos from datawindow within w_rpt_base
end type
type st_2 from statictext within w_rpt_base
end type
type st_1 from statictext within w_rpt_base
end type
type cb_ultimo from commandbutton within w_rpt_base
end type
type cb_anterior from commandbutton within w_rpt_base
end type
type cb_nuevo from commandbutton within w_rpt_base
end type
type cb_siguiente from commandbutton within w_rpt_base
end type
type cb_imprimir from commandbutton within w_rpt_base
end type
type cb_ver from commandbutton within w_rpt_base
end type
type cb_primero from commandbutton within w_rpt_base
end type
end forward

global type w_rpt_base from window
integer width = 5376
integer height = 2504
boolean titlebar = true
string title = "Vista Previa"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
windowstate windowstate = maximized!
long backcolor = 67108864
string icon = "JaguarProfile!"
boolean center = true
em_final em_final
em_inicial em_inicial
cb_salir cb_salir
dw_datos dw_datos
st_2 st_2
st_1 st_1
cb_ultimo cb_ultimo
cb_anterior cb_anterior
cb_nuevo cb_nuevo
cb_siguiente cb_siguiente
cb_imprimir cb_imprimir
cb_ver cb_ver
cb_primero cb_primero
end type
global w_rpt_base w_rpt_base

forward prototypes
public subroutine f_deshabilitaboton (ref commandbutton boton)
public subroutine f_habilitaboton (ref commandbutton boton)
end prototypes

public subroutine f_deshabilitaboton (ref commandbutton boton);boton.enabled = false
end subroutine

public subroutine f_habilitaboton (ref commandbutton boton);boton.enabled = true
end subroutine

on w_rpt_base.create
this.em_final=create em_final
this.em_inicial=create em_inicial
this.cb_salir=create cb_salir
this.dw_datos=create dw_datos
this.st_2=create st_2
this.st_1=create st_1
this.cb_ultimo=create cb_ultimo
this.cb_anterior=create cb_anterior
this.cb_nuevo=create cb_nuevo
this.cb_siguiente=create cb_siguiente
this.cb_imprimir=create cb_imprimir
this.cb_ver=create cb_ver
this.cb_primero=create cb_primero
this.Control[]={this.em_final,&
this.em_inicial,&
this.cb_salir,&
this.dw_datos,&
this.st_2,&
this.st_1,&
this.cb_ultimo,&
this.cb_anterior,&
this.cb_nuevo,&
this.cb_siguiente,&
this.cb_imprimir,&
this.cb_ver,&
this.cb_primero}
end on

on w_rpt_base.destroy
destroy(this.em_final)
destroy(this.em_inicial)
destroy(this.cb_salir)
destroy(this.dw_datos)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_ultimo)
destroy(this.cb_anterior)
destroy(this.cb_nuevo)
destroy(this.cb_siguiente)
destroy(this.cb_imprimir)
destroy(this.cb_ver)
destroy(this.cb_primero)
end on

event open;title = 'Nombre del Programa: ' + this.classname()
cb_nuevo.event clicked()
end event

event resize;dw_datos.width = this.width -200
dw_datos.height = this.height - 750

cb_ver.y = this.height - 430

cb_salir.y = this.height - 290
cb_salir.x = this.width - 575 		// final

cb_imprimir.y = this.height - 430

cb_nuevo.y = this.height - 430

cb_primero.y = this.height - 290

cb_anterior.y = this.height - 290

cb_siguiente.y = this.height - 290

cb_ultimo.y = this.height - 290
end event

type em_final from editmask within w_rpt_base
integer x = 306
integer y = 176
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "#####"
end type

type em_inicial from editmask within w_rpt_base
integer x = 306
integer y = 32
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "#####"
end type

type cb_salir from commandbutton within w_rpt_base
integer x = 4887
integer y = 2280
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Salir"
end type

event clicked;close(parent)
end event

type dw_datos from datawindow within w_rpt_base
integer x = 41
integer y = 300
integer width = 5248
integer height = 1536
integer taborder = 30
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;dw_datos.settransobject(sqlca)
dw_datos.modify("datawindow.print.preview = yes")
end event

type st_2 from statictext within w_rpt_base
integer x = 59
integer y = 200
integer width = 165
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Final:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_rpt_base
integer x = 59
integer y = 56
integer width = 206
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Inicial:"
boolean focusrectangle = false
end type

type cb_ultimo from commandbutton within w_rpt_base
integer x = 1344
integer y = 2280
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Ultimo"
end type

event clicked;integer ultimo 

ultimo = dw_datos.rowcount()
dw_datos.scrolltorow(ultimo)
dw_datos.setrow(ultimo)

end event

type cb_anterior from commandbutton within w_rpt_base
integer x = 910
integer y = 2280
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Anterior"
end type

event clicked;dw_datos.scrollpriorpage()
end event

type cb_nuevo from commandbutton within w_rpt_base
integer x = 1344
integer y = 2144
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancelar"
end type

event clicked;em_inicial.text = ''
em_final.text = ''

dw_datos.Reset()
dw_datos.insertrow(0)

f_deshabilitaboton(cb_imprimir)
f_deshabilitaboton(cb_primero)
f_deshabilitaboton(cb_anterior)
f_deshabilitaboton(cb_siguiente)
f_deshabilitaboton(cb_ultimo)

em_inicial.setfocus()
end event

type cb_siguiente from commandbutton within w_rpt_base
integer x = 466
integer y = 2280
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Siguiente"
end type

event clicked;dw_datos.scrollnextpage()
end event

type cb_imprimir from commandbutton within w_rpt_base
integer x = 910
integer y = 2144
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Imprimir"
end type

event clicked;dw_datos.print(true)
end event

type cb_ver from commandbutton within w_rpt_base
integer x = 23
integer y = 2144
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Ver"
end type

event clicked;if dw_datos.retrieve(integer(em_inicial.text), integer(em_final.text)) > 0 then
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

type cb_primero from commandbutton within w_rpt_base
integer x = 23
integer y = 2280
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Primero"
end type

event clicked;dw_datos.scrolltorow(1)
dw_datos.setrow(1)
end event

