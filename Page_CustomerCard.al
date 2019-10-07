pageextension 50101 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field(Description3; Description3)
            {
                ApplicationArea = All;
            }
            /*{
            field(TestF; TestF)
            {
                ApplicationArea = All;
            }*/
        }

        addbefore(Name)
        {
            field(TestF; TestF)
            {
            }

        }
    }
    actions
    {

    }

    var
        myInt: Integer;
}
