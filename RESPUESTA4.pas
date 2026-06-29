//EJERCICIO 4
    // COPIAR AQUI LA CABECERA
    function intercambiarPrimerUltimo: Integer;


    
// COPIAR AQUI EL EJERCICIO POO
function NumeroNatural.intercambiarPrimerUltimo: Integer;
var
  p, pri, ult, cen: Word;
begin
  if Valor < 10 then
    intercambiarPrimerUltimo := Valor
  else
  begin
    p := 1;
    while (Valor div (p * 10)) > 0 do
      p := p * 10;

    pri := Valor div p;
    ult := Valor mod 10;
    cen := (Valor mod p) div 10;

    intercambiarPrimerUltimo := ult * p + cen * 10 + pri;
  end;
end;

  // COPIAR AQUI LA LLAMADA

       Edit2.Text := IntToStr(Numero.intercambiarPrimerUltimo);
