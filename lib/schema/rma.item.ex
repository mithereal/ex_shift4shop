defmodule Shift4Shop.Rma.Item do
  @derive Jason.Encoder
  defstruct CatalogID: 1,
            SKU: "sample string strCount",
            ItemName: "sample string strCount",
            ReturnQuantity: 1,
            ReceivedQuantity: 1,
            RestockQuantity: 1
end
