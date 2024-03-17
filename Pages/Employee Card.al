
page 50107 "Pavan Employee Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Employee Table";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Id; Rec."Emp ID")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec."Employee Name")
                {
                    ApplicationArea = All;

                }
                field(MyCity; Rec.City)
                {
                    ApplicationArea = All;

                }
                field(Phone; Rec."Phone Number")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("create New Employee")
            {
                ApplicationArea = All;

                trigger OnAction()
                var
                    Empobj: Record "Employee Table";
                begin
                    Empobj."Emp ID" := Random(999);

                    Empobj."Employee Name" := 'Test Name' + Format(Empobj."Emp ID");
                    Empobj.City := 'Hyd';
                    Empobj."Phone Number" := '9876543210';
                    Empobj.Insert();
                    Message('Recorded inserted');

                end;
            }
        }
    }

    var
        myInt: Integer;
}