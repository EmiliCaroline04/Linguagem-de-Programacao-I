program Exercicio8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  X, i, num, maior, menor: Integer;

begin
  // Solicitar ao usu�rio o valor de X (quantidade de n�meros a serem lidos)
  Write('Informe a quantidade de n�meros (X): ');
  ReadLn(X);

  // Inicializar as vari�veis maior e menor com valores extremos
  maior := -MaxInt;
  menor := MaxInt;

  // La�o para ler X n�meros inteiros
  for i := 1 to X do
  begin
    Write('Informe o ', i, '� n�mero: ');
    ReadLn(num);

    // Verificar se o n�mero informado � o maior ou menor
    if num > maior then
      maior := num;

    if num < menor then
      menor := num;
  end;

  // Exibir o maior e o menor n�mero da lista
  WriteLn('O maior n�mero �: ', maior);
  WriteLn('O menor n�mero �: ', menor);

  ReadLn;
end.
