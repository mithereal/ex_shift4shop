defmodule Swift4Shop.Cart.Item.Option do
  @derive Jason.Encoder
  defstruct OptionSetID: nil,
            OptionID: nil,
            OptionValue: ""
end
