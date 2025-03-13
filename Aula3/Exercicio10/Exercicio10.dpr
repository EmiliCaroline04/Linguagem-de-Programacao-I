program Exercicio10;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  a, b: Real;
  opcao: Integer;

begin
  // Solicita os valores reais
  Write('Digite o valor de a: ');
  ReadLn(a);
  Write('Digite o valor de b: ');
  ReadLn(b);

  // Exibe o menu de op��es
  WriteLn('Escolha uma das op��es:');
  WriteLn('1 - Subtrair o valor b de a');
  WriteLn('2 - Somar a e b');
  WriteLn('3 - Multiplicar a e b');
  WriteLn('4 - Mostrar qual o maior n�mero');
  Write('Digite o n�mero da op��o desejada: ');
  ReadLn(opcao);

  // Realiza a opera��o conforme a op��o escolhida
  case opcao of
    1:
      WriteLn('Resultado da subtra��o (a - b): ', a - b:0:2);
    2:
      WriteLn('Resultado da soma (a + b): ', a + b:0:2);
    3:
      WriteLn('Resultado da multiplica��o (a * b): ', a * b:0:2);
    4:
      if a > b then
        WriteLn('O maior n�mero � a: ', a:0:2)
      else if b > a then
        WriteLn('O maior n�mero � b: ', b:0:2)
      else
        WriteLn('a e b s�o iguais.');
  else
    WriteLn('Op��o inv�lida!');
  end;

  ReadLn;
end.
