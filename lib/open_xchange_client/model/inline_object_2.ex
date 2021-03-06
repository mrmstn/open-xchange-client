# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.InlineObject2 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :events,
    :comment
  ]

  @type t :: %__MODULE__{
          :events => [OpenXchangeClient.Model.EventId.t()] | nil,
          :comment => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.InlineObject2 do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:events, :list, OpenXchangeClient.Model.EventId, options)
  end
end
