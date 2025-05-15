unit Aula9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,System.Generics.Collections,
  System.Generics.Defaults;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Vestido1: TComboBox;
    Nome1: TComboBox;
    Estado1: TComboBox;
    Idade1: TComboBox;
    Altura1: TComboBox;
    Peso1: TComboBox; // Pesos
    GroupBox2: TGroupBox;
    Estado2: TComboBox;
    Idade2: TComboBox;
    Altura2: TComboBox;
    GroupBox3: TGroupBox;
    Estado3: TComboBox;
    Idade3: TComboBox;
    Altura3: TComboBox;
    GroupBox4: TGroupBox;
    Estado4: TComboBox;
    Idade4: TComboBox;
    Altura4: TComboBox;
    Nome2: TComboBox;
    Vestido2: TComboBox;
    Peso2: TComboBox;
    Vestido3: TComboBox;
    Nome3: TComboBox;
    Peso3: TComboBox;
    Peso4: TComboBox;
    Nome4: TComboBox;
    Vestido4: TComboBox;
    GroupBox5: TGroupBox;
    Estado5: TComboBox;
    Idade5: TComboBox;
    Altura5: TComboBox;
    Peso5: TComboBox;
    Nome5: TComboBox;
    Vestido5: TComboBox;
    Vestido: TLabel;
    Nome: TLabel;
    Estado: TLabel;
    Idade: TLabel;
    Altura: TLabel;
    Peso: TLabel;
    FraseUm: TLabel;
    FraseDois: TLabel;
    FraseTres: TLabel;
    FraseQuatro: TLabel;
    FraseCinco: TLabel;
    FraseSeis: TLabel;
    FraseSete: TLabel;
    FraseOito: TLabel;
    FraseNove: TLabel;
    FraseDez: TLabel;
    FraseOnze: TLabel;
    FraseDoze: TLabel;
    FraseTreze: TLabel;
    FraseQuatorze: TLabel;
    FraseQuinze: TLabel;
    FraseDezesseis: TLabel;
    FraseDezessete: TLabel;
    FraseDezoito: TLabel;
    FraseDezenove: TLabel;
    FraseVinte: TLabel;

    procedure ComboBoxChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    procedure AtualizarInformacoes;
    var
      Vestido1Correto, Nome1Correto, Estado1Correto, Idade1Correto, Altura1Correto, Peso1Correto: boolean;
      Vestido2Correto, Nome2Correto, Estado2Correto, Idade2Correto, Altura2Correto, Peso2Correto: boolean;
      Vestido3Correto, Nome3Correto, Estado3Correto, Idade3Correto, Altura3Correto, Peso3Correto: boolean;
      Vestido4Correto, Nome4Correto, Estado4Correto, Idade4Correto, Altura4Correto, Peso4Correto: boolean;
      Vestido5Correto, Nome5Correto, Estado5Correto, Idade5Correto, Altura5Correto, Peso5Correto: boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
function GetInfo(Nome, Estado, Idade, Altura, Peso, Vestido: TComboBox): string;
begin
  Result := '';
  if Nome.ItemIndex <> -1 then
    Result := Result + Nome.Text + ', ';
  if Estado.ItemIndex <> -1 then
    Result := Result + Estado.Text + ', ';
  if Idade.ItemIndex <> -1 then
    Result := Result + Idade.Text + ', ';
  if Altura.ItemIndex <> -1 then
    Result := Result + Altura.Text + ', ';
  if Peso.ItemIndex <> -1 then
    Result := Result + Peso.Text + ', ';
  if Vestido.ItemIndex <> -1 then
    Result := Result + 'vestido ' + Vestido.Text;

  // Remove vírgula final, se houver
  if Result.EndsWith(', ') then
    Delete(Result, Length(Result)-1, 2);
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  // Configurar os ComboBoxes para não permitir digitação
 Vestido1.Style := csDropDownList;
  Nome1.Style := csDropDownList;
  Estado1.Style := csDropDownList;
  Idade1.Style := csDropDownList;
  Peso1.Style := csDropDownList;
  Altura1.Style := csDropDownList;
  Vestido2.Style := csDropDownList;
  Nome2.Style := csDropDownList;
  Estado2.Style := csDropDownList;
  Idade2.Style := csDropDownList;
  Peso2.Style := csDropDownList;
  Altura2.Style := csDropDownList;
  Vestido3.Style := csDropDownList;
  Nome3.Style := csDropDownList;
  Estado3.Style := csDropDownList;
  Idade3.Style := csDropDownList;
  Peso3.Style := csDropDownList;
  Altura3.Style := csDropDownList;
  Vestido4.Style := csDropDownList;
  Nome4.Style := csDropDownList;
  Estado4.Style := csDropDownList;
  Idade4.Style := csDropDownList;
  Peso4.Style := csDropDownList;
  Altura4.Style := csDropDownList;
  Vestido5.Style := csDropDownList;
  Nome5.Style := csDropDownList;
  Estado5.Style := csDropDownList;
  Idade5.Style := csDropDownList;
  Peso5.Style := csDropDownList;
  Altura5.Style := csDropDownList;

  // Preenchendo todos os ComboBoxes com as informações fornecidas
  var cores := ['vermelho', 'amarelo', 'azul', 'branco', 'verde'];
  var nomes := ['Kátia', 'Amélia', 'Francine', 'Sabrina', 'Camila'];
  var estados := ['Minas Gerais', 'Paraná', 'Mato Grosso', 'Sergipe', 'Amazonas'];
  var idades := ['24 anos', '21 anos', '25 anos', '23 anos', '22 anos'];
  var alturas := ['1.66 m', '1.68 m', '1.70 m', '1.72 m', '1.74 m'];
  var pesos := ['57 kg', '55 kg', '54 kg', '56 kg', '53 kg'];

  // Preenchendo os ComboBoxes
  Vestido1.Items.AddStrings(cores);
  Nome1.Items.AddStrings(nomes);
  Estado1.Items.AddStrings(estados);
  Idade1.Items.AddStrings(idades);
  Altura1.Items.AddStrings(alturas);
  Peso1.Items.AddStrings(pesos);

  Vestido2.Items.AddStrings(cores);
  Nome2.Items.AddStrings(nomes);
  Estado2.Items.AddStrings(estados);
  Idade2.Items.AddStrings(idades);
  Altura2.Items.AddStrings(alturas);
  Peso2.Items.AddStrings(pesos);

  Vestido3.Items.AddStrings(cores);
  Nome3.Items.AddStrings(nomes);
  Estado3.Items.AddStrings(estados);
  Idade3.Items.AddStrings(idades);
  Altura3.Items.AddStrings(alturas);
  Peso3.Items.AddStrings(pesos);

  Vestido4.Items.AddStrings(cores);
  Nome4.Items.AddStrings(nomes);
  Estado4.Items.AddStrings(estados);
  Idade4.Items.AddStrings(idades);
  Altura4.Items.AddStrings(alturas);
  Peso4.Items.AddStrings(pesos);


  Vestido5.Items.AddStrings(cores);
  Nome5.Items.AddStrings(nomes);
  Estado5.Items.AddStrings(estados);
  Idade5.Items.AddStrings(idades);
  Altura5.Items.AddStrings(alturas);
  Peso5.Items.AddStrings(pesos);

  // Conectando o evento OnChange para todos os ComboBoxes
Vestido1.OnChange := ComboBoxChange;
Vestido2.OnChange := ComboBoxChange;
Vestido3.OnChange := ComboBoxChange;
Vestido4.OnChange := ComboBoxChange;
Vestido5.OnChange := ComboBoxChange;


  // Definir os valores corretos para cada ComboBox
  Vestido1Correto := True;
  Nome1Correto := True;
  Estado1Correto := True;
  Idade1Correto := True;
  Altura1Correto := True;
  Peso1Correto := True;

  Vestido2Correto := True;
  Nome2Correto := True;
  Estado2Correto := True;
  Idade2Correto := True;
  Altura2Correto := True;
  Peso2Correto := True;

  // Adicionar mais definições de valores corretos para os outros ComboBoxes
end;

procedure TForm1.ComboBoxChange(Sender: TObject);
var
  Combo: TComboBox;
  corTexto: string;
  Valores: TArray<String>;
  Existe: Boolean;
begin
  if Sender is TComboBox then
  begin
    Combo := TComboBox(Sender);
    Valores := ['Vestido1', 'Vestido2', 'Vestido3', 'Vestido4', 'Vestido5'];
    Existe := TArray.IndexOf<String>(Valores, Combo.Name) > -1;

    // Verifica se está dentro de um GroupBox
    if Combo.Parent is TGroupBox then
    begin
      if Existe then
      begin
        corTexto := LowerCase(Combo.Text);

        if corTexto = 'vermelho' then
          TGroupBox(Combo.Parent).Color := clRed
        else if corTexto = 'amarelo' then
          TGroupBox(Combo.Parent).Color := clYellow
        else if corTexto = 'azul' then
          TGroupBox(Combo.Parent).Color := clBlue
        else if corTexto = 'branco' then
          TGroupBox(Combo.Parent).Color := clWhite
        else if corTexto = 'verde' then
          TGroupBox(Combo.Parent).Color := clGreen
        else
          TGroupBox(Combo.Parent).Color := clWindow;
      end;
      atualizarInformacoes;
    end;

  end;
end;

procedure TForm1.AtualizarInformacoes;
begin
  if (Nome1.Text = 'Kátia') then
  begin
    FraseDoze.Font.Style := [fsStrikeOut];
    FraseDoze.Font.Color := clGreen;
  end

  else
  FraseDoze.Font.Style := [];

       //-----------------//

  if (Estado1.Text = 'Minas Gerais') then
begin
  FraseNove.Font.Style := [fsStrikeOut];
  FraseNove.Font.Color := clGreen;
end;

        //-----------------//
begin
  if (Idade1.Text = '24 anos') then
  begin
    FraseDois.Font.Style := [fsStrikeOut];
    FraseDois.Font.Color := clGreen;
  end
  else
  FraseDois.Font.Style := [];

       //-----------------//

  if (Altura1.Text = '1,66 m') then
begin
//  FraseUm.Font.Style := [fsStrikeOut];
//  FraseUm.Font.Color := clGreen;
end

else
 // FraseNove.Font.Style := [fsStrikeOut];

    begin
  if (Peso1.Text = '57 kg') then
  begin
     FraseDezesseis.Font.Style := [fsStrikeOut];
    FraseDezesseis.Font.Color := clGreen;
  end
  else
  //FraseOnze.Font.Style := [];

       //-----------------//

       if (Vestido2.Text = 'amarelo') then
  begin
    FraseDezesseis.Font.Style := [fsStrikeOut];
    FraseDezesseis.Font.Color := clGreen;
  end
      else
   // FraseUm.Font.Style := [fsStrikeOut];
  end;

    begin
  if (Nome2.Text = 'Amélia') then
  begin
    FraseOito.Font.Style := [fsStrikeOut];
    FraseOito.Font.Color := clGreen;
  end

  else
  //FraseOnze.Font.Style := [];

       //-----------------//

  if (Estado2.Text = 'Paraná') then
begin
  //FraseUm.Font.Style := [fsStrikeOut];
 // FraseUm.Font.Color := clGreen;
end

else
  //FraseUm.Font.Style := [fsStrikeOut];

end;
  //--------------------//

  if (Idade2.Text = '21 anos') then
begin
  //FraseUm.Font.Style := [fsStrikeOut];
 // FraseUm.Font.Color := clGreen;
end

else
  //FraseUm.Font.Style := [fsStrikeOut];

end;
//--------------------//
    if (Altura2.Text = '1,68 m ') then
    begin
       //FraseUm.Font.Style := [fsStrikeOut];
      // FraseUm.Font.Color := clGreen;
    end
    else

    //-------------//

      if (Peso2.Text = '55 kg ') then
    begin
       FraseSeis.Font.Style := [fsStrikeOut];
        FraseSeis.Font.Color := clGreen;
    end
    else
         //-----------------//

  if (Vestido3.Text = 'azul') then
    begin
       //FraseUm.Font.Style := [fsStrikeOut];
      // FraseUm.Font.Color := clGreen;
    end
    else

     //----------------------------//

     if (Nome3.Text = 'Francine') then
     begin
       FraseDezoito.Font.Style := [fsStrikeOut];
       FraseDezoito.Font.Color := clGreen;
     end
     else


     //----------------------------//

     if (Estado3.Text = 'Mato Grosso') then
     begin
       FraseQuatro.Font.Style := [fsStrikeOut];
       FraseQuatro.Font.Color := clGreen;
     end
     else


     //----------------------------//

     if (Idade3.Text = '25 anos') then
     begin
       FraseCinco.Font.Style := [fsStrikeOut];
       FraseCinco.Font.Color := clGreen;
     end
     else

     //----------------------------//

     if (Altura3.Text = '1,70 m') then
     begin
       FraseDezessete.Font.Style := [fsStrikeOut];
      FraseDezessete.Font.Color := clGreen;
     end
     else

     //----------------------------//

     if (Peso3.Text = '54 kg') then
     begin
       FraseCinco.Font.Style := [fsStrikeOut];
       FraseCinco.Font.Color := clGreen;
     end
     else

     //----------------------------//

     if (Vestido4.Text = 'branco') then
     begin
       FraseDezenove.Font.Style := [fsStrikeOut];
       FraseDezenove.Font.Color := clGreen;
     end
     else

     //----------------------------//

     if (Nome4.Text = 'Sabrina') then
     begin
      FraseDezenove.Font.Style := [fsStrikeOut];
      FraseDezenove.Font.Color := clGreen;
     end
     else
     //-----------------//

          if (Estado4.Text = 'Sergipe') then
     begin
      FraseDez.Font.Style := [fsStrikeOut];
      FraseDez.Font.Color := clGreen;
     end
     else
          //-----------------//

          if (Idade4.Text = '23 anos') then
     begin
      //FraseDez.Font.Style := [fsStrikeOut];
      //FraseDez.Font.Color := clGreen;
     end
     else
               //-----------------//

          if (Altura4.Text = '1,72 m') then
     begin
      FraseTreze.Font.Style := [fsStrikeOut];
      FraseTreze.Font.Color := clGreen;
     end
     else

     //------------------------------//

        if (Peso4.Text = '56 kg') then
     begin
      FraseOnze.Font.Style := [fsStrikeOut];
      FraseOnze.Font.Color := clGreen;
     end
     else
          //------------------------------//

        if (Vestido5.Text = 'Verde') then
     begin
//      FraseOnze.Font.Style := [fsStrikeOut];
//      FraseOnze.Font.Color := clGreen;
     end
     else

          //------------------------------//

        if (Nome5.Text = 'Camila') then
     begin
      FraseTres.Font.Style := [fsStrikeOut];
      FraseTres.Font.Color := clGreen;
     end
     else
          //------------------------------//

        if (Estado5.Text = 'Amazonas') then
     begin
      FraseQuinze.Font.Style := [fsStrikeOut];
      FraseQuinze.Font.Color := clGreen;
     end
     else
          //------------------------------//

        if (Idade5.Text = '22 anos') then
     begin
      FraseSete.Font.Style := [fsStrikeOut];
      FraseSete.Font.Color := clGreen;
     end
     else
          //------------------------------//

        if (Altura5.Text = '1,74 m') then
     begin
      FraseUm.Font.Style := [fsStrikeOut];
      FraseUm.Font.Color := clGreen;
     end
     else
          //------------------------------//

        if (Peso5.Text = '53 kg') then
     begin
      FraseVinte.Font.Style := [fsStrikeOut];
      FraseVinte.Font.Color := clGreen;
     end
     else






























end;


end.
