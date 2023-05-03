defmodule Shift4Shop.Frontend.Scripts do
  @derive Jason.Encoder
  defstruct FrontendScriptID: nil,
            Placement: "",
            Code: "",
            DateCreated: "",
            LastUpdate: ""
end
