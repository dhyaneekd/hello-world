table 50105 Store
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Code; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Country Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            //FieldClass = FlowField;
            // CalcFormula = lookup (Region."Country Code" where ("Country Code" = field ("Country Code")));
        }
        field(4; "Currency Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            //FieldClass = FlowField;
            //CalcFormula = lookup (Region."Currency Code" where ("Currency Code" = field ("Currency Code")));
        }
        field(5; Blocked; Boolean)
        {
            DataClassification = ToBeClassified;
            TableRelation = if (Blocked = const (false)) store.Blocked;
        }
        field(6; "Created By"; Code[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(7; "Last Modified Date"; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        /*field(8;"Store Code";code[10])
        {
            DataClassification=ToBeClassified;
            TableRelation=Region."Region Code";
            FieldClass=FlowField;
            CalcFormula
        }*/
    }

    keys
    {
        key(PK; "Code", Name, "Country Code", "Currency Code")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        "Created By" := UserId;
        "Last Modified Date" := Today;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}