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

  // Exibe o menu de opções
  WriteLn('Escolha uma das opções:');
  WriteLn('1 - Subtrair o valor b de a');
  WriteLn('2 - Somar a e b');
  WriteLn('3 - Multiplicar a e b');
  WriteLn('4 - Mostrar qual o maior número');
  Write('Digite o número da opção desejada: ');
  ReadLn(opcao);

  // Realiza a operação conforme a opção escolhida
  case opcao of
    1:
      WriteLn('Resultado da subtração (a - b): ', a - b:0:2);
    2:
      WriteLn('Resultado da soma (a + b): ', a + b:0:2);
    3:
      WriteLn('Resultado da multiplicação (a * b): ', a * b:0:2);
    4:
      if a > b then
        WriteLn('O maior número é a: ', a:0:2)
      else if b > a then
        WriteLn('O maior número é b: ', b:0:2)
      else
        WriteLn('a e b são iguais.');
  else
    WriteLn('Opção inválida!');
  end;

  ReadLn;
end.
