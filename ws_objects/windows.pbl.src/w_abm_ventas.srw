$PBExportHeader$w_abm_ventas.srw
forward
global type w_abm_ventas from w_abm_cabecera_base
end type
end forward

global type w_abm_ventas from w_abm_cabecera_base
integer width = 4398
integer height = 1728
end type
global w_abm_ventas w_abm_ventas

on w_abm_ventas.create
call super::create
end on

on w_abm_ventas.destroy
call super::destroy
end on

event asigna_clave;call super::asigna_clave;long lmonto_total, lmonto_iva5, lmonto_iva10, lmonto_exento, i
dw_datos.accepttext()

for i = dw_detalles.rowcount() to 1 step -1
	if isnull(dw_detalles.getitemnumber(i,'producto')) or isnull(dw_detalles.getitemnumber(i,'deposito')) or isnull(dw_detalles.getitemnumber(i,'unidad')) or dw_detalles.getitemnumber(i,'cantidad') = 0 or dw_detalles.getitemnumber(i,'precio_venta') = 0 then 
		dw_detalles.deleterow(i)
	end if 
next

lmonto_total = dw_detalles.getitemnumber(1,'total')
lmonto_iva5 = dw_detalles.getitemnumber(1,'iv_5')
lmonto_iva10 = dw_detalles.getitemnumber(1,'iv_10')
lmonto_exento = dw_detalles.getitemnumber(1,'iv_0')

dw_datos.setitem(1,'monto_total', lmonto_total)
dw_datos.setitem(1,'monto_iva5', lmonto_iva5)
dw_datos.setitem(1,'monto_iva10', lmonto_iva10)
dw_datos.setitem(1,'monto_exento', lmonto_exento)

end event

type cb_salir from w_abm_cabecera_base`cb_salir within w_abm_ventas
integer x = 3931
integer y = 1496
end type

type cb_nuevo from w_abm_cabecera_base`cb_nuevo within w_abm_ventas
integer y = 1496
end type

type cb_borrar_item from w_abm_cabecera_base`cb_borrar_item within w_abm_ventas
integer y = 1496
end type

type cb_borrar from w_abm_cabecera_base`cb_borrar within w_abm_ventas
integer y = 1496
end type

type cb_grabar from w_abm_cabecera_base`cb_grabar within w_abm_ventas
integer y = 1496
end type

type dw_detalles from w_abm_cabecera_base`dw_detalles within w_abm_ventas
integer y = 412
integer width = 4306
integer height = 1060
string dataobject = "dw_abm_ventas_det"
end type

event dw_detalles::itemchanged;call super::itemchanged;long foo, lmonto, lunidad

dw_detalles.accepttext()

if dw_detalles.getcolumnname() = 'producto' then

	foo = dw_detalles.getitemnumber(dw_detalles.getrow(), 'producto')

	select precio_venta, unidad
	into :lmonto, :lunidad
	from productos
	where producto = :foo;

	dw_detalles.setitem(dw_detalles.getrow(), 'precio_venta', lmonto)
	dw_detalles.setitem(dw_detalles.getrow(), 'unidad', lunidad)
	
	if lmonto = 0 then 
		messagebox('Atencion!', 'El producto seleccionado no posee precio de venta.', stopsign!)
	end if
	
end if 
end event

type dw_datos from w_abm_cabecera_base`dw_datos within w_abm_ventas
integer width = 2231
integer height = 340
string dataobject = "dw_abm_ventas"
end type

