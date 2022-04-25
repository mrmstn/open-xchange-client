# config/runtime.exs
import Config
import Dotenvy

source(["#{config_env()}.env", "#{config_env()}.override.env", ".env", System.get_env()])

config :open_xchange_client, :auth,
  endpoint: env!("OX_ENDPOINT", :string),
  username: env!("OX_USERNAME", :string),
  password: env!("OX_PASSWORD", :string)

https_proxy = env!("HTTPS_PROXY", :string, nil)

if(https_proxy != nil) do
  config :tesla, OpenXchangeClient.Connection,
    adapter:
      {Tesla.Adapter.Hackney,
       [
         {:recv_timeout, 150_000},
         {:connect_timeout, 150_000},
         {:proxy, https_proxy},
         :insecure
       ]},
    middleware: [Tesla.Middleware.Logger]
end
