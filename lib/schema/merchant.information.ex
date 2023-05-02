defmodule Swift4Shop.Merchant.Information do
  @derive Jason.Encoder
  defstruct Company: "sample string strCount",
            Address1: "sample string strCount",
            Address2: "sample string strCount",
            City: "sample string strCount",
            State: "sample string strCount",
            Country: "sample string strCount",
            ZipCode: "sample string strCount",
            Phone: "sample string strCount",
            AlternatePhone: "sample string strCount",
            Fax: "sample string strCount",
            InvoiceLogo: "sample string strCount",
            InvoiceTerms: "sample string strCount"
end
