# OpenXchangeClient

Documentation of the Open-Xchange HTTP API which is used by the new AJAX GUI.

### Building

To install the required dependencies and to build the elixir project, run:
```
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `open_xchange_client` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:open_xchange_client, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/open_xchange_client](https://hexdocs.pm/open_xchange_client).

## Usage

```elixir
alias OpenXchangeClient.Api
alias OpenXchangeClient.Model

endpoint = "https://example.com/"
username = "user@example.com"
password = "secure-password"
conn = OpenXchangeClient.Connection.new(endpoint)

# Get a authenticated session for the current user
{:ok, %{session: session}} = Api.Login.do_login(conn, username, password)

# Use the session for authenticated requests
{:ok, data: %Model.CurrentUserData{ user_id: uid}} = Api.UserMe.get_current_user(conn, session)

# Don't forget to logout - otherwise you might hit a rate limit from OX
Api.Login.do_logout(conn, session)
```