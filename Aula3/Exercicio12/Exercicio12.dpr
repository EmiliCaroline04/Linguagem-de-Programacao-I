program Exercicio12;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  quantidade, codigo: Integer;
  precos: array[1..6] of Double = (4.00, 2.50, 2.00, 5.00, 3.50, 4.50);
      total: String;
begin
  Writeln('1 - Refrigerante: R$ 4,00');
  Writeln('2 - Agua: R$ 2,50');
  Writeln('3 - Cafe: R$ 2,00');
  Writeln('4 - Sanduiche: R$ 5,00');
  Writeln('5 - Pao de queijo: R$ 3,50');
  Writeln('6 - Pastel: R$ 4,50');

  Write('Informe a quantidade de itens para compra: ');
      ReadLn(quantidade);

  Write('Informe o codigo do item: ');
     ReadLn(codigo);

  total := FloatToStr(precos[codigo]*quantidade);

Writeln('Valor total da compra: R$ ', total);
  Readln;


end.
