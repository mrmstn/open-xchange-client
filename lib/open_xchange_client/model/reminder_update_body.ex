# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.ReminderUpdateBody do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :alarm
  ]

  @type t :: %__MODULE__{
          :alarm => integer() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.ReminderUpdateBody do
  def decode(value, _options) do
    value
  end
end
