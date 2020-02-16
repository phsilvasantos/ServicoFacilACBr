unit UCadContrato_Cidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, UDMCadOS, ExtCtrls, StdCtrls,
  RxLookup, Mask, DBCtrls, Buttons, DB, ToolEdit, RXDBCtrl;

type
  TfrmCadContrato_Cidade = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    edtValorContrato: TDBEdit;
    Label3: TLabel;
    edtPercISS: TDBEdit;
    Label4: TLabel;
    edtPercINSS: TDBEdit;
    Label5: TLabel;
    edtPercPis: TDBEdit;
    Label6: TLabel;
    edtPercCofins: TDBEdit;
    Label7: TLabel;
    edtPercCSSL: TDBEdit;
    chkInativo: TDBCheckBox;
    Label8: TLabel;
    edtDataValidade: TDBDateEdit;
    chkISSRetido: TDBCheckBox;
    Label9: TLabel;
    DBEdit2: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOS: TDMCadOS;
  end;

var
  frmCadContrato_Cidade: TfrmCadContrato_Cidade;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadContrato_Cidade.FormClose(Sender: TObject; var Action:
  TCloseAction);
begin
  fDMCadOS.cdsCidade.Close;
  if fDMCadOS.cdsOS_Cidade.State in [dsEdit, dsInsert] then
    fDMCadOS.cdsOS_Cidade.Cancel;
  Action := Cafree;
end;

procedure TfrmCadContrato_Cidade.btnConfirmarClick(Sender: TObject);
begin
  if fDMCadOS.cdsOS_CidadeID_CIDADE.AsInteger <= 0 then
    fDMCadOS.vMsgOS := fDMCadOS.vMsgOS + #13 + '*** Cidade não informada!';
  if trim(fDMCadOS.vMsgOS) <> '' then
  begin
    MessageDlg(fDMCadOS.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;
  fDMCadOS.cdsOS_Cidade.Post;
  Close;
end;

procedure TfrmCadContrato_Cidade.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadContrato_Cidade.DBEdit1Exit(Sender: TObject);
begin
  fDMCadOS.cdsCidade.IndexFieldNames := 'ID';
  fDMCadOS.cdsCidade.FindKey([DBedit1.Text]);
end;

procedure TfrmCadContrato_Cidade.FormShow(Sender: TObject);
begin
  fDMCadOS.cdsCidade.Open;
end;

procedure TfrmCadContrato_Cidade.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fdmCados.cdsCidade.IndexFieldNames := 'NOME';
end;

end.
