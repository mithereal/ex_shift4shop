defmodule Shift4Shop.Category.ExternalId do
  @derive Jason.Encoder
  defstruct ID: nil,
            CategoryID: nil,
            ExternalId1: "",
            ExternalIdType: ""
end
