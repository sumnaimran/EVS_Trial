page 50114 PageAction
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;


    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(InitialAmount; InitialAmount)
                {
                    ApplicationArea = all;
                    Caption = 'Initial Amount';
                    ToolTip = 'Initial Amount';

                }
                field(Noofyears; Noofyears)
                {
                    ApplicationArea = all;

                }
                field(RateOfInterest; RateOfInterest)
                {
                    ApplicationArea = all;

                }

            }

            group(Output)
            {
                field(FinalAmount; FinalAmount)
                {
                    ApplicationArea = all;
                    Editable = false;

                }


            }
        }

    }

    actions
    {
        area(Processing)
        {
            action("Calculate Simple Interest")
            {
                ApplicationArea = all;
                Caption = 'Calculate the interest';
                Image = ExecuteBatch;
                ToolTip = 'Interest Calculation';
                trigger OnAction()
                begin
                    FinalAmount := Initialamount * (1 + RateOfInterest * Noofyears)
                end;



            }
        }
        area(Navigation)
        {
            group("More Information")
            {
                Caption = 'More Data';
                group("More Details")
                {

                    action("Customer")
                    {
                        ApplicationArea = all;
                        Caption = 'Customer Details';
                        RunObject = page "Customer Card";
                    }
                }
            }
        }
        area(Creation)
        {
            action("New Document")
            {
                ApplicationArea = all;
                RunObject = page "Customer Card";
                Image = Post;

            }
        }
    }
    var
        Initialamount: Decimal;
        Noofyears: Integer;
        RateOfInterest: Decimal;
        FinalAmount: Decimal;

}