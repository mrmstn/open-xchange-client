# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.Trigger do
  @moduledoc """
  The trigger of the alarm.
  """

  @derive [Poison.Encoder]
  defstruct [
    :duration,
    :related,
    :dateTime
  ]

  @type t :: %__MODULE__{
          :duration => String.t() | nil,
          :related => String.t() | nil,
          :dateTime => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.Trigger do
  def decode(value, _options) do
    value
  end
end