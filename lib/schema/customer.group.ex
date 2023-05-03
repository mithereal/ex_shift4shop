defmodule Shift4Shop.Customer.Group do
  @derive Jason.Encoder
  defstruct CustomerGroupID: nil,
            Name: "",
            Description: "",
            MinimumOrder: nil,
            NonTaxable: nil,
            AllowRegistration: nil,
            DisableRewardPoints: nil,
            AutoApprove: nil,
            RegistrationMessage: "",
            PriceLevel: nil
end
