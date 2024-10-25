page 50109 "Progress Window"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Enable; Enable)
                {
                    ApplicationArea = all;

                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(Message)
            {
                ApplicationArea = all;
                Image = GetActionMessages;


                trigger OnAction()
                begin
                    begin
                        Message('You are using message');
                        Text := 'Dr.Gomathi';
                        Number := 5456.21;
                        Message(Text000 + Text0001 + '%1' + Text002 + '%2', Number, Text);
                    end;

                end;
            }
            action(Confirm)
            {
                ApplicationArea = all;
                Image = Confirm;
                trigger OnAction()
                begin
                    CustomerName := 'Dr.Gomathi';
                    Question := Text003;
                    Answer := Dialog.Confirm(Question, True, CustomerName);
                    Message(Text004, Answer);

                end;



            }
            action(Error)
            {
                ApplicationArea = all;
                Image = Confirm;
                trigger OnAction()
                begin
                    if Enable = true then
                        Message('Ready to run')
                    else
                        Error('Can''t run');
                end;


            }


        }
    }




    var
        Text: Text;
        Number: Decimal;
        Text000: Label 'can use messg window';
        Text0001: Label 'Number:';
        Text002: Label 'Text:';

        Question: Text;
        Answer: Boolean;
        CustomerName: Text;
        Text003: Label 'exit without enabling customer name %1?';
        Text004: Label 'you selected %1';

        Enable: Boolean;

}