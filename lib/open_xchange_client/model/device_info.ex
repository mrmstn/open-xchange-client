# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule OpenXchangeClient.Model.DeviceInfo do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :info,
    :type
  ]

  @type t :: %__MODULE__{
          :info => String.t() | nil,
          :type => String.t() | nil
        }
end

defimpl Poison.Decoder, for: OpenXchangeClient.Model.DeviceInfo do
  def decode(value, _options) do
    value
  end
end