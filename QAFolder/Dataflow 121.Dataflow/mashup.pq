[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"Re-name Livestock and Meat Dataflow" = let
  Source = PowerPlatform.Dataflows([]),
  #"Navigation 1" = Source{[Id = "Workspaces"]}[Data],
  #"Navigation 2" = #"Navigation 1"{[workspaceId = "ec9a7003-1b77-47c3-bea2-8c67e631d545"]}[Data],
  #"Navigation 3" = #"Navigation 2"{[dataflowId = "7cc38fbe-5b86-42e0-8a81-cf0ee3282404"]}[Data]
in
  #"Navigation 3";
