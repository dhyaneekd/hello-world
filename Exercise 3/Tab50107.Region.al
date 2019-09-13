table 50107 Region //Arc Region
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Country Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }
        field(4; "Currency Code"; code[10])
        {
            DataClassification = ToBeClassified;
            TableRelation = Currency;
        }
        field(5; Blocked; Boolean)
        {
            DataClassification = ToBeClassified;

            TableRelation = if (Blocked = const (false)) Region.Blocked; //Not right
        }
        field(6; "Created By"; Code[20])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(7; "Last Date Modified"; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

    }

    keys
    {
        key(PK; "Code", "Country Code", "Currency Code")
        {
            Clustered = true;
        }
    }
    var
        myint: Integer;

    trigger OnInsert()
    begin
        "Created By" := UserId;
        "Last Date Modified" := WorkDate();
    end;

    trigger OnModify()
    begin
        "Last Date Modified" := WorkDate()
    end;

    trigger OnRename()
    begin
        "Last Date Modified" := WorkDate()
    end;

}