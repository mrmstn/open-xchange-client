# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.Available do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :user,
    :uid,
    :created,
    :modified,
    :rrule,
    :start,
    :end
  ]

  @type t :: %__MODULE__{
          :id => integer() | nil,
          :user => integer() | nil,
          :uid => String.t() | nil,
          :created => integer() | nil,
          :modified => integer() | nil,
          :rrule => String.t() | nil,
          :start => OpenXchangeClient.Model.DateTimeData.t() | nil,
          :end => OpenXchangeClient.Model.DateTimeData.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.Available do
  import OpenXchangeClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:start, :struct, OpenXchangeClient.Model.DateTimeData, options)
    |> deserialize(:end, :struct, OpenXchangeClient.Model.DateTimeData, options)
  end
end
