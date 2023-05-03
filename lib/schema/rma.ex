defmodule Shift4Shop.Rma do
  @derive Jason.Encoder
  defstruct RMAID: 1,
            RmaDate: "sample string strCount",
            OrderID: 1,
            RMAReasonID: 1,
            RMAMethodID: 1,
            RMAStatusID: 1,
            Comments: "sample string strCount",
            InternalComments: "sample string strCount",
            StaffComments: "sample string strCount",
            RMAItemList: "sample string strCount"
end
