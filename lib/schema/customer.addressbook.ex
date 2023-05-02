defmodule Swift4Shop.Customer.AddressBook do
  @derive Jason.Encoder
  defstruct CustomerAddressId: nil,
            FirstName: nil,
            LastName: nil,
            Address1: nil,
            Address2: nil,
            City: nil,
            State: nil,
            ZipCode: nil,
            Country: nil,
            Company: nil,
            PhoneNumber: nil
end
