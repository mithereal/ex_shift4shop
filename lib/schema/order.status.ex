defmodule Shift4Shop.Order.Status do
  @derive Jason.Encoder
  defstruct   OrderStatusID: nil,
              Sorting: nil,
              StatusDefinition: nil,
              StatusText: nil,
              Visible: nil
end