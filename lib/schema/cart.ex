defmodule Swift4Shop.Cart do
  @derive Jason.Encoder
  defstruct OrderKey: "",
            OrderDate: "",
            OrderAmount: nil,
            OrderWeight: nil,
            LastUpdate: "",
            CheckoutURL: "",
            CustomerId: 1,
            BillingFirstName: "",
            BillingLastName: "",
            BillingCompany: "",
            BillingAddress: "",
            BillingAddress2: "",
            BillingCity: "",
            BillingState: "",
            BillingZipCode: "",
            BillingCountry: "",
            BillingPhoneNumber: "",
            BillingEmail: "",
            ShipmentFirstName: "",
            ShipmentLastName: "",
            ShipmentCompany: "",
            ShipmentAddress: "",
            ShipmentAddress2: "",
            ShipmentCity: "",
            ShipmentState: "",
            ShipmentZipCode: "",
            ShipmentCountry: "",
            ShipmentPhone: "",
            ShipmentEmail: "",
            CartItemList: ""
end
