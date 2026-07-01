// Copiar el ejercicio 2 debajo del comentario "{ EJERCICIO 2 COPIAR ABAJO }"


//EJERCICIO 2
function fct(n: Integer): Integer;
var
  i, f: Integer;
begin
  i := 0;
  f := 1;

  while i < n do
  begin
    i := i + 1;
    f := f * i;
  end;

  Result := f;
end;

function ejercicio2(n: Integer): Real;
var
  i, num: Integer;
  frac, suma: Real;
  sw: Boolean;
begin
  suma := 0;
  sw := True;

  for i := 1 to n do
  begin
    num := i * i;
    frac := num / fct(i);

    if sw then
    begin
      suma := suma - frac;
      sw := False;
    end
    else
    begin
      suma := suma + frac;
      sw := True;
    end;
  end;

  Result := suma;
end;



//==========================================================================================
// Copiar la llamada del ejercicio 2 debajo del comentario "{ EJERCICIO 2 COPIAR ABAJO }"

//LLAMADA DEL EJERCICIO 2
   Edit3.Text := FloatToStr(ejercicio2(n));

    
