defmodule Swift4Shop.Customer do
  defstruct email: nil,
            shipping_address_type: nil,
            billing_first_name: nil,
            non_taxable: nil,
            comments: nil,
            billing_country: nil,
            billing_state: nil,
            mail_list: nil,
            shipping_first_name: nil,
            billing_address_1: nil,
            shipping_state: nil,
            billing_taxid: nil,
            billing_zip_code: nil,
            shipping_zipcode: nil,
            customer_id: nil,
            billing_address_2: nil,
            reset_password: nil,
            shipping_last_name: nil,
            shipping_city: nil,
            shipping_company: nil,
            additional_field_1: nil,
            billing_city: nil,
            billing_last_name: nil,
            additional_field_2: nil,
            billing_phone_number: nil,
            disable_billing_same_as_shipping: nil,
            password: nil,
            enabled: nil,
            additional_field_3: nil,
            billing_company: nil,
            shipping_country: nil,
            shipping_phone_number: nil,
            customer_group_id: nil,
            shipping_address_2: nil,
            total_store_credit: nil,
            shipping_address_1: nil

  def decode(json) do
    json = Jason.decode(json)

    %__MODULE__{}
  end

  def encode(struct) do
    data = %{}
    json = Jason.encode(data)
  end
end
