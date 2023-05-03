defmodule Shift4Shop.Admin.Post do
  @derive Jason.Encoder
  defstruct AdminId: nil,
            Username: "",
            Email: "",
            Name: "",
            Password: "",
            ExternalId: "",
            AdminPermissionsList: ""
end
