defmodule Shift4Shop.Repo do
  alias Shift4Shop.OAuth

  def all(url, token \\ "") do
    OAuth.get!(token, url)
  end

  def get(url, token \\ "") do
    OAuth.get(token, url)
  end

  def get!(url, token \\ "") do
    OAuth.get!(token, url)
  end

  def insert(url, token \\ "") do
    OAuth.post(token, url)
  end

  def update(url, token \\ "") do
    OAuth.put(token, url)
  end

  def delete(url, token \\ "") do
    OAuth.delete(token, url)
  end
end
