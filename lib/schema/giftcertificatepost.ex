defmodule Swift4Shop.GiftCertificate.Post do
  @derive Jason.Encoder
  defstruct CertificateCode: "",
            Amount: nil,
            Notes: ""
end
