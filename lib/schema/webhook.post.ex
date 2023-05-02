defmodule Swift4Shop.Webhook.Post do
  @derive Jason.Encoder
  defstruct Name: "sample string strCount",
            Url: "sample string strCount",
            EventType: 1,
            Format: "sample string strCount",
            Enabled: "sample string strCount"
end
