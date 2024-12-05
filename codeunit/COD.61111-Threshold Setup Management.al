codeunit 61111 "Threshold Setup Management"
{

    procedure RunThresholdSetup(var TresholdSetupNotification: Notification)
    var
        ThresholdSetupPage: Page "Threshold Setup Page";

    begin
        ThresholdSetupPage.Run();

    end;
}