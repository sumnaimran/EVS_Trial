codeunit 50115 "Jobqueue my jobqueue"
{
    trigger OnRun()
    var
        customer: Record Customer;
    begin
        customer.init();
        customer.Validate("Name 2", 'Executed through job queue');
        customer.Insert(true);



    end;


}