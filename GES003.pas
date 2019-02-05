// Inicio Uso Est�ndares: 01/08/2011
// Unidad : Gesti�n de Cobranzas
// Formulario : FCambioContrasena
// Fecha de Creaci�n : 09/05/2011
// Autor : JDCRUZ
// Objetivo : Cambiar la contrase�a de usuario.
// Actualizaciones:
// HPC_201107_GESCOB 09/05/2011 Cambiar de Servidor de aplicaciones
// HPC_201117_GESCOB 08/08/2011 Mejoras en el Cambio de contrase�a de usuario(F3)
Unit GES003;

Interface

Uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
   Dialogs, StdCtrls, Buttons, Mask, wwdbedit;

Type
   TFCambioContrasena = Class(TForm)
      gbCambioContrasena: TGroupBox;
      Label1: TLabel;
      Label2: TLabel;
      Label3: TLabel;
      dbePwdAnterior: TwwDBEdit;
      dbePwdNuevo: TwwDBEdit;
      dbePwdNuevoConfirma: TwwDBEdit;
      bbtnCambiaPWD: TBitBtn;
      bbtnCancelaCambioPWD: TBitBtn;
      Procedure bbtnCambiaPWDClick(Sender: TObject);
      Procedure bbtnCancelaCambioPWDClick(Sender: TObject);
      Procedure FormClose(Sender: TObject; Var Action: TCloseAction);
      Procedure FormKeyPress(Sender: TObject; Var Key: Char);
   Private
    { Private declarations }
   Public
    { Public declarations }
   End;

Var
   FCambioContrasena: TFCambioContrasena;
   xSQL: String;

Implementation

Uses GESDM1;

{$R *.dfm}

Procedure TFCambioContrasena.bbtnCambiaPWDClick(Sender: TObject);

   //Inicio HPC_201117_GESCOB
   //***************************************************************************
   // Nombre : Encripta
   // Descripcion : Encripta la cadena que se le pasa como parametro.
   //               devuelve una cadena encriptada
   //***************************************************************************
   Function Encripta(wgPass : String) : String;
   Var
      xnLarPal, xni, xnj : integer;
      xsReal, xsEncriptado1, xsEncriptado2, xsEncriptado3, xsEncriptado4,
      xsEncriptado5, xsNuePal, xsEncriptado : String;
      xlTiene : boolean;
   Begin
      xsReal := 'abcdefghijklmn�opqrstuvwxyzABCDEFGHIJKLMN�OPQRSTUVWXYZ0123456789';
      xsEncriptado1 := '���������������.������������Ԡ���١��ܿށ� �����ݣ��������������';
      xsEncriptado2 := '����������.������������Ԡ���١��ܿށ� �����ݣ�������������˶����';
      xsEncriptado3 := '�����.������������Ԡ���١��ܿށ� �����ݣ�������������˶���������';
      xsEncriptado4 := '.������������Ԡ���١��ܿށ� �����ݣ�������������˶��������������';
      xsEncriptado5 := '��������Ԡ���١��ܿށ� �����ݣ�������������˶��������������.����';
      xnLarPal := length(wgPass);
      xsNuePal := '';
      xni := 1;
      While xni <= xnLarPal Do
      Begin
         xnj := 1;
         xlTiene := False;
         If (xni = 1) Or (xni = 11) Or (xni = 21) Or (xni = 31) Then xsEncriptado := xsEncriptado1;
         If (xni = 2) Or (xni = 12) Or (xni = 22) Or (xni = 32) Then xsEncriptado := xsEncriptado2;
         If (xni = 3) Or (xni = 13) Or (xni = 23) Or (xni = 33) Then xsEncriptado := xsEncriptado3;
         If (xni = 4) Or (xni = 14) Or (xni = 24) Or (xni = 34) Then xsEncriptado := xsEncriptado4;
         If (xni = 5) Or (xni = 15) Or (xni = 25) Or (xni = 35) Then xsEncriptado := xsEncriptado5;
         If (xni = 6) Or (xni = 16) Or (xni = 26) Or (xni = 36) Then xsEncriptado := xsEncriptado1;
         If (xni = 7) Or (xni = 17) Or (xni = 27) Or (xni = 37) Then xsEncriptado := xsEncriptado2;
         If (xni = 8) Or (xni = 18) Or (xni = 28) Or (xni = 38) Then xsEncriptado := xsEncriptado3;
         If (xni = 9) Or (xni = 19) Or (xni = 29) Or (xni = 39) Then xsEncriptado := xsEncriptado4;
         If (xni = 10) Or (xni = 20) Or (xni = 30) Or (xni = 40) Then xsEncriptado := xsEncriptado5;
         While xnj <= length(xsReal) Do
         Begin
            If copy(wgPass, xni, 1) = copy(xsReal, xnj, 1) Then
            Begin
               xsNuePal := xsNuePal + copy(xsEncriptado, xnj, 1);
               xlTiene := True;
            End;
            xnj := xnj + 1;
         End;
         If Not xlTiene Then xsNuePal := xsNuePal + copy(wgPass, xni, 1);
         xni := xni + 1;
      End;
      result := xsNuePal;
   End;
   //Fin HPC_201117_GESCOB
Begin
   If dbePwdAnterior.Text<>DM1.wPWDAnt then
   Begin
      Showmessage('La contrase�a anterior no es valida');
      dbePwdAnterior.SetFocus;
      exit;
   End;

   If dbePwdAnterior.Text = dbePwdNuevo.text Then
      Begin
         Showmessage('No se permite volver a digitar la misma contrase�a, reintente');
         dbePwdNuevo.SetFocus;
         exit;
      End;

   If Not (DM1.isAlfanumerico(dbePwdNuevo.Text)) Then
      Begin
         Showmessage('La Contrase�a solo debe tener letras de la A(a) a la Z(z) y/o numeros del 0 al 9');
         dbePwdNuevo.SetFocus;
         exit;
      End;

   If dbePwdNuevo.text <> dbePwdNuevoConfirma.text Then
      Begin
         Showmessage('Contrase�a Nueva no coincide con la confirmaci�n, reintente');
         dbePwdNuevo.SetFocus;
         exit;
      End;

   If DM1.DCOM1.AppServer.setPassword(DM1.wUsuario, dbePwdNuevo.Text) <> '' Then
      Begin
         ShowMessage('No se pudo cambiar Contrase�a');
         exit;
      End;

   Try
      //Inicio HPC_201117_GESCOB
      xSQL := 'UPDATE TGE006 SET FECINI_PWD = TRUNC(SYSDATE), '
         + '          FECFIN_PWD = TRUNC(SYSDATE) + 30, '
         + '          DIASEXP_PWD = 7, DIASDURAC_PWD=30, '
         + '          PASSWORD= ' + QuotedStr(Encripta(dbePwdNuevo.text)) + ' '
         + '    WHERE USERID = ' + QuotedStr(DM1.wUsuario);
      //Fin HPC_201117_GESCOB
      DM1.DCOM1.AppServer.EjecutaSQL(xSQL);
      showmessage('La contrase�a fue cambiada correctamente, vuelva a ingresar a la Aplicaci�n');
   Except
      showmessage('Ocurri� algun error y no se pudo cambiar la Contrase�a');
   End;
   Application.Terminate;
   Exit;

End;

Procedure TFCambioContrasena.bbtnCancelaCambioPWDClick(Sender: TObject);
Begin
   Close;
End;

Procedure TFCambioContrasena.FormClose(Sender: TObject;
   Var Action: TCloseAction);
Begin
   Action := caFree;
End;

Procedure TFCambioContrasena.FormKeyPress(Sender: TObject; Var Key: Char);
Begin
   If Key = #13 Then
      Begin
         Key := #0;
         Perform(WM_NEXTDLGCTL, 0, 0);
      End;
End;

End.
