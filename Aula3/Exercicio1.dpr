program Exercicio1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;


var
 valor1, valor2, valor3, media: Real;

begin

 Write('Digite o primeiro valor: ');
ReadLn(valor1);

 Write('Digite o segundo valor: ');
  ReadLn(valor2);

  Write('Digite o terceiro valor: ');
  ReadLn(valor3);

 media := (valor1 + valor2 + valor3) / 3;

 WriteLn('A média dos três valores é: ', FormatFloat('0.0000', media));

 ReadLn;

