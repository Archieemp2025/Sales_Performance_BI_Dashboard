// Example Power Query (M) for a Fabric Lakehouse table, once connected via OneLake
let
    Source = Lakehouse.Contents(null),
    // Select your workspace, lakehouse and FactOrderLine table in Navigator.
    // Replace the Navigator-generated steps with the correct environment-specific IDs.
    Note = "Use Get data > OneLake data hub > Lakehouse, select tables, and validate data types."
in
    Note
