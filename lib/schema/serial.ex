defmodule Swift4Shop.Serial do
  @derive Jason.Encoder
  defstruct SerialID: 1,
            SerialUses: 1,
            SerialCode: "sample string strCount"
end
