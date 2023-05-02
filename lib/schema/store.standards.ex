defmodule Swift4Shop.Store.Standards do
  @derive Jason.Encoder
  defstruct StoreTimeZone: "sample string strCount",
            CurrencySymbol: "sample string strCount",
            DecimalPlacesOnPrice: "sample string strCount",
            CurrencyCode: "sample string strCount"
end
