defmodule Swift4Shop.Admin.Permission do
  defstruct id: nil, section: "", action: ""

  def decode(json) do
    json = Jason.decode(json)

    %__MODULE__{
      id: json["Id"],
      section: json["Section"],
      action: json["Action"]
    }
  end

  def encode(struct) do
    data = %{
      "Id": struct["id"],
      "Section": struct["section"],
      "Action": struct["action"]
    }

    Jason.encode(data)
  end
end
