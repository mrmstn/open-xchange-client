defmodule OpenXchangeClient.Helper.FolderColumns do
  @mapping %{
    # Common folder data
    1 => :id,
    2 => :created_by,
    3 => :modified_by,
    4 => :creation_date,
    5 => :last_modified,
    6 => :last_modified_utc,
    # Detailed folder data
    20 => :folder_id,
    300 => :title,
    301 => :module,
    302 => :type,
    304 => :subfolders,
    305 => :own_rights,
    306 => :permissions,
    307 => :summary,
    308 => :standard_folder,
    309 => :total,
    310 => :new,
    311 => :unread,
    312 => :deleted,
    313 => :capabilities,
    314 => :subscribed,
    315 => :subscr_subflds,
    316 => :standard_folder_type,
    317 => :supported_capabilities,
    318 => :account_id,
    319 => :folder_name,
    320 => :origin,
    321 => :used_for_sync,
    3020 => :"com.openexchange.subscribe.subscriptionFlag",
    3030 => :"com.openexchange.folderstorage.displayName",
    3031 => :"com.openexchange.folderstorage.accountError",
    3060 => :"com.openexchange.share.extendedPermissions",
    3201 => :"com.openexchange.calendar.extendedProperties",
    3203 => :"com.openexchange.calendar.provider",
    3204 => :"com.openexchange.calendar.accountError",
    3205 => :"com.openexchange.calendar.config",
    3220 => :"com.openexchange.caldav.url",
    3301 => :"com.openexchange.contacts.extendedProperties"
  }

  def translate_results(columns, results) when is_list(results) do
    keys =
      columns
      |> Enum.map(&@mapping[&1])

    results
    |> Enum.map(&(reducer(keys, &1) |> Map.new()))
  end

  defp reducer([key | key_tail], [value | value_tail]) do
    [{key, value} | reducer(key_tail, value_tail)]
  end

  defp reducer([], []) do
    []
  end
end
