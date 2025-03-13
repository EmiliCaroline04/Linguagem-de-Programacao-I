program Exercicio8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  X, i, num, maior, menor: Integer;

begin
  // Solicitar ao usuário o valor de X (quantidade de números a serem lidos)
  Write('Informe a quantidade de números (X): ');
  ReadLn(X);

  // Inicializar as variáveis maior e menor com valores extremos
  maior := -MaxInt;
  menor := MaxInt;

  // Laço para ler X números inteiros
  for i := 1 to X do
  begin
    Write('Informe o ', i, 'º número: ');
    ReadLn(num);

    // Verificar se o número informado é o maior ou menor
    if num > maior then
      maior := num;

    if num < menor then
      menor := num;
  end;

  // Exibir o maior e o menor número da lista
  WriteLn('O maior número é: ', maior);
  WriteLn('O menor número é: ', menor);

  ReadLn;
end.
