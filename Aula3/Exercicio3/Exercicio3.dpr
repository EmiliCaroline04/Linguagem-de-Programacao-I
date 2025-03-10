program Exercicio3;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  A, B, C: string;
  idadeA, idadeB, idadeC, soma: Integer;

begin

  Write('Informe o primeiro nome: ');
  ReadLn(A);
  Write('Informe a idade de ', A, ': ');
  ReadLn(idadeA);

  Write('Informe o segundo nome: ');
  ReadLn(B);
  Write('Informe a idade de ', B, ': ');
  ReadLn(idadeB);

  Write('Informe o terceiro nome: ');
  ReadLn(C);
  Write('Informe a idade de ', C, ': ');
  ReadLn(idadeC);

  soma := idadeA + idadeB + idadeC;

  WriteLn(A, ' tem ', idadeA, ' anos.');
  WriteLn(B, ' tem ', idadeB, ' anos.');
  WriteLn(C, ' tem ', idadeC, ' anos.');
  WriteLn(A, ', ', B, ' e ', C, ' juntos têm ', soma, ' anos.');

  ReadLn;
end.
