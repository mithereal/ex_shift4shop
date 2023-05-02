defmodule Swift4Shop.Admin.Put do
  @derive Jason.Encoder
  defstruct AdminId: nil,
            Username: "",
            Email: "",
            Name: "",
            Password: "",
            ExternalId: "",
            AdminPermissionsList: ""
end
