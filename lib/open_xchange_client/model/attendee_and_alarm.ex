# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.AttendeeAndAlarm do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :attendee,
    :alarms
  ]

  @type t :: %__MODULE__{
          :attendee => OpenXchangeClient.Model.Attendee.t() | nil,
          :alarms => [OpenXchangeClient.Model.Alarm.t()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.AttendeeAndAlarm do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:attendee, :struct, OpenXchangeClient.Model.Attendee, options)
    |> deserialize(:alarms, :list, OpenXchangeClient.Model.Alarm, options)
  end
end
