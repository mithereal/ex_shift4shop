defmodule Swift4Shop.GiftCertificate do
  @derive Jason.Encoder
  defstruct CertificateCode: "",
            Amount: nil,
            Balance: nil,
            TotalSpent: nil,
            DateCreated: "",
            Notes: ""
end
