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
  Write('Informe o primeiro número (X): ');
  ReadLn(X);

  Write('Informe o segundo número (Y): ');
  ReadLn(Y);

  Soma := X + Y;
  Subtracao := X - Y;
  Multiplicacao := X * Y;

  // Verifica se Y não é zero para evitar erro de divisão por zero
  if Y <> 0 then
    Divisao := X / Y
  else
    Divisao := 0; // Caso Y seja zero, define Divisão como 0 para evitar erro

  WriteLn('O valor de X + Y = ', Soma);
  WriteLn('O valor de X - Y = ', Subtracao);
  WriteLn('O valor de X * Y = ', Multiplicacao);

  // Exibe a divisão somente se Y não for zero
  if Y <> 0 then
    WriteLn('O valor de X / Y = ', Divisao:0:2)
  else
    WriteLn('O valor de X / Y = Indefinido (divisão por zero)');

  ReadLn; // Aguarda o usuário pressionar Enter antes de fechar
end.
