defmodule Shift4Shop.Payment.Token do
  @derive Jason.Encoder
  defstruct PaymentTokenID: nil,
            CustomerID: nil,
            OrderID: nil,
            CustomerProfileID: "",
            PaymentProfileID: "",
            CardLast4: nil,
            CardExpMonth: nil,
            CardExpYear: nil,
            BillingPaymentMethodID: nil,
            LastUpdate: "",
            GatewayName: "",
            GatewayID: nil
end
