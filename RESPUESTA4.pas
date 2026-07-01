//EJERCICIO 4
    // COPIAR AQUI LA CABECERA
 
    function DigitosAscendentes: Boolean;

    
// COPIAR AQUI EL EJERCICIO POO

function NumeroNatural.DigitosAscendentes: Boolean;
var
  n, d1, d2: Integer;
begin
  n := Valor;
  DigitosAscendentes := True;

  while n >= 10 do
  begin
    d1 := n mod 10;
    d2 := (n div 10) mod 10;

    if d2 > d1 then
    begin
      DigitosAscendentes := False;
      Exit;
    end;

    n := n div 10;
  end;
end;
  // COPIAR AQUI LA LLAMADA
     
  if Numero.DigitosAscendentes then
    showmessage('Si')
  else
    showmessage('No');
