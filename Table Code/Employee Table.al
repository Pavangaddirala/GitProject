
table 50106 "Employee Table"
{
    Extensible = true;
    Caption = 'Employee Table';
    DataClassification = ToBeClassified;


    fields
    {
        field(1; "Emp ID"; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;
            trigger OnLookup()
            var
                myInt: Integer;
            begin

            end;

            trigger OnValidate()
            var
                myInt: Integer;
            begin

            end;

        }
        field(2; "Employee Name"; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(3; City; Text[20])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Phone Number"; Text[15])
        {

            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key("key"; "Emp ID")
        {

            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
        message: Label 'Data recored';

    trigger OnInsert()
    begin
        message('Hello');
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}