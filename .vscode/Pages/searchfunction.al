pageextension 50113 searchfunction extends "Customer Card"
{

    actions
    {
        addfirst(processing)
        {
            action("get function")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                trigger onAction()
                begin
                    if Cust.get('1000') then
                        Message(Text001)
                    else
                        Message(Text002);

                end;
            }
            //+ find last re,- find first record,= exact record
            action("Find Function")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    cust."No." := '10000';
                    if cust.find('=') then
                        Message(Text003, Cust."No.", Cust.Name, Cust."Address 2")
                    else
                        Message(Text002);
                end;

            }

            //>0:forward,<0:backward,=0 at same record
            action("Next function")
            {
                ApplicationArea = all;
                Promoted = true;
                PromotedCategory = process;
                trigger OnAction()
                begin
                    count := 0;
                    Cust."No." := '10000';
                    if cust.find('-') then
                        repeat
                            count := count + 1;
                        until cust.next = 0; // move one step 

                end;
            }

        }
    }

    var
        Cust: Record Customer;
        Text001: Label 'Record Found';
        Text002: Label 'Record not found';
        Text003: Label 'Record found :Customer No %1,CustomerName %2 and customer Address %3';
        count: Integer;
}