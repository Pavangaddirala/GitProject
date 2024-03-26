pageextension 50113 myPageextension extends "Customer List"
{
    layout
    {
        // Add changes to page layout here
        addafter(Name)
        {
            field("ascent name"; Rec.MyTestField1)
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
        custobh: page "Customer Card";
}
pageextension 50145 itempagextenmsion extends "Item Card"
{
    layout
    {
        // Add changes to page layout 
        addbefore("Costing Method")
        {
            field(MyField; Rec.Newfield)
            {
                ApplicationArea = All;

            }
            field(MyField1; Rec.Newfield1)
            {
                ApplicationArea = All;
                TableRelation = Customer;

            }
        }
        modify("Standard Cost")
        {
            Caption = 'Stdrd Cost';
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}