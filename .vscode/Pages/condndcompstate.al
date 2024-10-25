page 50115 StatementCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statement Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';
                field(Difficulty; Difficulty)
                {
                    ApplicationArea = all;
                    trigger OnValidate()
                    var
                        myInt: Integer;
                    begin
                        GetSuggestion();
                    end;
                }
            }
            group(output)
            {
                Caption = 'output';
                field(Suggestions; Suggestions)
                {
                    ApplicationArea = all;
                }
                field(Level; Level)
                {
                    ApplicationArea = all;
                    Editable = false;
                }
            }
        }

    }

    var
        level: Text[20];
        Suggestions: Text[50];
        Difficulty: Integer;

    procedure GetSuggestion()
    begin
        Level := '';
        Suggestions := '';
        Case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestions := 'Take e-learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Advanced';
                    Suggestions := 'Attend instructor';
                end;
        End;
    end;
}