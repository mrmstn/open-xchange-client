defmodule OpenXchangeClient.Helper.FolderColumnsTest do
  use ExUnit.Case
  alias OpenXchangeClient.Helper.FolderColumns

  test "Colum mapping" do
    columns = [1, 20, 300]
    results = [
      ["1980", "u:1", "Test Folder"],
      ["1729", "u:2", "Test Folder"]
    ]
    expected = [
      %{folder_id: "u:1", id: "1980", title: "Test Folder"},
      %{folder_id: "u:2", id: "1729", title: "Test Folder"}
    ]
    actual = FolderColumns.translate_results(columns, results)
    assert expected == actual
  end
end
