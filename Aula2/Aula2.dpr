program Aula2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
      System.SysUtils;

  const
  MinhaConstante = 'Texto fixo';


  var
  MeuTexto: String;

  procedure ImprimirTexto;
  var
    MeuTexto: String;
  begin
    Writeln('MeuTexto')
  end;

begin
  try
       // MeuNumero :=  1;

//        Readln(MeuTexto);
     imprimirTexto;

     imprimirTexto;
      Readln

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
