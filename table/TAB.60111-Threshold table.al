table 60111 "Threshold table"
{
    DataClassification = CustomerContent;
    Caption = 'Threshold Setup';

    fields
    {

        field(1; "Primary Key"; Code[10])
        {
            DataClassification = CustomerContent;
            Caption = 'Primary Key';
        }
        field(2; "Threshold 1 Value"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Threshold 1 Value';

        }
        field(3; "Threshold 2 Value"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Threshold 2 Value';
        }
        field(4; "Threshold 1 STyle"; Enum "Style Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Threshold 1 STyle';

        }
        field(5; "Threshold 2 STyle"; Enum "Style Type")
        {
            DataClassification = CustomerContent;
            Caption = 'Threshold 2 STyle';
        }



    }

    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    trigger OnInsert()
    begin

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