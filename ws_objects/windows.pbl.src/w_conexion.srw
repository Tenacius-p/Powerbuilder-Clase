$PBExportHeader$w_conexion.srw
forward
global type w_conexion from window
end type
type sle_password from singlelineedit within w_conexion
end type
type sle_usuario from singlelineedit within w_conexion
end type
type st_2 from statictext within w_conexion
end type
type st_1 from statictext within w_conexion
end type
type cb_cancelar from commandbutton within w_conexion
end type
type cb_aceptar from commandbutton within w_conexion
end type
type gb_1 from groupbox within w_conexion
end type
end forward

global type w_conexion from window
integer width = 1394
integer height = 648
boolean titlebar = true
string title = "Conexion a la Base de Datos"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_password sle_password
sle_usuario sle_usuario
st_2 st_2
st_1 st_1
cb_cancelar cb_cancelar
cb_aceptar cb_aceptar
gb_1 gb_1
end type
global w_conexion w_conexion

on w_conexion.create
this.sle_password=create sle_password
this.sle_usuario=create sle_usuario
this.st_2=create st_2
this.st_1=create st_1
this.cb_cancelar=create cb_cancelar
this.cb_aceptar=create cb_aceptar
this.gb_1=create gb_1
this.Control[]={this.sle_password,&
this.sle_usuario,&
this.st_2,&
this.st_1,&
this.cb_cancelar,&
this.cb_aceptar,&
this.gb_1}
end on

on w_conexion.destroy
destroy(this.sle_password)
destroy(this.sle_usuario)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_cancelar)
destroy(this.cb_aceptar)
destroy(this.gb_1)
end on

event open;title = 'Nombre del Programa: ' + this.classname()
end event

type sle_password from singlelineedit within w_conexion
integer x = 325
integer y = 248
integer width = 960
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "sql"
boolean password = true
end type

type sle_usuario from singlelineedit within w_conexion
integer x = 325
integer y = 116
integer width = 960
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "dba"
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within w_conexion
integer x = 64
integer y = 272
integer width = 238
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Clave :"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within w_conexion
integer x = 46
integer y = 140
integer width = 274
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Usuario : "
alignment alignment = right!
boolean focusrectangle = false
end type

type cb_cancelar from commandbutton within w_conexion
integer x = 960
integer y = 444
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Cancelar"
boolean cancel = true
boolean flatstyle = true
end type

event clicked;Close(parent)
end event

type cb_aceptar from commandbutton within w_conexion
integer x = 32
integer y = 444
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Aceptar"
boolean default = true
boolean flatstyle = true
end type

event clicked;string lusuario, lpass, lmsj

lusuario = sle_usuario.text
lpass = sle_password.text

SQLCA.DBMS = 'ODBC'
SQLCA.AutoCommit = False
SQLCA.DBParm = "ConnectString = 'DSN=prog4; UID="+lusuario+"; PWD="+lpass+"'; ConnectOption = 'SQL_DRIVER_CONNECT,SQL_DRIVER_NOPROMPT'"

connect using SQLCA;

if SQLCA.SQLCODE <> 0 then
	lmsj = 'Error de login, consultar con analisis'
	if SQLCA.SQLDBCODE = 999 then lmsj = "Base de datos no encontrada, solicite al con administracion del sistema"
	if SQLCA.SQLDBCODE = -99 then lmsj = "Conexión a la Base de datos no especificada o deshabilitada, solicite configuración con administracion del sistema"
	if SQLCA.SQLDBCODE = -103 then lmsj = "Usuario o Password no son válidos, verifique si los ingresó correctamente e intente de nuevo. Si el error persiste consulte con administracion del sistema"
	if SQLCA.SQLDBCODE = -104 then lmsj = "Usuario o Password no son válidos para el modulo, verifique si los ingresó correctamente e intente de nuevo. Si el error persiste consulte con administracion del sistema"
	if SQLCA.SQLDBCODE = -105 then lmsj = "Base de datos no está activa, por favor avise a Administracion del Sistema"
	if SQLCA.SQLDBCODE = -1074 then lmsj = "Usuario y Contraseña en blanco,Completar Usuario y Contraseña"
	messagebox('Error de conexion',lmsj)
	
	


else
	open(w_principal)
	cb_cancelar.event clicked()
end if

end event

type gb_1 from groupbox within w_conexion
integer x = 32
integer y = 28
integer width = 1330
integer height = 400
integer textsize = -8
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 134217856
long backcolor = 67108864
string text = "Ingrese Valores Validos Para Usuario y Clave"
end type

