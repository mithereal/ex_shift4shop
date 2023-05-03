defmodule Shift4Shop.Crm.Message do
  @derive Jason.Encoder
  defstruct MessageId: nil,
            DateCreated: "",
            Message: "",
            Sender: nil,
            SenderName: "",
            SenderEmail: "",
            CustomerIPAddress: "",
            CrmFileList: ""
end
