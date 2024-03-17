pageextension 50113 myPageextension extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field("Ascent Name"; Rec.MyTestField1)
            {
                Caption = 'Ascent Name';
                ApplicationArea = All;
            }
            field("TestField"; Rec.mytestfield3)
            {
                ApplicationArea = All;

            }

        }
        modify("Responsibility Center")
        {
            Visible = false;

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}