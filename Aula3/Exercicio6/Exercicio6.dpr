program Exercicio6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  X, Y: Integer;
  Soma, Subtracao, Multiplicacao: Integer;
  Divisao: Real;

begin
  Write('Informe o primeiro n�mero (X): ');
  ReadLn(X);

  Write('Informe o segundo n�mero (Y): ');
  ReadLn(Y);

  Soma := X + Y;
  Subtracao := X - Y;
  Multiplicacao := X * Y;

  // Verifica se Y n�o � zero para evitar erro de divis�o por zero
  if Y <> 0 then
    Divisao := X / Y
  else
    Divisao := 0; // Caso Y seja zero, define Divis�o como 0 para evitar erro

  WriteLn('O valor de X + Y = ', Soma);
  WriteLn('O valor de X - Y = ', Subtracao);
  WriteLn('O valor de X * Y = ', Multiplicacao);

  // Exibe a divis�o somente se Y n�o for zero
  if Y <> 0 then
    WriteLn('O valor de X / Y = ', Divisao:0:2)
  else
    WriteLn('O valor de X / Y = Indefinido (divis�o por zero)');

  ReadLn; // Aguarda o usu�rio pressionar Enter antes de fechar
end.
