table 50106 "ARC Brand"
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = CustomerContent;

        }
        field(2; Name; Text[100])
        {
            DataClassification = CustomerContent
            ;
        }
        field(3; "Country Code"; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(4; "Currency Code"; Code[10])
        {
            DataClassification = CustomerContent;
            TableRelation = Currency;
        }
        field(5; Blocked; Boolean)
        {
            DataClassification = CustomerContent;
        }
        field(6; "Created By"; Code[20])
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(7; "Last Date Modified"; Date)
        {
            DataClassification = CustomerContent;
            Editable = false;
        }
    }

    keys
    {
        key(PK; Code, Name, "Currency Code", "Country Code")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        "Created By" := UserId;
        "Last Date Modified" := WorkDate();
    end;

    trigger OnModify()
    begin
        "Last Date Modified" := WorkDate();
    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin
        "Last Date Modified" := WorkDate();
    end;

}