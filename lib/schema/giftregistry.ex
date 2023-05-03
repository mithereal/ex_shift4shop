defmodule Shift4Shop.GiftRegistry do
  @derive Jason.Encoder
  defstruct CustomerAddressBook: "",
            GiftRegistryID: nil,
            Name: "",
            Created: "",
            LastUpdate: "",
            Expires: "",
            Event: "",
            Message: "",
            ShipToAddress: "",
            Sold: nil,
            Items: nil,
            GiftRegistryItemList: nil
end
