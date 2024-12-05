tableextension 61111 CustLedgerEntryExt extends "Cust. Ledger Entry"
{
    // Procedimiento público para calcular los días vencidos
    procedure GetNumberOfDaysExpired(): Integer
    var
        NumberOfDays: Integer;
    begin
        if Today() <= "Due Date" then
            exit(0); // Si hoy es antes o igual a la fecha de vencimiento, retorna 0

        NumberOfDays := Today() - "Due Date";
        exit(Abs(NumberOfDays)); // Retorna el número absoluto de días vencidos
    end;

  
}
