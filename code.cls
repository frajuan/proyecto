VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "Hoja1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = True
Private Sub cmdCalcular_Click()

Dim dia As String
Dim placa As Integer
Dim hora As Date
Dim tope1 As Date
Dim tope2 As Date
Dim tope3 As Date
Dim tope4 As Date

tope1 = #7:00:00 AM#
tope2 = #9:30:00 AM#
tope3 = #4:00:00 PM#
tope4 = #7:30:00 PM#


'7h00 a 9h30
' 16h00 a 19h30
' L 1,2 m 3,4 M 5,6 J 7,8 V 9,0


dia = Range("e4").Value
placa = Range("b2").Value
hora = Range("b6").Value


    If (hora >= tope1 And hora <= tope2) Or (hora >= tope3 And hora <= tope4) Then
    
        If dia = "lunes" And (placa = 1 Or placa = 2) Then
            MsgBox "CUIDADO TIENES PICO Y PLACA", vbExclamation, strTitulo
        ElseIf dia = "martes" And (placa = 3 Or placa = 4) Then
            MsgBox "CUIDADO TIENES PICO Y PLACA", vbExclamation, strTitulo
        ElseIf dia = "miercoles" And (placa = 5 Or placa = 6) Then
            MsgBox "CUIDADO TIENES PICO Y PLACA", vbExclamation, strTitulo
        ElseIf dia = "jueves" And (placa = 7 Or placa = 8) Then
            MsgBox "CUIDADO TIENES PICO Y PLACA", vbExclamation, strTitulo
        ElseIf dia = "viernes" And (placa = 9 Or placa = 0) Then
            MsgBox "CUIDADO TIENES PICO Y PLACA", vbExclamation, strTitulo
        Else
            MsgBox "Respire..., Usted no tiene pico y placa", vbExclamation, strTitulo
        End If
     
    Else
    
        MsgBox "Respire..., Usted no tiene pico y placa", vbInformation, strTitulo
    
    End If
       


End Sub
