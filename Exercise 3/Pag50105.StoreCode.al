page 50105 "Store Code"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Store;

    layout
    {
        area(Content)
        {
            group(Store)
            {
                repeater("Store Code")
                {
                    field(Code; Code)
                    {
                        ApplicationArea = All;
                        NotBlank = true;
                    }
                    field(Name; Name)
                    {
                        ApplicationArea = All;
                        NotBlank = true;
                    }
                    field("Currency Code"; "Currency Code")
                    {
                        ApplicationArea = all;
                        TableRelation = Currency;
                    }
                    field(Blocked; Blocked)
                    {
                        ApplicationArea = All;
                    }
                    field("Created By"; "Created By")
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                    field("Last Modified Date"; "Last Modified Date")
                    {
                        ApplicationArea = All;
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