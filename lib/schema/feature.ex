defmodule Shift4Shop.Feature do
  @derive Jason.Encoder
  defstruct FeatureID: nil,
            FeatureTitle: "",
            FeatureDescription: ""
end
