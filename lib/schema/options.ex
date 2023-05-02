defmodule Swift4Shop.Options do
  @derive Jason.Encoder
  defstruct OptionID: nil,
            OptionName: "",
            OptionSelected: "",
            OptionHide: "",
            OptionValue: nil,
            OptionPartNumber: "",
            OptionSorting: nil,
            OptionImagePath: "",
            OptionBundleCatalogId: nil,
            OptionBundleQuantity: nil
end
