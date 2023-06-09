defmodule Shift4Shop.Customer do
  @derive Jason.Encoder
  defstruct CustomerID: nil,
            Email: nil,
            Password: nil,
            BillingCompany: nil,
            BillingFirstName: nil,
            BillingLastName: nil,
            BillingAddress1: nil,
            BillingAddress2: nil,
            BillingCity: nil,
            BillingState: nil,
            BillingZipCode: nil,
            BillingCountry: nil,
            BillingPhoneNumber: nil,
            BillingTaxID: nil,
            ShippingCompany: nil,
            ShippingFirstName: nil,
            ShippingLastName: nil,
            ShippingAddress1: nil,
            ShippingAddress2: nil,
            ShippingCity: nil,
            ShippingState: nil,
            ShippingZipCode: nil,
            ShippingCountry: nil,
            ShippingPhoneNumber: nil,
            ShippingAddressType: nil,
            CustomerGroupID: nil,
            Enabled: nil,
            MailList: nil,
            NonTaxable: nil,
            DisableBillingSameAsShipping: nil,
            Comments: nil,
            AdditionalField1: nil,
            AdditionalField2: nil,
            AdditionalField3: nil,
            TotalStoreCredit: nil,
            ResetPassword: nil

end
