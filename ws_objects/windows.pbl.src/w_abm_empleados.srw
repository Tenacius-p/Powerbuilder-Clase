$PBExportHeader$w_abm_empleados.srw
forward
global type w_abm_empleados from w_abm_base
end type
type p_imagen from picture within w_abm_empleados
end type
type cb_1 from commandbutton within w_abm_empleados
end type
end forward

global type w_abm_empleados from w_abm_base
integer width = 3351
integer height = 1256
p_imagen p_imagen
cb_1 cb_1
end type
global w_abm_empleados w_abm_empleados

type variables
blob imagen_blob
end variables

on w_abm_empleados.create
int iCurrent
call super::create
this.p_imagen=create p_imagen
this.cb_1=create cb_1
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.p_imagen
this.Control[iCurrent+2]=this.cb_1
end on

on w_abm_empleados.destroy
call super::destroy
destroy(this.p_imagen)
destroy(this.cb_1)
end on

type cb_salir from w_abm_base`cb_salir within w_abm_empleados
integer x = 1696
integer y = 1012
end type

type cb_nuevo from w_abm_base`cb_nuevo within w_abm_empleados
integer y = 1012
end type

event cb_nuevo::clicked;call super::clicked;setnull(imagen_blob)
p_imagen.picturename = ' '
end event

type cb_borrar from w_abm_base`cb_borrar within w_abm_empleados
integer y = 1012
end type

type cb_grabar from w_abm_base`cb_grabar within w_abm_empleados
integer y = 1012
end type

event cb_grabar::clicked;long lemp
// ancestro anulado

dw_datos.accepttext()

if dw_datos.update(true, false) = 1 then
	commit using sqlca;
	
	lemp = dw_datos.getitemnumber(1, 'empleado')
	
	updateblob empleados
	set empleado_pic = :imagen_blob
	where empleado = :lemp;
	
	commit using sqlca;
	
	cb_nuevo.event clicked()
else
	rollback using sqlca;
	messagebox('Error','La aplicacion ha encontrado un error', stopsign!)
end if
end event

type dw_datos from w_abm_base`dw_datos within w_abm_empleados
integer width = 2062
integer height = 972
string dataobject = "dw_abm_empleados"
end type

event dw_datos::itemchanged;call super::itemchanged;long lemp

lemp = this.getitemnumber(1, 'empleado')

selectblob empleado_pic
into :imagen_blob
from empleados
where empleado = :lemp;

commit using sqlca;

p_imagen.setpicture(imagen_blob)

end event

type p_imagen from picture within w_abm_empleados
integer x = 2121
integer y = 24
integer width = 1175
integer height = 972
boolean bringtotop = true
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_abm_empleados
integer x = 2158
integer y = 1012
integer width = 1138
integer height = 112
integer taborder = 60
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "seleccione imagen"
end type

event clicked;string ls_pathname, ls_filename
integer i_getfileopenname, i_fileopen

string ls_defaulttext = 'bmp'
string ls_filtro = 'Archivo JPEG(*.jpeg),*.jpeg, Archivos GIFs(*.gif), *.gif, Mapa de Bits(*.bmp), *.bmp, todos, *.*'

i_getfileopenname = getfileopenname('abrir mapa de bits', ls_pathname, ls_filename,ls_defaulttext,ls_filtro)

if i_getfileopenname = 1 then
	i_fileopen = fileopen(ls_pathname,streammode!)
	if i_fileopen <> -1 then
		filereadex(i_fileopen, imagen_blob)
		if IsNull(imagen_blob) then messagebox('Advertencia', 'Blob nulo')
		p_imagen.setpicture(imagen_blob)
		fileclose(i_fileopen)
	else 
		messagebox('error', 'error al leer el fichero', Stopsign!)
	end if
else 
	if i_getfileopenname = -1 then
		messagebox('error', 'getfileopenname=-1', Stopsign!)
	end if
end if 
end event

