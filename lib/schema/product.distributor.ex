defmodule Swift4Shop.Product.Distributor do
  @derive Jason.Encoder
  defstruct DistributorID: nil,
            DistributorName: "",
            DistributorItemCost: nil,
            DistributorItemID: "",
            DistributorStockID: ""
end
