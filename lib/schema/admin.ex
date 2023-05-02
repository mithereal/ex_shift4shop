defmodule Swift4Shop.Admin do
  defstruct admin_id: nil,
            username: "",
            email: "",
            name: "",
            external_id: nil,
            lastlogin: nil,
            admin_permissions_list: []

  def decode(json) do
    json = Jason.decode(json)

    %__MODULE__{
      admin_id: json["AdminId"],
      username: json["Username"],
      email: json["Email"],
      name: json["Name"],
      external_id: json["ExternalId"],
      lastlogin: json["Lastlogin"],
      admin_permissions_list: json["AdminPermissionsList"]
    }
  end

  def encode(struct) do
    data = %{
      "AdminId": struct["admin_id"],
      "Username": struct["username"],
      "Email": struct["email"],
      "Name": struct["name"],
      "ExternalId": struct["external_id"],
      "Lastlogin": struct["lastlogin"],
      "AdminPermissionsList": struct["admin_permissions_list"]
    }

    Jason.encode(data)
  end
end
