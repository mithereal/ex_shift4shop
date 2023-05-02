defmodule Swift4Shop.AdvancedOption do
  @derive Jason.Encoder
  defstruct AdvancedOptionCode: "",
            AdvancedOptionSufix: "",
            AdvancedOptionName: "",
            AdvancedOptionCost: nil,
            AdvancedOptionStock: nil,
            AdvancedOptionWeight: nil,
            AdvancedOptionPrice: nil,
            AdvancedOptionGTIN: ""
end
