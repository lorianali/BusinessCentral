page 80111 "Threshold Setup Page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Threshold table";
    InsertAllowed = false;
    DeleteAllowed = false;
    Caption = 'Threshold Setup';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Threshold 1 Value"; rec."Threshold 1 Value")
                {
                    ApplicationArea = All;
                }
                field("Threshold 1 Style"; rec."Threshold 1 STyle")
                {
                    ApplicationArea = All;
                }
                field("Threshold 2 Value"; rec."Threshold 2 Value")
                {
                    ApplicationArea = All;
                }
                field("Threshold 2 Style"; rec."Threshold 2 STyle")
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
           
        }
    }



    trigger OnOpenPage()

    begin
    

    end;
}