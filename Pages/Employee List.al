page 50106 "Pavan Employee List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Employee Table";
    CardPageId = "Pavan Employee Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(ID; Rec."Emp ID")
                {
                    ApplicationArea = All;

                }
                field(Name; Rec."Employee Name")
                {
                    ApplicationArea = All;

                }
                field(MyPhonenUmber; Rec."Phone Number")
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

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
                    Empobj.Insert(true);


                end;
            }
        }
    }
}