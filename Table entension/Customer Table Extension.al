tableextension 50108 pvncustomertableextension extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50109; MyTestField1; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50110; MyTestField2; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50111; mytestfield3; Decimal)
        {
            DataClassification = ToBeClassified;
        }





    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}

tableextension 50145 pvnitemextension extends Item
{
    fields
    {
        // Add changes to table fields here

        field(50145; Newfield; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(50146; Newfield1; Text[30])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}