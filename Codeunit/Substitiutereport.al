/*codeunit 50144 "Event Subscriber"{
[EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnBeforeSubstituteReport', '', false, false)]
local procedure MySubstituteReportHandler(var ReportId: Integer; var IsHandled: Boolean)
begin
    if ReportId = Report::"Sales Invoice NA" then begin
        ReportId := Report::"Sales Order"; // Substitute with a custom report
        IsHandled := true;
    end;
end;}*/

codeunit 50144 "Event Subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, 'OnAfterSubstituteReport', '', false, false)]
    local procedure MySubstituteReportHandler(var ReportId: Integer; var IsHandled: Boolean)
    begin
        if ReportId = Report::"Sales Invoice NA" then begin
            ReportId := Report::"Sales Order"; // Substitute with a custom report
            IsHandled := true;
        end;
    end;
}

