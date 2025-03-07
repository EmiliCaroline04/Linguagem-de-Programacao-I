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

     WriteLn('Olá ', nome, '. Atualmente você possui ', idade, ' anos. Daqui a 5 anos você terá ', idade + 5, ' anos.');
ReadLn;

  end.
