defmodule Shift4Shop.Transaction do
  @derive Jason.Encoder
  defstruct TransactionIndexID: nil,
            OrderID: nil,
            TransactionID: "",
            TransactionDateTime: "",
            TransactionType: "",
            TransactionMethod: "",
            TransactionAmount: nil,
            TransactionApproval: "",
            TransactionReference: "",
            TransactionGatewayID: nil,
            TransactionCVV2: "",
            TransactionAVS: "",
            TransactionResponseText: "",
            TransactionResponseCode: "",
            TransactionCaptured: nil
end
