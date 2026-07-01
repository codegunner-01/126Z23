//EJERCICO 3

function invertirPal(pal: string): string;
var
  i: Integer;
begin
  Result := '';
  for i := length(pal) downto 1 do
    Result := Result + pal[i];
end;

function ejercicio3_cad(cad: string): string;
var
  i: Integer;
  pal, res, cant: string;
begin
  pal := '';
  res := '';
  cant := '';
  cad := cad + ' ';

  for i := 1 to length(cad) do
  begin
    if cad[i] <> ' ' then
      pal := pal + cad[i]
    else
    begin
      if pal <> '' then
      begin
        if res = '' then
          res := invertirPal(pal)
        else
          res := res + ' ' + invertirPal(pal);

        if cant = '' then
          cant := IntToStr(length(pal))
        else
          cant := cant + ', ' + IntToStr(length(pal));

        pal := '';
      end;
    end;
  end;

  Result := res + '   CantCarPal: ' + cant;
end;

  //LLAMADA DE CADENAS AQUI
       Edit3.Text := ejercicio3_cad(cad);
