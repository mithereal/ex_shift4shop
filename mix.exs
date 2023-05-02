defmodule Swift4shop.MixProject do
  use Mix.Project

  @source_url "https://github.com/mithereal/ex_swift4shop.git"
  @version "2.0.0"

  def project do
    [
      app: :swift4shop,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      docs: docs(),
      name: "Swift4Shop",
      source_url: @source_url
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:jason, "~> 1.0"},
      {:oauth2, "~> 1.0 or ~> 2.0"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:credo, "~> 1.6.1", only: [:dev, :test], runtime: false}
    ]
  end


  defp description() do
    "A Swift4Shop Client for Elixir"
  end

  defp package() do
    [
      # This option is only needed when you don't want to use the OTP application name
      name: "Swift4Shop",
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/mithereal/ex_swift4shop"}
    ]
  end

  defp docs() do
    [
      main: "readme",
      name: "Swift4Shop",
      source_ref: "v#{@version}",
      canonical: "http://hexdocs.pm/swift4shop",
      source_url: @source_url,
      extras: ["README.md", "LICENSE"]
    ]
  end
end
