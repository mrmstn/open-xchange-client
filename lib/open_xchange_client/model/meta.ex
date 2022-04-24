# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.Meta do
  @moduledoc """
  Object of meta information
  """

  @derive [Poison.Encoder]
  defstruct [
    :type,
    :date,
    :originalFolderId,
    :originalId
  ]

  @type t :: %__MODULE__{
          :type => String.t() | nil,
          :date => integer() | nil,
          :originalFolderId => String.t() | nil,
          :originalId => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.Meta do
  def decode(value, _options) do
    value
  end
end