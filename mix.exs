defmodule OpenXchangeClient.Mixfile do
  use Mix.Project

  @source_url "https://github.com/mrmstn/open-xchange-client"
  @version "0.10.0"

  def project do
    [
      app: :open_xchange_client,
      version: @version,
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      description:
        "Documentation of the Open-Xchange HTTP API which is used by the new AJAX GUI. ",
      deps: deps()
    ]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.3.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:tesla, "~> 1.2"},
      {:poison, "~> 3.0"},
      {:hackney, "~> 1.13", optional: true},
      {:credo, "~> 1.0", only: [:dev, :test]},
      {:dotenvy, "~> 0.6.0", only: [:dev, :test]},
      {:bypass, "~> 2.1.0", only: [:dev, :test]},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      name: "open_xchange_client",
      maintainers: ["Michael Ramstein"],
      files: ~w(lib mix.exs README* LICENSE*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
