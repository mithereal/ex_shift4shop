defmodule Swift4Shop.ExternalId do
  @derive Jason.Encoder
  defstruct ID: nil,
            AdvancedOptionSufix: "",
            ExternalId1: "",
            ExternalId2: "",
            ExternalIdType: ""
end
