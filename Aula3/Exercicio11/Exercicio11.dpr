program Exercicio11;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var
  Siglas: array[0..26] of string = ('SC', 'SP', 'RJ', 'MG', 'RS', 'AC', 'AP', 'AM', 'PA', 'RO', 'RR', 'TO', 'AL', 'BA', 'CE', 'MA', 'PB', 'PE', 'PI', 'RN', 'SE', 'DF', 'GO', 'MT', 'MS', 'ES', 'PR');
  Estados: array[0..26] of string = ('Santa Catarina', 'São Paulo', 'Rio de Janeiro', 'Minas Gerais', 'Rio Grande do Sul', 'Acre', 'Amapá', 'Amazonas', 'Pará', 'Rondônia', 'Roraima', 'Tocantins', 'Alagoas', 'Bahia', 'Ceará', 'Maranhão', 'Paraíba', 'Pernambuco', 'Piauí', 'Rio Grande do Norte', 'Sergipe', 'Distrito Federal', 'Goiás', 'Mato Grosso', 'Mato Grosso do Sul', 'Espírito Santo', 'Paraná');
  Capitais: array[0..26] of string = ('Florianópolis', 'São Paulo', 'Rio de Janeiro', 'Belo Horizonte', 'Porto Alegre', 'Rio Branco', 'Macapá', 'Manaus', 'Belém', 'Porto Velho', 'Boa Vista', 'Palmas', 'Maceió', 'Salvador', 'Fortaleza', 'São Luís', 'João Pessoa', 'Recife', 'Teresina', 'Natal', 'Aracaju', 'Brasília', 'Goiânia', 'Cuiabá', 'Campo Grande', 'Vitória', 'Curitiba');
  i: Integer;
  siglaDigitada: string;
  encontrado: Boolean;

begin
  Write('Digite a sigla de um estado brasileiro: ');
  ReadLn(siglaDigitada);

  siglaDigitada := UpperCase(siglaDigitada);  // o UpperCase serve para  para comparar corretamente, mesmo que o usuário digite letras minúsculas.
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
    WriteLn('Sigla inválida!');

  ReadLn;
end.
