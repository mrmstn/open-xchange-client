# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FolderBodyNotification do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :transport,
    :message
  ]

  @type t :: %__MODULE__{
          :transport => String.t() | nil,
          :message => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FolderBodyNotification do
  def decode(value, _options) do
    value
  end
end
