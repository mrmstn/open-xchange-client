# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.AppointmentInfoResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :data
  ]

  @type t :: %__MODULE__{
          :data => [boolean()] | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.AppointmentInfoResponse do
  def decode(value, _options) do
    value
  end
end
