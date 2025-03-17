program Exercicio13;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

var
  N, i: Integer;
  precoCusto, precoVenda: Real;
  somaCusto, somaVenda: Real;
  mediaCusto, mediaVenda: Real;

begin
  somaCusto := 0;
  somaVenda := 0;

  Write('Digite a quantidade de produtos: ');
  ReadLn(N);

  for i := 1 to N do
  begin
    Write('Digite o preço de custo do produto ', i, ': ');
    ReadLn(precoCusto);
    somaCusto := somaCusto + precoCusto;

    Write('Digite o preço de venda do produto ', i, ': ');
    ReadLn(precoVenda);
    somaVenda := somaVenda + precoVenda;
  end;

  mediaCusto := somaCusto / N;
  mediaVenda := somaVenda / N;

  Writeln;
  Writeln('Média do preço de custo: R$ ', mediaCusto:0:2);
  Writeln('Média do preço de venda: R$ ', mediaVenda:0:2);

  if somaVenda > somaCusto then
    Writeln('A indústria obteve LUCRO.')
  else if somaVenda < somaCusto then
    Writeln('A indústria obteve PREJUÍZO.')
  else
    Writeln('A indústria ficou no PONTO DE EQUILÍBRIO (sem lucro ou prejuízo).');

  ReadLn;
end.
