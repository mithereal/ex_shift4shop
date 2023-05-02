defmodule Swift4Shop.OptionSet do
  @derive Jason.Encoder
  defstruct OptionSetID: nil,
            OptionSetName: "",
            OptionSorting: nil,
            OptionRequired: nil,
            OptionType: "",
            OptionURL: "",
            OptionAdditionalInformation: "",
            OptionSizeLimit: nil,
            OptionList: nil
end
