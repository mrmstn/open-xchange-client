# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.CalendarResult do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :created,
    :updated,
    :deleted,
    :conflicts
  ]

  @type t :: %__MODULE__{
          :created => [OpenXchangeClient.Model.EventData.t()] | nil,
          :updated => [OpenXchangeClient.Model.EventData.t()] | nil,
          :deleted => [OpenXchangeClient.Model.EventData.t()] | nil,
          :conflicts => [OpenXchangeClient.Model.ChronosConflictDataRaw.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.CalendarResult do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:created, :list, OpenXchangeClient.Model.EventData, options)
    |> deserialize(:updated, :list, OpenXchangeClient.Model.EventData, options)
    |> deserialize(:deleted, :list, OpenXchangeClient.Model.EventData, options)
    |> deserialize(:conflicts, :list, OpenXchangeClient.Model.ChronosConflictDataRaw, options)
  end
end