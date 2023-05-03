defmodule Shift4Shop.Admin.LoginToken do
  @derive Jason.Encoder
  defstruct Token: "",
            Loginurl: "",
            Expiration: ""
end
