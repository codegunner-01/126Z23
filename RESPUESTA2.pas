// Copiar el ejercicio 2 debajo del comentario "{ EJERCICIO 2 COPIAR ABAJO }"


//EJERCICIO 2
function ejercicio2(n: Integer): Real;
var
  i, j: Integer;
  sumaNum, frac, suma: Real;
  sw: Boolean;
begin
  suma := 0;
  sw := True;

  for i := 1 to n do
  begin
    sumaNum := 0;

    for j := 1 to i do
      sumaNum := sumaNum + j;

    frac := sumaNum / i;

    if sw then
    begin
      suma := suma + frac;
      sw := False;
    end
    else
    begin
      suma := suma - frac;
      sw := True;
    end;
  end;

  Result := suma;
end;


//==========================================================================================
// Copiar la llamada del ejercicio 2 debajo del comentario "{ EJERCICIO 2 COPIAR ABAJO }"

//LLAMADA DEL EJERCICIO 2
    Edit3.Text := FloatToStr(ejercicio2(n));

    
