defmodule Swift4Shop.GiftRegistry.Item do
  @derive Jason.Encoder
  defstruct CatalogID: nil,
            SKU: "",
            ItemName: "",
            Listed: nil,
            Price: nil,
            Subtotal: nil,
            Sold: nil,
            SoldOffline: nil
end
