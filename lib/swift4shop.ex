defmodule Swift4shop do
  @moduledoc """
  Documentation for `Swift4shop`.
  """

  @secureurl Application.get_env(:swift4shop, :secureurl, "")
  @privatekey Application.get_env(:swift4shop, :privkey, "")

  alias Swift4shop.OAuth

  def json_library(otp_app \\ nil) do
    environment = get_env([:swift4shop, otp_app])
    Keyword.get(environment, :json_library, Application.get_env(:swift4shop, :json_library, Jason))
  end

  defp get_env(value) do
    #
    # Return the environment via `Application.get_env/3` with nil app names
    # yielding empty list, so the results can be used with `Keyword.merge/2`.

    case value do
      nil -> []
      name when is_atom(name) -> Application.get_env(name, __MODULE__, [])
      list when is_list(list) -> list |> Enum.map(&get_env/1) |> Enum.reduce(&Keyword.merge/2)
    end
  end

  def default_path(path, data) do
    limit = Keyword.get(data, :limit) || 10
    offset = Keyword.get(data, :offset) || 1

    path <>
      "limit=#{limit}&offset=#{offset}"
  end

  def fetch_admins(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Admins?" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_admin_by_id(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Admins/#{id}/Admin?" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_admin_login_token(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path =
      "https://apirest.3dcart.com/3dCartWebAPI/v2/Admins/#{id}/LoginToken?" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  @doc """
  admin_permissions.

  ## Examples

      iex> Swift4shop.admin_permissions(token, opts)
      []

  """

  def fetch_admin_permissions(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/AdminPermissions?" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  @doc """
  admin_permissions by id.

  ## Examples

      iex> Swift4shop.admin_permissions_by_id(token, id)
      []
  """

  def fetch_admin_permissions_by_id(
        token,
        id,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/AdminPermissions/#{id}"

    OAuth.get(token, path, headers, opts)
  end

  def fetch_customers_by_group(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path =
      "https://apirest.3dcart.com/3dCartWebAPI/v2/CustomerGroups/#{id}"
      |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_customers(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Customers" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_customer_by_id(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Customers/#{id}"

    OAuth.get(token, path, headers, opts)
  end

  def fetch_categories(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Categories" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_category_by_id(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path =
      "https://apirest.3dcart.com/3dCartWebAPI/v2/Categories/#{id}"
      |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_category_options(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path =
      "https://apirest.3dcart.com/3dCartWebAPI/v2/Categories/#{id}/Options"
      |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_products(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_product_by_id(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}"

    OAuth.get(token, path, headers, opts)
  end

  def fetch_manufacturers(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Manufacturers" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_manufacturer_by_id(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path =
      "https://apirest.3dcart.com/3dCartWebAPI/v2/Manufacturers/#{id}"
      |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_orders(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Orders" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_order_by_id(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Orders/#{id}"

    OAuth.get(token, path, headers, opts)
  end

  def fetch_order_items(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Orders/#{id}/Items"

    OAuth.get(token, path, headers, opts)
  end

  def fetch_frontend_scripts(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/FrontendScripts" |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_frontend_script_by_id(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path =
      "https://apirest.3dcart.com/3dCartWebAPI/v2/FrontendScripts/#{id}"
      |> default_path(data)

    OAuth.get(token, path, headers, opts)
  end

  def fetch_cart_by_id(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Cart/#{id}"

    OAuth.get(token, path, headers, opts)
  end

  def create_customer(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Customers"
    body = Swift4Shop.Customer.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_customer_addressbook(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Customers/#{id}/CustomerAddressBooks"
    body = Swift4Shop.Customer.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_order(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Orders"
    body = Swift4Shop.Order.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_order_item(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Order/#{id}/Items"
    body = Swift4Shop.Order.Item.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_order_question(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Order/#{id}/Questions"
    body = Swift4Shop.Order.Item.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_order_giftcard(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Order/#{id}/SendGiftCardRecipientEmail"
    body = Swift4Shop.Order.Item.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_order_shipment(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Order/#{id}/Shipments"
    body = Swift4Shop.Order.Item.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_order_transaction(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Order/#{id}/Transactions"
    body = Swift4Shop.Order.Item.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_manufacturer(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Manufacturers"
    body = Swift4Shop.Manufacturer.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_frontend_script(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/FrontendScripts"
    body = Swift4Shop.FrontendScripts.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_cart(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Cart"
    body = Swift4Shop.Cart.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def add_item_to_cart(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Cart#{id}/Item"
    body = Swift4Shop.Items.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_category(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Categories"
    body = Swift4Shop.Categories.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_category_options(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Categories"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products"
    body = Swift4Shop.Product.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_options(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Options"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_advanced_options(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/AdvancedOptions"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_advanced_options_optionset(
        token,
        id,
        setid,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Options/#{setid}/Option"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_discount(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Discount"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_categories(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Categories"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_distributors(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Distributors"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_eproducts(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Eproducts"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_features(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Features"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_images(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Images"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_related(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Related"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_serials(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Serials"
    body = Swift4Shop.Options.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_product_upselling(
        token,
        id,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Products/#{id}/Upselling"
    body = Swift4Shop.Products.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end

  def create_distributor(
        token,
        data,
        headers \\ [SecureURL: @secureurl, PrivateKey: @privatekey],
        opts \\ []
      ) do
    path = "https://apirest.3dcart.com/3dCartWebAPI/v2/Distributors"
    body = Swift4Shop.Distributors.encode(data)
    OAuth.post(token, path, body, headers, opts)
  end
end
