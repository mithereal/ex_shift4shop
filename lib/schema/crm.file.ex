defmodule Shift4Shop.Crm.File do
  @derive Jason.Encoder
  defstruct FileId: nil,
            FileName: "",
            DateCreated: "",
            IsAdminUploaded: ""
end
