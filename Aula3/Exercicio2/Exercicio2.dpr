program Exercicio2;

{$APPTYPE CONSOLE}

{$R *.res}

    var nome: string;
    var idade: integer;

    begin

   Write('Digite o seu nome: ');
   ReadLn(nome);


      Write('Digite a sua idade: ');
   ReadLn(idade);

     WriteLn('Ol� ', nome, '. Atualmente voc� possui ', idade, ' anos. Daqui a 5 anos voc� ter� ', idade + 5, ' anos.');
ReadLn;

  end.
