defmodule Shift4Shop.Product.Sku do
  @derive Jason.Encoder
  defstruct CatalogID: nil,
            SKU: nil,
            Name: nil,
            Cost: nil,
            Price: nil,
            Currency: nil,
            RetailPrice: nil,
            SalePrice: nil,
            OnSale: nil,
            Stock: nil
end
