# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Connection do
  @moduledoc """
  Handle Tesla connections for OpenXchangeClient.
  """

  use Tesla

  @doc """
  Configure an authless client connection

  # Returns

  Tesla.Env.client
  """
  def new(url) do
    Tesla.client(default_opts(url), default_adapter())
  end

  defp default_opts(url) do
    url = maybe_append_path(url)

    middleware =
      :tesla
      |> Application.get_env(__MODULE__, [])
      |> Keyword.get(:middleware, [])

    [
      {Tesla.Middleware.BaseUrl, url},
      {Tesla.Middleware.Headers, [{"User-Agent", "Elixir"}]},
      {OpenXchangeClient.Middleware.Encoder, [json: [engine: Poison]]},
      {OpenXchangeClient.Middleware.CookieJar, [jar_name: __MODULE__]}
      | middleware
    ]
  end

  defp default_adapter do
    :tesla
    |> Application.get_env(__MODULE__, [])
    |> Keyword.get(:adapter, nil)
  end

  defp maybe_append_path(%URI{path: path} = uri) when is_nil(path) or path in ["/", ""] do
    uri
    |> Map.put(:path, "/appsuite/api/")
  end

  defp maybe_append_path(%URI{} = uri), do: uri

  defp maybe_append_path(url) do
    url
    |> URI.parse()
    |> maybe_append_path()
    |> URI.to_string()
  end
end
