program Exercicio14;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  SysUtils;

const
  MAX = 100;

type
  TProduto = record
    Codigo: Integer;
    Descricao: string;
    Valor: Real;
  end;

var
  Produtos: array[1..MAX] of TProduto;
  TotalProdutos: Integer;
  Opcao, i, codBusca: Integer;
  encontrado: Boolean;

procedure CadastrarProduto;
var
  novoProduto: TProduto;
  i: Integer;
begin
  if TotalProdutos >= MAX then
  begin
    Writeln('Limite m�ximo de produtos atingido!');
    Exit;
  end;

  Write('Informe o c�digo do produto: ');
  ReadLn(novoProduto.Codigo);

  // Verificar se o c�digo j� existe
  for i := 1 to TotalProdutos do
  begin
    if Produtos[i].Codigo = novoProduto.Codigo then
    begin
      Writeln('C�digo j� cadastrado!');
      Exit;
    end;
  end;

  Write('Informe a descri��o do produto: ');
  ReadLn(novoProduto.Descricao);

  Write('Informe o valor do produto: ');
  ReadLn(novoProduto.Valor);

  Inc(TotalProdutos);
  Produtos[TotalProdutos] := novoProduto;

  Writeln('Produto cadastrado com sucesso!');
end;

procedure ListarProdutos;
var
  i: Integer;
begin
  if TotalProdutos = 0 then
  begin
    Writeln('Nenhum produto cadastrado!');
    Exit;
  end;

  for i := 1 to TotalProdutos do
  begin
    Writeln('C�digo: ', Produtos[i].Codigo);
    Writeln('Descri��o: ', Produtos[i].Descricao);
    Writeln('Valor: R$ ', Produtos[i].Valor:0:2);
    Writeln('----------------------------');
  end;
end;

procedure PesquisarProduto;
var
  i, codBusca: Integer;
  encontrado: Boolean;
begin
  Write('Informe o c�digo do produto: ');
  ReadLn(codBusca);
  encontrado := False;

  for i := 1 to TotalProdutos do
  begin
    if Produtos[i].Codigo = codBusca then
    begin
      Writeln('Produto encontrado:');
      Writeln('Descri��o: ', Produtos[i].Descricao);
      Writeln('Valor: R$ ', Produtos[i].Valor:0:2);
      encontrado := True;
      Break;
    end;
  end;

  if not encontrado then
    Writeln('Produto n�o encontrado!');
end;

procedure ExcluirProduto;
var
  i, j, codExclusao: Integer;
  encontrado: Boolean;
begin
  Write('Informe o c�digo do produto para exclus�o: ');
  ReadLn(codExclusao);
  encontrado := False;

  for i := 1 to TotalProdutos do
  begin
    if Produtos[i].Codigo = codExclusao then
    begin
      encontrado := True;
      for j := i to TotalProdutos - 1 do
        Produtos[j] := Produtos[j + 1];
      Dec(TotalProdutos);
      Writeln('Produto exclu�do com sucesso!');
      Break;
    end;
  end;

  if not encontrado then
    Writeln('Produto n�o encontrado!');
end;

begin
  TotalProdutos := 0;

  repeat
    Writeln('--- Menu ---');
    Writeln('1 - Cadastrar novo produto');
    Writeln('2 - Listar produtos cadastrados');
    Writeln('3 - Pesquisar produto pelo c�digo');
    Writeln('4 - Excluir um produto');
    Writeln('5 - Sair do sistema');
    Write('Escolha uma op��o: ');
    ReadLn(Opcao);

    case Opcao of
      1: CadastrarProduto;
      2: ListarProdutos;
      3: PesquisarProduto;
      4: ExcluirProduto;
      5: Writeln('Saindo do sistema...');
    else
      Writeln('Op��o inv�lida!');
    end;

    Writeln;
  until Opcao = 5;

end.
