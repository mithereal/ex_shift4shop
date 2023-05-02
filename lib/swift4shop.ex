defmodule Swift4shop do
  @moduledoc """
  Documentation for `Swift4shop`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Swift4shop.hello()
      :ok

  """
  def hello do
    :world
  end

  def hello(token) do
    path =
      "https://apirest.3dcart.com"

    OAuth.get(token, path)
  end
end
