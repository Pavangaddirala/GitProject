// Class file 
codeunit 50102 MyCodeunit
{
    // Event section
    trigger OnRun()
    begin
    end;

    //procedurs or methods
    procedure Multiplymeethod(x: Integer; y: Integer): Integer
    var
        mymultiInt: Integer;

    begin
        mymultiInt := x * y;
        exit(mymultiInt);
    end;


    procedure divisionmethod(x: Integer; y: Integer): Decimal
    var
        myInt: Integer;
    begin
        exit(x / y);
    end;

    // Variable 
    var
        myInt: Integer;
        mydecimalvalue: Decimal;
        myboolenvalue: Boolean;
        mytextvalue: Text[30];
        mytextvalue1: Text;
        mycharvalue: Char;
        mydatevalue: Date;
        mytimevalue: Time;
}

