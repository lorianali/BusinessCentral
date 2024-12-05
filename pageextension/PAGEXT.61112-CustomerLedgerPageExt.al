pageextension 61112 CustomerLedgerPageExt extends "Customer Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field(NumberOfDaysExpired; Rec.GetNumberOfDaysExpired())
            {
                ApplicationArea = All;
                Editable = false;
                Caption = 'Number of Days Expired';
                ToolTip = 'The number of days this entry is expired, based upon Due Date and today.';
                StyleExpr = DaysExpiredStyle;
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not ThresholdSetup.Get() then begin
            ShowThresholdSetupNotification();
            CurrPage.Update();
        end;

    end;

    local procedure ShowThresholdSetupNotification()
    var
        ThresholdSetupNotification: Notification;
        TresholdSetupNotificationMsg: Label 'You need to run the Treshold Setup';
        TresholdSetupNotificationActionLbl: Label 'Click to open the Treshold Setup';
    begin

        ThresholdSetupNotification.Message(TresholdSetupNotificationMsg);
        ThresholdSetupNotification.AddAction(TresholdSetupNotificationActionLbl, Codeunit::"Threshold Setup Management", 'RunThresholdSetup');
        ThresholdSetupNotification.Send();
    end;

    trigger OnAfterGetRecord()
    begin
        NumberOfDaysExpired := Rec.GetNumberOfDaysExpired();

        case NumberOfDaysExpired of
            ThresholdSetup."Threshold 1 Value" .. ThresholdSetup."Threshold 2 Value":
                DaysExpiredStyle := Format(ThresholdSetup."Threshold 1 Style");
            ThresholdSetup."Threshold 2 Value" .. 99999:
                DaysExpiredStyle := Format(ThresholdSetup."Threshold 2 Style");
            else
                DaysExpiredStyle := 'None';
        end;
    end;

    var
        ThresholdSetup: Record "Threshold table";
        NumberOfDaysExpired: Integer;
        DaysExpiredStyle: Text;

}
