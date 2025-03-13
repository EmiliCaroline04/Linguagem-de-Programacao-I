program Exercicio7;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  A, B, C, X: Integer;

begin
  // Solicitar os valores de A, B e C
  Write('Informe o valor de A: ');
  ReadLn(A);

  Write('Informe o valor de B: ');
  ReadLn(B);

  Write('Informe o valor de C: ');
  ReadLn(C);

  // Realizando e imprimindo os resultados das operações

  X := A + B + C;
  WriteLn('A + B + C = ', X);

  X := A - B + C;
  WriteLn('A - B + C = ', X);

  X := A - (B + C);
  WriteLn('A - (B + C) = ', X);

  X := (A * 2) + (B * C);
  WriteLn('(A*2) + (B*C) = ', X);

  Writeln(Format('(%d * 4) + (%d / 2) - (%d + 8) = %.2f',
  [A,C,B,(A*4)+(C/2)-(B+8)]));

  X := (A div 2) + (B div 2) + (C div 2);
  WriteLn('(A/2) + (B/2) + (C/2) = ', X);

  X := (A * A) + (B * B);
  WriteLn('A² + B² = ', X);

  X := (C * C) + (3 * B);
  WriteLn('C² + 3*B = ', X);

  X := A mod 2;
  WriteLn('A MOD 2 = ', X);

  X := B mod 2;
  WriteLn('B MOD 2 = ', X);

  X := C mod 2;
  WriteLn('C MOD 2 = ', X);

  ReadLn;

end.
