defmodule Swift4Shop.Promotion do
  @derive Jason.Encoder
  defstruct PromotionID: nil,
            PromotionName: "",
            Coupon: "",
            DiscountAmount: nil
end
