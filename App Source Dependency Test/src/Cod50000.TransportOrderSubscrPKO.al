codeunit 50000 "Transport Order Subscr. PKO"
{
    [EventSubscriber(ObjectType::Table, Database::"IDYS Transport Order Header", 'OnAfterInsertEvent', '', false, false)]
    local procedure OnAfterInsertEvent()
    begin
        Message('OnAfterInsertEvent');
    end;
}
