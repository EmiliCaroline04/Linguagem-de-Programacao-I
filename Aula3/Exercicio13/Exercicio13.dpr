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
    Write('Digite o pre�o de custo do produto ', i, ': ');
    ReadLn(precoCusto);
    somaCusto := somaCusto + precoCusto;

    Write('Digite o pre�o de venda do produto ', i, ': ');
    ReadLn(precoVenda);
    somaVenda := somaVenda + precoVenda;
  end;

  mediaCusto := somaCusto / N;
  mediaVenda := somaVenda / N;

  Writeln;
  Writeln('M�dia do pre�o de custo: R$ ', mediaCusto:0:2);
  Writeln('M�dia do pre�o de venda: R$ ', mediaVenda:0:2);

  if somaVenda > somaCusto then
    Writeln('A ind�stria obteve LUCRO.')
  else if somaVenda < somaCusto then
    Writeln('A ind�stria obteve PREJU�ZO.')
  else
    Writeln('A ind�stria ficou no PONTO DE EQUIL�BRIO (sem lucro ou preju�zo).');

  ReadLn;
end.
