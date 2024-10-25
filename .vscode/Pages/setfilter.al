pageextension 50110 "SetFilterandrange" extends "Item List"
{
    actions
    {
        addfirst(Processing)
        {
            action("setfilter")
            {
                ApplicationArea = all;
                Caption = 'set filter';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    Rec.SetFilter("No.", '1001');
                end;

            }
            action("setrange")
            {
                ApplicationArea = all;
                Caption = 'set range;';
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    Rec.SetRange("Unit Price", 1000, 15000);
                end;
            }
        }
    }
}