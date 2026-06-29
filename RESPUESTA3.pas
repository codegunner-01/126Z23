//EJERCICO 3
function esCapicua(pal: string): Boolean;
var
  i, j: Integer;
begin
  i := 1;
  j := Length(pal);

  while i < j do
  begin
    if LowerCase(pal[i]) <> LowerCase(pal[j]) then
    begin
      Result := False;
      Exit;
    end;
    Inc(i);
    Dec(j);
  end;

  Result := True;
end;

function ejercicio3_cad(cad: string): string;
var
  i: Integer;
  pal, res: string;
begin
  pal := '';
  res := '';
  cad := cad + ' ';

  for i := 1 to Length(cad) do
  begin
    if cad[i] <> ' ' then
      pal := pal + cad[i]
    else
    begin
      if pal <> '' then
      begin
        if (Length(pal) > 1) and esCapicua(pal) then
          res := res + pal + ' ';
        pal := '';
      end;
    end;
  end;

  Result := res;
end;


  //LLAMADA DE CADENAS AQUI
  Edit3.Text := ejercicio3_cad(cad);
