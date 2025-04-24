unit Trivia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.IOUtils, Generics.Collections ;

type
  TForm1 = class(TForm)
    Contador: TLabel;
    Panel1: TPanel;
    Pesquisa: TEdit;
    PnCentral: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure PesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    FPaises: Tlist<string>;
    procedure CriarObjetosPaises;
    function CriptografarPalavra(APalavra: string): string;
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CriarObjetosPaises;
const
PALAVRAS_POR_PANEL = 25;
var
 Panel: TPanel;
 Pais: TLabel;

begin
  for var I := 0 to FPaises.Count - 1 do
   begin

      if (I = 0) or ((I + 1) mod 25 = 0) then
      begin
         Panel:= TPanel.Create(Self) ;
         Panel.Parent := PnCentral;
         Panel.Align := alLeft;
         Panel.Width := 200;
      end;
           Pais := TLabel.Create(Self);
           Pais.Parent := Panel;
           Pais.Align := alTop;
           Pais.Alignment := taCenter;
           Pais.Font.Size := 10;
           Pais.Hint := FPaises.Items[I]; // Guarda o nome real
            Pais.ShowHint := False;
           Pais.Caption := CriptografarPalavra(FPaises.Items[I]);

      end;
end;

function TForm1.CriptografarPalavra(APalavra: string): string;
var
ConjuntoPalavras: TArray<string>;

begin
    Result := '';
    ConjuntoPalavras := APalavra.Trim.Split([' ', '-']);

    for var Palavra in ConjuntoPalavras do
     Begin
     var PalavraCriptografada := UpperCase(Palavra[1]) +
     string.Empty.PadLeft(Palavra.Length - 1, '?');

      if Result.IsEmpty then
          Result := PalavraCriptografada
          else
          Result := Result + ' ' + PalavraCriptografada;

     End;

end;

procedure TForm1.FormCreate(Sender: TObject);
var
   ListaPaises: Tarray<string> ;
begin

       ListaPaises :=
          TFile.ReadAllLines('C:\Github\Linguagem-de-Programacao-I\Aula8\Trivia\Paises.txt');

      FPaises:= TList<string>.Create(ListaPaises);
       CriarObjetosPaises;
end;

procedure TForm1.PesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
  Begin
    Pesquisar;
  End;

end;

procedure TForm1.Pesquisar;
var
  TextoPesquisa: string;
  i, j: Integer;
  Encontrou: Boolean;
  LabelAtual: TLabel;
  Painel: TPanel;
begin
  TextoPesquisa := Trim(Pesquisa.Text).ToLower;
  Encontrou := False;

  // Percorre todos os componentes dentro do painel central
  for i := 0 to PnCentral.ControlCount - 1 do
  begin
    if PnCentral.Controls[i] is TPanel then
    begin
      Painel := TPanel(PnCentral.Controls[i]);

      for j := 0 to Painel.ControlCount - 1 do
      begin
        if Painel.Controls[j] is TLabel then
        begin
          LabelAtual := TLabel(Painel.Controls[j]);

          // Compara o texto digitado com o Hint do Label, ignorando maiúsculas/minúsculas
          if LowerCase(LabelAtual.Hint) = TextoPesquisa then
          begin
            LabelAtual.Caption := LabelAtual.Hint; // mostra o nome verdadeiro do país
            LabelAtual.Font.Color := clGreen;       // muda a cor para verde
            LabelAtual.Font.Style := [fsBold];      // negrito (opcional)
            Encontrou := True;
            Break;
          end;
        end;
      end;

      if Encontrou then
        Break;
    end;
  end;

  if not Encontrou then
    ShowMessage('Ops! Nenhum país encontrado com esse nome.');

  Pesquisa.Clear;
end;
end.
