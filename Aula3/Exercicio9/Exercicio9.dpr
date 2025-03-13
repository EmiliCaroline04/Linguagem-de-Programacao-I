program Exercicio9;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  idade, menorIdade, maiorIdade, somaIdade, contador: Integer;
  mediaIdade: Real;

begin
  menorIdade := MaxInt;  // Inicializa com o maior valor poss�vel
  maiorIdade := 0;      // Inicializa com o menor valor poss�vel
  somaIdade := 0;
  contador := 0;

  // L� as idades at� que o usu�rio informe 0

  repeat // O bloco de c�digo dentro do repeat ser� repetido at� que a condi��o no until seja verdadeira.

    Write('Digite a idade do aluno (ou 0 para terminar): ');
    ReadLn(idade);

    if idade <> 0 then
    begin
      // Atualiza a menor e maior idade
      if idade < menorIdade then
        menorIdade := idade;
      if idade > maiorIdade then
        maiorIdade := idade;

      // Soma as idades para calcular a m�dia depois
      somaIdade := somaIdade + idade;
      contador := contador + 1;
    end;

  until idade = 0;

  // Verifica se foram inseridas idades
  if contador > 0 then
  begin
    // Calcula a m�dia das idades
    mediaIdade := somaIdade / contador;

    // Exibe os resultados
    WriteLn('Menor idade: ', menorIdade);
    WriteLn('Maior idade: ', maiorIdade);
    WriteLn('M�dia de idade: ', mediaIdade:0:2);
  end
  else
    WriteLn('Nenhuma idade foi informada.');

  ReadLn;
end.
