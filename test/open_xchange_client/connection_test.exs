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

  test "private_folder", %{conn: conn, session: session} do
    folder = private_folder(conn, session)
    assert is_binary(folder)
  end

  # test "list ressource events", %{conn: conn, session: session} do
  #   {:ok, %Model.AllResourcesResponse{data: resources}} =
  #     Api.Resources.get_all_resources(conn, session)

  #   [first_resource_id] = resources

  #   {:ok, %Model.ResourceResponse{data: %Model.ResourceData{} = resource}} =
  #     Api.Resources.get_resource(connection, session, first_resource_id)

  # end

  test "events by folder", %{conn: conn, session: session} do
    range_start = "20220422T000000Z"
    range_end = "20220430T235959Z"
    body = %Model.ChronosFolderBody{folders: [0, 1, 2, 3]}

    Api.Chronos.get_all_events_for_multiple_folders(
      conn,
      session,
      range_start,
      range_end,
      body
    )
  end

  defp private_folder(conn, session) do
    columns = [1, 20] |> Enum.join(",")
    # Api.Folders.get_root_folders(conn, session, columns)

    content_type = "calendar"

    {:ok,
     %Model.FoldersVisibilityResponse{
       data: %Model.FoldersVisibilityData{private: private_folders}
     }} = Api.Folders.get_visible_folders(conn, session, content_type, columns)

    [private_folder_id, _parent_id] =
      Enum.find(
        private_folders,
        fn [folder_id, parent] -> "1" == parent end
      )

    private_folder_id
  end
end
