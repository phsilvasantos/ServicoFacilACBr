unit uCadServico_Cidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RxDBComb, Mask, DBCtrls, NxCollection, ExtCtrls,
  Grids, DBGrids, SMDBGrid, RzTabs, Buttons;

type
  TfrmCadServico_Cidade = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnPesquisar: TNxButton;
    StaticText1: TStaticText;
    pnlPesquisa: TPanel;
    Label6: TLabel;
    edtNome: TEdit;
    btnConsultar: TNxButton;
    TS_Cadastro: TRzTabSheet;
    Panel1: TPanel;
    btnAlterar: TNxButton;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    pnlCadastro: TPanel;
    lblNumeroContrato: TLabel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    btnConsultaContrato: TSpeedButton;
    DBEdit2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadServico_Cidade: TfrmCadServico_Cidade;

implementation

uses
  UDMCadOS;

{$R *.dfm}

end.
