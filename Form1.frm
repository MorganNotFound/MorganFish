VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000008&
   Caption         =   "交通灯"
   ClientHeight    =   3060
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4635
   FillColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   3060
   ScaleWidth      =   4635
   StartUpPosition =   3  '窗口缺省
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   0
      Top             =   2640
   End
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   2040
      Top             =   2640
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1000
      Left            =   4200
      Top             =   2640
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   2400
      TabIndex        =   2
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   1200
      TabIndex        =   1
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   18
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   0
      TabIndex        =   0
      Top             =   480
      Width           =   1215
   End
   Begin VB.Shape green 
      BackColor       =   &H0000FF00&
      BackStyle       =   1  'Opaque
      Height          =   495
      Left            =   360
      Shape           =   3  'Circle
      Top             =   0
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Shape yellow 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      Height          =   495
      Left            =   1560
      Shape           =   3  'Circle
      Top             =   0
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Shape red 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H80000007&
      Height          =   495
      Left            =   2760
      Shape           =   3  'Circle
      Top             =   0
      Visible         =   0   'False
      Width           =   495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim r As Integer
Dim g As Integer
Dim y As Integer
Private Sub form_load()
Timer1.Enabled = True
Timer2.Enabled = False
Timer3.Enabled = False
green.Visible = True
yellow.Visible = False
red.Visible = False
r = 10
y = 3
g = 10
Label1.Caption = g
g = g - 1
If g < 0 Then
Label1.Visible = False
Label2.Visible = True
Label3.Visible = False
Timer1.Enabled = False
Timer2.Enabled = True
End If
End Sub
Private Sub timer2_timer()
green.Visible = False
yellow.Visible = True
red.Visible = False
g = 10
Label2.Caption = y
y = y - 1
If y < 0 Then
Label1.Visible = False
Label2.Visible = False
Label3.Visible = True
Timer2.Enabled = False
Timer3.Enabled = True
y = 3
End If
End Sub
Private Sub timer3_timer()
green.Visible = False
yellow.Visible = False
red.Visible = True
y = 3
Label3.Caption = r
r = r - 1
If r < 0 Then
Label1.Visible = True
Label2.Visible = False
Label3.Visible = False
Timer1.Enabled = True
Timer2.Enabled = False
Timer3.Enabled = False
r = 10
End If
End Sub
Private Sub timer1_timer()
green.Visible = True
yellow.Visible = False
red.Visible = False
r = 10
Label1.Caption = g
g = g - 1
If g < 0 Then
Label1.Visible = False
Label2.Visible = True
Label3.Visible = False
Timer1.Enabled = False
Timer2.Enabled = True
Timer3.Enabled = False
g = 10
End If
End Sub
