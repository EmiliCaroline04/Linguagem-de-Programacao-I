unit telaCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.jpeg;

type
  TForm1 = class(TForm)
    pnl_fundo1: TPanel;
    pnl_fundo: TPanel;
    pnl_lateral: TPanel;
    titulo: TLabel;
    Cadastro: TLabel;
    Nome: TLabel;
    Datanasci: TLabel;
    Email: TLabel;
    Telefone: TLabel;
    logotipo: TImage;
    StringGrid1: TStringGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
