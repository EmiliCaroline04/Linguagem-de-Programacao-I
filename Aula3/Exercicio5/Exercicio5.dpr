program Exercicio5;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  altura, pesoIdeal: Real;
  sexo: Char;

begin

  Write('Informe a altura (em metros): ');
  ReadLn(altura);

  Write('Informe o sexo (M para masculino, F para feminino): ');
  ReadLn(sexo);

  if (sexo = 'M') or (sexo = 'm') then
    pesoIdeal := (72.7 * altura) - 58
  else if (sexo = 'F') or (sexo = 'f') then
    pesoIdeal := (62.1 * altura) - 44.7
  else
  begin
    WriteLn('Sexo inválido! Informe M ou F.');
    Exit; //sai do programa
  end;

  WriteLn('O peso ideal para essa altura e sexo é: ', pesoIdeal:0:2, ' kg');

  ReadLn;
end.
