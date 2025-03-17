program Exercicio11;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  Siglas: array[0..26] of string = ('SC', 'SP', 'RJ', 'MG', 'RS', 'AC', 'AP', 'AM', 'PA', 'RO', 'RR', 'TO', 'AL', 'BA', 'CE', 'MA', 'PB', 'PE', 'PI', 'RN', 'SE', 'DF', 'GO', 'MT', 'MS', 'ES', 'PR');
  Estados: array[0..26] of string = ('Santa Catarina', 'S�o Paulo', 'Rio de Janeiro', 'Minas Gerais', 'Rio Grande do Sul', 'Acre', 'Amap�', 'Amazonas', 'Par�', 'Rond�nia', 'Roraima', 'Tocantins', 'Alagoas', 'Bahia', 'Cear�', 'Maranh�o', 'Para�ba', 'Pernambuco', 'Piau�', 'Rio Grande do Norte', 'Sergipe', 'Distrito Federal', 'Goi�s', 'Mato Grosso', 'Mato Grosso do Sul', 'Esp�rito Santo', 'Paran�');
  Capitais: array[0..26] of string = ('Florian�polis', 'S�o Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Porto Alegre', 'Rio Branco', 'Macap�', 'Manaus', 'Bel�m', 'Porto Velho', 'Boa Vista', 'Palmas', 'Macei�', 'Salvador', 'Fortaleza', 'S�o Lu�s', 'Jo�o Pessoa', 'Recife', 'Teresina', 'Natal', 'Aracaju', 'Bras�lia', 'Goi�nia', 'Cuiab�', 'Campo Grande', 'Vit�ria', 'Curitiba');
  i: Integer;
  siglaDigitada: string;
  encontrado: Boolean;

begin
  Write('Digite a sigla de um estado brasileiro: ');
  ReadLn(siglaDigitada);

  siglaDigitada := UpperCase(siglaDigitada);  // o UpperCase serve para  para comparar corretamente, mesmo que o usu�rio digite letras min�sculas.
  encontrado := False;

  for i := 0 to 26 do
  begin
    if siglaDigitada = Siglas[i] then
    begin
      WriteLn(Estados[i], ', ', Capitais[i]);
      encontrado := True;
      Break;
    end;
  end;

  if not encontrado then
    WriteLn('Sigla inv�lida!');

  ReadLn;
end.
