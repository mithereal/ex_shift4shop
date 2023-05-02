defmodule Swift4Shop.Manufacturer do
  @derive Jason.Encoder
  defstruct ManufacturerID: nil,
            ManufacturerName: "",
            Logo: "",
            Sorting: 1,
            Header: "",
            Website: "",
            UserID: "",
            LastUpdate: "",
            PageTitle: "",
            MetaTags: "",
            RedirectURL: "",
            FileName: ""
end
