defmodule Shift4Shop.Repo do
  alias Shift4Shop.OAuth

  def all(_) do
    :ok
  end

  def get!(url, token \\ "") do
    OAuth.get(token, url)
  end

  def insert(_) do
    :ok
  end

  def update(_) do
    :ok
  end

  def delete(_) do
    :ok
  end
end
