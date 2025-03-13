program Exercicio9;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  idade, menorIdade, maiorIdade, somaIdade, contador: Integer;
  mediaIdade: Real;

begin
  menorIdade := MaxInt;  // Inicializa com o maior valor possível
  maiorIdade := 0;      // Inicializa com o menor valor possível
  somaIdade := 0;
  contador := 0;

  // Lê as idades até que o usuário informe 0

  repeat // O bloco de código dentro do repeat será repetido até que a condição no until seja verdadeira.

    Write('Digite a idade do aluno (ou 0 para terminar): ');
    ReadLn(idade);

    if idade <> 0 then
    begin
      // Atualiza a menor e maior idade
      if idade < menorIdade then
        menorIdade := idade;
      if idade > maiorIdade then
        maiorIdade := idade;

      // Soma as idades para calcular a média depois
      somaIdade := somaIdade + idade;
      contador := contador + 1;
    end;

  until idade = 0;

  // Verifica se foram inseridas idades
  if contador > 0 then
  begin
    // Calcula a média das idades
    mediaIdade := somaIdade / contador;

    // Exibe os resultados
    WriteLn('Menor idade: ', menorIdade);
    WriteLn('Maior idade: ', maiorIdade);
    WriteLn('Média de idade: ', mediaIdade:0:2);
  end
  else
    WriteLn('Nenhuma idade foi informada.');

  ReadLn;
end.
