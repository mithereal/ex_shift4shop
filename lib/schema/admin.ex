defmodule Swift4Shop.Admin do
  @derive Jason.Encoder
  defstruct AdminId: nil,
            Username: nil,
            Email: nil,
            Name: nil,
            ExternalId: nil,
            Lastlogin: nil,
            AdminPermissionsList: nil
end
