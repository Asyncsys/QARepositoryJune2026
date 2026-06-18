[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Append"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared DefaultDestination = Fabric.Warehouse([CreateNavigationProperties = false]){[workspaceId = "1a3600c2-02c7-4a42-a5e1-04917e44fa3e"]}[Data]{[warehouseId = "1ea464e3-106f-48d8-bbc8-3a0d38aa1b87"]}[Data];
[BindToDefaultDestination = true]
shared #"Livestock and Meat Dataflow" = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "0ea379e7-749f-400d-b028-cb8f478d4021"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "b3ce11e9-45e4-408e-8fac-653664438b7e"]}[Data]
in
  #"Navigation 3";
