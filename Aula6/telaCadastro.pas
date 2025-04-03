unit telaCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg, Vcl.Mask;

type
  TForm1 = class(TForm)
    pnl_fundo1: TPanel;
    pnl_fundo: TPanel;
    pnl_lateral: TPanel;
    titulo: TLabel;
    Cadastro: TLabel;
    Nome: TLabel;
    Datanasci: TLabel;
    Telefone: TLabel;
    logotipo: TImage;
    StringGrid1: TStringGrid;
    NomeEDT: TEdit;
    EmailEDT: TEdit;
    MaskEdit1: TMaskEdit;
    tipoUsuarioEDT: TComboBox;
    ContatoMask: TMaskEdit;
    DataNascimentoMask: TMaskEdit;
    Button1: TButton;
    procedure StringGrid1Click(Sender: TObject);

  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}

procedure TForm1.StringGrid1Click(Sender: TObject);

var
 Linha: integer;
 Coluna : integer;
begin
 Linha:= StringGrid1.Row;
 Coluna:= StringGrid1.Col;
end;

end.
