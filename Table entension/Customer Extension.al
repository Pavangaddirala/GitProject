pageextension 50130 MyExtension extends "Customer Card"
{
    layout
    {
        // Add changes to page layout here
        addfirst(General)
        {
            field("test fiedl"; Rec.MyTestField1)
            {
                ApplicationArea = All;
            }
        }

    }

    actions
    {

        // Add changes to page actions here
        addbefore("Request Approval")
        {
            action("Create New customer")
            {
                RunPageMode = Create;
                RunObject = page "Customer Card";
                ApplicationArea = All;

                trigger OnAction()
                var
                    customerobh: page "Customer Card";
                    custrecord: Record Customer;
                begin
                    // custrecord.Reset();
                    // custrecord.Init();
                    // //customerobh.Run();
                    // Page.Run(21);
                end;
            }
        }
        addbefore("Prices and Discounts")
        {
            action("Test action")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
        addbefore("Prices and Discounts")
        {
            action("Open All Customers List")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Page.Run(Page::"Customer List");
                end;
            }
        }

    }


    var
        myInt: Integer;
}