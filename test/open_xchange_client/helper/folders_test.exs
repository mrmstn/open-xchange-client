defmodule OpenXchangeClient.Helper.FoldersTest do
  use ExUnit.Case
  alias OpenXchangeClient.Helper.Folders
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

  test "Nested Folders", %{conn: conn, session: session} do
    assert [
             %{
               folder_id: "0",
               id: "1",
               subfolders: [
                 %{folder_id: "1", id: "default0"} | _
               ]
             }
             | _
           ] = Folders.get_folder_tree(conn, session)
  end
end
