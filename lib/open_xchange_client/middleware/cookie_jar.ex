defmodule OpenXchangeClient.Middleware.CookieJar do
  @behaviour Tesla.Middleware

  @impl true
  def call(env, next, options) do
    jar = ensure_started(options)

    env
    |> inject_cookies(jar)
    |> Tesla.run(next)
    |> read_cookies(jar)
  end

  defp ensure_started(options) do
    jar = Keyword.get(options, :jar_name, __MODULE__)

    case Process.whereis(jar) do
      nil ->
        {:ok, jar_pid} = CookieJar.new(name: jar)
        jar_pid

      jar_pid ->
        jar_pid
    end
  end

  defp inject_cookies(env, jar) do
    url = URI.parse(env.url)

    Tesla.put_header(env, "cookie", CookieJar.label(jar, url))
  end

  defp read_cookies({:ok, env}, jar) do
    url = URI.parse(env.url)

    env
    |> Tesla.get_headers("set-cookie")
    |> Enum.each(fn set_cookie ->
      cookie = CookieJar.Cookie.parse(set_cookie, url)

      CookieJar.put(jar, cookie)
    end)

    {:ok, env}
  end

  defp read_cookies({:error, _} = result, _), do: result
end
