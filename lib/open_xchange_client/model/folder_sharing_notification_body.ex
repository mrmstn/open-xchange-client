# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderSharingNotificationBody do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :entities,
    :notification
  ]

  @type t :: %__MODULE__{
          :entities => [String.t()],
          :notification => OpenXchangeClient.Model.FolderBodyNotification.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FolderSharingNotificationBody do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :notification,
      :struct,
      OpenXchangeClient.Model.FolderBodyNotification,
      options
    )
  end
end
