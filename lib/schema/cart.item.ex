defmodule Swift4Shop.Cart.Item do
  @derive Jason.Encoder
  defstruct CatalogID: nil,
            CartItemID: nil,
            ItemID: "",
            ItemQuantity: nil,
            ItemDescription: "",
            ItemUnitPrice: nil,
            ItemOptionPrice: nil,
            ItemDateAdded: "",
            ItemImage1: ""
end
