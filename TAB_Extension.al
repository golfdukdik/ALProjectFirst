tableextension 50100 CustomerExtension extends Customer
{
    fields
    {
        // Add changes to table fields here
        field(50000; Description3; Text[50])
        {
            DataClassification = ToBeClassified;
            //FieldPropertyName = FieldPropertyValue;
            trigger OnValidate();
            begin
                if Description3 <> xRec.Description3 then
                    Showmessage(Description3);


            end;
        }
        field(50001; Approved; Boolean)
        {

        }

        field(50002; TestF; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum ("Detailed Cust. Ledg. Entry".Amount WHERE ("Customer No." = field ("No.")));
            Editable = false;
        }
    }
    var

        myInt: Integer;
        MyRec: Record 18;


    local procedure Showmessage(Param: Text[50])
    begin
        if Param = '' then
            exit;

        Message(Param);
    end;

}