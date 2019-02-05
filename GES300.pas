// Inicio Uso Est�ndares: 01/08/2011
// Unidad : Gesti�n de Cobranzas
// Formulario : FrmImportarGestiones
// Fecha de Creaci�n : 03/08/2015
// Autor : Equipo de Sistemas
// Objetivo : Automatizar la importacion de gestiones internas
// Actualizaciones:
// HPC_201502_GESCOB: automatizar la importacion de las asignaciones y gestiones
// HPC_201705_GESCOB 12/12/2017 Observaciones en la informaci�n
unit GES300;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, wwdbedit, Wwdotdot, Wwdbcomb, StdCtrls, OleServer, ExcelXP,
  ComCtrls, ExtCtrls, StrUtils, wwdblook, Buttons;

type
  TFrmImportarGestionesInt = class(TForm)
    odlgArchivo: TOpenDialog;
    xlsArchivo: TExcelApplication;
    gbx01: TGroupBox;
    gbx02: TGroupBox;
    Panel2: TPanel;
    lstValida: TListView;
    gbx03: TGroupBox;
    Panel3: TPanel;
    btnSalir: TBitBtn;
    btnProcesar: TBitBtn;
    Label2: TLabel;
    edArchivo: TEdit;
    Label1: TLabel;
    btnArchivo: TButton;
    cboPeriodoAsignacion: TwwDBLookupCombo;
    btnValidarDatos: TButton;
    lblMensaje: TLabel;
    sdInconsistencias: TSaveDialog;
    btnExportar: TBitBtn;
    procedure btnArchivoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnValidarDatosClick(Sender: TObject);
    procedure cboPeriodoAsignacionChange(Sender: TObject);
    procedure btnSalirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnProcesarClick(Sender: TObject);
    procedure edArchivoChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    procedure fn_cargar_xls(psArchivo: string);
    procedure fn_validar_datos;
    procedure fn_procesar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmImportarGestionesInt: TFrmImportarGestionesInt;

implementation

uses GESDM1;

{$R *.dfm}
(******************************************************************************)
(******************************************************************************)
(******************************************************************************)

procedure TFrmImportarGestionesInt.FormShow(Sender: TObject);
var xsSQL : string;
begin
   btnExportar.Enabled := false;
   btnProcesar.Enabled := false;
   FormResize(nil);

   xsSQL:='SELECT PERIODO '
        + '	 FROM (SELECT TO_CHAR(ADD_MONTHS(SYSDATE , - LEVEL) ,''YYYYMM'') PERIODO '
				+ '          FROM DUAL '
 			  + '       CONNECT BY LEVEL BETWEEN 1 AND 2) '
        + ' ORDER BY PERIODO DESC ';
   DM1.cdsQry1.Close;
   DM1.cdsQry1.DataRequest(xsSQL);
   DM1.cdsQry1.Open;
   cboPeriodoAsignacion.LookupTable := DM1.cdsQry1;
   cboPeriodoAsignacion.LookupField := 'PERIODO';
   cboPeriodoAsignacion.Selected.Clear;
   cboPeriodoAsignacion.Selected.Add('PERIODO'#9'8'#9'Periodo');

   if (DM1.fn_validar_periodo_asignacion_actual() = 'TRUE') then begin
      gbx01.Enabled := true;
   end else begin
      gbx01.Enabled := false;
      MessageDlg('EL PERIODO DE ASIGNACION DEBE SER ACTUALIZADO, COMUNIQUESE CON EL EQUIPO DE SISTEMAS !!!', mtInformation, [mbOk], 0);
   end;
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.fn_cargar_xls(psArchivo : string);
var
  xnFila: Integer;
  xsFilaString: String;
  xxHoja: _WorkSheet;
  xsSQL : string;
  xsCampoModular : string;
  xsCampoGestion : string;
  xsCampoCodigoGestion: string;
  xsCampoFechaGestion: string;
  xsCampoGestor: string;
// INICIO HPC_201705_GESCOB 12/12/2017 Observaciones en la informaci�n
  xsTelefono01:String;
  xsTelefono02:String;
  xsFechaCompromiso:String;
  xsMontoCompromiso:String;
// FIN HPC_201705_GESCOB 12/12/2017 Observaciones en la informaci�n
begin
  // ABRE EL ARCHIVO
  lblMensaje.Caption := 'Conectando al archivo!';
  xlsArchivo.Workbooks.Open(psArchivo,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
                            EmptyParam, EmptyParam, EmptyParam, EmptyParam, 0);
  // LIMPIA DATOS Y VARIABLES
  lblMensaje.Caption := 'Limpiando datos anteriores!';
  xsSQL := 'DELETE FROM GES_IMP_GES_GTT';
  DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  lstValida.Items.Clear;
  lblMensaje.Caption := 'Cargando registros : 0';
  xxHoja := xlsArchivo.Worksheets.Item[1] as _WorkSheet;
  xnFila := 2;
  xsSQL  := '';
  xsFilaString := IntToStr(xnFila);
  while not (VarType( xlsArchivo.Range['A'+xsFilaString,'A'+xsFilaString].Value2 ) = VarEmpty) do
  begin
  // INICIO HPC_201705_GESCOB 12/12/2017 Observaciones en la informaci�n
      {xxHoja.Range['AD'+xsFilaString,'AD'+xsFilaString].Value2 := '=TEXT(D'+xsFilaString+',"dd/mm/yyyy")';} // FECGES
      xsCampoModular := Trim(xxHoja.Range[ 'A'+xsFilaString, 'A'+xsFilaString].Value2);
      xsCampoGestor := Trim(AnsiUpperCase(xxHoja.Range[ 'B'+xsFilaString, 'B'+xsFilaString].Value2));
      xsCampoCodigoGestion := Trim(xxHoja.Range[ 'C'+xsFilaString, 'C'+xsFilaString].Value2);
      xsCampoFechaGestion:=trim(xxHoja.Range[ 'D'+xsFilaString, 'D'+xsFilaString].Value2);
      IF xsCampoFechaGestion<>'' then xsCampoFechaGestion:=datetostr(strtofloat(xsCampoFechaGestion));
      {xsCampoFechaGestion := Trim(xxHoja.Range[ 'AD'+xsFilaString, 'AD'+xsFilaString].Value2);}
      xsCampoGestion := Trim(AnsiUpperCase(AnsiLeftStr(xxHoja.Range[ 'E'+xsFilaString, 'E'+xsFilaString].Value2,200)));
      xsTelefono01 := Trim(AnsiUpperCase(AnsiLeftStr(xxHoja.Range[ 'F'+xsFilaString, 'F'+xsFilaString].Value2,10)));
      xsTelefono02 := Trim(AnsiUpperCase(AnsiLeftStr(xxHoja.Range[ 'G'+xsFilaString, 'G'+xsFilaString].Value2,10)));
      xsFechaCompromiso := Trim(xxHoja.Range['H'+xsFilaString, 'H'+xsFilaString].Value2);
      IF xsFechaCompromiso<>'' then xsFechaCompromiso:=datetostr(strtofloat(xsFechaCompromiso));
      IF xsFechaCompromiso='00/01/1900' Then xsFechaCompromiso:='';
      xsMontoCompromiso := Trim(AnsiUpperCase(AnsiLeftStr(xxHoja.Range[ 'I'+xsFilaString, 'I'+xsFilaString].Value2,50)));
      IF xsMontoCompromiso='' then xsMontoCompromiso:='NULL'; 
      xsSQL := xsSQL + ' SP_GES_IMP_GES_GTT_ADD('+IntToStr(xnFila-1)+','
               +  QuotedStr(xsCampoModular) + ','
               +  QuotedStr(xsCampoGestor) + ','
               +  QuotedStr(xsCampoCodigoGestion) + ','
               +  'TO_DATE('+QuotedStr(xsCampoFechaGestion)+',''DD/MM/YYYY''),'
               +  QuotedStr(xsCampoGestion) + ','
               +  QuotedStr(cboPeriodoAsignacion.Text)+','
               +  QuotedStr(xsTelefono01)+','
               +  QuotedStr(xsTelefono02)+','
               +  'TO_DATE('+QuotedStr(xsFechaCompromiso)+',''DD/MM/YYYY''),'
               +  xsMontoCompromiso
               +');' ;
// FIN HPC_201705_GESCOB 12/12/2017 Observaciones en la informaci�n
      IF ((xnFila-1) MOD 50) = 0 THEN
      BEGIN
        xsSQL := 'BEGIN ' + xsSQL + ' END;';
        DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
        xsSQL := '';
      END;
      lblMensaje.Caption := 'Cargando registros : ' + IntToStr(xnFila-1);
      xnFila := xnFila + 1;
      xsFilaString := IntToStr(xnFila);
  end;
  IF (xsSQL<>'') THEN
  BEGIN
     xsSQL := 'BEGIN ' + xsSQL + ' END;';
     DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
  END;
  lblMensaje.Caption := IntToStr(xnFila-2) + ' Registros Cargados';
  // CIERRA EL ARCHIVO
  xlsArchivo.Application.ActiveWorkbook.Save(0);
end;
(******************************************************************************)
procedure TFrmImportarGestionesInt.fn_validar_datos();
var xsSQL: string;
begin
   lstValida.Items.Clear;
   lblMensaje.Caption := 'Validando datos';
   xsSQL := 'BEGIN SP_GES_IMP_GES_GTT_VAL('+QuotedStr(cboPeriodoAsignacion.Text)+', ''INTERNO''); END;';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
// INICIO HPC_201705_GESCOB 12/12/2017 Observaciones en la informaci�n
   xsSQL:='SELECT NUMREG, MODULAR, GESTOR, CODGES, FECGES, GESTION, PROCESAR,TEL1GES,TEL2GES,FECCOM,MONCOMPAG, INCONSISTENCIA '
        + '  FROM GES_IMP_GES_GTT '
        + ' WHERE PROCESAR = ''N'' '
        + ' ORDER BY NUMREG ';
   DM1.cdsQry2.Close;
   DM1.cdsQry2.DataRequest(xsSQL);
   DM1.cdsQry2.Open;
   lblMensaje.Caption := IntToStr(DM1.cdsQry2.RecordCount) + ' Registros "INCONSISTENTES"';
   btnProcesar.Caption := 'Procesar obviando ('+IntToStr(DM1.cdsQry2.RecordCount)+') Inconsistencias';
   DM1.cdsQry2.First;
   while not DM1.cdsQry2.Eof do
   begin
       with lstValida.Items.Add, DM1.cdsQry2 do
       begin
        SubItems.Add(fieldbyname('NUMREG').AsString);         // NUMERO DE REGISTRO
        SubItems.Add(fieldbyname('MODULAR').AsString);        // MODULAR
        SubItems.Add(fieldbyname('GESTOR').AsString);         // GESTOR
        SubItems.Add(fieldbyname('CODGES').AsString); // CODGES
        SubItems.Add(fieldbyname('FECGES').AsString);  // FECGES
        SubItems.Add(fieldbyname('GESTION').AsString);        // GESTION
        SubItems.Add(fieldbyname('TEL1GES').AsString);  // TEL1GES
        SubItems.Add(fieldbyname('TEL2GES').AsString);  // TEL2GES
        SubItems.Add(fieldbyname('FECCOM').AsString);  // FECCOM
        SubItems.Add(fieldbyname('MONCOMPAG').AsString);  // MONCOMPAG
        SubItems.Add(fieldbyname('INCONSISTENCIA').AsString); // INCONSISTENCIA
      end;
      DM1.cdsQry2.Next;
   end;
// FIN HPC_201705_GESCOB 12/12/2017 Observaciones en la informaci�n
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.fn_procesar();
var xsSQL : string;
begin
   xsSQL := 'BEGIN SP_GES_IMP_GES_GTT_PRO_INT('+QuotedStr(cboPeriodoAsignacion.Text)+'); END;';
   DM1.DCOM1.AppServer.EjecutaSql(xsSQL);
end;
(******************************************************************************)
procedure TFrmImportarGestionesInt.btnArchivoClick(Sender: TObject);
begin
  if odlgArchivo.Execute then
     edArchivo.Text := odlgArchivo.FileName;
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.btnValidarDatosClick(Sender: TObject);
var xsSQL : string;
begin
   If (odlgArchivo.FileName = '') Then
   Begin
        MessageDlg('SELECCIONE EL ARCHIVO A IMPORTAR!!!', mtInformation, [mbOk], 0);
        Exit;
   End;

   if (cboPeriodoAsignacion.Text = '') then
   Begin
      MessageDlg('SELECCIONE EL PERIODO DE ASIGNACION!!!', mtInformation, [mbOk], 0);
      Exit;
   End;

   Screen.Cursor := crHourGlass;
   // cargar datos
   fn_cargar_xls(odlgArchivo.FileName);

   // validar datos
   fn_validar_datos();

   // activar controles
   btnProcesar.Enabled := true;
   btnExportar.Enabled := (lstValida.Items.Count > 0);
   Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.cboPeriodoAsignacionChange(
  Sender: TObject);
begin
  btnProcesar.Enabled := false;
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.edArchivoChange(Sender: TObject);
begin
  btnProcesar.Enabled := false;
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.btnProcesarClick(Sender: TObject);
begin
  Screen.Cursor := crHourGlass;
  btnProcesar.Enabled := false;
  fn_procesar();
  edArchivo.Text := '';
  lstValida.Items.Clear;
  lblMensaje.Caption := '0 Registros Cargados';
  MessageDlg('EL PROCESO TERMINO CORRECTAMENTE!!!', mtInformation, [mbOk], 0);
  Screen.Cursor := crDefault;
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.btnSalirClick(Sender: TObject);
begin
  Close;
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := caFree;
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.FormResize(Sender: TObject);
begin
   btnProcesar.Left := round((self.Width - btnProcesar.Width)/2);
end;

(******************************************************************************)
procedure TFrmImportarGestionesInt.btnExportarClick(Sender: TObject);
begin
  DM1.fn_exportar_listview(lstValida);
end;

(******************************************************************************)
end.
