defmodule OpenXchangeClient.Middleware.Encoder do
  @moduledoc """
  Set default headers for all requests

  ## Examples

  ```
  defmodule Myclient do
    use Tesla

    plug Tesla.Middleware.Headers, [{"user-agent", "Tesla"}]
  end
  ```
  """

  @behaviour Tesla.Middleware

  @impl Tesla.Middleware
  def call(env, next, opts) do
    if String.ends_with?(env.url, "/login?action=login") do
      www_form(env, next, opts)
    else
      json(env, next, opts)
    end
  end

  def www_form(env, next, opts) do
    opts = Keyword.get(opts, :form, [])
    Tesla.Middleware.FormUrlencoded.call(env, next, opts)
  end

  def json(env, next, opts) do
    opts = Keyword.get(opts, :json, [])
    Tesla.Middleware.EncodeJson.call(env, next, opts)
  end
end
