VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "eagle4's circles"
   ClientHeight    =   6510
   ClientLeft      =   165
   ClientTop       =   735
   ClientWidth     =   7485
   LinkTopic       =   "Form1"
   ScaleHeight     =   434
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   499
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      Height          =   405
      Left            =   1425
      TabIndex        =   6
      Top             =   15
      Width           =   2415
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Change this for colour"
         Height          =   255
         Left            =   75
         TabIndex        =   7
         Top             =   150
         Width           =   2235
      End
   End
   Begin VB.Frame Frame1 
      Height          =   720
      Left            =   1440
      TabIndex        =   4
      Top             =   360
      Width           =   2400
      Begin VB.Label Label1 
         BackStyle       =   0  'Transparent
         Caption         =   "Make these 2, different and negative to see some cool stuff"
         Height          =   555
         Left            =   75
         TabIndex        =   5
         Top             =   210
         Width           =   2235
      End
   End
   Begin VB.TextBox Text4 
      Height          =   285
      Left            =   165
      TabIndex        =   3
      Text            =   "1"
      Top             =   1095
      Width           =   1215
   End
   Begin VB.TextBox Text3 
      Height          =   285
      Left            =   165
      TabIndex        =   2
      Text            =   "1"
      Top             =   765
      Width           =   1215
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   150
      TabIndex        =   1
      Text            =   "1"
      Top             =   435
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   150
      TabIndex        =   0
      Text            =   "1"
      Top             =   105
      Width           =   1215
   End
   Begin VB.Frame Frame3 
      Height          =   375
      Left            =   1425
      TabIndex        =   8
      Top             =   1035
      Width           =   2415
      Begin VB.Label Label3 
         BackStyle       =   0  'Transparent
         Caption         =   "Makes the circle go oval...."
         Height          =   255
         Left            =   60
         TabIndex        =   9
         Top             =   105
         Width           =   2235
      End
   End
   Begin VB.Menu hints 
      Caption         =   "show hints"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Form1.Circle (X, Y), 30, Text1.Text, Text2.Text, Text3.Text, Text4.Text
End Sub

Private Sub hints_Click()
If Frame1.Visible = False Then
    Frame1.Visible = True
    Frame2.Visible = True
    Frame3.Visible = True
    hints.Caption = "Hide Hints"
Else
    Frame1.Visible = False
    Frame2.Visible = False
    Frame3.Visible = False
    hints.Caption = "Show Hints"
End If
End Sub
