# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderSharingNotificationData do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :warnings
  ]

  @type t :: %__MODULE__{
          :warnings => map() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FolderSharingNotificationData do
  def decode(value, _options) do
    value
  end
end
