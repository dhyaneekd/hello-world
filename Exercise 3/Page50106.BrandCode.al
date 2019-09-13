page 50106 "Brand Code"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = Brand;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                repeater("Brand Code")
                {
                    field(Code; Code)
                    {
                        ApplicationArea = All;
                        NotBlank = true;
                    }
                    field(Name; Name)
                    {
                        ApplicationArea = all;
                        NotBlank = true;
                    }
                    field("Currency Code"; "Currency Code")
                    {
                        ApplicationArea = all;
                        TableRelation = Currency;
                    }
                    field(Blocked; Blocked)
                    {
                        ApplicationArea = all;
                    }
                    field("Create by"; "Created by")
                    {
                        ApplicationArea = all;
                        Editable = false;
                    }
                    field("Last Modified Date"; "Last Date Modified")
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