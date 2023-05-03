defmodule Shift4Shop.Crm do
  @derive Jason.Encoder
  defstruct CrmID: nil,
            DateOpened: "",
            DateLastAction: "",
            Subject: "",
            DepartmentID: nil,
            StatusID: nil,
            CustomerName: "",
            CustomerEmail: "",
            CustomerPhone: "",
            CustomerIpAddress: "",
            OrderID: nil,
            CustomerID: nil,
            ProductId: nil,
            CrmMessageList: nil
end
