$PBExportHeader$w_ribon.srw
forward
global type w_ribon from window
end type
type dw_datos from datawindow within w_ribon
end type
type rbb_1 from ribbonbar within w_ribon
end type
end forward

global type w_ribon from window
integer width = 3378
integer height = 1408
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_datos dw_datos
rbb_1 rbb_1
end type
global w_ribon w_ribon

event open;    rbb_1.ImportFromXMLFile ("abm_simple.xml")
	 title = 'Nombre del Programa: ' + this.classname()
	
end event

on w_ribon.create
this.dw_datos=create dw_datos
this.rbb_1=create rbb_1
this.Control[]={this.dw_datos,&
this.rbb_1}
end on

on w_ribon.destroy
destroy(this.dw_datos)
destroy(this.rbb_1)
end on

type dw_datos from datawindow within w_ribon
integer x = 23
integer y = 512
integer width = 3305
integer height = 772
integer taborder = 10
string title = "none"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
end event

event itemchanged;long lfilas
any lvalor 
dw_datos.accepttext()

if dw_datos.getcolumn() = 1 then
	lvalor = dw_datos.getItemnumber(1,1)
	lfilas = dw_datos.retrieve(lvalor)
	
	if lfilas < 0 then
		rollback using sqlca;
		messagebox('Error', 'Hubo un problema de conexión con la BD')
	elseif lfilas > 0 then
		commit using sqlca;
	elseif lfilas = 0 then
		rbb_1.event  ue_cancelbuttonclicked(0)
		dw_datos.setitem(1,1,lvalor)
	end if
end if
dw_datos.setfocus()
end event

event dberror;//declaración de variables
Long desde, hasta, pos_ini, pos_fin
String columna_error, valor_error, mensaje_error, lmsj
//asignamos un valor por defecto por si no administramos el error
lmsj = "Error no identificado, consulte con el administrador del sistema"
//obtenemos el nombre de la columna (si existe)
if pos(lower(sqlerrtext),"column") > 0 then
	desde = pos(lower(sqlerrtext),"column") + 7
	hasta = pos(lower(sqlerrtext)," ",desde)
	columna_error = WordCap(mid(sqlerrtext, desde + 1, hasta - desde - 1))
end if
//obtenemos el valor de la columna (si existe)
if pos(lower(sqlerrtext),"value") > 0 then
	desde = pos(lower(sqlerrtext),"value") + 5
	hasta = pos(lower(sqlerrtext)," ",desde + 1)
	valor_error = WordCap(mid(sqlerrtext, desde + 1, hasta - desde - 1))
end if
//analizamos si el error es de Triggers preguntando por raiserror
//esto tambien puede administrarse analizando el numero de error de raiserror
if pos(lower(sqlerrtext),"raiserror") > 0 then
	desde = pos(lower(sqlerrtext),"executed") + 8
	hasta = pos(lower(sqlerrtext),"no changes made to database.",desde +1)
	mensaje_error = WordCap(mid(sqlerrtext, desde + 1, hasta - desde - 1))
end if
//analizamos uno a uno los errores para traducirlos del inglés al español
//(nótese que el if se realiza en una sola línea)
if sqldbcode = -72 then lmsj = "Base de datos no especificada, solicite reconfiguración con administracion del sistema"
if sqldbcode = -99 then lmsj = "Conexión a la Base de datos no especificada o deshabilitada, solicite configuración con administracion del sistema"
if sqldbcode = -103 then lmsj = "Usuario o Password no son válidos, verifique si los ingresó correctamente e intente de nuevo. Si el error persiste consulte con administracion del sistema"
if sqldbcode = -104 then lmsj = "Usuario o Password no son válidos para el modulo, verifique si los ingresó correctamente e intente de nuevo. Si el error persiste consulte con administracion del sistema"
if sqldbcode = -105 then lmsj = "Base de datos no está activa, por favor avise a Administracion del Sistema"
if sqldbcode = -108 then lmsj = "Conexión no encontrada, por favor avise a Administracion del sistema"
if sqldbcode = -158 then lmsj = "Un dato ingresado "+valor_error+" excede el limite permitido. Por favor verifique los datos ingresados y corríjalo"
if sqldbcode = -193 then lmsj = "El registro ya existe (código de clave primaria ya existe). Por favor verifique los datos que está tratando de utilizar"
if sqldbcode = -194 then lmsj = "El registro referenciado no existe (código de clave foránea no ya existe). Por favor verifique los datos que está tratando de utilizar"
if sqldbcode = -195 then lmsj = "Dato requerido "+columna_error+" no acepta valores vacios. Por favor verifique los datos que está tratando de utilizar"
if sqldbcode = -196 then lmsj = "Dato duplicado. Por favor verifique los datos que está tratando de utilizar"
if sqldbcode = -198 then lmsj = "El dato está siendo utilizado en otro registro, no se puede eliminar. Por favor verifique los datos que está tratando de utilizar"
if sqldbcode = -209 then lmsj = "Formato de dato no valido. Por favor verifique las fechas, montos o descripciones muy largas. Luego vuelva a intentar"
if sqldbcode = -308 then lmsj = "Conexion perdida o terminada, reintente en un rato. Si el error perisiste consulte con Administracion del sistema"
if sqldbcode = -628 then lmsj = "Error de cálculo, intento de división por cero, avise a Administracion del sistema"
if sqldbcode < -30000 then lmsj = "Error de validación o regla: " + mensaje_error
Messagebox("Error de Integridad... ", lmsj, StopSign!)
Return 1
end event

type rbb_1 from ribbonbar within w_ribon
event type integer ue_closebuttonclicked ( integer p )
event type integer ue_savebuttonclicked ( integer p )
event type integer ue_cancelbuttonclicked ( integer p )
event type integer ue_deletebuttonclicked ( integer p )
event db ( )
integer width = 3342
integer height = 492
long backcolor = 15132390
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
end type

event type integer ue_closebuttonclicked(integer p);close(parent)
return 0
end event

event type integer ue_savebuttonclicked(integer p);dw_datos.accepttext()

if dw_datos.update(true, false) = 1 then
	commit using sqlca;
	event ue_cancelbuttonclicked(0)
else
	rollback using sqlca;
	messagebox('Error','La aplicacion ha encontrado un error', stopsign!)
end if
return 0
end event

event type integer ue_cancelbuttonclicked(integer p);dw_datos.Reset()
dw_datos.InsertRow(0)
dw_datos.SetFocus()
return 0
end event

event type integer ue_deletebuttonclicked(integer p);if messagebox('Atencion','Si pio?', question!, okcancel!, 2) = 1 then
	dw_datos.deleterow(0)
	event ue_savebuttonclicked(0)
end if
return 0
end event

event constructor;    rbb_1.ImportFromXMLFile ("RibbonBar.xml")
	  event ue_cancelbuttonclicked(0)
end event

