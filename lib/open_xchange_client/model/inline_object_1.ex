# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.InlineObject1 do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :event,
    :comment
  ]

  @type t :: %__MODULE__{
          :event => OpenXchangeClient.Model.EventData.t() | nil,
          :comment => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.InlineObject1 do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:event, :struct, OpenXchangeClient.Model.EventData, options)
  end
end
