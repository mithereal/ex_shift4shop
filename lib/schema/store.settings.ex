defmodule Swift4Shop.Store.Settings do
  @derive Jason.Encoder
  defstruct StoreInformation: 1,
            MerchantInformation: 1,
            StoreStandards: 1
end
