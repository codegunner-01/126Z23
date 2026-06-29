//CODEGUNNER
// Copiar el ejercicio 1 debajo del comentario "{ EJERCICIO 1 COPIAR ABAJO }"


//EJERCICIO 1


function ejercicio1(n: Integer): string;
var
  x, cpp, cpi, cnp, cni, mayor: Integer;
  grupo: string;
begin
  cpp := 0;
  cpi := 0;
  cnp := 0;
  cni := 0;
  c := 0;

  while c < n do
  begin
    x := StrToInt(InputBox('', 'Ingrese número ' + IntToStr(c + 1), ''));

    if x > 0 then
    begin
      if x mod 2 = 0 then
        cpp := cpp + 1
      else
        cpi := cpi + 1;
    end
    else if x < 0 then
    begin
      if x mod 2 = 0 then
        cnp := cnp + 1
      else
        cni := cni + 1;
    end;

    c := c + 1;
  end;

  mayor := cpp;
  grupo := 'ParPositivo';

  if cnp > mayor then
  begin
    mayor := cnp;
    grupo := 'ParNegativo';
  end;

  if cpi > mayor then
  begin
    mayor := cpi;
    grupo := 'ImparPositivo';
  end;

  if cni > mayor then
  begin
    mayor := cni;
    grupo := 'ImparNegativo';
  end;

  Result :=
    'ParPositivo=' + IntToStr(cpp) +
    '  ParNegativo=' + IntToStr(cnp) +
    '  ImparPositivo=' + IntToStr(cpi) +
    '  ImparNegativo=' + IntToStr(cni) +
    '  MayorCantidad=' + IntToStr(mayor) + ' ' + grupo;
end;









//==========================================================================================
// Copiar la llamada del ejercicio 1 debajo del comentario "{ EJERCICIO 1 COPIAR ABAJO }"

//LLAMADA DEL EJERCICIO 1
 Edit3.Text := ejercicio1(n);



 
