defmodule Swift4Shop.Cart.Item.Post do
  @derive Jason.Encoder
  defstruct CatalogID: nil,
            ItemQuantity: nil,
            ItemOptions: nil
end
