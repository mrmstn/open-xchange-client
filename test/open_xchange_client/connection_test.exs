defmodule OpenXchangeClient.ConnectionTest do
  use ExUnit.Case
  alias OpenXchangeClient.Api
  alias OpenXchangeClient.Model

  setup do
    app_conf = Application.get_env(:open_xchange_client, :auth)
    endpoint = app_conf[:endpoint]
    username = app_conf[:username]
    password = app_conf[:password]

    conn = OpenXchangeClient.Connection.new(endpoint)

    {:ok,
     %Model.LoginResponse{
       session: session,
       user_id: uid
     }} = Api.Login.do_login(conn, username, password)

    on_exit(fn ->
      Api.Login.do_logout(conn, session)
    end)

    {:ok, %{conn: conn, session: session, uid: uid}}
  end

  test "Current User", %{conn: conn, session: session, uid: uid} do
    assert {:ok,
            %Model.CurrentUserResponse{
              data: %Model.CurrentUserData{
                user_id: ^uid
              }
            }} = OpenXchangeClient.Api.UserMe.get_current_user(conn, session)
  end

  test "Fetch Resources", %{conn: conn, session: session} do
    {:ok,
     %Model.AllResourcesResponse{
       data: data
     }} = Api.Resources.get_all_resources(conn, session)

    assert is_list(data)

    [first_id | _] = data

    {:ok,
     %Model.ResourceResponse{
       data: %Model.ResourceData{
         availability: true,
         id: ^first_id
       }
     }} = Api.Resources.get_resource(conn, session, first_id)
  end
end
