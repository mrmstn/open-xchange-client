# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.UpdatesResult do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :newAndModified,
    :deleted
  ]

  @type t :: %__MODULE__{
          :newAndModified => [OpenXchangeClient.Model.EventData.t()] | nil,
          :deleted => [OpenXchangeClient.Model.EventData.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.UpdatesResult do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:newAndModified, :list, OpenXchangeClient.Model.EventData, options)
    |> deserialize(:deleted, :list, OpenXchangeClient.Model.EventData, options)
  end
end
