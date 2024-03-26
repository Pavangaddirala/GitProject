page 50128 ArthamaticOperation
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    //SourceTable = ;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field("First Value"; x)
                {
                    ApplicationArea = All;

                }
                field("Second Value"; y)
                {
                    ApplicationArea = All;

                }
                field(Result; z)
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
            action(Add)
            {
                Image = Add;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    z := Format(x + y);

                end;
            }
            action(Substract)
            {
                Image = AutoReserve;
                ApplicationArea = All;

                trigger OnAction()
                begin
                    z := Format(x - y);
                end;
            }

            // through the codeunit calling methods starts
            action(Multiple)
            {
                Image = "8ball";
                ApplicationArea = All;

                trigger OnAction()
                var
                    codeunitobj: Codeunit MyCodeunit;
                begin
                    z := Format(codeunitobj.Multiplymeethod(x, y));

                end;
            }
            action(Division)
            {
                Image = DeactivateDiscounts;
                ApplicationArea = All;

                trigger OnAction()
                var
                    codeunitobj: Codeunit MyCodeunit;
                begin
                    z := Format(codeunitobj.divisionmethod(x, y));
                end;
            }
            // through the codeunit calling methods end
        }
    }

    var
        myInt: Integer;
        x: Integer;
        y: Integer;
        z: Text;
}