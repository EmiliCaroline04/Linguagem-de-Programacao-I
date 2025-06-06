unit Aula10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.IOUtils, Generics.Collections,
  Vcl.StdCtrls, Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    pnGlobal: TPanel;
    PnCentral: TPanel;
    Palavra: TEdit;
    Botão: TButton;
    Botão2: TButton;
    Botão3: TButton;
    Botão4: TButton;
    Botão5: TButton;
    Botão6: TButton;
    Botão7: TButton;
    Limpar: TButton;
    Embaralhar: TButton;
    imgDica: TImage;
    Dica: TLabel;
     procedure FormCreate(Sender: TObject);
    procedure BotãoClick(Sender: TObject);
    procedure Botão2Click(Sender: TObject);
    procedure Botão3Click(Sender: TObject);
    procedure Botão4Click(Sender: TObject);
    procedure Botão5Click(Sender: TObject);
    procedure Botão6Click(Sender: TObject);
    procedure Botão7Click(Sender: TObject);
    procedure LimparClick(Sender: TObject);
    procedure EmbaralharClick(Sender: TObject);
    procedure DicaClick(Sender: TObject);

  private
  FAnagramas: TList<string>;
  FDicasUsadas: Integer; // <-- CONTADOR DE DICAS
  procedure CriarObjetosAnagramas;
  function CriptografarPalavra(APalavra: string): string;
  procedure Pesquisar;

    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Botão2Click(Sender: TObject);
begin
     Palavra.Text := Palavra.Text + 'L';
    Pesquisar;


end;

procedure TForm1.Botão3Click(Sender: TObject);
begin
      Palavra.Text := Palavra.Text + 'E';
       Pesquisar;
end;

procedure TForm1.Botão5Click(Sender: TObject);
begin
    Palavra.Text := Palavra.Text + 'M';
     Pesquisar;

end;

procedure TForm1.Botão6Click(Sender: TObject);
begin
     Palavra.Text := Palavra.Text + 'O';
      Pesquisar;

end;

procedure TForm1.Botão7Click(Sender: TObject);
begin
    Palavra.Text := Palavra.Text + 'R';
     Pesquisar;

end;

procedure TForm1.BotãoClick(Sender: TObject);
begin
  Palavra.Text := Palavra.Text + 'E';
   Pesquisar;

end;

procedure TForm1.Botão4Click(Sender: TObject);
begin
    Palavra.Text := Palavra.Text + 'A';
     Pesquisar;

end;

procedure TForm1.CriarObjetosAnagramas;
const
PALAVRAS_POR_PANEL = 9;
var
 Panel: TPanel;
 Anagrama: TLabel;


begin
  Panel := nil;

  for var I := 0 to FAnagramas.Count - 1 do
   begin

      if (I mod PALAVRAS_POR_PANEL = 0) then
      begin
         Panel:= TPanel.Create(Self) ;
         Panel.Parent := pnGlobal;
         Panel.Align := alLeft;
         Panel.Width := 250;
      end;
           Anagrama := TLabel.Create(Self);
           Anagrama.Parent := Panel;
           Anagrama.Align := alTop;
           Anagrama.Alignment := taCenter;
           Anagrama.Font.Size := 15;
           Anagrama.Hint := FAnagramas.Items[I]; // Guarda o nome real
           Anagrama.ShowHint := False;
           Anagrama.Caption := CriptografarPalavra(FAnagramas.Items[I]);
           Anagrama.Name := 'Palavra' + I.ToString;

   end;
end;

function TForm1.CriptografarPalavra(APalavra: string): string;
var
  ConjuntoPalavras: TArray<string>;
begin
  Result := '';
  ConjuntoPalavras := APalavra.Trim.Split([' ', '-']);

  for var Palavra in ConjuntoPalavras do
  begin
    var PalavraCriptografada := string.Empty.PadLeft(Palavra.Length, '#');

    if Result.IsEmpty then
      Result := PalavraCriptografada
    else
      Result := Result + ' ' + PalavraCriptografada;
  end;
end;


procedure TForm1.EmbaralharClick(Sender: TObject);
var
  i, x: Integer;
  botoes: TArray<TButton>;
  pos: TArray<TPoint>;
  temp: TPoint;
begin
  botoes := TArray<TButton>.Create(Botão, Botão2, Botão3, Botão4, Botão5, Botão6, Botão7);
  SetLength(pos, Length(botoes));

  for i := 0 to High(botoes) do pos[i] := Point(botoes[i].Left, botoes[i].Top);

  for i := High(pos) downto 1 do
   begin
    x := Random(i + 1); temp := pos[i]; pos[i] := pos[x]; pos[x] := temp;
    end;

  for i := 0 to High(botoes) do
   begin
   botoes[i].Left := pos[i].X; botoes[i].Top := pos[i].Y;
    end;
end;


function GerarDica(const Palavra: string; LetrasVisiveis: Integer): string;
var
  i, p: Integer;
  visiveis: TArray<Boolean>;
begin
  SetLength(visiveis, Length(Palavra));
  Result := StringOfChar('*', Length(Palavra));
  for i := 1 to LetrasVisiveis do
  begin
    repeat p := Random(Length(Palavra)); until not visiveis[p];
    visiveis[p] := True;
    Result[p + 1] := Palavra[p + 1];
  end;
end;

procedure TForm1.DicaClick(Sender: TObject);
var
  i: Integer;
  LabelAtual: TLabel;
begin
  if FDicasUsadas >= 5 then
  begin
    ShowMessage('Ops! Não há mais dicas disponíveis ;(');
    Exit;
  end;

  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TLabel) then
    begin
      LabelAtual := TLabel(Components[i]);

      // Procurar por labels de anagramas ainda criptografados
      if (Pos('Palavra', LabelAtual.Name) = 1) and (Pos('#', LabelAtual.Caption) > 0) then
      begin
        ShowMessage('Dica: ' + LabelAtual.Hint);
        Inc(FDicasUsadas);
        Exit;
      end;
    end;
  end;

  ShowMessage('Todas as palavras já foram reveladas!');
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ListaAnagramas: TArray<string>;
  CaminhoArquivo: string;
begin
  CaminhoArquivo := 'C:\Github\Linguagem-de-Programacao-I\Aula10\palavras_com_ELEAMOR.txt';

  ListaAnagramas := TFile.ReadAllLines(CaminhoArquivo);

  FAnagramas := TList<string>.Create;
  for var Palavra in ListaAnagramas do
    FAnagramas.Add(Palavra.ToLower.Trim);

  CriarObjetosAnagramas;
  FDicasUsadas := 0;
end;

procedure TForm1.LimparClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i] is TEdit then
      TEdit(Components[i]).Text := '';
end;

procedure TForm1.Pesquisar;
var
  TextoPesquisar: string;
  Index: Integer;
  PalavraLabel: TLabel;
begin
  TextoPesquisar := Palavra.Text;

  if FAnagramas.Contains(TextoPesquisar.ToLower) then
  begin
    Index := FAnagramas.IndexOf(TextoPesquisar.ToLower);
    PalavraLabel := TLabel(FindComponent('Palavra' + Index.ToString));
    PalavraLabel.Caption := FAnagramas.Items[Index];
    PalavraLabel.Font.Color := clPurple;  // DESTACA DE VERDE
  end;
end;

end.





