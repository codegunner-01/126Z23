//CODEGUNNER
// Copiar el ejercicio 1 debajo del comentario "{ EJERCICIO 1 COPIAR ABAJO }"


//EJERCICIO 1



function ejercicio1(n: Integer): string;
var
  x, ant, suma: Integer;
  primero: Boolean;
begin
  suma := 0;
  primero := True;
  c := 0;

  while c < n do
  begin
    x := StrToInt(InputBox('', 'Ingrese número ' + IntToStr(c + 1), ''));

    if (x >= 100) and (x <= 200) then
    begin
      if primero then
      begin
        suma := suma + x;
        ant := x;
        primero := False;
      end
      else
      begin
        if x > ant then
        begin
          suma := suma + x;
          ant := x;
        end;
      end;
    end;

    c := c + 1;
  end;

  if suma mod 2 = 0 then
    Result := 'Suma=' + IntToStr(suma) + ' Es un número Par'
  else
    Result := 'Suma=' + IntToStr(suma) + ' Es un número Impar';
end;









//==========================================================================================
// Copiar la llamada del ejercicio 1 debajo del comentario "{ EJERCICIO 1 COPIAR ABAJO }"

//LLAMADA DEL EJERCICIO 1
  Edit3.Text := ejercicio1(n);



 
