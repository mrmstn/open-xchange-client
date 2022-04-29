defmodule OpenXchangeClient.Helper.Folders do
  alias OpenXchangeClient.Api
  alias OpenXchangeClient.Model
  alias OpenXchangeClient.Helper

  def get_folder_tree(connection, session, columns \\ [], parent_id \\ "0", opts \\ [])

  def get_folder_tree(connection, session, columns, parent_id, opts) do
    columns_final = [1, 20, 304 | columns]
    columns_binary = Enum.join(columns_final, ",")

    {:ok, %Model.FoldersResponse{data: sub_folders}} =
      get_folders(connection, session, parent_id, columns_binary, opts)

    columns_final
    |> Helper.FolderColumns.translate_results(sub_folders)
    |> Enum.map(fn
      %{subfolders: false} = parent ->
        parent

      %{id: "default0"} = parent ->
        parent

      %{id: "u:" <> _} = parent ->
        parent

      %{subfolders: true, folder_id: tree_id} = parent ->
        opts = [all: 1, tree: tree_id]
        subfolders = get_folder_tree(connection, session, columns, parent[:id], opts)
        %{parent | subfolders: subfolders}
    end)
  end

  defp get_folders(connection, session, parent, columns, opts)

  defp get_folders(connection, session, "0", columns, opts) do
    Api.Folders.get_root_folders(connection, session, columns, opts)
  end

  defp get_folders(connection, session, parent, columns, opts) do
    Api.Folders.get_sub_folders(connection, session, parent, columns, opts)
  end
end
