defmodule Swift4Shop.Related.Product do
  @derive Jason.Encoder
  defstruct RelatedIndexID: nil,
            RelatedProductID: nil,
            RelatedProductSorting: nil
end
