page 50104 "Region Code"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Region;

    layout
    {
        area(Content)
        {
            group(Region)
            {
                repeater("Region Code")
                {
                    field(Code; code)
                    {
                        ApplicationArea = All;
                        NotBlank = true;
                    }
                    field(Name; Name)
                    {
                        ApplicationArea = All;
                        NotBlank = true;
                    }
                    field("Country Code"; "Country Code")
                    {
                        ApplicationArea = All;
                        LookupPageId = "Countries/Regions";

                    }
                    field("Currency Code"; "Currency Code")
                    {
                        ApplicationArea = All;
                        LookupPageId = Currencies;
                    }
                    field(Blocked; Blocked)
                    {
                        ApplicationArea = All;
                    }
                    field("Created By"; "Created By")
                    {
                        ApplicationArea = All;
                        Editable = false;
                    }
                    field("Last Date Modified"; "Last Date Modified")
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}