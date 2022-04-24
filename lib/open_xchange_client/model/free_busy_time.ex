# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.FreeBusyTime do
  @moduledoc """
  A free-busy time slot.
  """

  @derive [Poison.Encoder]
  defstruct [
    :"startTime",
    :"endTime",
    :"fbType",
    :"event"
  ]

  @type t :: %__MODULE__{
    :"startTime" => integer() | nil,
    :"endTime" => integer() | nil,
    :"fbType" => String.t | nil,
    :"event" => OpenXchangeClient.Model.Event.t | nil
  }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.FreeBusyTime do
  import OpenXchangeClient.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"event", :struct, OpenXchangeClient.Model.Event, options)
  end
end

