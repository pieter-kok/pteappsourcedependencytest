permissionset 50000 "Dependency Test PTE"
{
    Assignable = true;
    Caption = 'Dependency Test', MaxLength = 30;
    Permissions =
    codeunit "Transport Order Subscr. PTE" = X;
}