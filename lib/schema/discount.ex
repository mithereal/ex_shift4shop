defmodule Swift4Shop.Discount do
  @derive Jason.Encoder
  defstruct DiscountID: nil,
            DiscountPriceLevel: nil,
            DiscountLowbound: nil,
            DiscountUpbound: nil,
            DiscountPrice: nil,
            DiscountPercentage: nil
end
