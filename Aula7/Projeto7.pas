unit Projeto7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Timer: TTimer;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
  FContador: Integer;
  FImagemSelecionada: TImage;
   function SortearImagem: String;
   procedure EventoAoEntrarNaImagem(Sender: TObject);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


Uses
 Math;

procedure TForm1.EventoAoEntrarNaImagem(Sender: TObject);
var
Stream: TFileStream;

begin
Stream := TFileStream.Create(SortearImagem, 0 );

try
    TImage(Sender).Picture.LoadFromStream(Stream) ;
    TImage(Sender).Repaint;
    FImagemSelecionada := TImage(Sender);
    Inc( FContador);
    Self.Caption := 'Trocas: ' + FContador.ToString;

finally
    Stream.Free;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 FContador := 0;
end;

procedure TForm1.FormShow(Sender: TObject);
const
 QTD_COLUNAS = 10;
 QTD_LINHAS = 10;
 BTN_SIZE = 64;
var
 Button: TImage;
 Stream: TFileStream;


begin
  for var ColIndex := 1 to QTD_COLUNAS do

  begin
   for var LinlIndex := 1 to QTD_LINHAS do
   begin

       Stream := TFileStream.Create(SortearImagem, 0 );
     try
            Button := TImage.Create(Self);
            Button.Parent := Self;
            Button.Height :=  BTN_SIZE;
            Button.Width := BTN_SIZE;
            Button.Picture.LoadFromStream(Stream);
            Button.Left := (ColIndex - 1) * BTN_SIZE;
            Button.Top := (LinlIndex - 1 ) * BTN_SIZE;
            Button.OnMouseEnter := EventoAoEntrarNaImagem;

     finally
       Stream.Free;
     end;
    end;

  end;

end;

function TForm1.SortearImagem: String;
const
DIR = 'C:\Github\Linguagem-de-Programacao-I\Aula7\';
EXT = '.PNG';
var
Index: Integer;
begin
  Index := RandomRange(1,6);

  Result := DIR + 'Imag'  + Index.ToString + EXT;

end;

procedure TForm1.TimerTimer(Sender: TObject);

var
  Stream: TFileStream;
begin
       if Assigned(FImagemSelecionada) then

       begin
        Stream := TFileStream.Create(SortearImagem, 0);

           try
                 FImagemSelecionada.Picture.Assign(nil);
                 FImagemSelecionada.Picture.LoadFromStream(Stream);
                 FImagemSelecionada.Repaint;
           finally
               Stream.Free;
           end;
       end;

end;

end.
