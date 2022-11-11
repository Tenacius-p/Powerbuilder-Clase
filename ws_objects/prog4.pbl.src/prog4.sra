$PBExportHeader$prog4.sra
$PBExportComments$Generated Application Object
forward
global type prog4 from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables

end variables

global type prog4 from application
string appname = "prog4"
string themepath = "C:\Program Files (x86)\Appeon\PowerBuilder 19.0\IDE\theme"
string themename = "Flat Design Blue"
boolean nativepdfvalid = false
boolean nativepdfincludecustomfont = false
string nativepdfappname = ""
long richtextedittype = 2
long richtexteditx64type = 3
long richtexteditversion = 1
string richtexteditkey = ""
string appicon = ""
string appruntimeversion = "19.2.0.2703"
end type
global prog4 prog4

on prog4.create
appname="prog4"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on prog4.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;//
//string lnombre, lapellido
//integer ledad
//date lnacimiento
//
//lnombre = 'jose'
//lapellido = 'figueredo'
//ledad = 21
//lnacimiento = date('2000-01-1')
//
//messagebox("titulo","hola " + lnombre + ' ' + lapellido + ' ' + 'con' + ' ' + string(ledad) + ' ' + 'nacido el' + ' ' + string(lnacimiento), stopsign!, OKCANCEL!)

// ########################## SEGUNDA CLASE ##########################
open(w_conexion)


end event

event close;//messagebox("titulo","close")

end event

