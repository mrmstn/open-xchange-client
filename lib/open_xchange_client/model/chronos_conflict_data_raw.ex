# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ChronosConflictDataRaw do
  @moduledoc """
  A conflict.
  """

  @derive [Poison.Encoder]
  defstruct [
    :hard_conflict,
    :conflicting_attendees,
    :event
  ]

  @type t :: %__MODULE__{
          :hard_conflict => boolean() | nil,
          :conflicting_attendees => [OpenXchangeClient.Model.Attendee.t()] | nil,
          :event => OpenXchangeClient.Model.EventData.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ChronosConflictDataRaw do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:conflicting_attendees, :list, OpenXchangeClient.Model.Attendee, options)
    |> deserialize(:event, :struct, OpenXchangeClient.Model.EventData, options)
  end
end
